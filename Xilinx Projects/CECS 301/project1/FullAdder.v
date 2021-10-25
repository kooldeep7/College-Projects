`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// School: California State University, Long Beach
// Engineer: Kuldeep Gohil
// 
// Create Date:    15:26:58 02/14/2019 
// Design Name: Kuldeep Gohil
// Module Name:    FA
// Project Name: Project 

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////

module FA(A, B, Ci, Y, Co);

input A, B; // Data inputs
input Ci; // Carry in
output Y; //Sum 
output Co; // Carry out

wire Y, Co; 

assign #5 Y = A ^ B ^ Ci; 
assign #7 Co = A&B | A&Ci | B&Ci;
   
endmodule


