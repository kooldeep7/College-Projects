`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:42:06 02/08/2019
// Design Name:   FA4
// Module Name:   Z:/Desktop/301Proj1/Project1/FA4_tf.v
// Project Name:  Project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA4_tf;

	// Inputs
	reg  [3:0] A;
	reg  [3:0] B;
	reg  Ci;
	wire Co;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	FA4 uut (
		.A(A), 
		.B(B), 
		.Ci(Ci), 
		.Y(Y), 
		.Co(Co)
	);

   integer i;
	
	initial begin
		A = 0;
		B = 0;
		Ci = 0;
		i  = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

   for (i=0; i<256; i=i+1)
	   begin
		A = $random;
		B = $random;
		if (i>127) Ci = 1;
		
		#25
		if (Y !== A + B + Ci) $display("Error");
		$write(".");
		end
		
	end
      
endmodule

