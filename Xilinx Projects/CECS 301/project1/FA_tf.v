`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:08:34 02/08/2019
// Design Name:   FA
// Module Name:   Z:/Desktop/301Proj1/Project1/FA_tf.v
// Project Name:  Project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_tf;

	// Inputs
	reg A;
	reg B;
	reg Ci;

	// Outputs
	wire Y;
	wire Co;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.A(A), 
		.B(B), 
		.Ci(Ci), 
		.Y(Y), 
		.Co(Co)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Ci = 0;
		i  = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
		
		for (i=0; i<8; i=i+1)
		   begin
			{Ci,A,B} = i[2:0];
			#25
			if (Y !== A + B + Ci) $display("Error");
			else                  $write(".");
			end
        

	end
      
endmodule

