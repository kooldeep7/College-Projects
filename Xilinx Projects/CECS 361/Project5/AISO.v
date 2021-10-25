`timescale 1ns / 1ps
/*****************************************************************************
 * File Name:  AISO.v
 *
 * Created by Kuldeep Gohil
 *
 *	In submitting this file for class work at CSULB I am confirming that 
 *	this is my work product. In the event other code sources are utilized
 *	I will document that code identifying the author. In submitting this 
 * work I acknowledge that plagiarism in student project work is subject
 *	to dismissal from the class
 ****************************************************************************/  
module AISO(rst, clk, rst_sync);

	input 		clk, rst;
	output     	rst_sync;
	reg 			Q1, Q2;
	
	always @ (posedge rst or posedge clk) begin
	
	   if(rst)
	       {Q1, Q2} <= 2'b0;
	   else
	       {Q1, Q2} <= {1'b1, Q1};
	end
    
	assign rst_sync = ~Q2;
	
endmodule
