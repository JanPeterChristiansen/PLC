----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:29 04/29/2020 
-- Design Name: 
-- Module Name:    Output - Behavioral 
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

entity Output is
    Port( 
		clk : in  STD_LOGIC;
		din : in  STD_LOGIC_VECTOR (15 downto 0);
		dout : out  STD_LOGIC_VECTOR (15 downto 0); 
		we : in STD_LOGIC
	);
end Output;

architecture Behavioral of Output is

	signal buff : std_logic_vector(15 downto 0) := (others => '0'); 

begin

	dout <= buff; 

	process(clk, we)
	begin
		if rising_edge(clk) then 
			if we = '1' then 
				buff <= din;
			end if;
		else
			buff <= buff; 
		end if; 
	end process; 

end Behavioral;

