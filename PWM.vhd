----------------------------------------------------------------------------------
-- Company:  Aalborg University
-- Engineer: Andreas &
--				 Frederik
-- 
-- Create Date:    11:45:27 04/28/2020 
-- Module Name:    PWM - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
    Port ( CLK 		: 	in  STD_LOGIC;
			  ENABLE		: 	in	 STD_LOGIC;
           PRESCALAR : 	in  STD_LOGIC_VECTOR (7 downto 0);
           COMPARE 	: 	in  STD_LOGIC_VECTOR (7 downto 0);
           OUTPUT 	: 	out STD_LOGIC;
			  OVERFLOW  :	in STD_LOGIC_VECTOR (7 downto 0));
end PWM;



architecture Behavioral of PWM is

	signal dclk : unsigned (31 downto 0) := to_unsigned(0,32);
	signal scaledclk : STD_LOGIC; -- Will correspond to a certain bit in dclk
	signal cntr : unsigned (7 downto 0) := to_unsigned(0,8);
	

begin
scaledclk <= dclk(to_integer(unsigned(PRESCALAR))); 

clk_scale : process(clk)
begin
	if rising_edge(clk) then 
		dclk <= dclk + 1;
	end if;	
end process;

pwm_proc : process(clk,scaledclk)
begin
	if ENABLE = '0' then
		OUTPUT <= '0';
	elsif rising_edge(scaledclk) then
		if cntr >= unsigned(OVERFLOW) then
			cntr <= to_unsigned(0,8);
		else
			
			if cntr < unsigned(COMPARE) then
				OUTPUT <= '0';  		
			else 
				OUTPUT <= '1';  
			end if;
			cntr <= cntr + 1; 
		end if;
	end if;
end process;

end Behavioral;


