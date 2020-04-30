----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:06:09 04/14/2020 
-- Design Name: 
-- Module Name:    FirFilter - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FirFilter is
    Port ( 
           clk : in STD_LOGIC; 
			  DataIN : in STD_LOGIC_VECTOR (15 downto 0);  
			  DataOUT : out STD_LOGIC_VECTOR (15 downto 0); 
           sync : in  STD_LOGIC;
			  Reset : in  STD_LOGIC;
			  order : in STD_LOGIC_VECTOR (7 downto 0);
			  setPoint : in STD_LOGIC;
			  LOADCOEFF : in STD_LOGIC; 
			  LED : out STD_LOGIC); 
		
end FirFilter;


architecture Behavioral of FirFilter is

type coefficients is array (0 to 100) of signed (15 downto 0);  -- 
type DataStore is array (0 to 100) of signed (15 downto 0); 

signal coeff : coefficients := (X"00FF",X"00AF",X"00FF",X"00FF",X"00AF",X"00FF",X"00AF",X"00DF",X"00AF",X"00AF",X"00CF", others => X"0000"); 
signal DelayData : DataStore := (X"00FF",X"00FF",X"00FF",X"00FF",X"00FF",X"00FF",X"00FF",X"00FF",X"00FF",X"00FF",X"00FF", others => X"0000");

signal counter : unsigned (7 downto 0) :=  X"00"; 
signal result : signed (31 downto 0) := X"00000000";
signal resultvect : STD_LOGIC_VECTOR (31 downto 0) := X"00000000"; 

signal state : STD_LOGIC_VECTOR (1 downto 0) := "10"; 
signal point : STD_LOGIC_VECTOR (4 downto 0); 
signal countCo : integer := 0; 

begin

	LED <= result(0); 
	dataOUT <= resultvect(15 downto 0); 

	process(clk) -- process for handling coeffcient loading
	begin
	if (rising_edge(clk)) then
		if (reset = '1') then 
			countCo <= 0; 
			point <= (others => '0'); 
		elsif(LOADCOEFF = '1') then
			coeff(countCo) <= signed(DataIN); 
			countCo <= countCo + 1; 		
		end if; 
		if (setPoint <= '1')
			point <= dataIN(4 downto 0); 
		end if; 
	end if; 
	end process; 

	process(clk) -- process for handling data delay
	begin
		if (rising_edge(clk) and sync = '1') then
			if (LOADCOEFF = '0') then 
				for I in 100 downto 1 loop
					DelayData(I) <= DelayData(I - 1); 
				end loop; 
				DelayData(0) <= signed(DataIN); 
			else
				for I in 100 downto 1 loop
					DelayData(I) <= X"0000"; 
				end loop; 
					DelayData(0) <= X"0000";
			end if;
		end if; 
	end process; 
	

	
	process(state, clk, sync) 
	begin
		if(rising_edge(clk)) then 
			if (loadcoeff = '0' and setPoint = '0') then -- when not setting coeffs or point
				case state is 
					
					when "00" => 
						resultvect <= STD_LOGIC_VECTOR(result); 
						if (sync = '1') then -- start calculations on if sync
							state <= "01"; 
							result <= X"00000000"; 
						end if; 
					
					when "01" => -- sequential calculation of data 
							counter <= counter + 1; 
							result <= result + DelayData(to_integer(counter)) * coeff(to_integer(counter));
							if (counter = unsigned(order)) then
								state <= "10"; 
								counter <= X"00"; 
							end if; 
							
					when "10" => -- sequential bitshift of result
							result <= shift_right(result, 1); 
							counter <= counter + 1; 
							if (counter = (unsigned(point)) - 1) then
								state <= "00"; 
								counter <= X"00"; 
							end if; 
					when others =>
				
				end case; 
				
			else -- when loading coefficents or point
				result <= X"00000000"; 
				counter <= X"00";
				state <= "00";
			end if; 
	end if; 
	end process; 
	
	
end Behavioral;

