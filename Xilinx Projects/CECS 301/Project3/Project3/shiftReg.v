`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  shiftReg.v 
// Project Name: Project 3

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module shiftReg(clk, rst, push, pulse_out, Q);
		input			clk, rst;
		input wire	pulse_out, push;
		output 		[9:0] Q;
		
		reg			[9:0] sqr;
		reg			[9:0] Q;
		
always @(posedge clk, posedge rst)
		if(rst)
			Q <= 10'b0;
		else
			Q <= sqr;

	always @(*)
		if(pulse_out)
			sqr = {push, Q[9:1]};
		else
			sqr = Q; 
		
endmodule
