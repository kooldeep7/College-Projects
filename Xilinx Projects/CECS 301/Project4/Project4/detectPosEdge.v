`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  detectPosEdge.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module detectPosEdge(clk, rst, D_in, D_out);

	input 					 clk, rst;
	input wire	[15:0]	 D_in;
	wire 						 d1;
	reg 						 q1, q2;
	output wire 			 D_out;
	
	assign d1 = &(D_in);
	assign D_out = (q1 & (!q2)) ;
		
	always @(posedge clk, posedge rst)
		if(rst)
			begin
				q1 <= 1'b0;
				q2 <= 1'b0;
			end
		else
			begin
				q1 <= d1;
				q2 <= q1; 
			end

endmodule
