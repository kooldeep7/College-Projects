`timescale 1ns / 1ps

// Design Name: Kuldeep Gohil
// Module Name:  memory_tb.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////

module memory_tb;

	// Inputs
	reg 					clk, write, step;
	reg 	[5:0] 		address;
	reg 	[15:0]		din, dout;

	integer i;

	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.clk(clk), 
		.write(write), 
		.step(step), 
		.address(address), 
		.din(din), 
		.dout(dout)
	);
	
	always #5 clk = ~clk;
		

	initial begin
		// Initialize Inputs
		clk = 0;
		write = 0;
		step = 0;
		address = 0;
		din = 0;
		dout = 0;

	#100 write = 1; 
	#100 step = 1;
	for (i = 0; i < 64; i = i + 1)
		begin
		@(posedge clk) din = 0;
		address = i;
		
		end
		
		end

		
      
endmodule

