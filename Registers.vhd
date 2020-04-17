----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:37:22 03/26/2020 
-- Design Name: 
-- Module Name:    Registers - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registers is
    Port ( clk : in STD_LOGIC; 
			  addrA : in  STD_LOGIC_VECTOR (3 downto 0);
			  addrB : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (15 downto 0);
           A : out  STD_LOGIC_VECTOR (15 downto 0);
			  B : out STD_LOGIC_VECTOR (15 downto 0);
			  reA : in STD_LOGIC; 
			  reB : in STD_LOGIC; 
           we : in  STD_LOGIC);
end Registers;

architecture Behavioral of Registers is

	type reg_type is array (0 to 15) of STD_LOGIC_VECTOR (15 downto 0);  
	signal REG : reg_type := (others => (others => '0')); 
	
begin

-- CAN ONLY WRITE C-BUS TO THE ADDRESS SPECIFIED FOR A-BUS

process(clk, reA, reB, REG, addrA, addrB)
begin
	
		-- read from register address A to A-bus
		if reA = '1' then  
			A <= REG(conv_integer(addrA)); 
		else
			A <= (others => 'Z'); 
		end if; 
		
		-- read from register address B to B-bus
		if reB = '1' then
			B <= REG(conv_integer(addrB));
		else 
			B <= (others => 'Z'); 
		end if;

	-- falling edge -> write to register address A from C-bus
	if falling_edge(clk) then
		if (we = '1') then
			REG(conv_integer(addrA)) <= C;
		end if;
	end if;

end process; 
end Behavioral;

