`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  topModule.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module topModule(clk, rst, step, sel, D_in, muxOut);

	input 				clk, rst, step, sel;
	input    [15:0]   D_in;
	wire		[15:0] 	Q;
	wire		         q_out;
	wire 					D_out;
	output   [15:0]   muxOut;
	

	pulseGen pulseGen(
		.clk(clk), 
		.rst(rst), 
		.pulse_out(q_out)
		);
	
	shiftReg shiftReg(
		.clk(clk),
		.rst(rst),
		.ld(q_out),
		.step(step),
		.q(Q)
		);
		
	detectPosEdge detectPosEdge(
		.clk(clk),
		.rst(rst),
		.D_in(Q),
		.D_out(D_out)
		);
	
	mux mux(
		.D_in(D_out),
		.D_in2(D_in),
		.sel(sel),
		.muxOut(muxOut)
		);
		
	
endmodule