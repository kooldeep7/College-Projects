`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB CoE
// Engineer: Giustine Rabin
// Email: giustinemrabin@gmail.com
// 
// Create Date:    13:00:23 03/03/2019 
// Design Name: 	 mux8to1
// Module Name:    mux8to1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
// In submitting this file for class work at CSULB I am confirming 
// that this is my work product.  In the event other code sources are
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class.
//////////////////////////////////////////////////////////////////////////////////
module mux8to1(count,inVal,hexVal);
	input wire		[2:0] count;
	input wire 		[31:0] inVal;
	output 			[3:0] hexVal;
	reg 				[3:0] hexVal;


always@(*)
	case(count)
		3'b000: hexVal = inVal[3:0];
		3'b001: hexVal = inVal[7:4];
		3'b010: hexVal = inVal[11:8];
		3'b011: hexVal = inVal[15:12];
		3'b100: hexVal = inVal[19:16];
		3'b101: hexVal = inVal[23:20];
		3'b110: hexVal = inVal[27:24];
		3'b111: hexVal = inVal[31:28];
		default: hexVal = 4'h0;
	endcase
	

endmodule
