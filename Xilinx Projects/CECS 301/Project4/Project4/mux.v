`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  mux.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module mux(D_in, D_in2, sel, muxOut);
	input sel;
	
	input 		[15:0] 		D_in, D_in2;

	output wire [15:0] 		muxOut;
	
	
	assign muxOut = (sel) ? D_in2 : D_in;

endmodule
