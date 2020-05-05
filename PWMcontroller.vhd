----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:33:44 05/05/2020 
-- Design Name: 
-- Module Name:    PWMcontroller - Behavioral 
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
use IEEE.NUMERIC_STD.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWMcontroller is
    Port ( clk : in  STD_LOGIC;
			  addr : in STD_LOGIC_VECTOR(3 downto 0); 
			  cmd : in STD_LOGIC_VECTOR (1 downto 0); 
			  value : in STD_LOGIC_VECTOR (7 downto 0); 
			  OUTPUT : out STD_LOGIC_VECTOR(15 downto 0);
			  we : in STD_LOGIC
			 );
end PWMcontroller;

architecture Behavioral of PWMcontroller is

COMPONENT PWM
    Port ( CLK 		: 	in  STD_LOGIC;
			  ENABLE		: 	in	 STD_LOGIC;
           PRESCALAR : 	in  STD_LOGIC_VECTOR (4 downto 0);
           COMPARE 	: 	in  STD_LOGIC_VECTOR (7 downto 0);
           OUTPUT 	: 	out STD_LOGIC;
			  OVERFLOW  :	in STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

type array_type is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0); 
type sarray_type is array (0 to 15) of STD_LOGIC_VECTOR(4 downto 0); 
signal COMPARE_ARRAY, OVERFLOW_ARRAY : array_type := (others => (others => '0'));  -- arrays containing the pwm settings
signal PRESCALAR_ARRAY : sarray_type := (others => (others => '0'));
signal ENABLE_ARRAY : STD_LOGIC_VECTOR(15 downto 0); 
signal addr_int : integer range 0 to 15; 

begin

addr_int <= to_integer(unsigned(addr)); 


PWMGEN : for I in 0 to 15 generate -- Generate stament creates 16 instances of PWM component and maps them
PWMx16 : PWM port map (CLK, ENABLE_ARRAY(I), 
PRESCALAR_ARRAY(I), COMPARE_ARRAY(I), OUTPUT(I), OVERFLOW_ARRAY(I)); 
end generate PWMGEN; 




process (clk, addr, cmd , value, we)
begin
	-- makes sure the arrays are latched. 
	
	if rising_edge(clk) then 
	
		if (we = '1') then 
		
			case cmd is
				when "00" => -- enables a pwm
					ENABLE_ARRAY(addr_int) <= value(0); 
				when "01" => -- sets the prescalar 
					PRESCALAR_ARRAY(addr_int) <= value(4 downto 0); 
				when "10" => -- sets the compare value
					COMPARE_ARRAY(addr_int) <= value; 
				when "11" => -- sets the counter length
					OVERFLOW_ARRAY(addr_int) <= value; 
				when others =>
			end case; 

		end if; 
	
	end if; 

end process; 

end Behavioral;

