`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:58:30 02/07/2019
// Design Name:   FA8
// Module Name:   Z:/Desktop/301Proj1/Project1/FA8_tf.v
// Project Name:  Project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA8_tf;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Ci;

	// Outputs
	wire [7:0] Y;
	wire Co;

   integer i;
	
	// Instantiate the Unit Under Test (UUT)
	FA8 uut (
		.A(A), 
		.B(B), 
		.Ci(Ci), 
		.Y(Y), 
		.Co(Co)
	);

	initial begin
		// Initialize Inputs
		A  = 0;
		B  = 0;
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

