----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:13 05/06/2020 
-- Design Name: 
-- Module Name:    FirFilterController - Behavioral 
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

entity FirFilterController is
    Port ( clk : in  STD_LOGIC;
           input : in  STD_LOGIC_VECTOR(15 downto 0);
           output : out  STD_LOGIC(15 downto 0); 
			  addr : in STD_LOGIC(1 downto 0); 
			  ctrl : in STD_LOGIC_VECTOR(1 downto 0); 
			  loadcoeff : in STD_LOGIC; 
			  sync : in STD_LOGIC; 		  
			  );
end FirFilterController;






end Behavioral;

