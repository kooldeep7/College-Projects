`timescale 1ns / 1ns

// Encoder Testbench
// CECS 201
// Kuldeep Gohil
module Encoder_tb;
//declare variables for testing
reg [7:0] EncIn;
wire [2:0] EncOut;
integer i;

	// Instantiate the Unit Under Test (UUT)
Encoder dut (
				.In(EncIn), 
				.Out(EncOut)
				);

initial begin
	EncIn = 8'b0000_0001;
	for (i=0; i<8; i = i + 1)
			#100 EncIn = EncIn << 1;
	end
      
endmodule


