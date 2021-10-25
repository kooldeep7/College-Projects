`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:15 03/24/2019 
// Design Name: 
// Module Name:    posedgedetect 
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
module posedgedetect(clk, rst, din, ped);
	input 		clk, rst;
	input wire	[9:0] din;
	wire 			d1;
	reg 			q1, q2;
	reg 			andChecker;
	output wire ped;
	
	assign d1 = &(din);
	assign ped = (q1 & (!q2)) ;
		
	always @(posedge clk, posedge rst)
		if(rst)
			begin
				q1 <= 1'b0;
				q2 <= 1'b0;
			end
		else
			begin
				q1 <= d1;
				q2 <= q1; 
			end

endmodule
