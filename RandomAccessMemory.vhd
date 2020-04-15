----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:46 04/15/2020 
-- Design Name: 
-- Module Name:    RandomAccessMemory - Behavioral 
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

entity RandomAccessMemory is
    Port ( CLK : in  STD_LOGIC;
           ADDR : in  STD_LOGIC_VECTOR (15 downto 0);
			  WE : in  STD_LOGIC;
			  ENABLE : in STD_LOGIC;
           MEM_BUS : inout  STD_LOGIC_VECTOR (15 downto 0)
			  );
           
end RandomAccessMemory;

architecture Behavioral of RandomAccessMemory is

	type ram_type is array (0 to 65535) of STD_LOGIC_VECTOR (15 downto 0);
	signal RAM : ram_type := (others => (others => '0'));

begin

	process(CLK)
	begin
		if (ENABLE = '1') then
			if rising_edge(CLK) then
				if (WE = '1') then
					RAM(conv_integer(ADDR)) <= MEM_BUS;
				else
					MEM_BUS <= RAM(conv_integer(ADDR));
				end if;
			end if;
		end if;
	end process;

end Behavioral;

