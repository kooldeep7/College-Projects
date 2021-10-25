`timescale 1ns / 1ps
// Kuldeep Gohil
module EncDec_tb;

		reg [7:0] In;
		
		wire [7:0] Out;
		
		integer i;

	// Instantiate the Unit Under Test (UUT)
		EncDec uut (
					.In(In),
					.Out(Out)
		);

		initial begin
		// Initialize Inputs
					In = 1;
		
					for (i=0; i<7; i = i + 1)
						#100 In = In << 1;

		end
      
endmodule

