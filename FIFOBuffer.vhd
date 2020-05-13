----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:23:20 04/21/2020 
-- Design Name: 
-- Module Name:    FIFOBuffer - Behavioral 
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

entity FIFOBuffer is
	port ( 	  CLK : in STD_LOGIC; 
				  dataIN : in STD_LOGIC_VECTOR (7 downto 0); 
				  dataOUT : out STD_LOGIC_VECTOR (7 downto 0);
				  WE : in STD_LOGIC; 
				  RE : in STD_LOGIC; 
				  dataReady : out STD_LOGIC;
				  Full : out STD_LOGIC; 
				  reset : in STD_LOGIC := '1' ; 
				  buffer_space : out STD_LOGIC_VECTOR(6 downto 0)
				  ); 	  
end FIFOBuffer;

architecture Behavioral of FIFOBuffer is


COMPONENT Blockram
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    rstb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;


signal wrPTR, rePTR : STD_LOGIC_VECTOR (5 downto 0) := (others => '0'); 
signal wrs, res : STD_LOGIC_vector (0 downto 0) := "0";
type wr_state_type is (nFull, isFull); 
type re_state_type is (Empty, nEmpty); 

signal wr_state_reg, wr_state_next : wr_state_type := nFull; 
signal re_state_reg, re_state_next : re_state_type := Empty; 
signal counter : STD_LOGIC_VECTOR (6 downto 0) := "1000000"; -- counts how much space is left

begin

Bram1 : Blockram
  PORT MAP (
    clka => clk,
    wea => wrs, -- enable write 
    addra => wrPTR,
    dina => DataIN,
    clkb => clk,
    rstb => '0',
    addrb => rePTR,
    doutb => dataOUT
  );


res(0) <= RE;

buffer_space <= counter; 

-- implementation with statemachines


process(clk, reset, WE, RE, wr_state_reg, re_state_reg, counter)
begin
	counter <= counter; -- counter is normally latched
	if rising_edge(clk) then 
		if (WE = '1' and RE = '0' and wr_state_reg = nFull)then -- when something is written it counts up
		counter <= counter - 1; 
		end if; 
		if (WE = '0' and RE = '1' and re_state_reg = nEmpty)then
		counter <= counter + 1; 
		end if; 
		
	end if; 
	if reset = '1' then 
		counter <= "1000000"; 
	end if; 

end process; 

process(clk, reset) 
begin
	if rising_edge(clk) then
		if (reset = '1') then 
			wr_state_reg <= nFull; 
			re_state_reg <= Empty; 
		else
				wr_state_reg <= wr_state_next; 
				re_state_reg <= re_state_next;
		end if; 
	end if; 
end process; 


-- next state logic / output logic (mealy) write to buffer
process(reptr, wrptr, we, clk, wr_state_reg, reset) 
begin

	if (rising_edge(clk)) then  -- all clockecd processes on wrPTR need to be under the same clk event
	
		if wr_state_reg = nFull then 
			if (we = '1') then 
				wrptr <= wrptr + 1; 
			else 
				wrPTR <= wrPTR; 
			end if; 
		end if; 
		
		if reset = '1' then 
			wrPTR <= (others => '0'); 
		end if; 
	end if; 
			

	case(wr_state_reg) is
	when nFull =>
		wrs(0) <= WE; -- only allows overwriting when not full
		FULL <= '0';
		if (wrptr + 1 = reptr and we = '1') then  -- if next wr_ptr is re_ptr, then 
			wr_state_next <= isFull; 	 	
		else 
			wr_state_next <= nFull; 
		end if; 
			
	when isFull => 
		wrs(0) <= '0'; -- cannot write to wrptr 
		FULL <= '1'; 
		if (not (wrptr = reptr) ) then 
			wr_state_next <= nFull; 
		else 
			wr_state_next <= isFull; 
		end if; 	
	end case; 
	

end process; 


-- next state logic / output logic (mealy) read to buffer

process(re_state_reg, clk, re, wrptr, reptr, reset)
begin
re_state_next <= empty; 
-- the clocked output logic must be in seperate if statement to ensure prober flipflop definition apperently 
	
	if rising_edge(clk) then 
		if reset = '1' then 
			rePTR <= "000000";  
		elsif re_state_reg = nempty and re = '1' then
			rePTR <= rePTR + 1;
		else 
			rePTR <= rePTR; 
		end if; 
	end if; 
	
	case re_state_reg is
		when empty =>
			dataReady <= '0'; 
				if (not (wrptr = reptr)) then
					re_state_next <= nEmpty; 
				else 
					re_state_next <= empty; 
				end if; 
		
		when nEmpty =>
			dataready <= '1'; 			
			if (wrptr = reptr + 1 and re = '1') then 
				re_state_next <= empty; 
			else 
				re_state_next <= nEmpty; 
			end if; 	
	end case; 

end process; 


end Behavioral;

