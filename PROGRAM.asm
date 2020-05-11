Setup:
// setup UART GSM module
// msb first 
MSB 0 1 				// send msb first on port 0

SOMUX 0x0010 			// First nibble useless, Pin 0, PWM type, Instance 0
SPWM 0x0001 			// Setup PWM 0, Set CMD = ENABLE, value = 1
SPWM 0x010B 			// PRESCALAR = 11
SPWM 0x039C 			// OVERFLOW = 156


// ask for response from GSM
LOAD 15 $0 				// Setup retry counter
GSM:
SNEQ 15 $2 				// Compare retries
GOTO TimeOut
WRITE 0 $0x41 			// A
WRITE 0 $0x54 			// T
WRITE 0 $0x0D 			// <CR>
ADD 15 $1 				// add one to retry counter


// wait for AT response from GSM
// expected response is 9 chars
LOAD 14 $0 				// received bytes counter
SEC 13 					// reference time in sec
AT_response:
SEC 12					// check time
SUB 12 13
SNEQ 12 $2  			// break out if no response
GOTO GSM
SRDY 0					// skip if there are data on port 0
GOTO AT_response
READ 0 0				// read byte from port 0
// PUSH 0					// push data to stack
ADD 14 $1 				// increment byte counter
SEQ 14 $9				// check loop condition
GOTO AT_response



// turn off echo (ATE0<CR>)
WRITE 0 $0x41 // A
WRITE 0 $0x54 // T
WRITE 0 $0x45 // E
WRITE 0 $0x30 // 0
WRITE 0 $0x0D // <CR>

// wait for echo response from GSM
// expected response is 11 chars
LOAD 14 $0 				// received bytes counter
SEC 13 					// reference time in sec
echo_response:
SEC 12					// check time
SUB 12 13
SNEQ 12 $2  			// break out if no response
GOTO GSM
SRDY 0					// skip if there are data on port 0
GOTO echo_response
READ 0 0				// read byte from port 0
// PUSH 0					// push data to stack
ADD 14 $1 				// increment byte counter
SEQ 14 $11				// check loop condition
GOTO echo_response



// turn off verbose (ATV0<CR>)
WRITE 0 $0x41 // A
WRITE 0 $0x54 // T
WRITE 0 $0x56 // V
WRITE 0 $0x30 // 0
WRITE 0 $0x0D // <CR>

// wait for verbose response from GSM
// expected response is 3 chars
LOAD 14 $0 				// received bytes counter
SEC 13 					// reference time in sec
verbose_response:
SEC 12					// check time
SUB 12 13
SNEQ 12 $2  			// break out if no response
GOTO GSM
SRDY 0					// skip if there are data on port 0
GOTO verbose_response
READ 0 0				// read byte from port 0
// PUSH 0					// push data to stack
ADD 14 $1 				// increment byte counter
SEQ 14 $3				// check loop condition
GOTO verbose_response


// Enter pin (AT+CPIN=1234<CR>)
WRITE 0 $0x41
WRITE 0 $0x54
WRITE 0 $0x2B
WRITE 0 $0x43
WRITE 0 $0x50
WRITE 0 $0x49
WRITE 0 $0x4E
WRITE 0 $0x3D
WRITE 0 $0x31
WRITE 0 $0x32
WRITE 0 $0x33
WRITE 0 $0x34
WRITE 0 $0x0D

// wait for pin response from GSM
// expected response is 40 chars
LOAD 14 $0 				// received bytes counter
SEC 13 					// reference time in sec
pin_response:
SEC 12					// check time
SUB 12 13
SNEQ 12 $6  			// break out if no response
GOTO GSM
SRDY 0					// skip if there are data on port 0
GOTO pin_response
READ 0 0				// read byte from port 0
// PUSH 0					// push data to stack
ADD 14 $1 				// increment byte counter
SEQ 14 $40				// check loop condition
GOTO pin_response

// set SMS mode to text
// AT+CMGF=1<CR>
WRITE 0 $0x41 // A
WRITE 0 $0x54 // T
WRITE 0 $0x2B // +
WRITE 0 $0x43 // C
WRITE 0 $0x4D // M
WRITE 0 $0x47 // G
WRITE 0 $0x46 // F
WRITE 0 $0x3D // =
WRITE 0 $0x31 // 1
WRITE 0 $0x0D // <CR>

