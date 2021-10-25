`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:19 03/24/2019 
// Design Name: 
// Module Name:    topped 
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
module topped(clk, rst, press, anode, cathode);
	input 					clk, rst, press;
	wire						[31:0]inVal;
	wire						[9:0] q;
	wire						[2:0] count;
	wire						[3:0] hexVal;
	wire						rotate, pulseVal, ped;
	output 					[7:0] anode;
	output 					[7:0] cathode;
	


	//Debouncer
	pulsegenerator pulsegenerator(
		.clk(clk),
		.rst(rst),
		.pulseVal(pulseVal)
		);
	shiftreg shiftreg(
		.clk(clk),
		.rst(rst),
		.pulseVal(pulseVal),
		.sdi(press),
		.q(q)
		);
	posedgedetect posedgedetect(
		.clk(clk),
		.rst(rst),
		.din(q),
		.ped(btnpress)
		);
	
	//Counter with Debouncer
	counterped counterped(
		.clk(clk),
		.rst(rst), 
		.btnpress(btnpress),
		.inVal(inVal[31:0]));
	
	//Seven Seg Display
	rotator rotator(
		.clk(clk),
		.rst(rst),
		.rotate(rotate)
		); 
	barrelshifter barrelshifter(
		.clk(clk),
		.rst(rst), 
		.rotate(rotate),
		.anode(anode[7:0])
		); 
	mod8 mod8(
		.clk(clk),
		.rst(rst),
		.rotate(rotate),
		.count(count[2:0])
		);
	mux8to1 mux8to1(
		.count(count[2:0]),
		.inVal(inVal[31:0]),
		.hexVal(hexVal[3:0])
		);
	sevenseg sevenseg(
		.hexVal(hexVal[3:0]),
		.cathode(cathode[7:0])
		);
	
	

endmodule
