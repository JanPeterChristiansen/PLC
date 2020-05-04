--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:11:50 05/04/2020
-- Design Name:   
-- Module Name:   E:/GitHub/PLC/OutputConMuxTest.vhd
-- Project Name:  PLC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OutputConnectionMux
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
 
ENTITY OutputConMuxTest IS
END OutputConMuxTest;
 
ARCHITECTURE behavior OF OutputConMuxTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OutputConnectionMux
    PORT(
         clk : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(15 downto 0);
         OutputBuffer : IN  std_logic_vector(15 downto 0);
         PWMsignals : IN  std_logic_vector(15 downto 0);
         SetupData : IN  std_logic_vector(9 downto 0);
         we : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal OutputBuffer : std_logic_vector(15 downto 0) := (others => '0');
   signal PWMsignals : std_logic_vector(15 downto 0) := (others => '0');
   signal SetupData : std_logic_vector(9 downto 0) := (others => '0');
   signal we : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OutputConnectionMux PORT MAP (
          clk => clk,
          OUTPUT => OUTPUT,
          OutputBuffer => OutputBuffer,
          PWMsignals => PWMsignals,
          SetupData => SetupData,
          we => we
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	process 
	begin 
		PWMsignals(0) <= '0';
		wait for clk_period*4; 
		PWMsignals(0) <= '1';
		wait for clk_period*4; 
	end process; 
		
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		we <= '1'; 
		SetupData <= "0010010000";
		wait until rising_edge(clk); 
		SetupData <= "0101010000";
		wait until rising_edge(clk); 
		SetupData <= "1000010000";
		wait until rising_edge(clk); 
		SetupData <= "1011010000";
		wait until rising_edge(clk); 
		SetupData <= "1110010000";
		wait until rising_edge(clk);
		we <= '0'; 
      -- insert stimulus here 

      wait;
   end process;

END;