// wait for mode response from GSM
// expected response is 3 chars
LOAD 14 $0 				// received bytes counter
SEC 13 					// reference time in sec
mode_response:
SEC 12					// check time
SUB 12 13
SNEQ 12 $2  			// break out if no response
GOTO GSM
SRDY 0					// skip if there are data on port 0
GOTO mode_response
READ 0 0				// read byte from port 0
// PUSH 0					// push data to stack
ADD 14 $1 				// increment byte counter
SEQ 14 $3				// check loop condition
GOTO mode_response

// delete all messages
// AT+CMGD=1,4<CR> (delete all messages)
WRITE 0 $0x41
WRITE 0 $0x54
WRITE 0 $0x2B
WRITE 0 $0x43
WRITE 0 $0x4D
WRITE 0 $0x47
WRITE 0 $0x44
WRITE 0 $0x3D
WRITE 0 $0x31
WRITE 0 $0x2C
WRITE 0 $0x34
WRITE 0 $0x0D

// wait for delete response from GSM
// expected response is 3 chars (0<CR><LF>)
LOAD 14 $0 				// received bytes counter
SEC 13 					// reference time in sec
delete_response:
SEC 12					// check time
SUB 12 13
SNEQ 12 $26  			// break out if no response
GOTO GSM
SRDY 0					// skip if there are data on port 0
GOTO delete_response
READ 0 0				// read byte from port 0
//PUSH 0					// push data to stack
ADD 14 $1 				// increment byte counter
SEQ 14 $3				// check loop condition
GOTO delete_response






loop:


// wait for GSM to report an unread sms
wait_for_SMS:
SRDY 0
GOTO wait_for_SMS
READ 0 0
SEQ 0 $0x0D // <CR>
GOTO wait_for_SMS


// read SMS
// AT+CMGR=1<CR>
WRITE 0 $0x41
WRITE 0 $0x54
WRITE 0 $0x2B
WRITE 0 $0x43
WRITE 0 $0x4D
WRITE 0 $0x47
WRITE 0 $0x52
WRITE 0 $0x3D
WRITE 0 $0x31
WRITE 0 $0x0D

// ignore sms header
wait_for_read_SMS_response:
SRDY 0
GOTO wait_for_read_SMS_response
READ 0 0
SEQ 0 $0x0D // <CR>
GOTO wait_for_read_SMS_response

// read SMS message
LOAD 10 $0 			// counting message length
read_SMS:
SRDY 0
GOTO read_SMS
READ 0 0
SNEQ 0 $0x0A
GOTO done_reading_SMS
PUSH 0
ADD 10 $1
GOTO read_SMS

done_reading_SMS:
SRDY 0
GOTO done_reading_SMS
READ 0 0
SEQ 0 $0x0A
GOTO done_reading_SMS

// save message in RAM addr 0x0
STORE 10 0x0 // length of message
save_to_message_RAM:
POP 0
STOREn 0 10
SUB 10 $1
SZERO 10
GOTO save_to_message_RAM

// delete old message
// AT+CMGD=1,4<CR> (delete all messages)
WRITE 0 $0x41
WRITE 0 $0x54
WRITE 0 $0x2B
WRITE 0 $0x43
WRITE 0 $0x4D
WRITE 0 $0x47
WRITE 0 $0x44
WRITE 0 $0x3D
WRITE 0 $0x31
WRITE 0 $0x2C
WRITE 0 $0x34
WRITE 0 $0x0D

delete_old_message_response:
SRDY 0
GOTO delete_old_message_response
READ 0 0
SEQ 0 $0x0A
GOTO delete_old_message_response


// decode message
LOAD 0 0x1 				// load first byte
SEQ 0 $0x30 			// skip if ascii 0
GOTO PWM
GOTO ONOFF

PWM:
LOAD 0 0x2				// load second byte
SEQ 0 $0x30				// skip if ascii 0
GOTO PWM_on
GOTO PWM_off

PWM_off:
SPWM 0x0290 			// COMPARE = 144   (1.5 ms period =  0 grader)
GOTO loop

PWM_on:
SPWM 0x028C 			// COMPARE = 140 (2   ms period = 90 grader)
GOTO loop

ONOFF:
GOTO loop



TimeOut:
GOTO TimeOut

