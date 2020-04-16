----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:34 04/15/2020 
-- Design Name: 
-- Module Name:    PLC - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PLC is
	Port ( 
		clk : in  STD_LOGIC;
		LED : out STD_LOGIC_VECTOR(7 downto 0)
	);
	
end PLC;

architecture Behavioral of PLC is

	-- PROGRAMM
	type ram_type is array (0 to 15) of STD_LOGIC_VECTOR (27 downto 0);
	signal PROG : ram_type := (x"ef00002", x"ef10002", x"0f00001", x"1100001", 
										x"0000000", x"0000000", x"0000000", x"0000000", 
										x"0000000", x"0000000", x"0000000", x"0000000",
										x"0000000", x"0000000", x"0000000", x"0000000");
										-- 8-bit  | 4-bit | 16-bit 
										-- opcode | reg   | value

	signal PC : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal start : STD_LOGIC := '1';
	signal cmd : STD_LOGIC_VECTOR (27 downto 0) := x"0000000";

	-- control signals for ALU
	signal ALUfunc : STD_LOGIC_VECTOR (3 downto 0) := x"0";

	-- CPU busses
	signal A, B, C : STD_LOGIC_VECTOR (15 downto 0);
	
	-- control signals for registers
	signal addrA, addrB : STD_LOGIC_VECTOR (3 downto 0);
	signal reA, reB, weC : STD_LOGIC;

	-- control signals for memory
	signal mem_bus : STD_LOGIC_VECTOR (15 downto 0);
	signal mem_addr : STD_LOGIC_VECTOR (15 downto 0);
	signal mem_we : STD_LOGIC;
	signal mem_enable : STD_LOGIC;

begin

ALU : entity work.ALU
	Port Map(
		A => A,
		B => B,
		FUNC => ALUfunc,
		OUTPUT => C
	);

REG : entity work.Registers
	Port Map(
		CLK => clk,
		addrA => addrA,
		addrB => addrB,
		A => A,
		B => B,
		C => C,
		reA => reA,
		reB => reB,
		we => weC
	);

RAM : entity work.RandomAccessMemory
	Port Map(
		CLK => clk,
		ADDR => mem_addr,
		WE => mem_we,
		MEM_BUS => mem_bus,
		ENABLE => mem_enable
	);


cmd <= PROG(conv_integer(PC));


process(clk)
begin
	if rising_edge(clk) then
		if (start = '1') then	
			start <= '0';
		else
			PC <= PC + 1;
		end if;
	end if;	
end process;



PROCCESSEN : process(cmd)
begin
	
	-- SET DEFAULT
	A <= (others => 'Z');
	B <= (others => 'Z');
	ALUfunc <= x"0";
	addrA <= (others => 'Z');
	addrB <= (others => 'Z');
	reA <= '0'; 
	reB <= '0';
	weC <= '0';
	mem_enable <= '0';
	mem_we <= '0';
	mem_addr <= (others => 'Z');
	
	-- change relevant values to execute an opcode
	case (cmd(27 downto 20)) is
		when x"00" => 								-- NOP
			-- There is nothing here. Keep reading...
			
			
			
		when x"01" => -- NOT reg (bitwise, direct)
			ALUfunc <= x"4"; 						-- write not A to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1';								-- write from C-bus to target register
			
		when x"02" => 								-- NOT reg (bitwise, indirect)
			-- TBD
			
			
			
		when x"03" => -- ANDi reg $value (bitwise, Immediate)
			B <= cmd(15 downto 0); 				-- write $value to B-bus
			ALUfunc <= x"b"; 						-- write A and B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"04" => -- AND reg reg (bitwise, direct)
			ALUfunc <= x"b"; 						-- write A and B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1';								-- write from C-bus to target register
		
		when x"05" => -- AND reg reg (bitwise, indirect)
			 -- TBD
		
		
		
		when x"06" => -- ORi reg $value (bitwise, Immediate)
			B <= cmd(15 downto 0); 				-- write $value to B-bus
			ALUfunc <= x"c"; 						-- write A or B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"07" => -- OR reg reg (bitwise, direct)
			ALUfunc <= x"c"; 						-- write A or B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"08" => -- OR reg reg (bitwise, indirect)
			 -- TBD
		
		
		
		when x"09" => -- XORi reg $value (bitwise, Immediate)
			B <= cmd(15 downto 0); 				-- write $value to B-bus
			ALUfunc <= x"d"; 						-- write A xor B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"0a" => -- XOR reg reg (bitwise, direct)
			ALUfunc <= x"d"; 						-- write A xor B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"0b" => -- XOR reg reg (bitwise, indirect)
			 -- TBD
		
		
		
		
		when x"0c" => -- bit shift left reg
			 -- TBD
			 
		when x"0d" => -- bit shift right reg
			 -- TBD
		
		
		
		
		when x"0e" => -- ADDi reg $value (Immediate)
			B <= cmd(15 downto 0); 				-- write $value to B-bus
			ALUfunc <= x"6"; 						-- write A+B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"0f" => -- ADD reg reg (direct)
			ALUfunc <= x"6"; 						-- write A+B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"10" => -- ADD reg reg (indirect)
			--TBD
		
		
		
		
		
		when x"11" => -- SUBi reg $value (Immediate)
			B <= cmd(15 downto 0); 				-- write $value to B-bus
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"12" => -- SUB reg reg (direct)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"13" => -- ADD reg reg (indirect)
			--TBD
		
		
		
		
		
		
		when x"ef" => -- LOADi reg $value (immediate)
			A <= cmd(15 downto 0); 				-- write $value to A-bus
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 		-- set target regiser address
			weC <= '1'; 							-- write from C-bus to target register
			
			
		when others =>
	end case;

end process;




-- for test
LED <= C(7 downto 0);

end Behavioral;

