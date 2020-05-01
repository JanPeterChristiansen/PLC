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

-- CANNOT READ FROM RAM DIRECTLY AFTER BRANCHING NEED ONE CYCLE TO PREFETCH
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

	signal PC : STD_LOGIC_VECTOR (13	downto 0) := (others => '0');
	signal start : STD_LOGIC := '0';
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
	
	-- dualport rom blocram 16384 x 28 bit
	COMPONENT PROGRAM
	  PORT (
		 clka : IN STD_LOGIC;
		 addra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
		 clkb : IN STD_LOGIC;
		 addrb : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 doutb : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
	  );
	END COMPONENT;
	
	-- RAM signals
	signal RAM_we : STD_LOGIC_VECTOR (0 downto 0);
	signal RAM_addrA, RAM_addrB : STD_LOGIC_VECTOR(9 downto 0);
	signal RAM_din, RAM_dout : STD_LOGIC_VECTOR (15 downto 0);
	-- PROGRAM
	signal PROG_addrA, PROG_addrB : STD_LOGIC_VECTOR(13 downto 0); 
	signal PROG_doutA, PROG_doutB : STD_LOGIC_VECTOR(27 downto 0); 
	
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
	signal OUTBUFF_WE : std_logic;
	-- timer 
	signal MSEC : STD_LOGIC_VECTOR (9 downto 0);  
	signal SEC : STD_LOGIC_VECTOR (5 downto 0);
	signal MIN : STD_LOGIC_VECTOR (5 downto 0); 
	signal HOUR : STD_LOGIC_VECTOR (15 downto 0); 
	-- stack control
	signal STACK_INC : STD_LOGIC;
	signal STACK_DEC : STD_LOGIC; 
	signal STACK_TOS : STD_LOGIC_VECTOR(9 downto 0); 
	-- Interrupts 
	signal INT_pins : STD_LOGIC_VECTOR(3 downto 0); 
	signal INT_pending : STD_LOGIC_VECTOR(3 downto 0); 
	signal INT_reset : STD_LOGIC_VECTOR(3 downto 0); 
	signal INT_busy : STD_LOGIC; 
	signal INT_isrvect : STD_LOGIC_VECTOR(15 downto 0); 
	
	
begin

--interrupt : entity work.Interrupt
--    Port map( 
--		clk => clk,
--		pins => INT_pins, 
--		output => INT_pending,
--		rst => INT_reset 
--	 );

stackcontrol1 : entity work.Stackcontrol
	port map(
		clk => clk,
		INC => STACK_INC,
		DEC => STACK_DEC,
		stk => STACK_TOS
	);

-- Timer port map
timer1 : entity work.Timer
	port map  (
		CLK => CLK,
		RESET	 => '0',
		MSEC => MSEC,
		SEC => SEC, 		
		MIN => MIN, 		
		HOUR => HOUR		
	);

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
		we => OUTBUFF_we
	);
	
PROGMEM : PROGRAM 
	port map (
		clka => clk,
		addra => PROG_addrA, 
		douta => PROG_doutA,
		clkb => clk, 
		addrb => PROG_addrB,
		doutb => PROG_doutB
	); 

-- always parses cmd from program memory
PROG_addrA <= PC; 
PROG_addrB <= PC + 1; 
cmd <= PROG_doutA; 
next_cmd <= PROG_doutB; 

--cmd <= PROG(conv_integer(PC));
--next_cmd <= PROG(conv_integer(PC + 1));

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
					PC <= C(13 downto 0) ;
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
		PC => PC,
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
		--Inputbuff
		inputBuffer => inputBuffer,
		-- OUTBUFF 
		OUTBUFF_we => OUTBUFF_we,
		-- Timer
		MSEC => MSEC,
		SEC => SEC,
		MIN => MIN,
		HOUR => HOUR,
		-- STACK
		STACK_INC =>STACK_INC,
		STACK_DEC => STACK_DEC,
		STACK_TOS => STACK_TOS
	);

end Behavioral;

  

