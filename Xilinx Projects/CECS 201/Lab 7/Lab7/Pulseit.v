`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:35 04/24/2017 
// Design Name: 
// Module Name:    Pulse_Generator 
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
module Pulse_Generator(clk, reset, pulse);
	input clk, reset; 
	output pulse; 
	reg [25:0] count;
	wire pulse;
	
	
	assign pulse = (count == 49_999_999);
	
	always @(posedge clk, posedge reset)
		if(reset) count <= 26'b0; else 
		if(pulse) count <= 26'b0; else
					 count <= count + 26'b1;
					 


endmodule
