`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// School: California State University, Long Beach
// Engineer: Kuldeep Gohil
// 
// Create Date:    15:26:58 02/14/2019 
// Design Name: Kuldeep Gohil
// Module Name:    FA4 
// Project Name: Project 

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////

module FA4(A, B, Ci, Y, Co);

input [3:0] A, B;
input			Ci;
output [3:0] Y;
output		Co;

FA FA3 (.A(A[3]), .B(B[3]), .Ci(Co2), .Y(Y[3]), .Co(Co));
FA FA2 (.A(A[2]), .B(B[2]), .Ci(Co1), .Y(Y[2]), .Co(Co2));
FA FA1 (.A(A[1]), .B(B[1]), .Ci(Co0), .Y(Y[1]), .Co(Co1));
FA FA0 (.A(A[0]), .B(B[0]), .Ci(Ci), .Y(Y[0]), .Co(Co0));
    
endmodule

