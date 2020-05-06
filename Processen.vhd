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
		PC : in STD_LOGIC_VECTOR (13 downto 0); 
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
		SERIAL_msb_lsb : out STD_LOGIC;
		SERIAL_tx_buffer_space : in STD_LOGIC_VECTOR(6 downto 0); 
		-- OUTMUX
		OUTMUX_SETUP : out STD_LOGIC_VECTOR(9 downto 0); 
		OUTMUX_WE : out STD_LOGIC;
		--IO 
		inputBuffer : in STD_LOGIC_VECTOR (15 downto 0);
		OUTBUFF_we : out STD_LOGIC;
		--Timer
		MSEC : in STD_LOGIC_VECTOR (9 downto 0);  
		SEC : in STD_LOGIC_VECTOR (5 downto 0);
		MIN : in STD_LOGIC_VECTOR (5 downto 0); 
		HOUR : in STD_LOGIC_VECTOR (15 downto 0); 
		-- STACK
		STACK_INC : out STD_LOGIC;
		STACK_DEC : out STD_LOGIC; 
		STACK_TOS : in STD_LOGIC_VECTOR(9 downto 0); 
		-- PWM 
		PWM_WE : out STD_LOGIC; 
		PWM_CMD : out STD_LOGIC_VECTOR(1 downto 0); 
		PWM_addr : out STD_LOGIC_VECTOR(3 downto 0); 
		PWM_value : out STD_LOGIC_VECTOR(7 downto 0); 
		-- OOCC
		OOCC_addr : out STD_LOGIC_VECTOR(3 downto 0); 
		OOCC_input : out STD_LOGIC_VECTOR(15 downto 0); 
		OOCC_ws : out STD_LOGIC_VECTOR(2 downto 0); 
		OOCC_outputs : in STD_LOGIC_VECTOR(15 downto 0); 
		-- FIRfilter
		FIR_input : out STD_LOGIC_VECTOR(15 downto 0); 
		FIR_output : in STD_LOGIC_VECTOR(15 downto 0); 
		FIR_ctrl : out STD_LOGIC_VECTOR(2 downto 0); 
		FIR_done : in STD_LOGIC
		
	);
	
end Processen;

architecture Behavioral of Processen is
signal returned : STD_LOGIC := '0'; 

begin

-- pre fetch memory addr because of read latency
PREFETCHER: process(next_cmd, STACK_TOS)
begin

	case (next_cmd(27 downto 20)) is
		when x"1b" => 
			RAM_addrB <= next_cmd(9 downto 0); -- prefetches for load cmd
		when x"3b" => 
			RAM_addrB <= STACK_TOS + 1; -- prefetches top of stack value
		when x"3C" =>
			RAM_addrB <= STACK_TOS + 1; -- prefetches top of stack value
		when others => 
			RAM_addrB <= (others => 'U');
		
	end case;

end process;




