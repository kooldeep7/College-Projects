`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:18:02 03/19/2019 
// Design Name: 
// Module Name:    pulsegenerator 
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
module pulsegenerator(clk, rst, pulseVal);
	input 			clk, rst;
	output 			pulseVal;
	
	reg				[16:0] pulse;
	
assign pulseVal =(pulse == 17'd99_999);

	always @(posedge clk, posedge rst)
		if(rst)
			pulse <= 17'b0;
		else 
			pulse <= pulse + 17'b1;


endmodule
