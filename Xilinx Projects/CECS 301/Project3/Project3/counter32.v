`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:    counter32.v 
// Project Name: Project 3

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module counter32(clk, rst, D_out, inVal);
		input 			clk, rst;
		input wire		D_out;
		output 			[31:0] inVal;

		reg 	 			[31:0] inVal, ninVal;

always @(*)
	if (D_out)
		ninVal = inVal + 32'b1;
	else
		ninVal = inVal;

always @ (posedge clk, posedge rst)
	if (rst) 
		inVal <= 32'b0;
	else 		
		inVal <= ninVal;
endmodule
