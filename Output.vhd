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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Output is
    Port ( clk : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (15 downto 0); 
			  addr : in STD_LOGIC_VECTOR(3 downto 0);
			  we : in STD_LOGIC; 
			  overide : in STD_LOGIC
			  );
end Output;

architecture Behavioral of Output is
signal buff : std_logic_vector(15 downto 0) := (others => '0'); 

begin
dout <= buff; 
process(clk, addr, we)
begin
	if rising_edge(clk) then 
		if we = '1' then 
			if overide = '1' then
				buff <= din; 
			else
				buff(conv_integer(addr)) <= din(conv_integer(addr)); 
			end if; 
		end if; 
	else
		buff <= buff; 
	end if; 
end process; 
end Behavioral;

