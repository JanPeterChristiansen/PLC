----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:23 04/21/2020 
-- Design Name: 
-- Module Name:    ShiftRegister - Behavioral 
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

entity ShiftRegister is
    Port ( 	SE : in  STD_LOGIC;
			LEFT : in STD_LOGIC;
			INPUT : in  STD_LOGIC_VECTOR (15 downto 0);
			OUTPUT : out  STD_LOGIC_VECTOR (15 downto 0));
end ShiftRegister;

architecture Behavioral of ShiftRegister is

begin

	process(SE, LEFT, INPUT)
	begin
		if (SE = '1') then
			if (LEFT = '1') then
				OUTPUT(15 downto 1) <= INPUT(14 downto 0);
				OUTPUT(0) <= '0';
			else
				OUTPUT(14 downto 0) <= INPUT(15 downto 1);
				if (signed(INPUT) < x"0000") then
					OUTPUT(15) <= '1';
				else
					OUTPUT(15) <= '0';
				end if;
			end if;
		else
			OUTPUT <= INPUT;
		end if;
	end process;

end Behavioral;

