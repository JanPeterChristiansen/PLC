----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:43:40 04/22/2020 
-- Design Name: 
-- Module Name:    UartWithFifo - Behavioral 
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


entity UartWithFifo is
	 generic (baud_rate : integer ); 
    Port(clk : in  STD_LOGIC;
			dataIN : in STD_LOGIC_VECTOR (7 downto 0); 
			dataOUT : out STD_LOGIC_VECTOR (7 downto 0); 
			full : out STD_LOGIC; 
			WE : in STD_LOGIC; 
			RE : in STD_LOGIC; 
			dataReady : out STD_LOGIC; 
			rx : in STD_LOGIC;
			tx : out STD_LOGIC; 
			reset : in STD_LOGIC;
			MSB_LSB : in STD_LOGIC; -- transmits LSB when 0 MSB when 1 
			tx_buffer_space : out STD_LOGIC_VECTOR(6 downto 0); 
			rx_buffer_space : out STD_LOGIC_VECTOR(6 downto 0)
	 );
end UartWithFifo;

architecture Behavioral of UartWithFifo is

component FIFOBuffer is
	port(
		CLK : in STD_LOGIC; 
		dataIN : in STD_LOGIC_VECTOR (7 downto 0); 
		dataOUT : out STD_LOGIC_VECTOR (7 downto 0);
		WE : in STD_LOGIC; 
		RE : in STD_LOGIC; 
		dataReady : out STD_LOGIC;
		Full : out STD_LOGIC;
		reset : in STD_LOGIC;
		buffer_space : out STD_LOGIC_VECTOR(6 downto 0)
	); 	  
end component; 
 

component uart IS
	GENERIC(
		clk_freq	:	INTEGER		:= 32_000_000;	--frequency of system clock in Hertz
		baud_rate	:	INTEGER		:= 460_800;		--data link baud rate in bits/second
		os_rate		:	INTEGER		:= 16;			--oversampling rate to find center of receive bits (in samples per baud period)
		d_width		:	INTEGER		:= 8; 			--data bus width
		parity		:	INTEGER		:= 0;				--0 for no parity, 1 for parity
		parity_eo	:	STD_LOGIC	:= '0');			--'0' for even, '1' for odd parity
	PORT(
		clk		:	IN STD_LOGIC;										--system clock
		reset_n	:	IN STD_LOGIC;										--ascynchronous reset
		tx_ena	:	IN STD_LOGIC;										--initiate transmission
		tx_data	:	IN STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
		rx		:	IN STD_LOGIC := '0';										--receive pin
		rx_busy	:	OUT	STD_LOGIC;										--data reception in progress
		rx_error:	OUT	STD_LOGIC;										--start, parity, or stop bit error detected
		rx_data	:	OUT	STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);	--data received
		tx_busy	:	OUT	STD_LOGIC;  									--transmission in progress
		tx		:	OUT	STD_LOGIC);										--transmit pin
END component; 


function reverse_vector(vect : in std_logic_vector) return std_logic_vector is 
	variable result:  STD_logic_vector(vect'RANGE); 
	alias rvect: std_logic_vector(vect'reverse_range) is vect; 
begin
	for i in rvect'range loop
		result(i) := rvect(i); 
	end loop; 
	return result; 
end; 


signal tx_data, rx_data, tx_data_conv : STD_LOGIC_VECTOR(7 downto 0);
signal tx_re, tx_dataReady, tx_ena, rx_busy, rx_error, tx_busy, RX_full, rx_we, receive: STD_LOGIC := '0'; 

type txlink_state_type is (s0, s1 , s2); 
type rxlink_state_type is (s0, s1); 

signal txlink_statereg, txlink_statenext: txlink_state_type; 
signal rxlink_statereg, rxlink_statenext: rxlink_state_type; 


begin



TXbuffer : FIFObuffer 
port map(
	clk => clk,
	dataIN => dataIN, 
	dataOUT => tx_data, 
	WE => WE, 
	RE => tx_re,
	dataReady => tx_dataready, 
	full => full,
	reset => reset, 
	buffer_space => tx_buffer_space
	); 
	
RXbuffer : FIFObuffer 
port map(
	clk => clk,
	dataIN => rx_data,
	dataOUT => dataOUT,
	WE => rx_we,
	RE => RE,
	dataReady => dataReady,
	full => rx_full,
	reset => reset,
	buffer_space => rx_buffer_space

); 
	
uart1 : uart 
generic map(
baud_rate => baud_rate
)
port map(
clk => clk,
reset_n => reset,
tx_ena => tx_ena,
tx_data => tx_data_conv,
rx => rx,
rx_busy => rx_busy,
rx_error => rx_error, 
rx_data => rx_data,  
tx_busy => tx_busy,
tx => tx); 

--tx buffer to uart link FSM

process(clk, reset)
begin 
if rising_edge(clk) then
		if reset = '1' then 
			txlink_statereg <= s0; 
			rxlink_statereg <= s0; 
		else
			txlink_statereg <= txlink_statenext; 
			rxlink_statereg <= rxlink_statenext; 
		end if;
end if;
end process;  
-- next state logic
process(txlink_statereg, tx_busy, tx_dataready, reset)
begin
		tx_re <= '0'; 
		tx_ena <= '0'; 
		txlink_statenext <= s0; 
	case txlink_statereg is
		when s0 => 
			tx_re <='0'; 
			if (tx_busy = '0' and tx_dataready = '1') then
				txlink_statenext <= s1; 
				tx_ena <= '1'; 
			else 
				txlink_statenext <= s0;
				tx_ena <='0';
			end if; 
		when S1 =>
			txlink_statenext <= s2; 
			tx_ena <= '1'; 
		when S2 =>
			txlink_statenext <= s0; 
			tx_re <='1'; 
	end case; 
end process;



-- rx to buffer FSM 
-- nextstate logic
process(rxlink_statereg, rx_busy)
begin
	case rxlink_statereg is
	when s0 => 
		if falling_edge(rx_busy)then 
			rxlink_statenext <= S1;
		end if; 
	when s1 =>
		rxlink_statenext <= s0; 
	end case; 
end process; 
-- output logic
process(rxlink_statereg)
begin
	case rxlink_statereg is 
	when s0 =>
		rx_we <='0';
	when s1 =>
		rx_we <= '1';
	end case; 
end process; 

--MSB/LSB converter 
with MSB_LSB select tx_data_conv <=
	tx_data when '0',
	reverse_vector(tx_data) when'1', 
	tx_data when others;
end Behavioral;