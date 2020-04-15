--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:40:28 04/14/2020
-- Design Name:   
-- Module Name:   C:/Users/japem/Documents/repos/VHDL/PLC/ALUTestBench.vhd
-- Project Name:  PLC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALUTestBench IS
END ALUTestBench;
 
ARCHITECTURE behavior OF ALUTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         CLK 		: IN  std_logic;
         FUNC 		: IN  std_logic_vector(7 downto 0);
         A 			: IN  std_logic_vector(15 downto 0);
         B 			: IN  std_logic_vector(15 downto 0);
         LED 		: OUT  std_logic_vector(7 downto 0);
         CARRY 	: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK 		: std_logic := '0';
   signal FUNC 	: std_logic_vector(7 downto 0) 		:= x"09";
   signal A 		: std_logic_vector(15 downto 0) 		:= x"000a";
   signal B 		: std_logic_vector(15 downto 0) 		:= x"0013";

 	--Outputs
   signal LED 		: std_logic_vector(7 downto 0);
   signal CARRY 	: std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          CLK => CLK,
          FUNC => FUNC,
          A => A,
          B => B,
          LED => LED,
          CARRY => CARRY
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
