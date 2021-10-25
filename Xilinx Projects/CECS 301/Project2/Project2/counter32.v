`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:29:12 02/25/2019 
// Design Name: 
// Module Name:    counter32 
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
module counter32(clk, rst, inVal);
		input 			clk, rst;
		output 			[31:0] inVal;

		reg 	 			[31:0] inVal;

always @ (posedge clk, posedge rst)
	if (rst) inVal <= 32'b0;
	else 		inVal <= inVal + 32'b1;

endmodule
