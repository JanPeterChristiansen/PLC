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
			  ctrl : in STD_LOGIC_VECTOR(2 downto 0);
			  Done : out STD_LOGIC
			  );
end FirFilter;


architecture Behavioral of FirFilter is

type coefficients is array (0 to 100) of signed (15 downto 0);  -- 
type DataStore is array (0 to 100) of signed (15 downto 0); 

signal coeff : coefficients := (others => X"0000"); 
signal DelayData : DataStore := (others => X"0000");

signal counter : unsigned (7 downto 0) := X"00"; 
signal result : signed (31 downto 0) := X"00000000";
signal resultvect : STD_LOGIC_VECTOR (31 downto 0) := X"00000000"; 

signal state : STD_LOGIC_VECTOR (1 downto 0) := "10"; 
signal countCo : integer := 0; 
signal point : STD_LOGIC_VECTOR(4 downto 0); 
signal order : STD_LOGIC_VECTOR(7 downto 0); 
signal reset : STD_LOGIC := '0'; 
signal LOADCOEFF : STD_LOGIC := '0'; 
signal sync : STD_LOGIC := '0'; 


begin
	-- ctrl process 
	process(clk, ctrl, dataIN, order, point)
	begin 
			sync <= '0'; 
			reset <= '0'; 
			LOADCOEFF <= '0'; 
			order <= order; 
			point <= point; 
		case ctrl is 
			when "100" => -- load val and calc 
				sync <= '1';
			when "101" => -- load coeff 
				LOADCOEFF <= '1'; 
			when "110" => -- set point 
				if rising_edge(clk) then 
					point <= dataIN(4 downto 0); 
				end if; 
			when "111" => -- set order 
				if rising_edge(clk) then 
					order <= dataIN(7 downto 0);
				end if; 
			when "011" => -- reset 
				reset <= '1'; 
				if rising_edge(clk) then 
					point <= (others => '0'); 
				end if; 
			when others => 
		
		end case; 
		
	end process; 

	dataOUT <= resultvect(15 downto 0); 

	process(clk) -- process for handling coeffcient loading
	begin
	if (rising_edge(clk)) then
		if (reset = '1') then 
			countCo <= 0;
		elsif(LOADCOEFF = '1') then
			coeff(countCo) <= signed(DataIN); 
			countCo <= countCo + 1; 		
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
			if (loadcoeff = '0' and reset = '0') then -- when not setting coeffs or point
				case state is 
					
					when "00" => 
						resultvect <= STD_LOGIC_VECTOR(result); 
						Done <= '1'; 
						if (sync = '1') then -- start calculations on if sync
							state <= "01"; 
							result <= X"00000000"; 
							Done <= '0'; 
						end if; 
					
					when "01" => -- sequential calculation of data 
							Done <= '0'; 
							counter <= counter + 1; 
							result <= result + DelayData(to_integer(counter)) * coeff(to_integer(counter));
							if (counter = unsigned(order)) then
								state <= "10"; 
								counter <= X"00"; 
							end if; 
							
					when "10" => -- sequential bitshift of result
							Done <= '0'; 
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

