----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:05 04/21/2020 
-- Design Name: 
-- Module Name:    OnOff - Behavioral 
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

entity OnOff is
    Port ( sensIn : in  STD_LOGIC_VECTOR(15 downto 0);
			  Ref		: in  STD_LOGIC_VECTOR(15 downto 0);
			  Limit	: in  STD_LOGIC_VECTOR(15 downto 0);
			  Reverse: in 	STD_LOGIC;
			  CLK		: in  STD_LOGIC;
           Output : out STD_LOGIC := '0');
end OnOff;

architecture Behavioral of OnOff is

begin 
	process(sensIn,Ref,Limit)
		begin 
		
		case(reverse) is
		when '1' => 
		if sensIn > Ref then 
		Output <= '0';
		
		elsif sensIn < Limit then 
		Output <= '1';
		end if;
		
		when '0' =>
			if sensIn > Ref then 
		Output <= '1';
		
		elsif sensIn < Limit then 
		Output <= '0';
		end if;
		
		when others =>
		end case;
	end process;
	













end Behavioral;

