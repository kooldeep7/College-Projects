`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  shiftReg.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module shiftReg(clk, rst, step, ld, q);

		input						clk, rst;
		input wire  			ld, step;
		output 		[15:0]   q;	
		reg			[15:0]	d;
		reg			[15:0]	q;

		
always @(posedge clk, posedge rst)
		if(rst)
			q <= 16'b0;
		else
			q <= d;

	always @(*)
		if(ld)
			d = {step, q[15:1]};
		else
			d = q; 
		
endmodule