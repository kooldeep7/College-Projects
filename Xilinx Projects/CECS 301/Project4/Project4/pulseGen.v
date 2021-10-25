`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  pulseGen.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module pulseGen(clk, rst, pulse_out);
	input 			clk, rst;
	output 			pulse_out;
	
	reg				[16:0] pulse;
	
assign pulse_out =(pulse == 17'd99_999);

	always @(posedge clk, posedge rst)
		if(rst)
			pulse <= 17'b0;
		else 
			pulse <= pulse + 17'b1;


endmodule