PROCESSEN : process(cmd, PC, next_cmd, RAM_dout, C, SERIAL_dout, SERIAL_full, SERIAL_dready, inputBuffer, MSEC, SEC, MIN, HOUR, STACK_TOS, SERIAL_tx_buffer_space )
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
	OUTBUFF_we <= '0'; 
	
	STACK_INC <= '0'; 
	STACK_DEC <= '0'; 
	
	OUTMUX_WE <= '0'; 
	OUTMUX_SETUP <= (others => '-'); 
	
	PWM_WE <= '0'; 
	PWM_VALUE <= (others => '-');  
	PWM_addr <= (others => '-'); 
	PWM_CMD <= (others => '-'); 
	
	OOCC_input <= (others => '-'); 
	OOCC_ws <= (others => '-'); 
	
	FIR_ctrl <= (others => '0');
	FIR_input <= (others => '-'); 
	
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
		
		
		
		when x"23" => -- GOTO $val (imediate)
			A <= (others => '0'); 
			A(13 downto 0) <= cmd(13 downto 0);			
			ALUfunc <= x"3"; 	
			jump <= '1'; 				-- set jump flag
			
			
		when x"24" => -- GOTO reg (direct)
			ALUfunc <= x"3"; 
			addrA <= cmd(19 downto 16);
			reA <= '1'; 
			jump <= '1'; 
		
		
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
			
			
			
		when x"30" => -- MODi reg $value
			B <= cmd(15 downto 0); 					-- write B to C-bus
			ALUfunc <= x"a"; 						-- write A mod B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 							-- read from target register to A-bus
			weC <= '1'; 							-- write from C-bus to target register
			
		when x"31" => -- MOD reg reg
			ALUfunc <= x"a"; 						-- write A mod B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			weC <= '1'; 							-- write from C-bus to target register
		
		
		when x"32" =>  -- digitalReadOne reg inputbuffer(x)
			A <= (others => '0'); 
			A(0) <= inputbuffer(conv_integer(cmd(3 downto 0))); 
			ALUfunc <= x"3"; 
			addrA <= cmd(19 downto 16); 
			weC <= '1'; 

		when x"33" => -- digitalReadAll reg inputbuffer
			A <= inputbuffer; 
			ALUfunc <= x"3"; 
			addrA <= cmd(19 downto 16); 
			weC <= '1'; 
		
		when x"34" => -- digitalWrite reg outbuffer
				ALUfunc <= x"3"; 
				addrA <= cmd(19 downto 16); 
				reA <= '1'; 
				OUTBUFF_WE <= '1'; 
				
		when x"35" =>   -- Readmicros
		
		
		when x"36" => -- ReadMillis reg
			ALUfunc <= x"3";
			addrA <= cmd(19 downto 16); 
			weC <= '1'; 
			A <= (others => '0');
			A(9 downto 0) <= MSEC; 
			
		when x"37" => -- ReadSEC reg
			ALUfunc <= x"3";
			addrA <= cmd(19 downto 16); 
			weC <= '1'; 
			A <= (others => '0');
			A(5 downto 0) <= SEC; 
			
		when x"38" => -- ReadMIN reg
			ALUfunc <= x"3";
			addrA <= cmd(19 downto 16); 
			weC <= '1'; 
			A <= (others => '0');
			A(5 downto 0) <= MIN; 
			
		when x"39" => -- ReadHOURreg
			ALUfunc <= x"3";
			addrA <= cmd(19 downto 16); 
			weC <= '1'; 
			A(15 downto 0) <= HOUR; 
			
			
		when x"3A" => -- push reg
			ALUfunc <= x"3"; 
			addrA <= cmd(19 downto 16); 
			reA <= '1'; 
			
			RAM_we(0) <= '1'; 			-- write to memory
			RAM_addrA <= STACK_TOS; 	-- set memory address
			RAM_din <= C;					-- write C to memory
			STACK_INC <= '1'; 
			
		when x"3B" => -- pop reg
			A <= RAM_dout; 
			ALUfunc <= x"3";
			addrA <= cmd(19 downto 16); 
			weC <= '1'; 
			STACK_DEC <= '1'; 
		
		when x"3C" => -- return 
			A <= RAM_dout; 
			ALUfunc <= x"3"; 
			jump <= '1'; 
			STACK_DEC <= '1'; 
			returned <= '1'; 
			
		when x"3D" => -- push PC
			A <= (others => '0'); 
			A(13 downto 0) <= PC; 
			RAM_we(0) <= '1'; 			-- write to memory
			RAM_addrA <= STACK_TOS; 	-- set memory address
			RAM_din <= C;					-- write C to memory
			STACK_INC <= '1'; 	
			
		when x"3F" => -- SKIP not enough space in uart: uart val (immediate)
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			SERIAL_addr <= cmd(19 downto 16);-- addres of UART 
			A <= (others => '0');				-- set target register address
			A(6 downto 0) <= SERIAL_tx_buffer_space;
			B <= cmd(15 downto 0); 				-- set value register address
														-- read from target register to A-bus
														-- read from value register to B-bus
			if (signed(C) < 0) then				-- if A < B set skip flag 
				skip <= '1';
			end if;
		
		when x"40" => -- SKIP not enough space in uart: uart val (direct)
			ALUfunc <= x"9"; 
			A <= (others => '0');				-- set target register address
			A(6 downto 0) <= SERIAL_tx_buffer_space;
			addrB <= cmd(3 downto 0); 
			reB <= '1';
			
			if (signed(C) < 0) then				-- if A < B set skip flag 
				skip <= '1';
			end if;

		when x"41" => -- Load buffer space: uart reg 
			ALUfunc <= x"3"; 						-- through 
			A <= (others => '0');				-- set target register address
			A(6 downto 0) <= SERIAL_tx_buffer_space;
			addrA <= cmd(3 downto 0); 			-- register address 
			weC <= '1';								-- enable write from Cbuss to register A 
		
		when x"42" => -- setup outmux: (imediate) 
			ALUfunc <= x"3"; 
			A <= (others => '0'); 
			A(11 downto 0) <= cmd(11 downto 0);  -- PIN, Type, instance
			OUTMUX_WE <= '1'; 
			OUTMUX_SETUP(9 downto 6) <= C(11 downto 8);
			OUTMUX_SETUP(5 downto 4) <= C(5 downto 4);	
			OUTMUX_SETUP(3 downto 0) <= C(3 downto 0); 
			
		when x"43" => -- setup PWM (imediate)
			ALUfunc <= x"3"; 
			A(15 downto 0) <= cmd(15 downto 0);
			
			PWM_ADDR <= C(15 downto 12); 
			PWM_CMD <= C(9 downto 8); -- 0 : enable, 1 : prescalar, 2 : compare, 3 : overflow
			PWM_Value <= C(7 downto 0); 
			PWM_WE <= '1'; 
		
		when x"44" => -- skip if not 0
			ALUfunc <= x"3"; 						-- write A to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			reA <= '1'; 
			-- read from target register to A-bus
			if (C /= x"0000")  then					-- if register is 0 set skip flag
				skip <= '1';
			end if;
			
		when x"45" => -- skip if not equal reg reg
			ALUfunc <= x"9"; 						-- write A-B to C-bus
			addrA <= cmd(19 downto 16); 			-- set target register address
			addrB <= cmd(3 downto 0); 				-- set value register address
			reA <= '1'; 							-- read from target register to A-bus
			reB <= '1'; 							-- read from value register to B-bus
			if (C /= x"0000") then					-- if register is 0 set skip flag
				skip <= '1';
			end if;	
		
		when x"46" => -- skip if returned
			if returned = '1' then
				skip <= '1'; 
				returned <= '0'; 
			end if; 
		
		when x"47" => -- SKIP IF READY
			SERIAL_addr <= cmd(3 downto 0); 		-- set serial address
			if (SERIAL_dready = '1') then			-- if no new data on serial 
				skip <= '1';						-- set skip flag
			end if;
		
		when x"48" => -- OOCC_Control reg OOCC ws (write select)
			 ALUfunc <= x"3"; 
			 reA <= '1'; 
			 addrA <= cmd(19 downto 16); 
			 OOCC_addr <= cmd(15 downto 12); 			 
			 OOCC_ws <= cmd(10 downto 8); -- x4: sense, x5 ref, x6: limit, x7: reverse
			 OOCC_input <= C; 					
			
		when x"49" => -- OOCC_read: reg 
			ALUfunc <= x"3"; 
			addrA <= cmd(19 downto 16);  
			A <= OOCC_outputs; 
			weC <= '1'; 
		
		when x"4A" => -- write to FIRfilter reg ctrl 
			ALUfunc <= x"3"; 
			addrA <= cmd(19 downto 16); 
			reA <= '1'; 
			FIR_input <= C; 
			FIR_ctrl <= cmd(2 downto 0); -- x3: reset, x4: load and calc, x5: loafcoeff, x6: set point x7: set order else nop  
		
		when x"4B" => -- read from firFilter reg 
			ALUfunc <= x"3"; 
			addrA <= cmd(19 downto 16); 
			weC <= '1'; 
			A <= FIR_output; 
			
		when others =>
	end case;

end process;

end Behavioral;


