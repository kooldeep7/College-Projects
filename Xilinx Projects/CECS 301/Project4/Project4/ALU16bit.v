`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  ALU16bit.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module ALU16bit(opSel, A, B, Y, Z, C);
	
	input 		[2:0]		opSel;
	input 		[15:0] 	A, B;
	output reg 	[15:0]	Y;
	output					Z, C;
	reg						C;
	
	assign Z = ~| Y;
	
	always@(*)
		case(opSel)
		3'b000 : {C, Y} = A + B;					//Add
		3'b001 : {C, Y} = A - B;					//Subtract
		3'b010 : Y = A << 1;							//Shift Left			
		3'b011 : Y = {A[0], A[15:1]};				//Rotate Right
		3'b100 : {C, Y} = {1'b0, A & B};			//AND
		3'b101 : {C, Y} = {1'b0, A | B};			//OR
		3'b110 : {C, Y} = {1'b0, A ^ B};			//XOR
		3'b111 : {C, Y} = {1'b0, ~A}; 			//Negate
		
		endcase


endmodule
