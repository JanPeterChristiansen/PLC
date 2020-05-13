----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:55 04/28/2020 
-- Design Name: 
-- Module Name:    SerialIO - Behavioral 
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
--

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SerialIO is
	Port(
		clk : in  STD_LOGIC;
		addr : in STD_LOGIC_VECTOR (3 downto 0);
		din : in STD_LOGIC_VECTOR (7 downto 0);
		dout : out STD_LOGIC_VECTOR (7 downto 0);
		re : in STD_LOGIC;
		we : in STD_LOGIC;
		full : out STD_LOGIC;
		dready : out STD_LOGIC;
		rst : in STD_LOGIC;
		msb_lsb : in STD_LOGIC;
		rx : in STD_LOGIC_VECTOR (15 downto 0);
		tx : out STD_LOGIC_VECTOR (15 downto 0);
		tx_buffer_space : out STD_LOGIC_VECTOR (6 downto 0)
	);
	
end SerialIO;


architecture Behavioral of SerialIO is
	
	signal re_vec 		: STD_LOGIC_VECTOR (15 downto 0);
	signal we_vec 		: STD_LOGIC_VECTOR (15 downto 0);
	signal full_vec 	: STD_LOGIC_VECTOR (15 downto 0);
	signal dready_vec 	: STD_LOGIC_VECTOR (15 downto 0);
	signal rst_vec 		: STD_LOGIC_VECTOR (15 downto 0);
	signal msb_lsb_vec 	: STD_LOGIC_VECTOR (15 downto 0);
	type dout_type is array (0 to 15) of STD_LOGIC_VECTOR (7 downto 0);
	type buff_space_type is array (0 to 15) of STD_LOGIC_VECTOR (6 downto 0); 
	signal dout_vec : dout_type;
	signal buff_space_array : buff_space_type; 

begin

UART0 : entity work.UARTWithFifo
	Generic map(baud_rate => 9600)
	Port Map(
		clk => clk,
		dataIN => din,
		dataOUT => dout_vec(0),
		full => full_vec(0),
		WE => we_vec(0),
		RE => re_vec(0),
		dataReady => dready_vec(0),
		rx => rx(0),
		tx => tx(0),
		reset => rst_vec(0),
		MSB_LSB => msb_lsb_vec(0),
		tx_buffer_space => buff_space_array(0)
	);

UART1 : entity work.UARTWithFifo
	Generic map(baud_rate => 9600)
	Port Map(
		clk => clk,
		dataIN => din,
		dataOUT => dout_vec(1),
		full => full_vec(1),
		WE => we_vec(1),
		RE => re_vec(1),
		dataReady => dready_vec(1),
		rx => rx(1),
		tx => tx(1),
		reset => rst_vec(1),
		MSB_LSB => msb_lsb_vec(1),
		tx_buffer_space => buff_space_array(1)
	);
	
UART2 : entity work.UARTWithFifo
	Generic map(baud_rate => 9600)
	Port Map(
		clk => clk,
		dataIN => din,
		dataOUT => dout_vec(2),
		full => full_vec(2),
		WE => we_vec(2),
		RE => re_vec(2),
		dataReady => dready_vec(2),
		rx => rx(2),
		tx => tx(2),
		reset => rst_vec(2),
		MSB_LSB => msb_lsb_vec(2),
		tx_buffer_space => buff_space_array(2)
	);

UART3 : entity work.UARTWithFifo
	Generic map(baud_rate => 9600)
	Port Map(
		clk => clk,
		dataIN => din,
		dataOUT => dout_vec(3),
		full => full_vec(3),
		WE => we_vec(3),
		RE => re_vec(3),
		dataReady => dready_vec(3),
		rx => rx(3),
		tx => tx(3),
		reset => rst_vec(3),
		MSB_LSB => msb_lsb_vec(3),
		tx_buffer_space => buff_space_array(3)
	);

UART4 : entity work.UARTWithFifo
	Generic map(baud_rate => 9600)
	Port Map(
		clk => clk,
		dataIN => din,
		dataOUT => dout_vec(4),
		full => full_vec(4),
		WE => we_vec(4),
		RE => re_vec(4),
		dataReady => dready_vec(4),
		rx => rx(4),
		tx => tx(4),
		reset => rst_vec(4),
		MSB_LSB => msb_lsb_vec(4),
		tx_buffer_space => buff_space_array(4)
	);


	-- mux control signals

	full <= full_vec(conv_integer(addr));
	dready <= dready_vec(conv_integer(addr));
	msb_lsb_vec(conv_integer(addr)) <= msb_lsb;



process (addr, re, we, rst, dout_vec, buff_space_array)
begin
	
	-- avoid unintentional latches
	re_vec <= (others => '0');
	we_vec <= (others => '0');
	rst_vec <= (others => '0'); 
	rst_vec(conv_integer(addr)) <= rst;
	re_vec(conv_integer(addr)) <= re;
	we_vec(conv_integer(addr)) <= we;
	
	tx_buffer_space <= buff_space_array(conv_integer(addr)); 

	
	-- mux dataout
	if (re = '1') then
		dout <= dout_vec(conv_integer(addr));
	else
		dout <= (others => 'Z');
	end if;
	
	
end process;
	
	
		



end Behavioral;

