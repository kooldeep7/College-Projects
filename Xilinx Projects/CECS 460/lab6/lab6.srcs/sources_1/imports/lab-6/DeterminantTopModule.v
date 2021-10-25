`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// The following module is the top module of the determinant code. 
//It incorporates a module that calculates the determinant of a 3x3 matrix
//The matrix comes from an outside source (E[R][C]). The third element of the 
// matrix is outputted onto LED. Note it is only the first 16 bits despite the 
// Element[0][2] being 32 bits wide. 
// The output is a 32 bit determinant. 
//////////////////////////////////////////////////////////////////////////////////


module DeterminantTopModule(clk, reset, SW, LED,
                             A00, A01, A02, 
                             A10, A11, A12, 
                             A20, A21, A22, 
                             ATest,
                             determinant);

input clk, reset; 
input [2:0] SW; 
input [31:0] A00, A01, A02, 
             A10, A11, A12, 
             A20, A21, A22, ATest;
output  wire  [15:0] LED;
output wire [31:0] determinant;


CalcDeterminant one (.clk (clk), .reset(reset), .MatrixIn({A00, A01, A02, A10, A11, A12, A20, A21,A22}), 
                     .determinant(determinant));
assign LED = A02[15:0];
endmodule
