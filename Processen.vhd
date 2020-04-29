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


entity Processen is
	Port (
		cmd : in  STD_LOGIC_VECTOR (27 downto 0);
		next_cmd : in STD_LOGIC_VECTOR(27 downto 0);
		-- ALU
		C : in STD_LOGIC_VECTOR (15 downto 0);
		A : out  STD_LOGIC_VECTOR (15 downto 0);
		B : out  STD_LOGIC_VECTOR (15 downto 0);
		ALUfunc : out  STD_LOGIC_VECTOR (3 downto 0);
		-- REG
		addrA : out  STD_LOGIC_VECTOR (3 downto 0);
		addrB : out  STD_LOGIC_VECTOR (3 downto 0);
		reA : out  STD_LOGIC;
		reB : out  STD_LOGIC;
		weC : out  STD_LOGIC;
		-- cond.jump
		jump : out STD_LOGIC;
		skip : out STD_LOGIC;
		-- RAM
		RAM_we : out STD_LOGIC_VECTOR (0 downto 0);
		RAM_addrA : out STD_LOGIC_VECTOR (9 downto 0);
		RAM_din : out STD_LOGIC_VECTOR (15 downto 0);
		RAM_addrB : out STD_LOGIC_VECTOR (9 downto 0);
		RAM_dout : in STD_LOGIC_VECTOR (15 downto 0);
		-- SERIAL
		SERIAL_addr : out STD_LOGIC_VECTOR (3 downto 0);
		SERIAL_dout : in STD_LOGIC_VECTOR (7 downto 0);
		SERIAL_re : out STD_LOGIC;
		SERIAL_we : out STD_LOGIC;
		SERIAL_full : in STD_LOGIC;
		SERIAL_dready : in STD_LOGIC;
		SERIAL_rst : out STD_LOGIC;
		SERIAL_msb_lsb : out STD_LOGIC
	);
	
end Processen;

architecture Behavioral of Processen is

begin

-- pre fetch memory addr because of read latency
PREFETCHER: process(next_cmd)
begin

	case (next_cmd(27 downto 20)) is
		when x"1b" => 
			RAM_addrB <= next_cmd(9 downto 0);
		when others => 
			RAM_addrB <= (others => 'U');
	end case;

end process;




