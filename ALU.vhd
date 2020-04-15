----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:34 04/07/2020 
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
	Port ( 
		CLK 		: in STD_LOGIC;
		FUNC 		: in STD_LOGIC_VECTOR (7 downto 0);
		A 			: in STD_LOGIC_VECTOR (15 downto 0);
		B 			: in STD_LOGIC_VECTOR (15 downto 0);
		LED 		: out STD_LOGIC_VECTOR (7 downto 0); -- USING LED AS OUTPUT TO COMPILE
		CARRY 	: out STD_LOGIC
	);
	
end ALU;

architecture Behavioral of ALU is

	signal ControlSignal : STD_LOGIC_VECTOR (5 downto 0);
	
	signal QA 	: STD_LOGIC_VECTOR (15 downto 0);
	signal QB 	: STD_LOGIC_VECTOR (15 downto 0);
	signal SUM 	: STD_LOGIC_VECTOR (15 downto 0);
	
	signal OUTPUT : STD_LOGIC_VECTOR (15 downto 0);

begin

Interpreter : entity work.Interpreter
	Port Map(
		FUNC => FUNC,
		OUTPUT => ControlSignal
	);
	
-- selects input
InputSelect : entity work.InputSelect
	Port Map(
		A => A,
		B => B,
		ENA => ControlSignal(3),
		INVA => ControlSignal(1),
		ENB => ControlSignal(2),
		QA => QA,
		QB => QB
	);
	
-- adds A and B with carry
Adder : entity work.Adder
	Port Map(
		A => QA,
		B => QB,
		INC => ControlSignal(0),
		SUM => SUM,
		CARRY => CARRY
	);

-- selects output
OutputSelect : entity work.OutputSelect
	Port Map(
		A => QA,
		B => QB,
		SUM => SUM,
		F => ControlSignal(5 downto 4),
		OUTPUT => OUTPUT
	);

-- temporary connection for debugging
LED <= OUTPUT(7 downto 0);

end Behavioral;

