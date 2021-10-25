`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// School: California State University, Long Beach
// Engineer: Kuldeep Gohil
// 
// Create Date:    15:26:58 02/14/2019 
// Design Name: Kuldeep Gohil
// Module Name:    FA8 
// Project Name: Project 

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////

module FA8(A, B, Ci, Y, Co);

input [7:0] A, B;
input			Ci;
output [7:0] Y;
output		Co;

FA4 FB1 (.A(A[7:4]), .B(B[7:4]), .Ci(Co0), .Y(Y[7:4]), .Co(Co));
FA4 FB0 (.A(A[3:0]), .B(B[3:0]), .Ci(Ci), .Y(Y[3:0]), .Co(Co0));
    
endmodule

