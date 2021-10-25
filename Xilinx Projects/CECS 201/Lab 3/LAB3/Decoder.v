`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:46:34 04/03/2017 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(In, Out);

input		[2:0] In;
output	[7:0]	Out;

reg		[7:0]	Out;

always	@(*)
	case(In)
		3'b000:	Out = 8'b0000_0001;
		3'b001:	Out = 8'b0000_0010;
		3'b010:	Out = 8'b0000_0100;
		3'b011:	Out = 8'b0000_1000;
		3'b100:	Out = 8'b0001_0000;
		3'b101:	Out = 8'b0010_0000;
		3'b110:	Out = 8'b0100_0000;
		3'b111:	Out = 8'b1000_0000;
	endcase

endmodule
