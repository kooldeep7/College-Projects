`timescale 1ns / 1ns
// Kuldeep Gohil
module Encoder(In, Out);
    input [7:0] In;
    output [2:0] Out;
	 
	 reg [2:0] Out;
	 
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
