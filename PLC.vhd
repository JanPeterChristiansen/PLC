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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PLC is
	Port ( 
		clk : in  STD_LOGIC;
		LED : out STD_LOGIC_VECTOR(7 downto 0)
	);
	
end PLC;

architecture Behavioral of PLC is

	-- PROGRAMM
	type ram_type is array (0 to 15) of STD_LOGIC_VECTOR (27 downto 0);
	signal PROG : ram_type := (x"1a1ffff", x"2220001", x"2010000", x"2020000", 
										x"2300000", x"0000000", x"0000000", x"0000000", 
										x"0000000", x"0000000", x"0000000", x"0000000", 
										x"0000000", x"0000000", x"0000000", x"0000000");
										-- 8-bit  | 4-bit | 16-bit 
										-- opcode | reg   | value

	signal PC : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal start : STD_LOGIC := '1';
	signal jump : STD_LOGIC := '0';
	signal skip : STD_LOGIC := '0';
	signal cmd : STD_LOGIC_VECTOR (27 downto 0) := x"0000000";

	-- control signals for ALU
	signal ALUfunc : STD_LOGIC_VECTOR (3 downto 0) := x"0";

	-- CPU busses
	signal A, B, C : STD_LOGIC_VECTOR (15 downto 0);
	
	-- control signals for registers
	signal addrA, addrB : STD_LOGIC_VECTOR (3 downto 0);
	signal reA, reB, weC : STD_LOGIC;

	
	-- RAM 1024 x 16-bit
	component BlockRAM
		PORT (
			clka : in STD_LOGIC;
			ena : in STD_LOGIC;
			wea : in STD_LOGIC_VECTOR (0 downto 0);
			addra : in STD_LOGIC_VECTOR (9 downto 0);
			dina : in STD_LOGIC_VECTOR (15 downto 0);
			douta : out STD_LOGIC_VECTOR (15 downto 0)
		);
	end component;
	
	
	-- RAM SIGNALS
	signal RAM_en : STD_LOGIC;
	signal RAM_we : STD_LOGIC_VECTOR (0 downto 0);
	signal RAM_addr : STD_LOGIC_VECTOR (9 downto 0);
	signal RAM_din, RAM_dout : STD_LOGIC_VECTOR (15 downto 0);
	
	

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
RAM : BlockRAM
	PORT MAP(
		clka => clk,
		ena => '1',
		wea => RAM_we,
		addra => RAM_addr,
		dina => RAM_din,
		douta => RAM_dout
	);


-- always parses cmd from program memory
cmd <= PROG(conv_integer(PC));

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
		A => A,
		B => B,
		ALUfunc => ALUfunc,
		addrA => addrA,
		addrB => addrB,
		reA => reA,
		reB => reB,
		weC => weC,
		jump => jump,
		skip => skip,
		RAM_we => RAM_we,
		RAM_addr => RAM_addr,
		RAM_din => RAM_din,
		RAM_dout => RAM_dout
	);


-- for test
LED <= C(7 downto 0);

end Behavioral;

