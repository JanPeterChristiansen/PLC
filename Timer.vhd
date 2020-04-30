----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:19:17 04/27/2020 
-- Design Name: 
-- Module Name:    Timer - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Timer is

port( 
	CLK 		: in std_logic;
	RESET	   : in std_logic;
	MSEC		: inout std_logic_vector(9 downto 0)  := (others => '0');
	SEC 		: inout std_logic_vector(5 downto 0)  := (others => '0');
	MIN 		: inout std_logic_vector(5 downto 0)  := (others => '0');
	HOUR 		: inout std_logic_vector(15 downto 0) := (others => '0'));
end Timer;

architecture Behavioral of Timer is
	signal ticks : std_logic_vector(14 downto 0) := (others => '0');
begin

process(CLK) is 
begin

if rising_edge(CLK) then 
	if RESET = '1' then 
		MSEC  	<= (others => '0');
		SEC 		<= (others => '0');
		MIN 		<= (others => '0');
		HOUR   	<= (others => '0');
		ticks   	<= (others => '0');
	else 
		if conv_integer(ticks) = 31999 then
			MSEC <= MSEC+1;
			ticks <= (others => '0');
			if conv_integer(MSEC) = 999 then
				SEC <= SEC+1;
				MSEC <= (others => '0');
					if conv_integer(SEC) = 59 then
						MIN <= MIN+1;
						SEC <= (others => '0');
						if conv_integer(MIN) = 59 then
							HOUR <= HOUR+1;
							MIN <= (others => '0');
						end if;
					end if;
			end if;
		else
			ticks <= ticks + 1;
		end if;
	end if;
end if;
end process;

end Behavioral;