----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:06:04 04/17/2020 
-- Design Name: 
-- Module Name:    Processen - Behavioral 
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

entity Processen is
	 Port ( cmd : in  STD_LOGIC_VECTOR (27 downto 0);
			C : in STD_LOGIC_VECTOR (15 downto 0);
			A : out  STD_LOGIC_VECTOR (15 downto 0);
			B : out  STD_LOGIC_VECTOR (15 downto 0);
			ALUfunc : out  STD_LOGIC_VECTOR (3 downto 0);
			addrA : out  STD_LOGIC_VECTOR (3 downto 0);
			addrB : out  STD_LOGIC_VECTOR (3 downto 0);
			reA : out  STD_LOGIC;
			reB : out  STD_LOGIC;
			weC : out  STD_LOGIC;
			jump : out STD_LOGIC;
			skip : out STD_LOGIC;
			RAM_en : out STD_LOGIC;
			RAM_we : out STD_LOGIC_VECTOR (0 downto 0);
			RAM_addr : out STD_LOGIC_VECTOR (9 downto 0);
			RAM_din : out STD_LOGIC_VECTOR (15 downto 0);
			RAM_dout : in STD_LOGIC_VECTOR (15 downto 0));
end Processen;

architecture Behavioral of Processen is

begin


PROCESSEN : process(cmd)
begin
	
	-- SET DEFAULT
	A <= (others => 'Z');
	B <= (others => 'Z');
	ALUfunc <= x"0";
	addrA <= (others => 'U');
	addrB <= (others => 'U');
	reA <= '0'; 
	reB <= '0';
	weC <= '0';
	jump <= '0';
	skip <= '0';
	RAM_en <= '1';
	RAM_we(0) <= '0';
	RAM_addr <= (others => 'U');
	RAM_din <= (others => 'U');
	

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
		
		when x"13" => -- SUB reg reg (indirect)
			--TBD
		
	
		when x"14" => -- MULUi reg $value (Immediate, unsigned)
			B <= cmd(15 downto 0); 				-- write $value to B-bus
			ALUfunc <= x"e"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"15" => -- MULU reg reg (direct, unsigned)
			ALUfunc <= x"e"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"16" => -- MULU reg reg (indirect, unsigned)
			--TBD
		
		
		when x"17" => -- MULi reg $value (Immediate, signed)
			B <= cmd(15 downto 0); 				-- write $value to B-bus
			ALUfunc <= x"f"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"18" => -- MUL reg reg (direct, signed)
			ALUfunc <= x"f"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"19" => -- MUL reg reg (indirect, signed)
			--TBD
		
		
		when x"1a" => -- LOADi reg $value (immediate)
			A <= cmd(15 downto 0); 				-- write $value to A-bus
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 		-- set target regiser address
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"1b" => -- LOAD reg mem (direct)
			A <= RAM_dout; 						-- write memory to A-bus
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 		-- set target regiser address
			weC <= '1'; 							-- write from C-bus to target register
			RAM_addr <= cmd(9 downto 0); 		-- set memory address
			

			
		when x"1c" => -- LOAD reg reg (indirect)
			-- TBD
			
			
		when x"1d" => -- STOREi mem $value (immediate)
			-- TBD (not enough space in cmd for a 16bit address and a 16bit value)
			
		when x"1e" => -- STORE reg mem (direct)
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16);		-- set target regiser address
			reA <= '1'; 							-- read from target register to A-bus
			RAM_we(0) <= '1'; 					-- write to memory
			RAM_addr <= cmd(9 downto 0); 		-- set memory address
			RAM_din <= C; 							-- write C to memory
			
			
			
		when x"1f" => -- STORE reg reg (indirect)
			-- TBD (what does this OP even mean ???)
			
		
		when x"20" => -- CLEAR reg (direct)
			ALUfunc <= x"0";						-- write 0 to C-bus
			addrA <= cmd(19 downto 16);		-- set target register address
			weC <= '1';								-- write from C-bus to target register
			
		when x"21" => -- CLEAR mem (direct)
			-- TBD
			
			
		when x"22" => -- MOV reg reg (direct)
			ALUfunc <= x"7"; 						-- write B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		
		when x"23" => -- JMP PC (direct)
			jump <= '1'; 							-- set jump flag
			-- the new PC is taken directly from cmd (3 downto 0)
			-- see the process that increments the PC for detail
			
		when x"24" => -- JMP $value (Immediate, relative)
			-- TBD
		
		
		when x"25" => -- SKIP IF 0 reg (direct)
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			if (C = x"0000") then				-- if register is 0 set skip flag
				skip <= '1';
			end if;
			
		when x"26" => -- SKIP IF EQ reg reg (direct)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			if (C = x"0000") then				-- if register is 0 set skip flag
				skip <= '1';
			end if;
			
			
		when x"27" => -- SKIP IF LESS reg reg (direct)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
			if (signed(C) < 0) then				-- if A < B set skip flag 
				skip <= '1';
			end if;
			
		when x"28" => -- SKIP IF LEQ reg reg (direct)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 		-- set target register address
			addrB <= cmd(3 downto 0); 			-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
			if (signed(C) > 0) then 			-- if A leq B set skip flag
			else
				skip <= '1';
			end if;
			
			
			
			
			
			
			
		when others =>
	end case;

end process;

end Behavioral;

