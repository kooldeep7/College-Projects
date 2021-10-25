`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:21 03/05/2019 
// Design Name: 
// Module Name:    loadreg 
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
module loadreg(clk, rst, load, d, q);

input clk, rst, load;
input [31:0] d;
output [31:0] q; 

reg [31:0] q; 

always @(posedge clk, posedge rst)
	if (rst) q <= 32'b0; else
	if (load) q <= d;
	
endmodule

