----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:19 04/30/2020 
-- Design Name: 
-- Module Name:    Interrupt - Behavioral 
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

entity Interrupt is
    Port ( clk : in  STD_LOGIC;
				we : in STD_LOGIC; 
				ptr : out STD_LOGIC_VECTOR (15 downto 0); 
				done : in STD_LOGIC; 
				interrupt : out STD_LOGIC; 
				pins : in STD_LOGIC_VECTOR(3 downto 0)
				
	 );
end Interrupt;

architecture Behavioral of Interrupt is

signal pending : STD_LOGIC_VECTOR(3 downto 0); 
signal rst : STD_LOGIC_VECTOR(3 downto 0); 
signal addr : integer range 0 to 3 ; 

type isrreg_type  is array (0 to 3) of STD_LOGIC_VECTOR(15 downto 0); 

signal isrreg : isrreg_type; 


begin

interrupt <= pending(0) or pending(1) or pending(2) or pending(3); 
ptr <= isrreg(addr); 

process (clk)
begin
	if rising_edge(clk) then 
		-- Set reset for interrupts  
		for I in 0 to pins'length loop
			if (pending(I) = '0') then 
				pending(I) <=  pins(I); 
			end if; 
			if rst(I) = '1' then 
				pending(I) <= '0'; 
			end if; 	
		end loop;
-- rst pending interrupt on rising edge 		
		if done = '1' then 
			
		end if; 

	end if; 
end process; 	

-- Interrupt priority 
process(pending)
begin 
	if (pending(3) = '1') then
		addr <= 3; 
	end if; 
	if (pending(2) = '1') then
		addr <= 2; 
	end if; 	
	if (pending(1) = '1') then
		addr <= 1; 
	end if; 
	if (pending(0) = '1') then
		addr <= 0; 
	end if; 
end process; 


end Behavioral;

