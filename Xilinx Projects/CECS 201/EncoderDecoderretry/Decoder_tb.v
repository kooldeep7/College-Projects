`timescale 1ns / 1ns

// Testbench
// CECS 201
// Kuldeep Gohil
module Decoder_tb;
//declare variables for testing
reg [2:0] DecIn;
wire [7:0] DecOut;
integer i;

	// Instantiate the Unit Under Test (UUT)
Decoder dut (
				.In(DecIn), 
				.Out(DecOut)
				);

initial begin
	DecIn = 0;
	for (i=0; i<8; i = i + 1)
			#100 DecIn = i[2:0];
	end
      
endmodule




