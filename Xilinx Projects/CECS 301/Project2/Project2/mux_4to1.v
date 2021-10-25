`timescale 1ns / 1ps
/**************************C E C S 3 0 1*************************
*
*	Author: 		TrieuVy Le & Aaron Lee
*	Project: 	Lab #4 Memory & Display Controllers
*	Email: 		trieuvy.le@student.csulb.edu & aaronjlee1998@gmail.com
*	Filename:	ad_mux
*	Date:			03/12/2017
*	Version: 	1.0
*	Notes:		This mux will select what hexout will be based on the select signal
*which comes from the pixel controller to display a value from 0 to F.
*The seg_sel is controlled by what anode is active at the time.
*
******************************************************************/
module mux8to1(seg_sel, addr, dout, ad_out);
	//Declare inputs, outputs, and registers.
	
	input [2:0] seg_sel;//this selects which input will be assigned to the output.
	input [7:0] addr;//this input holds 2 sets of 4 bit input, one set is high nibble, and one is low nibble.
	input [15:0] dout;//the 16 bit input has 4 bits for every data from the ram.
	
	/*
	*The output carries the addr based on the value of seg_sel.
	*The register gives value in a statement.
	*/
	output reg [3:0] ad_out;
	
	/*
	*The always block is executed based on any changes from seg_sel, dout, and/or addr.
	*The case statement is solely based on the value of seg_sel.
	*/
	always @(seg_sel, dout, addr) begin
		case( seg_sel )
			//Each one hold the hext of the 4 bit of data out.
			3'b000 : ad_out = dout[3:0];//AN0,The lowest nibble of the data out of the RAM. 
			3'b001 : ad_out = dout[7:4];//AN1, the next nibble of the data out of the RAM.
			3'b010 : ad_out = dout[11:8];//AN2, the next nibble of the data out of the RAM.
			3'b011 : ad_out = dout[15:12];//AN3, the highest nibble of the data out of the RAM.
			
			3'b100 : ad_out = addr[3:0];//AN4, holds the hext of the address location.
			3'b101 : ad_out = addr[7:4];//AN5, holds the hext of the address location.
			
			3'b110 : ad_out = 4'b0000;//AN6 is set to be hex 0.
			3'b111 : ad_out = 4'b0000;//AN7 is set to be hex 0.
			
			default: ad_out = 4'b0000;//The default case is set to be hex 0.
		endcase
	end


endmodule
