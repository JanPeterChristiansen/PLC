----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:26 04/30/2020 
-- Design Name: 
-- Module Name:    Stackcontrol - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Stackcontrol is
    Port ( 	clk : in  STD_LOGIC;
				INC : in STD_LOGIC;
				DEC : in STD_LOGIC;
				stk : out STD_LOGIC_VECTOR(9 downto 0)
	 );
end Stackcontrol;

architecture Behavioral of Stackcontrol is

signal TOS : STD_LOGIC_VECTOR(9 downto 0) := (others => '1');

begin

stk <= TOS; 

process (clk, INC, DEC)
begin
	if rising_edge(clk) then
	
		if (INC = '1') then
			TOS <= TOS - 1; 
		end if; 
		
		if (DEC = '1') then
			TOS <= TOS + 1; 
		end if; 

	end if; 
end process; 



end Behavioral;

