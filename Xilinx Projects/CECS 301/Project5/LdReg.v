`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        CSULB CECS 361
// Engineer:       John Tramel
// 
// Create Date:    19:50:39 04/23/2019 
// Design Name: 
// Module Name:    LdReg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:    Parameterized loadable register
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LdReg #(parameter width = 1) (
    input clk,
    input rst,
	 input step,
    input ld,
    input [width-1:0] din,
    output reg [width-1:0] qout
    );

always@(posedge clk, posedge rst)
    if (rst)      qout <= 'b0; else
	 if (ld&step)  qout <= din;

endmodule

