`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Creator Name: Kuldeep Gohil 
// Create Date: 04/24/2021 04:07:59 AM
// Module Name: topLevel
// Project Name: midterm Project
// Class: CECS 460
// Target Devices: NEXYS 4 DDR
//
// 
//////////////////////////////////////////////////////////////////////////////////


module topLevel(clk, reset, SW, LED,
                             A00, A01, A02, 
                             A10, A11, A12, 
                             A20, A21, A22,
                             B00, B01, B02, 
                             B10, B11, B12, 
                             B20, B21, B22,
                             C00, C01, C02, 
                             C10, C11, C12, 
                             C20, C21, C22); 
                             
input clk, reset; 
input [5:0] SW; 
input [31:0] A00, A01, A02, 
             A10, A11, A12, 
             A20, A21, A22,
             B00, B01, B02, 
             B10, B11, B12, 
             B20, B21, B22;
 
output [31:0] C00, C01, C02, 
              C10, C11, C12, 
              C20, C21, C22; 
           
output  wire  [15:0] LED;
                             

    
CalcAB calc (.clk (clk), .reset(reset), .SW(SW), .LED(LED), 
.AMatrixIn({A00, A01, A02, A10, A11, A12, A20, A21, A22}),
.BMatrixIn({B00, B01, B02, B10, B11, B12, B20, B21, B22}), 
.C00(C00), .C01(C01), .C02(C02), .C10(C10), .C11(C11), .C12(C12), .C20(C20), .C21(C21), .C22(C22));
                     

endmodule
