----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:11 05/04/2020 
-- Design Name: 
-- Module Name:    OutputConnectionMux - Behavioral 
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

entity OutputConnectionMux is
    Port ( clk : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (15 downto 0);
			  OutputBuffer : in STD_LOGIC_VECTOR (15 downto 0);
			  PWMsignals : in STD_LOGIC_VECTOR (15 downto 0);
			  OOCCsignals : in STD_LOGIC_VECTOR (15 downto 0); 
			  SetupData : in STD_LOGIC_VECTOR (9 downto 0);
			  we : in STD_LOGIC
			  ); 
end OutputConnectionMux;

architecture Behavioral of OutputConnectionMux is

type module_type is array (0 to 15) of std_logic_vector (1 downto 0); -- makes it possible to addres the diffrent module vectors
signal module : module_type; 

type module_addr_type is array (0 to 15) of STD_LOGIC_VECTOR (3 downto 0); -- registers contianing the addr of the desired module in the module vector
signal module_addr : module_addr_type; 

type module_mux_type is array (0 to 3) of STD_LOGIC_VECTOR (15 downto 0); -- contains the diffrent module vectors
signal module_mux : module_mux_type; 

begin

module_mux(0) <= OutputBuffer; 
module_mux(1) <= PWMsignals; 
module_mux(2) <= OOCCsignals; 
module_mux(3) <= (others => '-'); 

process (clk, we, SetupData, module, module_addr) -- setup module and address for pin of address 
begin
	module <= module; 
	module_addr <= module_addr; 
	if rising_edge(clk) then
		if (we = '1') then
			module(conv_integer(SetupData(9 downto 6))) <= SetupData(5 downto 4); 
			module_addr(conv_integer(SetupData(9 downto 6))) <= SetupData(3 downto 0); 
		end if;
	end if; 
end process;

 
process(module_addr, module, PWMsignals, OutputBuffer, module_mux)
begin
	for I in 0 to output'length - 1 loop
	OUTPUT(I) <= module_mux(conv_integer(module(I)))(conv_integer(module_addr(I)));  
	end loop;
end process;




end Behavioral;

