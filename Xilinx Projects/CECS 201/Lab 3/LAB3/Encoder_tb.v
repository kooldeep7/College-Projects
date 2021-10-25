`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:41:49 04/03/2017
// Design Name:   Encoder
// Module Name:   C:/Users/Kuldeep/Desktop/Lab 3/LAB3/Encoder_tb.v
// Project Name:  LAB3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Encoder_tb;


reg	[7:0] EncIn;
wire	[2:0] EncOut;
integer		i;

Encoder dut	(
				.In(EncIn),
				.Out(EncOut)
				);
				
initial begin
	EncIn	= 8'b0000_0001;
	for (i=0; i<8;	i = i + 1)
		#100 EncIn = EncIn << 1;
	end
      
endmodule


