`timescale 1ns / 1ps
// full adder
// building block for ripple carry adder
module FullAdder(A, B, Ci, S, Co);
input A, B; // Data inputs
input Ci; // Carry in
output S; //Sum
output Co; // Carry out

wire S, Co; //declare data types

assign #5 S = A ^ B ^ Ci;
assign #7 Co = A&B | A&Ci | B&Ci;
   

endmodule
