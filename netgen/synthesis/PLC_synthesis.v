////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: PLC_synthesis.v
// /___/   /\     Timestamp: Mon Apr 20 13:28:25 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim PLC.ngc PLC_synthesis.v 
// Device	: xc6slx9-2-tqg144
// Input file	: PLC.ngc
// Output file	: C:\Users\japem\Documents\repos\VHDL\PLC\netgen\synthesis\PLC_synthesis.v
// # of Modules	: 1
// Design Name	: PLC
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module PLC (
  clk, LED
);
  input clk;
  output [7 : 0] LED;
  wire clk_BUFGP_0;
  wire start_33;
  wire LED_7_OBUF_46;
  wire LED_6_OBUF_47;
  wire LED_5_OBUF_48;
  wire LED_4_OBUF_49;
  wire LED_3_OBUF_50;
  wire LED_2_OBUF_51;
  wire LED_1_OBUF_52;
  wire LED_0_OBUF_53;
  wire reA;
  wire reB;
  wire jump;
  wire \PC[3]_PC[3]_mux_4_OUT<3> ;
  wire \PC[3]_PC[3]_mux_4_OUT<2> ;
  wire \PC[3]_PC[3]_mux_4_OUT<1> ;
  wire N0;
  wire start_inv;
  wire Mram_PROG1;
  wire Mram_PROG18;
  wire Mram_PROG20;
  wire Mram_PROG21;
  wire Mram_PROG25;
  wire \Mmux_PC[3]_PC[3]_mux_4_OUT_rs_lut<0> ;
  wire \REG/clk_inv ;
  wire \Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ;
  wire \Mmux_PC[3]_PC[3]_mux_4_OUT_rs_A<0> ;
  wire \ALU/Mmux_OUTPUT15_B102 ;
  wire \ALU/Mmux_OUTPUT15_B101 ;
  wire \ALU/Mmux_OUTPUT15_rs_B[0] ;
  wire \ALU/Mmux_OUTPUT15_rs_B[15] ;
  wire \ALU/Mmux_OUTPUT15_A8 ;
  wire \ALU/Mmux_OUTPUT15_A6 ;
  wire \ALU/Mmux_OUTPUT15_A4 ;
  wire \ALU/Mmux_OUTPUT15_A32 ;
  wire \ALU/Mmux_OUTPUT15_A30 ;
  wire \ALU/Mmux_OUTPUT15_A28 ;
  wire \ALU/Mmux_OUTPUT15_A26 ;
  wire \ALU/Mmux_OUTPUT15_A24_204 ;
  wire \ALU/Mmux_OUTPUT15_A22_205 ;
  wire \ALU/Mmux_OUTPUT15_A20 ;
  wire \ALU/Mmux_OUTPUT15_A18 ;
  wire \ALU/Mmux_OUTPUT15_A16 ;
  wire \ALU/Mmux_OUTPUT15_A141 ;
  wire \ALU/Mmux_OUTPUT15_A12 ;
  wire \ALU/Mmux_OUTPUT15_A10 ;
  wire \ALU/Mmux_OUTPUT15_A2 ;
  wire \ALU/Mmux_OUTPUT15_A21_213 ;
  wire N2;
  wire N3;
  wire N5;
  wire N6;
  wire N8;
  wire N9;
  wire N11;
  wire N12;
  wire N14;
  wire N15;
  wire N17;
  wire N18;
  wire N20;
  wire N21;
  wire N23;
  wire N24;
  wire N26;
  wire N27;
  wire N29;
  wire N30;
  wire N32;
  wire N33;
  wire N35;
  wire N36;
  wire N38;
  wire N39;
  wire N41;
  wire N42;
  wire N44;
  wire N45;
  wire N47;
  wire N48;
  wire N50;
  wire N51;
  wire N53;
  wire N54;
  wire N56;
  wire N57;
  wire N59;
  wire N60;
  wire N62;
  wire N63;
  wire N65;
  wire N66;
  wire N68;
  wire N69;
  wire N71;
  wire N72;
  wire N74;
  wire N75;
  wire N77;
  wire N78;
  wire N80;
  wire N81;
  wire N83;
  wire N84;
  wire N86;
  wire N87;
  wire N89;
  wire N90;
  wire N92;
  wire N93;
  wire N95;
  wire N96;
  wire N99;
  wire N100;
  wire N101;
  wire N102;
  wire \addrA<2>1 ;
  wire \addrA<2>11 ;
  wire \addrA<2>12 ;
  wire \addrA<2>13 ;
  wire \addrA<1>LogicTrst1_295 ;
  wire \addrA<1>LogicTrst11 ;
  wire \addrA<0>LogicTrst1_297 ;
  wire \addrA<0>LogicTrst11 ;
  wire \addrA<2>14 ;
  wire \addrA<2>1_1 ;
  wire \addrA<2>1_2 ;
  wire \addrA<2>1_3 ;
  wire \NLW_ALU/Mmult_UnsignedProd_CARRYOUTF_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_CARRYOUT_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<15>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<14>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<13>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<12>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<11>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<10>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<9>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<8>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<7>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<6>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<5>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<4>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<3>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<2>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<1>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_BCOUT<0>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<47>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<46>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<45>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<44>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<43>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<42>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<41>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<40>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<39>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<38>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<37>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<36>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<35>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<34>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<33>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<32>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<31>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<30>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<29>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<28>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<27>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<26>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<25>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<24>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<23>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<22>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<21>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<20>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<19>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<18>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<15>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<14>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<13>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<12>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<11>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<10>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<9>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<8>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<7>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<6>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<5>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<4>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<3>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<2>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<1>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCIN<0>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<47>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<46>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<45>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<44>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<43>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<42>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<41>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<40>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<39>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<38>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<37>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<36>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<35>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<34>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<33>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<32>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<31>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<30>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<29>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<28>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<27>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<26>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<25>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<24>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<23>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<22>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<21>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<20>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<19>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<18>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<15>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<14>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<13>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<12>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<11>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<10>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<9>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<8>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<7>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<6>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<5>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<4>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<3>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<2>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<1>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_P<0>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<47>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<46>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<45>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<44>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<43>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<42>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<41>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<40>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<39>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<38>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<37>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<36>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<35>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<34>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<33>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<32>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<31>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<30>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<29>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<28>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<27>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<26>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<25>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<24>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<23>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<22>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<21>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<20>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<19>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<18>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<15>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<14>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<13>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<12>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<11>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<10>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<9>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<8>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<7>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<6>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<5>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<4>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<3>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<2>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<1>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_PCOUT<0>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<35>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<34>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<33>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<32>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<31>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<30>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<29>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<28>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<27>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<26>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<25>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<24>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<23>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<22>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<21>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<20>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<19>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<18>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_UnsignedProd_M<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_CARRYOUTF_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_CARRYOUT_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<15>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<14>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<13>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<12>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<11>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<10>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<9>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<8>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<7>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<6>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<5>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<4>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<3>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<2>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<1>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_BCOUT<0>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<47>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<46>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<45>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<44>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<43>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<42>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<41>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<40>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<39>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<38>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<37>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<36>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<35>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<34>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<33>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<32>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<31>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<30>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<29>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<28>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<27>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<26>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<25>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<24>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<23>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<22>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<21>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<20>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<19>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<18>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<15>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<14>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<13>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<12>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<11>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<10>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<9>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<8>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<7>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<6>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<5>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<4>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<3>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<2>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<1>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCIN<0>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<47>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<46>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<45>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<44>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<43>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<42>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<41>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<40>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<39>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<38>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<37>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<36>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<35>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<34>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<33>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<32>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<31>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<30>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<29>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<28>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<27>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<26>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<25>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<24>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<23>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<22>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<21>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<20>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<19>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<18>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<15>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<14>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<13>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<12>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<11>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<10>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<9>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<8>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<7>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<6>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<5>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<4>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<3>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<2>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<1>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_P<0>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<47>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<46>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<45>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<44>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<43>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<42>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<41>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<40>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<39>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<38>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<37>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<36>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<35>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<34>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<33>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<32>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<31>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<30>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<29>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<28>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<27>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<26>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<25>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<24>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<23>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<22>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<21>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<20>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<19>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<18>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<16>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<15>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<14>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<13>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<12>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<11>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<10>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<9>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<8>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<7>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<6>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<5>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<4>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<3>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<2>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<1>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_PCOUT<0>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<35>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<34>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<33>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<32>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<31>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<30>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<29>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<28>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<27>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<26>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<25>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<24>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<23>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<22>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<21>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<20>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<19>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<18>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<17>_UNCONNECTED ;
  wire \NLW_ALU/Mmult_SignedProd_M<16>_UNCONNECTED ;
  wire [15 : 0] A;
  wire [15 : 0] B;
  wire [3 : 0] PC;
  wire [15 : 8] C;
  wire [3 : 0] ALUfunc;
  wire [2 : 0] addrA;
  wire [1 : 0] addrB;
  wire [15 : 0] \REG/_n0045 ;
  wire [15 : 0] \REG/_n0044 ;
  wire [9 : 7] \PROCESSEN/_n2120 ;
  wire [15 : 0] \ALU/Mmux_OUTPUT15_rs_lut ;
  wire [14 : 0] \ALU/Mmux_OUTPUT15_rs_cy ;
  wire [14 : 0] \ALU/Mmux_OUTPUT15_rs_A ;
  wire [15 : 0] \ALU/UnsignedProd ;
  wire [15 : 0] \ALU/SignedProd ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(Mram_PROG18)
  );
  FDE #(
    .INIT ( 1'b0 ))
  PC_0 (
    .C(clk_BUFGP_0),
    .CE(start_inv),
    .D(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_lut<0> ),
    .Q(PC[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  PC_1 (
    .C(clk_BUFGP_0),
    .CE(start_inv),
    .D(\PC[3]_PC[3]_mux_4_OUT<1> ),
    .Q(PC[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  PC_2 (
    .C(clk_BUFGP_0),
    .CE(start_inv),
    .D(\PC[3]_PC[3]_mux_4_OUT<2> ),
    .Q(PC[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  PC_3 (
    .C(clk_BUFGP_0),
    .CE(start_inv),
    .D(\PC[3]_PC[3]_mux_4_OUT<3> ),
    .Q(PC[3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG16  (
    .A0(\addrA<0>LogicTrst11 ),
    .A1(\addrA<1>LogicTrst11 ),
    .A2(\addrA<2>13 ),
    .A3(\addrA<2>13 ),
    .D(C[15]),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [15]),
    .DPO(\REG/_n0045 [15])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG15  (
    .A0(\addrA<0>LogicTrst11 ),
    .A1(\addrA<1>LogicTrst11 ),
    .A2(\addrA<2>1_1 ),
    .A3(\addrA<2>1_3 ),
    .D(C[14]),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [14]),
    .DPO(\REG/_n0045 [14])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG14  (
    .A0(\addrA<0>LogicTrst11 ),
    .A1(\addrA<1>LogicTrst11 ),
    .A2(\addrA<2>1_1 ),
    .A3(\addrA<2>1_3 ),
    .D(C[13]),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [13]),
    .DPO(\REG/_n0045 [13])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG13  (
    .A0(\addrA<0>LogicTrst1_297 ),
    .A1(\addrA<1>LogicTrst1_295 ),
    .A2(\addrA<2>1_1 ),
    .A3(\addrA<2>1_3 ),
    .D(C[12]),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [12]),
    .DPO(\REG/_n0045 [12])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG12  (
    .A0(\addrA<0>LogicTrst1_297 ),
    .A1(\addrA<1>LogicTrst1_295 ),
    .A2(\addrA<2>1 ),
    .A3(\addrA<2>12 ),
    .D(C[11]),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [11]),
    .DPO(\REG/_n0045 [11])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG11  (
    .A0(\addrA<0>LogicTrst1_297 ),
    .A1(\addrA<1>LogicTrst1_295 ),
    .A2(\addrA<2>1 ),
    .A3(\addrA<2>12 ),
    .D(C[10]),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [10]),
    .DPO(\REG/_n0045 [10])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG10  (
    .A0(\addrA<0>LogicTrst1_297 ),
    .A1(\addrA<1>LogicTrst1_295 ),
    .A2(\addrA<2>1 ),
    .A3(\addrA<2>12 ),
    .D(C[9]),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [9]),
    .DPO(\REG/_n0045 [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG9  (
    .A0(\addrA<0>LogicTrst1_297 ),
    .A1(\addrA<1>LogicTrst1_295 ),
    .A2(\addrA<2>1 ),
    .A3(\addrA<2>12 ),
    .D(C[8]),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [8]),
    .DPO(\REG/_n0045 [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG8  (
    .A0(\addrA<0>LogicTrst1_297 ),
    .A1(\addrA<1>LogicTrst1_295 ),
    .A2(\addrA<2>14 ),
    .A3(\addrA<2>1_2 ),
    .D(LED_7_OBUF_46),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [7]),
    .DPO(\REG/_n0045 [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG7  (
    .A0(addrA[0]),
    .A1(addrA[1]),
    .A2(\addrA<2>14 ),
    .A3(\addrA<2>1_2 ),
    .D(LED_6_OBUF_47),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [6]),
    .DPO(\REG/_n0045 [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG6  (
    .A0(addrA[0]),
    .A1(addrA[1]),
    .A2(\addrA<2>14 ),
    .A3(\addrA<2>1_2 ),
    .D(LED_5_OBUF_48),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [5]),
    .DPO(\REG/_n0045 [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG5  (
    .A0(addrA[0]),
    .A1(addrA[1]),
    .A2(addrA[2]),
    .A3(\addrA<2>11 ),
    .D(LED_4_OBUF_49),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [4]),
    .DPO(\REG/_n0045 [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG4  (
    .A0(addrA[0]),
    .A1(addrA[1]),
    .A2(addrA[2]),
    .A3(\addrA<2>11 ),
    .D(LED_3_OBUF_50),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [3]),
    .DPO(\REG/_n0045 [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG3  (
    .A0(addrA[0]),
    .A1(addrA[1]),
    .A2(addrA[2]),
    .A3(\addrA<2>11 ),
    .D(LED_2_OBUF_51),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [2]),
    .DPO(\REG/_n0045 [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG2  (
    .A0(addrA[0]),
    .A1(addrA[1]),
    .A2(addrA[2]),
    .A3(\addrA<2>11 ),
    .D(LED_1_OBUF_52),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [1]),
    .DPO(\REG/_n0045 [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \REG/Mram_REG1  (
    .A0(\addrA<0>LogicTrst11 ),
    .A1(\addrA<1>LogicTrst11 ),
    .A2(\addrA<2>13 ),
    .A3(\addrA<2>13 ),
    .D(LED_0_OBUF_53),
    .DPRA0(addrB[0]),
    .DPRA1(addrB[1]),
    .DPRA2(addrB[1]),
    .DPRA3(addrB[1]),
    .WCLK(\REG/clk_inv ),
    .WE(\PROCESSEN/_n2120 [9]),
    .SPO(\REG/_n0044 [0]),
    .DPO(\REG/_n0045 [0])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<15>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [14]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [15]),
    .O(C[15])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<14>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [13]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [14]),
    .O(C[14])
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<14>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [13]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [14]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [14]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [14])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<13>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [12]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [13]),
    .O(C[13])
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<13>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [12]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [13]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [13]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [13])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<12>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [11]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [12]),
    .O(C[12])
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<12>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [11]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [12]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [12]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [12])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<11>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [10]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [11]),
    .O(C[11])
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<11>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [10]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [11]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [11]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [11])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<10>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [9]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [10]),
    .O(C[10])
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<10>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [9]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [10]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [10]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [10])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<9>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [8]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [9]),
    .O(C[9])
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<9>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [8]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [9]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [9]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [9])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<8>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [7]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [8]),
    .O(C[8])
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<8>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [7]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [8]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [8]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [8])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<7>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [6]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [7]),
    .O(LED_7_OBUF_46)
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<7>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [6]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [7]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [7]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [7])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<6>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [5]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [6]),
    .O(LED_6_OBUF_47)
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<6>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [5]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [6]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [6]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [6])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<5>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [4]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [5]),
    .O(LED_5_OBUF_48)
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<5>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [4]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [5]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [5]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [5])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<4>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [3]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [4]),
    .O(LED_4_OBUF_49)
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<4>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [3]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [4]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [4]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [4])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<3>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [2]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [3]),
    .O(LED_3_OBUF_50)
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<3>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [2]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [3]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [3]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [3])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<2>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [1]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [2]),
    .O(LED_2_OBUF_51)
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<2>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [1]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [2]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [2]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [2])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<1>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [0]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [1]),
    .O(LED_1_OBUF_52)
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<1>  (
    .CI(\ALU/Mmux_OUTPUT15_rs_cy [0]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [1]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [1]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [1])
  );
  XORCY   \ALU/Mmux_OUTPUT15_rs_xor<0>  (
    .CI(ALUfunc[3]),
    .LI(\ALU/Mmux_OUTPUT15_rs_lut [0]),
    .O(LED_0_OBUF_53)
  );
  MUXCY   \ALU/Mmux_OUTPUT15_rs_cy<0>  (
    .CI(ALUfunc[3]),
    .DI(\ALU/Mmux_OUTPUT15_rs_A [0]),
    .S(\ALU/Mmux_OUTPUT15_rs_lut [0]),
    .O(\ALU/Mmux_OUTPUT15_rs_cy [0])
  );
  DSP48A1 #(
    .CARRYINSEL ( "OPMODE5" ),
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .CREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .OPMODEREG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYOUTREG ( 0 ),
    .RSTTYPE ( "SYNC" ),
    .DREG ( 0 ))
  \ALU/Mmult_UnsignedProd  (
    .CECARRYIN(Mram_PROG18),
    .RSTC(Mram_PROG18),
    .RSTCARRYIN(Mram_PROG18),
    .CED(Mram_PROG18),
    .RSTD(Mram_PROG18),
    .CEOPMODE(Mram_PROG18),
    .CEC(Mram_PROG18),
    .CARRYOUTF(\NLW_ALU/Mmult_UnsignedProd_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(Mram_PROG18),
    .RSTM(Mram_PROG18),
    .CLK(Mram_PROG18),
    .RSTB(Mram_PROG18),
    .CEM(Mram_PROG18),
    .CEB(Mram_PROG18),
    .CARRYIN(Mram_PROG18),
    .CEP(Mram_PROG18),
    .CEA(Mram_PROG18),
    .CARRYOUT(\NLW_ALU/Mmult_UnsignedProd_CARRYOUT_UNCONNECTED ),
    .RSTA(Mram_PROG18),
    .RSTP(Mram_PROG18),
    .B({Mram_PROG18, Mram_PROG18, A[15], A[14], A[13], A[12], A[11], A[10], A[9], A[8], A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0]}),
    .BCOUT({\NLW_ALU/Mmult_UnsignedProd_BCOUT<17>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<16>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_BCOUT<15>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<14>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_BCOUT<13>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<12>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_BCOUT<11>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<10>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_BCOUT<9>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<8>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_BCOUT<7>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<6>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_BCOUT<5>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<4>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_BCOUT<3>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<2>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_BCOUT<1>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_BCOUT<0>_UNCONNECTED }),
    .PCIN({\NLW_ALU/Mmult_UnsignedProd_PCIN<47>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<46>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<45>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<44>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<43>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<42>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<41>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<40>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<39>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<38>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<37>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<36>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<35>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<34>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<33>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<32>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<31>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<30>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<29>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<28>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<27>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<26>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<25>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<24>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<23>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<22>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<21>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<20>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<19>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<18>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<17>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<16>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<15>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<14>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<13>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<12>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCIN<11>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<10>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<9>_UNCONNECTED 
, \NLW_ALU/Mmult_UnsignedProd_PCIN<8>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<7>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<6>_UNCONNECTED 
, \NLW_ALU/Mmult_UnsignedProd_PCIN<5>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<4>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<3>_UNCONNECTED 
, \NLW_ALU/Mmult_UnsignedProd_PCIN<2>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<1>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCIN<0>_UNCONNECTED 
}),
    .C({Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18
, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, 
Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, 
Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, 
Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18}),
    .P({\NLW_ALU/Mmult_UnsignedProd_P<47>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<46>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<45>_UNCONNECTED 
, \NLW_ALU/Mmult_UnsignedProd_P<44>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<43>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<42>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<41>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<40>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<39>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<38>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<37>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<36>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<35>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<34>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<33>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<32>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<31>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<30>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<29>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<28>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<27>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<26>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<25>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<24>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<23>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<22>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<21>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<20>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<19>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<18>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<17>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<16>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<15>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<14>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<13>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<12>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<11>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<10>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<9>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<8>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<7>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<6>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<5>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<4>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<3>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_P<2>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<1>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_P<0>_UNCONNECTED }),
    .OPMODE({Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, N0}),
    .D({Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18
, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18}),
    .PCOUT({\NLW_ALU/Mmult_UnsignedProd_PCOUT<47>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<46>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<45>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<44>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<43>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<42>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<41>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<40>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<39>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<38>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<37>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<36>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<35>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<34>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<33>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<32>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<31>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<30>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<29>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<28>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<27>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<26>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<25>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<24>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<23>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<22>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<21>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<20>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<19>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<18>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<17>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<16>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<15>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<14>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<13>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<12>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<11>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<10>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<9>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<8>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<7>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<6>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<5>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<4>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<3>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<2>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_PCOUT<1>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_PCOUT<0>_UNCONNECTED }),
    .A({Mram_PROG18, Mram_PROG18, B[15], B[14], B[13], B[12], B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]}),
    .M({\NLW_ALU/Mmult_UnsignedProd_M<35>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<34>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<33>_UNCONNECTED 
, \NLW_ALU/Mmult_UnsignedProd_M<32>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<31>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<30>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_M<29>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<28>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<27>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_M<26>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<25>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<24>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_M<23>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<22>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<21>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_M<20>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<19>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<18>_UNCONNECTED , 
\NLW_ALU/Mmult_UnsignedProd_M<17>_UNCONNECTED , \NLW_ALU/Mmult_UnsignedProd_M<16>_UNCONNECTED , \ALU/UnsignedProd [15], \ALU/UnsignedProd [14], 
\ALU/UnsignedProd [13], \ALU/UnsignedProd [12], \ALU/UnsignedProd [11], \ALU/UnsignedProd [10], \ALU/UnsignedProd [9], \ALU/UnsignedProd [8], 
\ALU/UnsignedProd [7], \ALU/UnsignedProd [6], \ALU/UnsignedProd [5], \ALU/UnsignedProd [4], \ALU/UnsignedProd [3], \ALU/UnsignedProd [2], 
\ALU/UnsignedProd [1], \ALU/UnsignedProd [0]})
  );
  DSP48A1 #(
    .CARRYINSEL ( "OPMODE5" ),
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .CREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .OPMODEREG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYOUTREG ( 0 ),
    .RSTTYPE ( "SYNC" ),
    .DREG ( 0 ))
  \ALU/Mmult_SignedProd  (
    .CECARRYIN(Mram_PROG18),
    .RSTC(Mram_PROG18),
    .RSTCARRYIN(Mram_PROG18),
    .CED(Mram_PROG18),
    .RSTD(Mram_PROG18),
    .CEOPMODE(Mram_PROG18),
    .CEC(Mram_PROG18),
    .CARRYOUTF(\NLW_ALU/Mmult_SignedProd_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(Mram_PROG18),
    .RSTM(Mram_PROG18),
    .CLK(Mram_PROG18),
    .RSTB(Mram_PROG18),
    .CEM(Mram_PROG18),
    .CEB(Mram_PROG18),
    .CARRYIN(Mram_PROG18),
    .CEP(Mram_PROG18),
    .CEA(Mram_PROG18),
    .CARRYOUT(\NLW_ALU/Mmult_SignedProd_CARRYOUT_UNCONNECTED ),
    .RSTA(Mram_PROG18),
    .RSTP(Mram_PROG18),
    .B({A[15], A[15], A[15], A[14], A[13], A[12], A[11], A[10], A[9], A[8], A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0]}),
    .BCOUT({\NLW_ALU/Mmult_SignedProd_BCOUT<17>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<16>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_BCOUT<15>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<14>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<13>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_BCOUT<12>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<11>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<10>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_BCOUT<9>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<8>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<7>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_BCOUT<6>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<5>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<4>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_BCOUT<3>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<2>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_BCOUT<1>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_BCOUT<0>_UNCONNECTED }),
    .PCIN({\NLW_ALU/Mmult_SignedProd_PCIN<47>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<46>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<45>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<44>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<43>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<42>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<41>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<40>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<39>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<38>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<37>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<36>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<35>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<34>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<33>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<32>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<31>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<30>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<29>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<28>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<27>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<26>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<25>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<24>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<23>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<22>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<21>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<20>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<19>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<18>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<17>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<16>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<15>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<14>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<13>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<12>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<11>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<10>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<9>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<8>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<7>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<6>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<5>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<4>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<3>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<2>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCIN<1>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCIN<0>_UNCONNECTED }),
    .C({Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18
, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, 
Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, 
Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, 
Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18}),
    .P({\NLW_ALU/Mmult_SignedProd_P<47>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<46>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<45>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<44>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<43>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<42>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<41>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<40>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<39>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<38>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<37>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<36>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<35>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<34>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<33>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<32>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<31>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<30>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<29>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<28>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<27>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<26>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<25>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<24>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<23>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<22>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<21>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<20>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<19>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<18>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<17>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<16>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<15>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<14>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<13>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<12>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<11>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<10>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<9>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<8>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<7>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<6>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<5>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<4>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<3>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_P<2>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<1>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_P<0>_UNCONNECTED }),
    .OPMODE({Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, N0}),
    .D({Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18
, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18, Mram_PROG18}),
    .PCOUT({\NLW_ALU/Mmult_SignedProd_PCOUT<47>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<46>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<45>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<44>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<43>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<42>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<41>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<40>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<39>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<38>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<37>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<36>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<35>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<34>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<33>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<32>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<31>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<30>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<29>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<28>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<27>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<26>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<25>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<24>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<23>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<22>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<21>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<20>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<19>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<18>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<17>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<16>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<15>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<14>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<13>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<12>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<11>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<10>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<9>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<8>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<7>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<6>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<5>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<4>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<3>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<2>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_PCOUT<1>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_PCOUT<0>_UNCONNECTED }),
    .A({B[15], B[15], B[15], B[14], B[13], B[12], B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]}),
    .M({\NLW_ALU/Mmult_SignedProd_M<35>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<34>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<33>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_M<32>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<31>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<30>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_M<29>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<28>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<27>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_M<26>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<25>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<24>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_M<23>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<22>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<21>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_M<20>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<19>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<18>_UNCONNECTED , 
\NLW_ALU/Mmult_SignedProd_M<17>_UNCONNECTED , \NLW_ALU/Mmult_SignedProd_M<16>_UNCONNECTED , \ALU/SignedProd [15], \ALU/SignedProd [14], 
\ALU/SignedProd [13], \ALU/SignedProd [12], \ALU/SignedProd [11], \ALU/SignedProd [10], \ALU/SignedProd [9], \ALU/SignedProd [8], \ALU/SignedProd [7]
, \ALU/SignedProd [6], \ALU/SignedProd [5], \ALU/SignedProd [4], \ALU/SignedProd [3], \ALU/SignedProd [2], \ALU/SignedProd [1], \ALU/SignedProd [0]})
  );
  LUT4 #(
    .INIT ( 16'h02FF ))
  \addrA<1>LogicTrst1  (
    .I0(PC[0]),
    .I1(PC[3]),
    .I2(PC[2]),
    .I3(\PROCESSEN/_n2120 [9]),
    .O(addrA[1])
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \addrA<0>LogicTrst1  (
    .I0(PC[3]),
    .I1(PC[0]),
    .I2(PC[2]),
    .I3(\PROCESSEN/_n2120 [9]),
    .O(addrA[0])
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  Mram_PROG211 (
    .I0(PC[1]),
    .I1(PC[0]),
    .I2(PC[3]),
    .I3(PC[2]),
    .O(Mram_PROG21)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>1111  (
    .I0(PC[2]),
    .I1(PC[3]),
    .I2(PC[0]),
    .I3(PC[1]),
    .O(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 )
  );
  LUT4 #(
    .INIT ( 16'h010E ))
  Mram_PROG2511 (
    .I0(PC[1]),
    .I1(PC[0]),
    .I2(PC[3]),
    .I3(PC[2]),
    .O(Mram_PROG25)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  Mram_PROG2011 (
    .I0(PC[1]),
    .I1(PC[0]),
    .I2(PC[3]),
    .I3(PC[2]),
    .O(Mram_PROG20)
  );
  LUT6 #(
    .INIT ( 64'h41444444E1EEE4EE ))
  \Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<2>11  (
    .I0(jump),
    .I1(PC[2]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_lut<0> ),
    .I3(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_A<0> ),
    .I4(PC[1]),
    .I5(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .O(\PC[3]_PC[3]_mux_4_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h2DDD22D2 ))
  \Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>11  (
    .I0(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_A<0> ),
    .I1(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_lut<0> ),
    .I2(jump),
    .I3(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I4(PC[1]),
    .O(\PC[3]_PC[3]_mux_4_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hBBBBBBBF1111111D ))
  \A<0>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(PC[2]),
    .I3(PC[3]),
    .I4(PC[1]),
    .I5(\REG/_n0044 [0]),
    .O(A[0])
  );
  LUT6 #(
    .INIT ( 64'hBBBBBBBF1111111D ))
  \B<0>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(PC[2]),
    .I3(PC[3]),
    .I4(PC[1]),
    .I5(\REG/_n0045 [0]),
    .O(B[0])
  );
  LUT5 #(
    .INIT ( 32'h4444444E ))
  \Mmux_PC[3]_PC[3]_mux_4_OUT_A11  (
    .I0(jump),
    .I1(PC[0]),
    .I2(PC[2]),
    .I3(PC[3]),
    .I4(PC[1]),
    .O(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_A<0> )
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \addrB<0>LogicTrst1  (
    .I0(PC[2]),
    .I1(PC[3]),
    .I2(PC[1]),
    .I3(reB),
    .O(addrB[0])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \ALU/Mmux_OUTPUT15_B1021  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[0]),
    .I3(ALUfunc[2]),
    .O(\ALU/Mmux_OUTPUT15_B102 )
  );
  LUT6 #(
    .INIT ( 64'h1A581A1802500210 ))
  \ALU/Mmux_OUTPUT15_B17  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[0]),
    .I5(B[0]),
    .O(\ALU/Mmux_OUTPUT15_rs_B[0] )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \ALU/Mmux_OUTPUT15_B71  (
    .I0(B[15]),
    .I1(\ALU/Mmux_OUTPUT15_B101 ),
    .I2(A[15]),
    .I3(\ALU/Mmux_OUTPUT15_B102 ),
    .O(\ALU/Mmux_OUTPUT15_rs_B[15] )
  );
  LUT4 #(
    .INIT ( 16'h1808 ))
  \ALU/Mmux_OUTPUT15_B1011  (
    .I0(ALUfunc[1]),
    .I1(ALUfunc[2]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .O(\ALU/Mmux_OUTPUT15_B101 )
  );
  LUT5 #(
    .INIT ( 32'h53003300 ))
  \ALU/Mmux_OUTPUT15_A142  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[0]),
    .I3(A[15]),
    .I4(B[15]),
    .O(\ALU/Mmux_OUTPUT15_A141 )
  );
  LUT6 #(
    .INIT ( 64'h570C0106070C0106 ))
  \ALU/Mmux_OUTPUT15_A21  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[0]),
    .I5(B[0]),
    .O(\ALU/Mmux_OUTPUT15_A2 )
  );
  LUT4 #(
    .INIT ( 16'h1050 ))
  \ALU/Mmux_OUTPUT15_A22  (
    .I0(ALUfunc[1]),
    .I1(ALUfunc[0]),
    .I2(A[0]),
    .I3(B[0]),
    .O(\ALU/Mmux_OUTPUT15_A21_213 )
  );
  OBUF   LED_7_OBUF (
    .I(LED_7_OBUF_46),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(LED_6_OBUF_47),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(LED_5_OBUF_48),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_4_OBUF_49),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_3_OBUF_50),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_2_OBUF_51),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(LED_1_OBUF_52),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(LED_0_OBUF_53),
    .O(LED[0])
  );
  FD #(
    .INIT ( 1'b1 ))
  start (
    .C(clk_BUFGP_0),
    .D(Mram_PROG18),
    .Q(start_33)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Mram_PROG101 (
    .I0(PC[1]),
    .I1(PC[0]),
    .I2(PC[3]),
    .I3(PC[2]),
    .O(Mram_PROG1)
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A164  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A16 ),
    .I2(N2),
    .I3(N3),
    .I4(\ALU/SignedProd [1]),
    .I5(\ALU/UnsignedProd [1]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [1])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A184  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A18 ),
    .I2(N5),
    .I3(N6),
    .I4(\ALU/SignedProd [2]),
    .I5(\ALU/UnsignedProd [2]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [2])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A204  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A20 ),
    .I2(N8),
    .I3(N9),
    .I4(\ALU/SignedProd [3]),
    .I5(\ALU/UnsignedProd [3]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [3])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A224  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A22_205 ),
    .I2(N11),
    .I3(N12),
    .I4(\ALU/SignedProd [4]),
    .I5(\ALU/UnsignedProd [4]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [4])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A244  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A24_204 ),
    .I2(N14),
    .I3(N15),
    .I4(\ALU/SignedProd [5]),
    .I5(\ALU/UnsignedProd [5]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [5])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A264  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A26 ),
    .I2(N17),
    .I3(N18),
    .I4(\ALU/SignedProd [6]),
    .I5(\ALU/UnsignedProd [6]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [6])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A284  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A28 ),
    .I2(N20),
    .I3(N21),
    .I4(\ALU/SignedProd [7]),
    .I5(\ALU/UnsignedProd [7]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [7])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A304  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A30 ),
    .I2(N23),
    .I3(N24),
    .I4(\ALU/SignedProd [8]),
    .I5(\ALU/UnsignedProd [8]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [8])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A324  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A32 ),
    .I2(N26),
    .I3(N27),
    .I4(\ALU/SignedProd [9]),
    .I5(\ALU/UnsignedProd [9]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [9])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A44  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A4 ),
    .I2(N29),
    .I3(N30),
    .I4(\ALU/SignedProd [10]),
    .I5(\ALU/UnsignedProd [10]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [10])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A64  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A6 ),
    .I2(N32),
    .I3(N33),
    .I4(\ALU/SignedProd [11]),
    .I5(\ALU/UnsignedProd [11]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [11])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A84  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A8 ),
    .I2(N35),
    .I3(N36),
    .I4(\ALU/SignedProd [12]),
    .I5(\ALU/UnsignedProd [12]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [12])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A104  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A10 ),
    .I2(N38),
    .I3(N39),
    .I4(\ALU/SignedProd [13]),
    .I5(\ALU/UnsignedProd [13]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [13])
  );
  LUT6 #(
    .INIT ( 64'hFFCCFDECFEDCFCFC ))
  \ALU/Mmux_OUTPUT15_A124  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_A12 ),
    .I2(N41),
    .I3(N42),
    .I4(\ALU/SignedProd [14]),
    .I5(\ALU/UnsignedProd [14]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [14])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<1>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [1]),
    .O(A[1])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<2>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [2]),
    .O(A[2])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<3>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [3]),
    .O(A[3])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<4>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [4]),
    .O(A[4])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<5>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [5]),
    .O(A[5])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<6>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [6]),
    .O(A[6])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<7>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [7]),
    .O(A[7])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<8>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [8]),
    .O(A[8])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<9>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [9]),
    .O(A[9])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<11>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [11]),
    .O(A[11])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<12>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [12]),
    .O(A[12])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<13>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [13]),
    .O(A[13])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<14>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [14]),
    .O(A[14])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<15>LogicTrst1  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [15]),
    .O(A[15])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \A<10>LogicTrst2  (
    .I0(reA),
    .I1(\PROCESSEN/_n2120 [7]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0044 [10]),
    .O(A[10])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<2>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [2]),
    .O(B[2])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<1>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [1]),
    .O(B[1])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<3>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [3]),
    .O(B[3])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<4>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [4]),
    .O(B[4])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<5>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [5]),
    .O(B[5])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<6>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [6]),
    .O(B[6])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<7>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [7]),
    .O(B[7])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<8>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [8]),
    .O(B[8])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<9>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [9]),
    .O(B[9])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<11>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [11]),
    .O(B[11])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<12>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [12]),
    .O(B[12])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<13>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [13]),
    .O(B[13])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<14>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [14]),
    .O(B[14])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<15>LogicTrst1  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [15]),
    .O(B[15])
  );
  LUT4 #(
    .INIT ( 16'hBF1D ))
  \B<10>LogicTrst2  (
    .I0(reB),
    .I1(\PROCESSEN/_n2120 [8]),
    .I2(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<1>111 ),
    .I3(\REG/_n0045 [10]),
    .O(B[10])
  );
  LUT5 #(
    .INIT ( 32'h0001FFFF ))
  \addrB<1>1  (
    .I0(PC[1]),
    .I1(PC[2]),
    .I2(PC[3]),
    .I3(PC[0]),
    .I4(reB),
    .O(addrB[1])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A164_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[1]),
    .I3(B[1]),
    .I4(\ALU/Mmux_OUTPUT15_A16 ),
    .I5(N2),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A164_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[1]),
    .I3(B[1]),
    .I4(\ALU/Mmux_OUTPUT15_A16 ),
    .I5(N3),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<1>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N44),
    .I3(N45),
    .I4(\ALU/SignedProd [1]),
    .I5(\ALU/UnsignedProd [1]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hFFF0FFD8FFE4FFCC ))
  \ALU/Mmux_OUTPUT15_A24  (
    .I0(ALUfunc[0]),
    .I1(N47),
    .I2(N48),
    .I3(\ALU/Mmux_OUTPUT15_A2 ),
    .I4(\ALU/SignedProd [0]),
    .I5(\ALU/UnsignedProd [0]),
    .O(\ALU/Mmux_OUTPUT15_rs_A [0])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A184_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[2]),
    .I3(B[2]),
    .I4(\ALU/Mmux_OUTPUT15_A18 ),
    .I5(N5),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A184_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[2]),
    .I3(B[2]),
    .I4(\ALU/Mmux_OUTPUT15_A18 ),
    .I5(N6),
    .O(N51)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<2>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N50),
    .I3(N51),
    .I4(\ALU/SignedProd [2]),
    .I5(\ALU/UnsignedProd [2]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A204_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[3]),
    .I3(B[3]),
    .I4(\ALU/Mmux_OUTPUT15_A20 ),
    .I5(N8),
    .O(N53)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A204_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[3]),
    .I3(B[3]),
    .I4(\ALU/Mmux_OUTPUT15_A20 ),
    .I5(N9),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<3>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N53),
    .I3(N54),
    .I4(\ALU/SignedProd [3]),
    .I5(\ALU/UnsignedProd [3]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A224_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[4]),
    .I3(B[4]),
    .I4(\ALU/Mmux_OUTPUT15_A22_205 ),
    .I5(N11),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A224_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[4]),
    .I3(B[4]),
    .I4(\ALU/Mmux_OUTPUT15_A22_205 ),
    .I5(N12),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<4>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N56),
    .I3(N57),
    .I4(\ALU/SignedProd [4]),
    .I5(\ALU/UnsignedProd [4]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A244_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[5]),
    .I3(B[5]),
    .I4(\ALU/Mmux_OUTPUT15_A24_204 ),
    .I5(N14),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A244_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[5]),
    .I3(B[5]),
    .I4(\ALU/Mmux_OUTPUT15_A24_204 ),
    .I5(N15),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<5>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N59),
    .I3(N60),
    .I4(\ALU/SignedProd [5]),
    .I5(\ALU/UnsignedProd [5]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A264_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[6]),
    .I3(B[6]),
    .I4(\ALU/Mmux_OUTPUT15_A26 ),
    .I5(N17),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A264_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[6]),
    .I3(B[6]),
    .I4(\ALU/Mmux_OUTPUT15_A26 ),
    .I5(N18),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<6>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N62),
    .I3(N63),
    .I4(\ALU/SignedProd [6]),
    .I5(\ALU/UnsignedProd [6]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A284_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[7]),
    .I3(B[7]),
    .I4(\ALU/Mmux_OUTPUT15_A28 ),
    .I5(N20),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A284_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[7]),
    .I3(B[7]),
    .I4(\ALU/Mmux_OUTPUT15_A28 ),
    .I5(N21),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<7>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N65),
    .I3(N66),
    .I4(\ALU/SignedProd [7]),
    .I5(\ALU/UnsignedProd [7]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A304_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[8]),
    .I3(B[8]),
    .I4(\ALU/Mmux_OUTPUT15_A30 ),
    .I5(N23),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A304_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[8]),
    .I3(B[8]),
    .I4(\ALU/Mmux_OUTPUT15_A30 ),
    .I5(N24),
    .O(N69)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<8>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N68),
    .I3(N69),
    .I4(\ALU/SignedProd [8]),
    .I5(\ALU/UnsignedProd [8]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [8])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A324_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[9]),
    .I3(B[9]),
    .I4(\ALU/Mmux_OUTPUT15_A32 ),
    .I5(N26),
    .O(N71)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A324_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[9]),
    .I3(B[9]),
    .I4(\ALU/Mmux_OUTPUT15_A32 ),
    .I5(N27),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<9>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N71),
    .I3(N72),
    .I4(\ALU/SignedProd [9]),
    .I5(\ALU/UnsignedProd [9]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [9])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A44_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[10]),
    .I3(B[10]),
    .I4(\ALU/Mmux_OUTPUT15_A4 ),
    .I5(N29),
    .O(N74)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A44_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[10]),
    .I3(B[10]),
    .I4(\ALU/Mmux_OUTPUT15_A4 ),
    .I5(N30),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<10>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N74),
    .I3(N75),
    .I4(\ALU/SignedProd [10]),
    .I5(\ALU/UnsignedProd [10]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A64_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[11]),
    .I3(B[11]),
    .I4(\ALU/Mmux_OUTPUT15_A6 ),
    .I5(N32),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A64_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[11]),
    .I3(B[11]),
    .I4(\ALU/Mmux_OUTPUT15_A6 ),
    .I5(N33),
    .O(N78)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<11>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N77),
    .I3(N78),
    .I4(\ALU/SignedProd [11]),
    .I5(\ALU/UnsignedProd [11]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [11])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A84_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[12]),
    .I3(B[12]),
    .I4(\ALU/Mmux_OUTPUT15_A8 ),
    .I5(N35),
    .O(N80)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A84_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[12]),
    .I3(B[12]),
    .I4(\ALU/Mmux_OUTPUT15_A8 ),
    .I5(N36),
    .O(N81)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<12>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N80),
    .I3(N81),
    .I4(\ALU/SignedProd [12]),
    .I5(\ALU/UnsignedProd [12]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [12])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A104_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[13]),
    .I3(B[13]),
    .I4(\ALU/Mmux_OUTPUT15_A10 ),
    .I5(N38),
    .O(N83)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A104_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[13]),
    .I3(B[13]),
    .I4(\ALU/Mmux_OUTPUT15_A10 ),
    .I5(N39),
    .O(N84)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<13>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N83),
    .I3(N84),
    .I4(\ALU/SignedProd [13]),
    .I5(\ALU/UnsignedProd [13]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [13])
  );
  LUT6 #(
    .INIT ( 64'h153F153F153FEAC0 ))
  \ALU/Mmux_OUTPUT15_A124_SW0  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[14]),
    .I3(B[14]),
    .I4(\ALU/Mmux_OUTPUT15_A12 ),
    .I5(N41),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'hEAC0EAC0EAC0153F ))
  \ALU/Mmux_OUTPUT15_A124_SW1  (
    .I0(\ALU/Mmux_OUTPUT15_B101 ),
    .I1(\ALU/Mmux_OUTPUT15_B102 ),
    .I2(A[14]),
    .I3(B[14]),
    .I4(\ALU/Mmux_OUTPUT15_A12 ),
    .I5(N42),
    .O(N87)
  );
  LUT6 #(
    .INIT ( 64'hAA556A599A565A5A ))
  \ALU/Mmux_OUTPUT15_rs_lut<14>  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[0]),
    .I2(N86),
    .I3(N87),
    .I4(\ALU/SignedProd [14]),
    .I5(\ALU/UnsignedProd [14]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [14])
  );
  LUT6 #(
    .INIT ( 64'hCC336C399C363C3C ))
  \ALU/Mmux_OUTPUT15_rs_lut<0>  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_rs_B[0] ),
    .I2(N89),
    .I3(N90),
    .I4(\ALU/SignedProd [0]),
    .I5(\ALU/UnsignedProd [0]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hCC336C399C363C3C ))
  \ALU/Mmux_OUTPUT15_rs_lut<15>  (
    .I0(ALUfunc[0]),
    .I1(\ALU/Mmux_OUTPUT15_rs_B[15] ),
    .I2(N92),
    .I3(N93),
    .I4(\ALU/SignedProd [15]),
    .I5(\ALU/UnsignedProd [15]),
    .O(\ALU/Mmux_OUTPUT15_rs_lut [15])
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A163_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[1]),
    .I5(B[1]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A163_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[1]),
    .I5(B[1]),
    .O(N3)
  );
  MUXF7   \ALU/Mmux_OUTPUT15_A23_SW2  (
    .I0(N95),
    .I1(N96),
    .S(\ALU/Mmux_OUTPUT15_A21_213 ),
    .O(N89)
  );
  MUXF7   \ALU/Mmux_OUTPUT15_A143_SW0  (
    .I0(N99),
    .I1(N100),
    .S(\ALU/Mmux_OUTPUT15_A141 ),
    .O(N92)
  );
  MUXF7   \ALU/Mmux_OUTPUT15_A143_SW1  (
    .I0(N101),
    .I1(N102),
    .S(\ALU/Mmux_OUTPUT15_A141 ),
    .O(N93)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A183_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[2]),
    .I5(B[2]),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A183_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[2]),
    .I5(B[2]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A203_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[3]),
    .I5(B[3]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A203_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[3]),
    .I5(B[3]),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A223_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[4]),
    .I5(B[4]),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A223_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[4]),
    .I5(B[4]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A243_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[5]),
    .I5(B[5]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A243_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[5]),
    .I5(B[5]),
    .O(N15)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A263_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[6]),
    .I5(B[6]),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A263_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[6]),
    .I5(B[6]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A283_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[7]),
    .I5(B[7]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A283_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[7]),
    .I5(B[7]),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A303_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[8]),
    .I5(B[8]),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A303_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[8]),
    .I5(B[8]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A323_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[9]),
    .I5(B[9]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A323_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[9]),
    .I5(B[9]),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A43_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[10]),
    .I5(B[10]),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A43_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[10]),
    .I5(B[10]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A63_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[11]),
    .I5(B[11]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A63_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[11]),
    .I5(B[11]),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A83_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[12]),
    .I5(B[12]),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A83_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[12]),
    .I5(B[12]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A103_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[13]),
    .I5(B[13]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A103_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[13]),
    .I5(B[13]),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'h5030202030300000 ))
  \ALU/Mmux_OUTPUT15_A123_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[14]),
    .I5(B[14]),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'hD0B0A0A0B0B08080 ))
  \ALU/Mmux_OUTPUT15_A123_SW1  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[14]),
    .I5(B[14]),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h0030202030300000 ))
  \ALU/Mmux_OUTPUT15_A23_SW0  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[0]),
    .I5(B[0]),
    .O(N47)
  );
  LUT6 #(
    .INIT ( 64'h888808A08888A8A0 ))
  \ALU/Mmux_OUTPUT15_A23_SW1  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[2]),
    .I2(A[0]),
    .I3(B[0]),
    .I4(ALUfunc[1]),
    .I5(ALUfunc[0]),
    .O(N48)
  );
  LUT5 #(
    .INIT ( 32'h00025557 ))
  \Mmux_PC[3]_PC[3]_mux_4_OUT_rs_lut<0>1  (
    .I0(jump),
    .I1(PC[1]),
    .I2(PC[2]),
    .I3(PC[3]),
    .I4(PC[0]),
    .O(\Mmux_PC[3]_PC[3]_mux_4_OUT_rs_lut<0> )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A161  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[1]),
    .O(\ALU/Mmux_OUTPUT15_A16 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A181  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[2]),
    .O(\ALU/Mmux_OUTPUT15_A18 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A201  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[3]),
    .O(\ALU/Mmux_OUTPUT15_A20 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A221  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[4]),
    .O(\ALU/Mmux_OUTPUT15_A22_205 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A241  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[5]),
    .O(\ALU/Mmux_OUTPUT15_A24_204 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A261  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[6]),
    .O(\ALU/Mmux_OUTPUT15_A26 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A281  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[7]),
    .O(\ALU/Mmux_OUTPUT15_A28 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A301  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[8]),
    .O(\ALU/Mmux_OUTPUT15_A30 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A321  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[9]),
    .O(\ALU/Mmux_OUTPUT15_A32 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A41  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[10]),
    .O(\ALU/Mmux_OUTPUT15_A4 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A61  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[11]),
    .O(\ALU/Mmux_OUTPUT15_A6 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A81  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[12]),
    .O(\ALU/Mmux_OUTPUT15_A8 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A101  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[13]),
    .O(\ALU/Mmux_OUTPUT15_A10 )
  );
  LUT5 #(
    .INIT ( 32'h060C0006 ))
  \ALU/Mmux_OUTPUT15_A121  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[0]),
    .I4(A[14]),
    .O(\ALU/Mmux_OUTPUT15_A12 )
  );
  LUT6 #(
    .INIT ( 64'hB7BCF156F7FCF1F6 ))
  \ALU/Mmux_OUTPUT15_A23_SW2_F  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[0]),
    .I2(ALUfunc[3]),
    .I3(ALUfunc[1]),
    .I4(A[0]),
    .I5(B[0]),
    .O(N95)
  );
  LUT5 #(
    .INIT ( 32'h04414550 ))
  \ALU/Mmux_OUTPUT15_A23_SW2_G  (
    .I0(ALUfunc[3]),
    .I1(A[0]),
    .I2(ALUfunc[0]),
    .I3(ALUfunc[1]),
    .I4(ALUfunc[2]),
    .O(N96)
  );
  LUT6 #(
    .INIT ( 64'hBAE2BAEAFBA6FBAE ))
  \ALU/Mmux_OUTPUT15_A143_SW0_F  (
    .I0(ALUfunc[3]),
    .I1(ALUfunc[2]),
    .I2(A[15]),
    .I3(ALUfunc[1]),
    .I4(B[15]),
    .I5(ALUfunc[0]),
    .O(N99)
  );
  LUT6 #(
    .INIT ( 64'h8A9F8A39889F8839 ))
  \ALU/Mmux_OUTPUT15_A143_SW1_F  (
    .I0(ALUfunc[2]),
    .I1(ALUfunc[1]),
    .I2(A[15]),
    .I3(ALUfunc[3]),
    .I4(ALUfunc[0]),
    .I5(B[15]),
    .O(N101)
  );
  LUT5 #(
    .INIT ( 32'h04404150 ))
  \ALU/Mmux_OUTPUT15_A143_SW0_G  (
    .I0(ALUfunc[3]),
    .I1(A[15]),
    .I2(ALUfunc[1]),
    .I3(ALUfunc[2]),
    .I4(ALUfunc[0]),
    .O(N100)
  );
  LUT5 #(
    .INIT ( 32'hFFFFD763 ))
  \ALU/Mmux_OUTPUT15_A143_SW1_G  (
    .I0(A[15]),
    .I1(ALUfunc[1]),
    .I2(ALUfunc[2]),
    .I3(ALUfunc[0]),
    .I4(ALUfunc[3]),
    .O(N102)
  );
  LUT5 #(
    .INIT ( 32'h14444446 ))
  \Mmux_PC[3]_PC[3]_mux_4_OUT_rs_xor<3>1  (
    .I0(jump),
    .I1(PC[3]),
    .I2(PC[1]),
    .I3(PC[2]),
    .I4(PC[0]),
    .O(\PC[3]_PC[3]_mux_4_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hE6AEB22DACACB22D ))
  \ALU/Mmux_OUTPUT15_A23_SW3  (
    .I0(ALUfunc[2]),
    .I1(A[0]),
    .I2(ALUfunc[1]),
    .I3(ALUfunc[0]),
    .I4(ALUfunc[3]),
    .I5(B[0]),
    .O(N90)
  );
  LUT4 #(
    .INIT ( 16'h02FF ))
  \addrA<1>LogicTrst1_1  (
    .I0(PC[0]),
    .I1(PC[3]),
    .I2(PC[2]),
    .I3(\PROCESSEN/_n2120 [9]),
    .O(\addrA<1>LogicTrst1_295 )
  );
  LUT4 #(
    .INIT ( 16'h02FF ))
  \addrA<1>LogicTrst1_2  (
    .I0(PC[0]),
    .I1(PC[3]),
    .I2(PC[2]),
    .I3(\PROCESSEN/_n2120 [9]),
    .O(\addrA<1>LogicTrst11 )
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \addrA<0>LogicTrst1_1  (
    .I0(PC[3]),
    .I1(PC[0]),
    .I2(PC[2]),
    .I3(\PROCESSEN/_n2120 [9]),
    .O(\addrA<0>LogicTrst1_297 )
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \addrA<0>LogicTrst1_2  (
    .I0(PC[3]),
    .I1(PC[0]),
    .I2(PC[2]),
    .I3(\PROCESSEN/_n2120 [9]),
    .O(\addrA<0>LogicTrst11 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \REG/clk_inv15_INV_0  (
    .I(clk_BUFGP_0),
    .O(\REG/clk_inv )
  );
  INV   start_inv1_INV_0 (
    .I(start_33),
    .O(start_inv)
  );
  INV   \addrA<2>1_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(addrA[2])
  );
  INV   \addrA<2>1_1_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(\addrA<2>1 )
  );
  INV   \addrA<2>1_2_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(\addrA<2>11 )
  );
  INV   \addrA<2>1_3_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(\addrA<2>12 )
  );
  INV   \addrA<2>1_4_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(\addrA<2>13 )
  );
  INV   \addrA<2>1_5_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(\addrA<2>14 )
  );
  INV   \addrA<2>1_6_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(\addrA<2>1_1 )
  );
  INV   \addrA<2>1_7_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(\addrA<2>1_2 )
  );
  INV   \addrA<2>1_8_INV_0  (
    .I(\PROCESSEN/_n2120 [9]),
    .O(\addrA<2>1_3 )
  );
  LUT5 #(
    .INIT ( 32'h01060408 ))
  PROCESSEN_Mram__n2120201 (
    .I0(Mram_PROG25),
    .I1(Mram_PROG21),
    .I2(Mram_PROG20),
    .I3(Mram_PROG1),
    .I4(Mram_PROG1),
    .O(reB)
  );
  LUT5 #(
    .INIT ( 32'h00040440 ))
  PROCESSEN_Mram__n2120161 (
    .I0(Mram_PROG25),
    .I1(Mram_PROG20),
    .I2(Mram_PROG21),
    .I3(Mram_PROG1),
    .I4(Mram_PROG1),
    .O(\PROCESSEN/_n2120 [8])
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  PROCESSEN_Mram__n2120141 (
    .I0(Mram_PROG25),
    .I1(Mram_PROG20),
    .I2(Mram_PROG21),
    .I3(Mram_PROG1),
    .I4(Mram_PROG1),
    .O(\PROCESSEN/_n2120 [7])
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  PROCESSEN_Mram__n21201211 (
    .I0(Mram_PROG20),
    .I1(Mram_PROG21),
    .I2(Mram_PROG1),
    .I3(Mram_PROG1),
    .I4(Mram_PROG25),
    .O(jump)
  );
  LUT5 #(
    .INIT ( 32'h11121666 ))
  PROCESSEN_Mram__n2120181 (
    .I0(Mram_PROG20),
    .I1(Mram_PROG25),
    .I2(Mram_PROG21),
    .I3(Mram_PROG1),
    .I4(Mram_PROG1),
    .O(\PROCESSEN/_n2120 [9])
  );
  LUT5 #(
    .INIT ( 32'h01161444 ))
  PROCESSEN_Mram__n212081 (
    .I0(Mram_PROG25),
    .I1(Mram_PROG20),
    .I2(Mram_PROG21),
    .I3(Mram_PROG1),
    .I4(Mram_PROG1),
    .O(reA)
  );
  LUT5 #(
    .INIT ( 32'h01141640 ))
  PROCESSEN_Mram__n212061 (
    .I0(Mram_PROG25),
    .I1(Mram_PROG21),
    .I2(Mram_PROG1),
    .I3(Mram_PROG1),
    .I4(Mram_PROG20),
    .O(ALUfunc[3])
  );
  LUT5 #(
    .INIT ( 32'h00160402 ))
  PROCESSEN_Mram__n212041 (
    .I0(Mram_PROG20),
    .I1(Mram_PROG21),
    .I2(Mram_PROG1),
    .I3(Mram_PROG25),
    .I4(Mram_PROG1),
    .O(ALUfunc[2])
  );
  LUT5 #(
    .INIT ( 32'h01420040 ))
  PROCESSEN_Mram__n212021 (
    .I0(Mram_PROG20),
    .I1(Mram_PROG1),
    .I2(Mram_PROG1),
    .I3(Mram_PROG25),
    .I4(Mram_PROG21),
    .O(ALUfunc[1])
  );
  LUT5 #(
    .INIT ( 32'h11161640 ))
  PROCESSEN_Mram__n212011 (
    .I0(Mram_PROG25),
    .I1(Mram_PROG20),
    .I2(Mram_PROG1),
    .I3(Mram_PROG1),
    .I4(Mram_PROG21),
    .O(ALUfunc[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

