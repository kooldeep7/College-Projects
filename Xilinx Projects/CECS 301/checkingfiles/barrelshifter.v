`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB CoE
// Engineer: Giustine Rabin
// Email: giustinemrabin@gmail.com
// 
// Create Date:    12:16:05 03/03/2019 
// Design Name: 	 barrelshifter
// Module Name:    barrelshifter 
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
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class.
//////////////////////////////////////////////////////////////////////////////////
module barrelshifter(clk, rst, rotate, anode);
	input 		clk,rst;
	input wire	rotate;
	output 		[7:0] anode;
	reg 			[7:0] anode, nanode;



always @(posedge clk, posedge rst)
	if(rst) anode <= 8'hFE; else
	if(rotate) anode <= nanode;
	
always @(*)
	case(anode)
		8'hFE: 	nanode = 8'hFD;
		8'hFD: 	nanode = 8'hFB;
		8'hFB: 	nanode = 8'hF7;
		8'hF7: 	nanode = 8'hEF;
		8'hEF: 	nanode = 8'hDF;
		8'hDF: 	nanode = 8'hBF;
		8'hBF: 	nanode = 8'h7F;
		8'h7F: 	nanode = 8'hFE;
	default: 	nanode = 8'hFF;
	endcase
		
endmodule

