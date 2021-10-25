`timescale 1ns / 1ns
// Kuldeep Gohil
module EncDec(In, Out);

input [7:0] In;
output [7:0] Out;

wire [2:0] EncoderOut;

Encoder Encoder(
			.In(In),
			.Out(EncoderOut)
			);
Decoder Decoder(
			.In(EncoderOut),
			.Out(Out)
			);
    
endmodule
