`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB CoE
// Engineer: Giustine Rabin
// Email: giustinemrabin@gmail.com
// 
// Create Date:    11:54:13 03/03/2019 
// Design Name: 	 mod8
// Module Name:    mod8 
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
// In submitting this file for class work at CSULB I am confirming 
// that this is my work product.  In the event other code sources are
// utilized I will document that code identifying the author. In  
// project work is subject to dismissal from the class.
//////////////////////////////////////////////////////////////////////////////////
module mod8(clk, rst, rotate, count);
	input 	  				clk, rst;
	input wire 		   	rotate;
	output 		   		[2:0] count;
	reg		  				[2:0] count, ncount;
	
	
	always @ (posedge clk, posedge rst)
		if (rst)
			count <=3'b0;
		else
			count <= ncount;
	
	always @ (*)
		if (rotate)
			ncount = count + 3'b1;
		else
			ncount = count;
	


endmodule
