----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:55:10 04/15/2020 
-- Design Name: 
-- Module Name:    Multiplier - Behavioral 
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

entity Multiplier is
    Port ( A 			: in  STD_LOGIC_VECTOR (15 downto 0);
           B 			: in  STD_LOGIC_VECTOR (15 downto 0);
           OUTPUT 	: out  STD_LOGIC_VECTOR (31 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is

	signal PROD : signed (31 downto 0);

begin

	PROD <= signed(A) * signed(B);
	OUTPUT <= std_logic_vector(PROD(15 downto 0));

end Behavioral;

