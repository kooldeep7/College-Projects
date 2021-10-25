`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  memory.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////
module memory(clk, write, step, address, din, dout);

	input					write, step, clk;
	input		[5:0]		address;
	input		[15:0]	din;
	output	[15:0]   dout;


///////////////////////////////////////////////
// Declare the memory structure 16 wide 64 deep
///////////////////////////////////////////////
reg [15:0] mem [0:63];

///////////////////////////////////////////////
// always read the memory
///////////////////////////////////////////////
assign dout = mem[address];

///////////////////////////////////////////////
// write the memory when write and step
///////////////////////////////////////////////
always@(posedge clk)
    if (write & step) 
        mem[address] <= din;

endmodule