`timescale 1ns / 1ps
/**************************C E C S 3 0 1*************************
*
*  File Name:  hex_to_7_seg
*  Project:    Integer_Data_path
*  Designer:   Lenin Munoz & Sean Robinson
*  Rev. Date:   10/30/17
*	Version: 	1.0
*	Notes:		This module will take a four bit number from 0 to F
*              and decode it into the seven individual segments to  
*              drive a 7 segment display.
******************************************************************/
module hex_to_7_seg(hex, a, b, c, d, e, f, g);
	//Declare inputs, outputs, wires, and registers.
	input [3:0] hex;
	output reg a, b, c, d, e, f, g;
	//output wire [7:0] AN;
	
	/*
	*This case statement used the 4 bit values to output a 7 segment display values, 
	*and below the case statement are the values from 0 to F which are decoded from
	*the 4 bit values.
	*/
	always @(hex) begin
		case (hex) 
			/*
			*The 4 bit binary input from 0 to F can be specified either in binary 
			*(4'b0000) or in hex (4'h0).
			*/
			4'b0000	: 	{a, b, c, d, e, f, g} = 7'b0000001;//0			
			4'b0001	: 	{a, b, c, d, e, f, g} = 7'b1001111;//1			
			4'b0010	: 	{a, b, c, d, e, f, g} = 7'b0010010;//2
			4'b0011	: 	{a, b, c, d, e, f, g} = 7'b0000110;//3		
			4'b0100	: 	{a, b, c, d, e, f, g} = 7'b1001100;//4			
			4'b0101	: 	{a, b, c, d, e, f, g} = 7'b0100100;//5			
			4'b0110	: 	{a, b, c, d, e, f, g} = 7'b0100000;//6	
			4'b0111	: 	{a, b, c, d, e, f, g} = 7'b0001111;//7	
			4'b1000	: 	{a, b, c, d, e, f, g} = 7'b0000000;//8			
			4'b1001	: 	{a, b, c, d, e, f, g} = 7'b0001100;//9			
			4'b1010	: 	{a, b, c, d, e, f, g} = 7'b0001000;//A	
			4'b1011	: 	{a, b, c, d, e, f, g} = 7'b1100000;//B			
			4'b1100	: 	{a, b, c, d, e, f, g} = 7'b0110001;//C			
			4'b1101	: 	{a, b, c, d, e, f, g} = 7'b1000010;//D	
			4'b1110	: 	{a, b, c, d, e, f, g} = 7'b0110000;//E			
			4'b1111	: 	{a, b, c, d, e, f, g} = 7'b0111000;//F
			//Always have a default whenever we do case statement.
			default  :  {a, b, c, d, e, f, g} = 7'b1111111;
		endcase
	end
		
endmodule
