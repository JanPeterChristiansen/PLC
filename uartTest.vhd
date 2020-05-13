--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:22:37 05/13/2020
-- Design Name:   
-- Module Name:   E:/GitHub/PLC/uartTest.vhd
-- Project Name:  PLC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UartWithFifo
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY uartTest IS
END uartTest;
 
ARCHITECTURE behavior OF uartTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UartWithFifo
    PORT(
         clk : IN  std_logic;
         dataIN : IN  std_logic_vector(7 downto 0);
         dataOUT : OUT  std_logic_vector(7 downto 0);
         full : OUT  std_logic;
         WE : IN  std_logic;
         RE : IN  std_logic;
         dataReady : OUT  std_logic;
         rx : IN  std_logic;
         tx : OUT  std_logic;
         reset : IN  std_logic;
         MSB_LSB : IN  std_logic;
         tx_buffer_space : OUT  std_logic_vector(6 downto 0);
         rx_buffer_space : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal dataIN : std_logic_vector(7 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal RE : std_logic := '0';
   signal rx : std_logic := '0';
   signal reset : std_logic := '0';
   signal MSB_LSB : std_logic := '0';

 	--Outputs
   signal dataOUT : std_logic_vector(7 downto 0);
   signal full : std_logic;
   signal dataReady : std_logic;
   signal tx : std_logic;
   signal tx_buffer_space : std_logic_vector(6 downto 0);
   signal rx_buffer_space : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UartWithFifo PORT MAP (
          clk => clk,
          dataIN => dataIN,
          dataOUT => dataOUT,
          full => full,
          WE => WE,
          RE => RE,
          dataReady => dataReady,
          rx => rx,
          tx => tx,
          reset => reset,
          MSB_LSB => MSB_LSB,
          tx_buffer_space => tx_buffer_space,
          rx_buffer_space => rx_buffer_space
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
