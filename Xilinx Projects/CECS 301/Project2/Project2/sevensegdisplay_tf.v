`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:41 03/05/2019
// Design Name:   sevensegdisplay
// Module Name:   C:/Users/b1ind/Desktop/301/SevenSegmentDecoder/sevensegdisplay_tf.v
// Project Name:  SevenSegmentDecoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sevensegdisplay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sevensegdisplay_tf;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] anode;
	wire [7:0] cathode;

	// Instantiate the Unit Under Test (UUT)
	sevensegdisplay uut (
		.clk(clk), 
		.rst(rst), 
		.anode(anode), 
		.cathode(cathode)
	);

   always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100 rst = 0;
        
		// Add stimulus here

	end
      
endmodule

