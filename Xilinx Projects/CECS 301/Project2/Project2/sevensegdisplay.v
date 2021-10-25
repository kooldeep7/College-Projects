`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB CoE
// Engineer: Giustine Rabin
// Email: giustinemrabin@gmail.com
// 
// Create Date:    13:01:52 03/03/2019 
// Design Name: Top module
// Module Name:    sevensegdisplay 
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
module sevensegdisplay(clk, rst, anode, cathode);
	input 					clk, rst;
	wire						[31:0]inVal;
	wire						[2:0] count;
	wire						[3:0] hexVal;
	wire						rotate;
	output 					[7:0] anode;
	output 					[7:0] cathode;
	
	rotator rotator (
		.clk(clk),
		.rst(rst),
		.rotate(rotate)
		);  
	barrelshifter barrelshifter (
		.clk(clk),
		.rst(rst),
		.rotate(rotate),
		.anode(anode[7:0])
		);
							
	mod8 mod8 (
		.clk(clk),
		.rst(rst),
		.rotate(rotate),
		.count(count[2:0])
		);
					
	mux8to1 	mux8to1 (
		.inVal(inVal[31:0]),
		.hexVal(hexVal[3:0]),
		.count(count[2:0])
		);
						
	hextosseg 	hextosseg (
		.hexVal(hexVal[3:0]),
		.cathode(cathode[7:0])
		);
		
	counter32 counter32(
		.clk(clk),
		.rst(rst),
		.inVal(inVal[31:0])
		);
		
endmodule
