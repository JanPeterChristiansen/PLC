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
	signal PROG : ram_type := (x"0100003", x"0200001", x"0000000", x"0000000",
										x"0000000", x"0000000", x"0000000", x"0000000",
										x"0000000", x"0000000", x"0000000", x"0000000",
										x"0000000", x"0000000", x"0000000", x"0000000");
										
										-- opcode | reg | mem/imidiate

	signal PC : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal start : STD_LOGIC := '1';
	signal cmd : STD_LOGIC_VECTOR (27 downto 0) := x"0000000";

	-- control signals for ALU
	signal ALUfunc : STD_LOGIC_VECTOR (3 downto 0) := x"0";

	-- CPU busses
	signal A, B, C : STD_LOGIC_VECTOR (15 downto 0);
	
	-- control signals for registers
	signal addrA, addrB : STD_LOGIC_VECTOR (3 downto 0);
	signal reA, reB, weC : STD_LOGIC;

	-- control signals for memory
	signal mem_bus : STD_LOGIC_VECTOR (15 downto 0);
	signal mem_addr : STD_LOGIC_VECTOR (15 downto 0);
	signal mem_we : STD_LOGIC;
	signal mem_enable : STD_LOGIC;

begin

ALU : entity work.ALU
	Port Map(
		A => A,
		B => B,
		FUNC => ALUfunc,
		OUTPUT => C
	);

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

RAM : entity work.RandomAccessMemory
	Port Map(
		CLK => clk,
		ADDR => mem_addr,
		WE => mem_we,
		MEM_BUS => mem_bus,
		ENABLE => mem_enable
	);


cmd <= PROG(conv_integer(PC));


process(clk)
begin
	if rising_edge(clk) then
		if (start = '1') then	
			start <= '0';
		else
			PC <= PC + 1;
		end if;
	end if;	
end process;



PROCCESSEN : process(cmd)
begin
	
	case (cmd(27 downto 20)) is
		when x"00" => -- NOP
			ALUfunc <= x"0";
			A <= (others => 'Z'); -- disable busses
			B <= (others => 'Z');
			addrA <= (others => 'Z'); -- disable registers
			addrB <= (others => 'Z');
			reA <= '0';
			reB <= '0';
			weC <= '0';
			mem_enable <= '0'; -- disbale memory
			
		when x"01" => -- LOADI
			A <= cmd(15 downto 0); -- write immediate value to A-bus
			B <= (others => 'Z'); -- set B-bus to sleep
			ALUfunc <= x"3"; -- write A to C-bus
			addrA <= cmd(19 downto 16); -- set target regiser address
			addrB <= (others => 'Z'); -- set B-bus to sleep
			reA <= '0'; -- set register control signals
			reB <= '0';
			weC <= '1';
			mem_enable <= '0'; -- disable ram
			
		when x"02" => -- ADDI
			A <= (others => 'Z');
			B <= cmd(15 downto 0); -- write immediate value to B-bus
			ALUfunc <= x"6"; -- write A+B to C-bus
			addrA <= cmd(19 downto 16); -- set target register address
			addrB <= (others => 'Z'); -- set B-bus to sleep
			reA <= '1'; -- set register control signals
			reB <= '0';
			weC <= '1';
			mem_enable <= '0'; -- disable mem
			
		when others =>
	end case;

end process;




-- for test
LED <= C(7 downto 0);

end Behavioral;

