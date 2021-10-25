`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name: mod8.v 
// Project Name: Project 3 

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module mod8(clk, rst, rotate, count);
	input 	  				clk, rst;
	input wire 		   	rotate;
	output 		   		[2:0] count;
	reg		  				[2:0] count, ncount;
	
	
	always @ (posedge clk, posedge rst)
		if (rst)
			count <=3'b0;
		else
			count <= ncount;
	
	always @ (*)
		if (rotate)
			ncount = count + 3'b1;
		else
			ncount = count;
	


endmodule
