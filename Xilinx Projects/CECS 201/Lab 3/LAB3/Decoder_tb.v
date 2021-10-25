`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:48:05 04/03/2017
// Design Name:   Decoder
// Module Name:   C:/Users/Kuldeep/Desktop/Lab 3/LAB3/Decoder_tb.v
// Project Name:  LAB3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_tb;

reg	[2:0]	DecIn;
wire	[7:0]	DecOut;
integer		i;

Decoder dut (
				.In(DecIn),
				.Out(DecOut)
				);
				
initial begin
	DecIn	= 0;
	for (i=0; i<8; i = i + 1)
		#100 DecIn = i[2:0];
	end
      
endmodule

