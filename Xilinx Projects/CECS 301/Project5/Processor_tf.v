`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:45:45 04/28/2019
// Design Name:   Processor
// Module Name:   C:/Users/tramel/Dropbox/CSULB_Current/301/MyProjects/Processor/Processor301/Processor_tf.v
// Project Name:  Processor301
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Processor_tf;

	// Inputs
	reg         clk;
	reg         rst;
	reg         step;
	integer     i;
	reg   [3:0] MuxSel;
	wire [15:0] MuxOut;

	// Instantiate the Unit Under Test (UUT)
	Processor uut (
		.clk(clk), 
		.rst(rst), 
		.Step(step),
		.MuxSel(MuxSel),
	   .MuxOut(MuxOut)
	);

   always #5 clk = ~clk;
	
	initial begin
	   $readmemh("MemFile", uut.mem.mem);
		// Initialize Inputs
		clk = 0;
		rst = 1;
		step = 0;
		i = 0;
		MuxSel = 0;

		// Wait 100 ns for global reset to finish
		#100 rst = 0;
        
      // Let the Processor Fetch and Execute Instructions
		for (i=0; i<256; i=i+1)
		   begin
			repeat(10) @(posedge clk) ;
			step = 1;
			@(posedge clk) ;
			step = 0;
			end
			
	end
      
endmodule

