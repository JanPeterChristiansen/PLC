----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:27:59 05/06/2020 
-- Design Name: 
-- Module Name:    OnOffControllerController - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OnOffControllerController is
    Port ( clk : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR(3 downto 0);
           Input : in  STD_LOGIC_VECTOR (15 downto 0);
           ws : in  STD_LOGIC_VECTOR (2 downto 0);
           outputs : out  STD_LOGIC_VECTOR (15 downto 0));
end OnOffControllerController;

architecture Behavioral of OnOffControllerController is

COMPONENT OnOff 
    Port ( sensIn : in  STD_LOGIC_VECTOR(15 downto 0);
			  Ref		: in  STD_LOGIC_VECTOR(15 downto 0);
			  Limit	: in  STD_LOGIC_VECTOR(15 downto 0);
			  Reverse: in 	STD_LOGIC;
			  CLK		: in  STD_LOGIC;
           Output : out STD_LOGIC := '0');
END COMPONENT; 


type array_type is array (0 to 15) of std_logic_vector(15 downto 0); 

signal sense_Array, Ref_Array, Limit_Array : array_type; 

signal reverse_vector : STD_LOGIC_VECTOR(15 downto 0);  
signal addr_int : integer range 0 to 15; 

begin
addr_int <= to_integer(unsigned(addr)); 

OnOFFGEN : for I in 0 to 15 generate -- Generate stament creates 16 instances of PWM component and maps them
OnOFFx16 : OnOFF port map (sense_array(I), Ref_Array(I), 
Limit_Array(I), Reverse_vector(I), clk, outputs(I)); 
end generate OnOFFGEN; 

process (ws, clk, addr, Input)
begin
	if rising_edge(clk) then 
		case (ws) is 
			when "100" => -- sense in
				sense_Array(addr_int) <= Input;  
			when "101" => -- ref
				Ref_Array(addr_int) <= Input; 
			when "110" => -- limit-lower
				Limit_Array(addr_int) <= Input; 
			when "111" => -- reverse
				reverse_vector <= Input; 
			when others =>
			
		end case; 
	end if; 
end process; 
end Behavioral;

