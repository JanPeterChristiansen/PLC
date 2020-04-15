----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:02:35 04/15/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
	Port ( 
		A 			: in  STD_LOGIC_VECTOR (15 downto 0);
      B 			: in  STD_LOGIC_VECTOR (15 downto 0);
      FUNC 		: in  STD_LOGIC_VECTOR (3 downto 0);
      OUTPUT 	: out  STD_LOGIC_VECTOR (15 downto 0)
	);	
	
end ALU;

architecture Behavioral of ALU is

	signal PROD : STD_LOGIC_VECTOR (31 downto 0);

begin

	-- Intermediate product
	PROD <= A * B;

	-- select output
	with FUNC select OUTPUT <= 
		x"0000" 						when x"0", -- 0
		x"0001" 						when x"1", -- 1
		(not x"0001") + 1			when x"2", -- -1
		A 								when x"3", -- A
		not A 						when x"4", -- not A
		A + 1 						when x"5", -- A + 1
		A + B							when x"6", -- A + B
		A + B + 1					when x"7", -- A + B + 1
		A - 1 						when x"8", -- A - 1
		A - B 						when x"9", -- A - B
		x"0000" - A 				when x"a", -- -A
		A and B 						when x"b", -- AND
		A or B 						when x"c", -- OR
		A xor B 						when x"d", -- XOR
		PROD(15 downto 0)		 	when x"e", -- A * B
		(others => 'U')			when others;
		

end Behavioral;

