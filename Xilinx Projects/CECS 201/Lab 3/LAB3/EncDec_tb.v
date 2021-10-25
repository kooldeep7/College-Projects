`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:56:01 04/03/2017
// Design Name:   EncDec
// Module Name:   C:/Users/Kuldeep/Desktop/Lab 3/LAB3/EncDec_tb.v
// Project Name:  LAB3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EncDec
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EncDec_tb;

			reg  [7:0] In;
			
			
			wire	[7:0]	Out;
			
			integer i;
			
			EncDec uut (
						.In(In),
						.Out(Out)
						
			);
			
			initial begin
					
						In = 1;
						
						for (i=0; i<7; i = i + 1)
							#100 In = In << 1;


			end
      
endmodule

