`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:02 04/25/2019 
// Design Name: 
// Module Name:    Alu 
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
module Alu(
    input      [ 2:0] OpSel,
    input      [15:0] A,
    input      [15:0] B,
    output reg [15:0] Y,
    output reg        Carry,
    output wire       Zero
    );

////////////////////////////////////////
// Implement ALU Using Case Statement
////////////////////////////////////////
assign Zero = (Y == 16'b0);

////////////////////////////////////////
// Implement ALU Using Case Statement
////////////////////////////////////////
always @(*)
   begin
	Y = 16'b0;
	Carry = 1'b0;
      case(OpSel)
      3'b000: {Carry,Y} = A + B;
	   3'b001: {Carry,Y} = A - B;
	   3'b010: Y = {A[14:0],1'b0};
	   3'b011: Y = {A[0],A[15:1]};
	   3'b100: Y = A & B;
	   3'b101: Y = A | B;
	   3'b110: Y = A ^ B;
	   3'b111: Y = ~A;
      endcase
   end
	
endmodule
