`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:40:32 04/03/2017 
// Design Name: 
// Module Name:    Encoder 
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
module Encoder(In, Out);

input [7:0] In;
output [2:0] Out;

reg	[2:0] Out;

always @(*)
	case(In)
		8'b0000_0001: Out = 3'b000;
		8'b0000_0010: Out = 3'b001;
		8'b0000_0100: Out = 3'b010;
		8'b0000_1000: Out = 3'b011;
		8'b0001_0000: Out = 3'b100;
		8'b0010_0000: Out = 3'b101;
		8'b0100_0000: Out = 3'b110;
		8'b1000_0000: Out = 3'b111;
   endcase
    
endmodule
