`timescale 1ns / 1ps

module FA16Adder(A, B, Ci, S, Co);
input [15:0] A, B;
input			Ci;
output [15:0] S;
output		Co;

FA4 FB3 (.A(A[15:12]), .B(B[15:12]), .Ci(Co2), .S(S[15:12]), .Co(Co));
FA4 FB2 (.A(A[11:8]), .B(B[11:8]), .Ci(Co1), .S(S[11:8]), .Co(Co2));
FA4 FB1 (.A(A[7:4]), .B(B[7:4]), .Ci(Co0), .S(S[7:4]), .Co(Co1));
FA4 FB0 (.A(A[3:0]), .B(B[3:0]), .Ci(Ci), .S(S[3:0]), .Co(Co0));
    


endmodule

