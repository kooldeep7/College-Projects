`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name: topModule.v
// Project Name: Project 3

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module topModule(clk, rst, push, anode, cathode);

	input 				clk, rst, push;
	wire		[31:0]	inVal;
	wire		[9:0] 	Q;
	wire		[2:0] 	count;
	wire		[3:0] 	hexVal;
	wire		         rotate, pulse_out, D_out;
	output 	[7:0] 	anode;
	output 	[7:0] 	cathode;
	
	pulseGen pulseGen(
		.clk(clk), 
		.rst(rst), 
		.pulse_out(pulse_out)
		);
	
	shiftReg shiftReg(
		.clk(clk),
		.rst(rst),
		.pulse_out(pulse_out),
		.push(push),
		.Q(Q)
		);
		
	detectPosEdge detectPosEdge(
		.clk(clk),
		.rst(rst),
		.D_in(Q),
		.D_out(D_out)
		);
	
	counter32 counter32(
		.clk(clk),
		.rst(rst),
		.D_out(D_out),
		.inVal(inVal[31:0])
		);
		
	rotator rotator(
		.clk(clk),
		.rst(rst),
		.rotate(rotate)
		);  
		
	barrelshifter barrelshifter (
		.clk(clk),
		.rst(rst),
		.rotate(rotate),
		.anode(anode[7:0])
		);
							
	mod8 mod8 (
		.clk(D_out),
		.rst(rst),
		.rotate(rotate),
		.count(count[2:0])
		);
					
	mux8to1 	mux8to1 (
		.count(count[2:0]),
		.inVal(inVal[31:0]),
		.hexVal(hexVal[3:0])
		);
						
	hexToSevenSeg 	hexToSevenSeg (
		.hexVal(hexVal[3:0]),
		.cathode(cathode[7:0])
		);
		
	
endmodule