----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:16 04/28/2020 
-- Design Name: 
-- Module Name:    InputRegisters - Behavioral 
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

entity InputRegisters is
	Port(
		clk : in  STD_LOGIC;
		din : in STD_LOGIC_VECTOR (15 downto 0);
		addr : in STD_LOGIC_VECTOR (3 downto 0);
		dout : out STD_LOGIC_VECTOR (15 downto 0);
		re : in STD_LOGIC
	);
	
end InputRegisters;

architecture Behavioral of InputRegisters is

	type reg_type is array (0 to 15) of STD_LOGIC_VECTOR (15 downto 0);
	signal REG : reg_type := (others => (others => '0'));
	
begin

	process(din)
	begin
		for i in 0 to 15 loop
			REG(i) <= 
		
		end loop;
	
	end process;



end Behavioral;

