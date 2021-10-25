`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB CoE
// Engineer: Giustine Rabin
// Email: giustinemrabin@gmail.com
//
// Create Date:    08:43:28 02/25/2019 
// Design Name: 	 rotator
// Module Name:    rotator 
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
module rotator(clk, rst, rotate);
	input			clk, rst;
	output		rotate;

	reg  [17:0] counter;

	assign rotate = (counter == 18'd199_999);

always @ (posedge clk, posedge rst)
	if (rst) 	counter <= 18'b0; else
	if (rotate) counter <= 18'b0;
	else			counter <= counter + 18'b1;


endmodule
