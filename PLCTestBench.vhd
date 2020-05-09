--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:12:55 05/08/2020
-- Design Name:   
-- Module Name:   C:/Users/japem/Documents/repos/VHDL/PLC/PLCTestBench.vhd
-- Project Name:  PLC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PLC
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
 
ENTITY PLCTestBench IS
END PLCTestBench;
 
ARCHITECTURE behavior OF PLCTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PLC
    PORT(
         clk : IN  std_logic;
         RX : IN  std_logic_vector(15 downto 0);
         TX : OUT  std_logic_vector(15 downto 0);
         INPUT : IN  std_logic_vector(15 downto 0);
         OUTPUT : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal RX : std_logic_vector(15 downto 0) := (others => '1');
   signal INPUT : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal TX : std_logic_vector(15 downto 0);
   signal OUTPUT : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PLC PORT MAP (
          clk => clk,
          RX => RX,
          TX => TX,
          INPUT => INPUT,
          OUTPUT => OUTPUT
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
