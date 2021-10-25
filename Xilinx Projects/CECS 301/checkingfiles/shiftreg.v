`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:13 03/19/2019 
// Design Name: 
// Module Name:    shiftreg 
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
//
//////////////////////////////////////////////////////////////////////////////////
module shiftreg(clk, rst, pulseVal, sdi, q);
		input			clk, rst;
		input wire	pulseVal, sdi;
		output 		[9:0] q;
		
		reg			[9:0] sqr;
		reg			[9:0] q;
		
always @(posedge clk, posedge rst)
		if(rst)
			q <= 10'b0;
		else
			q <= sqr;

	always @(*)
		if(pulseVal)
			sqr = {sdi, q[9:1]};
		else
			sqr = q; 
		
endmodule
