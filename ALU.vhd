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


entity ALU is
	Port ( 
		A 		: in  STD_LOGIC_VECTOR (15 downto 0);
		B 		: in  STD_LOGIC_VECTOR (15 downto 0);
		FUNC 	: in  STD_LOGIC_VECTOR (3 downto 0);
		OUTPUT 	: out  STD_LOGIC_VECTOR (15 downto 0)
	);	
	
end ALU;

architecture Behavioral of ALU is

	signal SignedProd : STD_LOGIC_VECTOR (31 downto 0);
	signal UnsignedProd : STD_LOGIC_VECTOR (31 downto 0);
	signal SE, LEFT : STD_LOGIC := '0';
	signal INTEROUT : STD_LOGIC_VECTOR (15 downto 0);

begin

	-- output shift register
	SR : entity work.ShiftRegister
		PORT MAP(
			SE => SE,
			LEFT => LEFT,
			INPUT => INTEROUT,
			OUTPUT => OUTPUT
		);

	-- select Shift enable
	with FUNC select SE <= 
		'1' when x"1",
		'1' when x"2",
		'0' when others;
		
	-- select bitshift direction
	with FUNC select LEFT <= 
		'1' when x"1", 
		'0' when others;

	-- Intermediate signed product
	SignedProd <= std_logic_vector(signed(A) * signed(B));
	-- Intermediate unsigned product
	UnsignedProd <= std_logic_vector(A * B);

	-- select intermidiate output
	with FUNC select INTEROUT <= 
		x"0000" 							when x"0", -- 0
		A		 							when x"1", -- BITSHIFT left A
		A									when x"2", -- BITSHIFT right A
		A 									when x"3", -- A
		not A 								when x"4", -- not A
		A + 1 								when x"5", -- A + 1
		A + B								when x"6", -- A + B
		B									when x"7", -- B
		A - 1 								when x"8", -- A - 1
		A - B 								when x"9", -- A - B
		x"0000" - A 						when x"a", -- -A
		A and B 							when x"b", -- AND
		A or B 								when x"c", -- OR
		A xor B 							when x"d", -- XOR
		UnsignedProd(15 downto 0)			when x"e", -- A * B unsigned
		SignedProd(15 downto 0)				when x"f", -- A * B signed
		(others => 'U')						when others;
		
		
end Behavioral;