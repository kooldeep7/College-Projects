`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:12 04/11/2019 
// Design Name: 
// Module Name:    load8Bit 
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
module load16Bit(reset, clock, load, D, Q);

input reset, clock, load;
input	 		[15:0] D;
output reg  [15:0] Q;


	always@(posedge clock, posedge reset)
		if(reset)
			Q <= 16'b0;
			
		else if(load)
			Q <= D;
			
		else 
			Q <= Q;

endmodule
