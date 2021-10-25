`timescale 1ns / 1ps
// Design Name: Kuldeep Gohil
// Module Name:  hexToSevenSeg.v 
// Project Name: Project 

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////

module hexToSevenSeg( hexVal, cathode);
	input 		[3:0] hexVal;
	output 		[7:0] cathode; 
	reg 			[7:0] cathode;

always @(*)

	case(hexVal)			 
		4'h0: cathode = 8'hC0;
		4'h1: cathode = 8'hF9;
		4'h2: cathode = 8'hA4;
		4'h3: cathode = 8'hB0;
		4'h4: cathode = 8'h99;
		4'h5: cathode = 8'h92;
		4'h6: cathode = 8'h82;
		4'h7: cathode = 8'hF8;
		4'h8: cathode = 8'h80;
		4'h9: cathode = 8'h98;
		4'ha: cathode = 8'h88;
		4'hb: cathode = 8'h83;
		4'hc: cathode = 8'hC6;
		4'hd: cathode = 8'h86;
		4'he: cathode = 8'h8E;
	default: cathode = 8'hFF;
	endcase
	
endmodule
