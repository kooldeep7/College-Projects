`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:02 04/25/2019 
// Design Name: 
// Module Name:    Mux21 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 2:1 16 bit mux
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux21(
    input             Sel,
    input      [15:0] A,     // sel = 1
    input      [15:0] B,     // sel = 0
    output reg [15:0] Y
    );

////////////////////////////////////////
// Implement Mux
////////////////////////////////////////
always @(*)
   if (Sel)
	   Y = A;
	else
	   Y = B;

endmodule
