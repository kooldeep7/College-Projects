`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:50:47 04/03/2017 
// Design Name: 
// Module Name:    EncDec 
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
module EncDec(In, Out);

input		[7:0]	In;
output	[7:0]	Out;

wire		[2:0]	EncoderOut;

Encoder Encoder(
					.In(In),
					.Out(EncoderOut)
					);
					
Decoder Decoder(
					.In(EncoderOut),
					.Out(Out)
					);


endmodule