PROCESSEN : process(cmd, RAM_dout, C, SERIAL_dout, SERIAL_full, SERIAL_dready)
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
	jump <= '0';
	skip <= '0';
	RAM_we(0) <= '0';
	RAM_din <= (others => 'Z');
	RAM_addrA <= (others => 'Z');
	SERIAL_addr <= (others => 'Z');
	SERIAL_re <= '0';
	SERIAL_we <= '0';
	SERIAL_rst <= '0';

	-- change relevant values to execute an opcode
	case (cmd(27 downto 20)) is
		when x"00" => 								-- NOP
			-- There is nothing here. Keep reading...
			
			
		when x"01" => -- NOT reg (bitwise, direct)
			ALUfunc <= x"4"; 						-- write not A to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1';								-- write from C-bus to target register
			
		when x"02" => 								-- NOT reg (bitwise, indirect)
			-- TBD
			
			
		when x"03" => -- ANDi reg $value (bitwise, Immediate)
			B <= cmd(15 downto 0); 					-- write $value to B-bus
			ALUfunc <= x"b"; 						-- write A and B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"04" => -- AND reg reg (bitwise, direct)
			ALUfunc <= x"b"; 						-- write A and B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1';								-- write from C-bus to target register
		
		when x"05" => -- AND reg reg (bitwise, indirect)
			-- TBD
		
		
		when x"06" => -- ORi reg $value (bitwise, Immediate)
			B <= cmd(15 downto 0); 					-- write $value to B-bus
			ALUfunc <= x"c"; 						-- write A or B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"07" => -- OR reg reg (bitwise, direct)
			ALUfunc <= x"c"; 						-- write A or B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"08" => -- OR reg reg (bitwise, indirect)
			-- TBD
		
		
		when x"09" => -- XORi reg $value (bitwise, Immediate)
			B <= cmd(15 downto 0); 					-- write $value to B-bus
			ALUfunc <= x"d"; 						-- write A xor B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"0a" => -- XOR reg reg (bitwise, direct)
			ALUfunc <= x"d"; 						-- write A xor B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"0b" => -- XOR reg reg (bitwise, indirect)
			-- TBD
		
		
		when x"0c" => -- bit shift left reg
			ALUfunc <= x"1"; 						-- write A bitshifted 1 to left to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
			 
		when x"0d" => -- bit shift right reg
			ALUfunc <= x"2"; 						-- write A bitshifted 1 to left to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		
		when x"0e" => -- ADDi reg $value (Immediate)
			B <= cmd(15 downto 0); 					-- write $value to B-bus
			ALUfunc <= x"6"; 						-- write A+B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"0f" => -- ADD reg reg (direct)
			ALUfunc <= x"6"; 						-- write A+B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"10" => -- ADD reg reg (indirect)
			--TBD
			
		
		when x"11" => -- SUBi reg $value (Immediate)
			B <= cmd(15 downto 0); 					-- write $value to B-bus
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"12" => -- SUB reg reg (direct)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"13" => -- SUB reg reg (indirect)
			--TBD
		
	
		when x"14" => -- MULUi reg $value (Immediate, unsigned)
			B <= cmd(15 downto 0); 					-- write $value to B-bus
			ALUfunc <= x"e"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"15" => -- MULU reg reg (direct, unsigned)
			ALUfunc <= x"e"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"16" => -- MULU reg reg (indirect, unsigned)
			--TBD
		
		
		when x"17" => -- MULi reg $value (Immediate, signed)
			B <= cmd(15 downto 0); 					-- write $value to B-bus
			ALUfunc <= x"f"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"18" => -- MUL reg reg (direct, signed)
			ALUfunc <= x"f"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		when x"19" => -- MUL reg reg (indirect, signed)
			--TBD
		
		
		when x"1a" => -- LOADi reg $value (immediate)
			A <= cmd(15 downto 0); 					-- write $value to A-bus
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 			-- set target regiser address
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"1b" => -- LOAD reg mem (direct)   !!! DOES NOT WORK IMMEDIETLY AFTER SKIP/GOTO !!!
			A <= RAM_dout; 							-- write memory to A-bus
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 			-- set target regiser address
			weC <= '1'; 							-- write from C-bus to target register

		when x"1c" => -- LOAD reg reg (indirect)
			-- TBD
			
			
		when x"1d" => -- STOREi mem $value (immediate)
			-- TBD (not enough space in cmd for a 16bit address and a 16bit value)
			
		when x"1e" => -- STORE reg mem (direct)
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16);				-- set target regiser address
			reA <= '1'; 							-- read from target register to A-bus
			RAM_we(0) <= '1'; 						-- write to memory
			RAM_addrA <= cmd(9 downto 0); 			-- set memory address
			RAM_din <= C; 							-- write C to memory
			
		when x"1f" => -- STORE reg reg (indirect)
			-- TBD (what does this OP even mean ???)
			
		
		when x"20" => -- CLEAR reg (direct)
			ALUfunc <= x"0";						-- write 0 to C-bus
			addrA <= cmd(19 downto 16);				-- set target register address
			weC <= '1';								-- write from C-bus to target register
			
		when x"21" => -- CLEAR mem (direct)
			ALUfunc <= x"0"; 						-- write 0 to C-bus
			RAM_we(0) <= '1'; 						-- write to memory
			RAM_addrA <= cmd(9 downto 0); 			-- set memory address
			RAM_din <= C; 							-- write C to memory
			
			
		when x"22" => -- MOV reg reg (direct)
			ALUfunc <= x"7"; 						-- write B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
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
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			if (C = x"0000") then					-- if register is 0 set skip flag
				skip <= '1';
			end if;
			
		when x"26" => -- SKIP IF EQ reg reg (direct)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			if (C = x"0000") then					-- if register is 0 set skip flag
				skip <= '1';
			end if;
			
			
		when x"27" => -- SKIP IF LESS reg reg (direct)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			if (signed(C) < 0) then					-- if A < B set skip flag 
				skip <= '1';
			end if;
			
		when x"28" => -- SKIP IF LEQ reg reg (direct)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			if (signed(C) > 0) then 				-- if A leq B set skip flag
				-- do nothing
			else
				skip <= '1';
			end if;
			
			
		when x"29" => -- RESERVED
			-- TBD
			
			
		when x"2a" => -- READ reg port (direct)
			A(7 downto 0) <= SERIAL_dout; 			-- write serial-data to A-bus
			A(15 downto 8) <= (others => '0'); 		-- set the excess bits to 0
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			weC <= '1'; 							-- write from C-bus to target register
			SERIAL_addr <= cmd(3 downto 0); 		-- set serial address
			SERIAL_re <= '1'; 						-- set read flag
			
		when x"2b" => -- WRITE reg port (direct)
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			SERIAL_addr <= cmd(3 downto 0); 		-- set serial address
			SERIAL_we <= '1';						-- set write flag
			
		when x"2c" => -- RESET port (direct)
			SERIAL_addr <= cmd(3 downto 0); 		-- set serial address
			SERIAL_rst <= '1';						-- set serial reset flag
			
		when x"2d" => -- SET MSB_LSB port
			SERIAL_addr <= cmd(19 downto 16); 		-- set serial address
			SERIAL_msb_lsb <= cmd(0); 				-- set msb_lsb flag
			
		when x"2e" => -- SKIP IF NOT READY port
			SERIAL_addr <= cmd(3 downto 0); 		-- set serial address
			if (SERIAL_dready = '0') then			-- if no new data on serial 
				skip <= '1';						-- set skip flag
			end if;
			
		when x"2f" => -- SKIP IF FULL 
			SERIAL_addr <= cmd(3 downto 0); 		-- set serial address
			if (SERIAL_full = '1') then 			-- if tx buffer is full
				skip <= '1';						-- set skip flag
			end if;
			
			
			
		when others =>
	end case;

end process;

end Behavioral;

