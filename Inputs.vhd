----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:43:19 04/29/2020 
-- Design Name: 
-- Module Name:    Inputs - Behavioral 
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


entity Inputs is
	Port(
		clk : in  STD_LOGIC;
		din : in STD_LOGIC_VECTOR (15 downto 0);
		dout : out STD_LOGIC_VECTOR (15 downto 0)
	);
	
end Inputs;

architecture Behavioral of Inputs is

	signal buff : STD_LOGIC_VECTOR (15 downto 0);
	
begin

	-- assert buffer
	process(clk, buff)
	begin
		if rising_edge(clk) then
			buff <= din;
		else
			buff <= buff;
		end if;
	end process;
	
	-- connect to out
	dout <= buff;

end Behavioral;

