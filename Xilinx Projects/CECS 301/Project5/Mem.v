`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        CSULB CECS 361
// Engineer:       John Tramel
// 
// Create Date:    19:50:39 04/23/2019 
// Design Name: 
// Module Name:    Memory 64 x 16 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:    Instruction and Data Memory for 301 Processor
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Memory (
    input         clk,
    input         WrtMem,
    input         Step,
    input   [5:0] Adrs,
    input  [15:0] Din,
    output [15:0] Dout
    );

///////////////////////////////////////////////
// Declare the memory structure 16 wide 64 deep
///////////////////////////////////////////////
reg [15:0] mem [0:63];

///////////////////////////////////////////////
// always read the memory
///////////////////////////////////////////////
assign Dout = mem[Adrs];

///////////////////////////////////////////////
// write the memory when write and step
///////////////////////////////////////////////
always@(posedge clk)
    if (WrtMem & Step) 
        mem[Adrs] <= Din;

endmodule
