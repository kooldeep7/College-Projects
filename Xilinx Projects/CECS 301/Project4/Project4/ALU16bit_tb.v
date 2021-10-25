`timescale 1ns / 1ps

// Design Name: Kuldeep Gohil
// Module Name:  ALU16bit_tb.v 
// Project Name: Project 4

// In submitting this file for class work at CSULB I am confirming  
// that this is my work product.  In the event other code sources are  
// utilized I will document that code identifying the author. In  
// submitting this work I acknowledge that plagiarism in student  
// project work is subject to dismissal from the class
//
//////////////////////////////////////////////////////////////////////////////////

module ALU16bit_tb;

	// Inputs
	reg [2:0] opSel;
	reg [15:0] A;
	reg [15:0] B;

	// Outputs
	wire [15:0] Y;
	wire Z;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	ALU16bit uut (
		.opSel(opSel), 
		.A(A), 
		.B(B), 
		.Y(Y), 
		.Z(Z), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		opSel = 0;
		A = 0;
		B = 0;

		//add A and B
		A = 16'h000F;
		B = 16'h000F;
		opSel = 3'b000;
		run_operations;
		
		//subtract A from B
		A = 16'h0070;
		B = 16'h0010;
		opSel = 3'b001;
		run_operations;
		
		//Shift A to the left
		A = 16'h0001;
		B = 16'h0000;
		opSel = 3'b010;
		run_operations;
		
		//Rotate A to the right
		A = 16'h001;
		B = 16'h0000;
		opSel = 3'b011;
		run_operations;
		
		//and logic operation
		A = 16'h1010;
		B = 16'h1001;
		opSel = 3'b100;
		run_operations;
		
		// or logic operation
		A = 16'h1101;
		B = 16'h0011;
		opSel = 3'b101;
		run_operations;
		
		//xor logic operation
		A = 16'h0101;
		B = 16'h1110;
		opSel = 3'b110;
		run_operations;
		
		//negate logic operation
		A = 16'h1011;
		B = 16'hFFFE;
		opSel = 3'b111;
		run_operations;
		$finish;

	end
	
	task run_operations;
		#1 $display("opSel=%b A=%h  B=%h Y=%h Z=%b C=%b",  
						opSel, A, B, Y, Z, C);
   endtask  
endmodule

