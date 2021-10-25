`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:20 05/07/2017 
// Design Name: 
// Module Name:    ProgramTwo 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

//Simple Computer CECS 201 CSULB
// John Tramel 11/28/16
// Program Two - Code (00 thru 0A)
001_11110            // LOAD 1E
011_11111            // ADD 1F
010_11110            // STORE 1E
001_11101            // LOAD 1D
111_00010            // CAC
111_00001            // IAC
011_11111            // ADD 1F
010_11111            // STORE 1F
101_01010            // JZ DONE (0A)
100_00000            // JUMP LOOP (00)
110_00000            // HALT
// Program One - Data
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0000            // NOP
0000_0001            // Constant 1
0000_0000            // Accumulate Results
0000_1111            // Decreasing Incrementer
