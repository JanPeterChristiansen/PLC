----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:34 04/15/2020 
-- Design Name: 
-- Module Name:    PLC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity PLC is
	Port ( 
		clk : in  STD_LOGIC;
		RX : in STD_LOGIC_VECTOR (15 downto 0);
		TX : out STD_LOGIC_VECTOR (15 downto 0);
		INPUT : in STD_LOGIC_VECTOR (15 downto 0);
		OUTPUT : out STD_LOGIC_VECTOR (15 downto 0)
	);
	
end PLC;

architecture Behavioral of PLC is

	-- PROGRAMM
	type ram_type is array (0 to 15) of STD_LOGIC_VECTOR (27 downto 0);
	signal PROG : ram_type := (	x"1a0aaaa", x"2d00001", x"2b00000", x"2300000",
								x"0000000", x"0000000", x"0000000", x"0000000",
								x"0000000", x"0000000", x"0000000", x"0000000", 
								x"0000000", x"0000000", x"0000000", x"0000000");
													-- 8-bit  | 4-bit | 16-bit 
													-- opcode | reg   | value 

	signal PC : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal start : STD_LOGIC := '1';
	signal jump : STD_LOGIC := '0';
	signal skip : STD_LOGIC := '0';
	signal cmd : STD_LOGIC_VECTOR (27 downto 0) := x"0000000";
	signal next_cmd : STD_LOGIC_VECTOR (27 downto 0) := x"0000000";

	-- control signals for ALU
	signal ALUfunc : STD_LOGIC_VECTOR (3 downto 0) := x"0";

	-- CPU busses
	signal A, B, C : STD_LOGIC_VECTOR (15 downto 0);
	
	-- control signals for registers
	signal addrA, addrB : STD_LOGIC_VECTOR (3 downto 0);
	signal reA, reB, weC : STD_LOGIC;
	
	-- Simple Dual Port RAM block 1024 x 16-bit
	component SimpleDualPortRAM
		PORT(
			clka : in STD_LOGIC;
			wea : in STD_LOGIC_VECTOR(0 downto 0);
			addra : in STD_LOGIC_VECTOR (9 downto 0);
			dina : in STD_LOGIC_VECTOR (15 downto 0);
			clkb : in STD_LOGIC;
			addrb : in STD_LOGIC_VECTOR (9 downto 0);
			doutb : out STD_LOGIC_VECTOR (15 downto 0)
		);
	end component;
	
	-- RAM signals
	signal RAM_we : STD_LOGIC_VECTOR (0 downto 0);
	signal RAM_addrA, RAM_addrB : STD_LOGIC_VECTOR(9 downto 0);
	signal RAM_din, RAM_dout : STD_LOGIC_VECTOR (15 downto 0);
	
	-- Serial control signals and busses
	signal SERIAL_addr : STD_LOGIC_VECTOR (3 downto 0);
	signal SERIAL_din : STD_LOGIC_VECTOR (7 downto 0);
	signal SERIAL_dout : STD_LOGIC_VECTOR (7 downto 0);
	signal SERIAL_re : STD_LOGIC := '0';
	signal SERIAL_we : STD_LOGIC := '0';
	signal SERIAL_full : STD_LOGIC;
	signal SERIAL_dready : STD_LOGIC;
	signal SERIAL_rst : STD_LOGIC := '1';
	signal SERIAL_msb_lsb : STD_LOGIC := '0';

	-- Input buffer 
	signal InputBuffer : STD_LOGIC_VECTOR (15 downto 0);

	--Output buffer
	signal OUTBUFF_WE, OUTBUFF_overide : STD_LOGIC; 
	signal OUTBUFF_addr : STD_LOGIC_VECTOR (3 downto 0); 
	
begin

-- ALU port map
ALU : entity work.ALU
	Port Map(
		A => A,
		B => B,
		FUNC => ALUfunc,
		OUTPUT => C
	);

-- Registers port map
REG : entity work.Registers
	Port Map(
		CLK => clk,
		addrA => addrA,
		addrB => addrB,
		A => A,
		B => B,
		C => C,
		reA => reA,
		reB => reB,
		we => weC
	);

-- RAM port map
RAM : SimpleDualPortRAM
	PORT MAP(
		clka => clk,
		wea => RAM_we,
		addra => RAM_addrA,
		dina => RAM_din,
		clkb => clk,
		addrb => RAM_addrB,
		doutb => RAM_dout
	);

SERIAL : entity work.SerialIO
	Port Map(
		clk => clk,
		addr => SERIAL_addr,
		din => C(7 downto 0),
		dout => SERIAL_dout,
		re => SERIAL_re,
		we => SERIAL_we,
		full => SERIAL_full,
		dready => SERIAL_dready,
		rst => SERIAL_rst,
		msb_lsb => SERIAL_msb_lsb,
		rx => RX,
		tx => TX
	);

INPUT_BUFFER : entity work.Inputs
	Port Map(
		clk => clk,
		din => INPUT,
		dout => InputBuffer
	);
OUTPUT_BUFFER : entity work.Output
	port map(
		clk => clk,
		din => C,
		dout => output,
		addr => OUTBUFF_addr,
		we => OUTBUFF_we,
		overide => OUTBUFF_overide	
	);


-- always parses cmd from program memory
cmd <= PROG(conv_integer(PC));
next_cmd <= PROG(conv_integer(PC + 1));

-- update PC every clk cycle
process(clk)
begin
	if rising_edge(clk) then
		if (start = '1') then
			start <= '0';
		else 
			if (skip = '1') then
				PC <= PC + 2;
			else
				if (jump = '1') then
					PC <= cmd(3 downto 0);
				else 
					PC <= PC + 1;
				end if;
			end if;
		end if;
	end if;
end process;


-- interprets cmd fetched from program memory
PROCESSEN : entity work.Processen
	Port Map(
		cmd => cmd,
		next_cmd => next_cmd,
		-- ALU
		C => C,
		A => A,
		B => B,
		ALUfunc => ALUfunc,
		-- REG
		addrA => addrA,
		addrB => addrB,
		reA => reA,
		reB => reB,
		weC => weC,
		-- cond. jump
		jump => jump,
		skip => skip,
		-- RAM
		RAM_we => RAM_we,
		RAM_addrA => RAM_addrA,
		RAM_din => RAM_din,
		RAM_addrB => RAM_addrB,
		RAM_dout => RAM_dout,
		-- SERIAL
		SERIAL_addr => SERIAL_addr,
		SERIAL_dout => SERIAL_dout,
		SERIAL_re => SERIAL_re,
		SERIAL_we => SERIAL_we,
		SERIAL_full => SERIAL_full,
		SERIAL_dready => SERIAL_dready,
		SERIAL_rst => SERIAL_rst,
		SERIAL_msb_lsb => SERIAL_msb_lsb,
		
		inputBuffer => inputBuffer,
		-- OUTBUFF 
		OUTBUFF_we => OUTBUFF_we,
		OUTBUFF_overide => OUTBUFF_overide,
		OUTBUFF_addr => OUTBUFF_addr
	);

end Behavioral;

