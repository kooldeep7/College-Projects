`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:55 03/24/2019 
// Design Name: 
// Module Name:    counterped 
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
module counterped(clk, rst, btnpress, inVal);
		input 			clk, rst;
		input wire		btnpress;
		output 			[31:0] inVal;

		reg 	 			[31:0] inVal, ninVal;
		
always @(*)
	if (btnpress)
		ninVal = inVal + 32'b1;
	else
		ninVal = inVal;

always @ (posedge clk, posedge rst)
	if (rst) 
		inVal <= 32'b0;
	else 		
		inVal <= ninVal;
endmodule
