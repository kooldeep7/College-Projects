`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:14 05/02/2017 
// Design Name: 
// Module Name:    topLevel 
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
module topLevel(in, reset, state, clk, out);
input clk, reset, in;
output out;
output [1:0] state;

wire out_in;

Pulse_Generator (.clk(clk), .reset(reset), .pulse(out_in));
machine (.clk(clk), .reset(reset), .pulse(out_in), .in(in), .state(state), .out(out));



endmodule
