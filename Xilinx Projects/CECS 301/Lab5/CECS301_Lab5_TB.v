`timescale 1ns / 1ps


module CECS301_Lab5_TB;

	// Inputs
	reg clk;
	reg reset;
	reg [2:0] W_Adr;
	reg [2:0] R_Adr;
	reg [2:0] S_Adr;
	reg we;
	reg [15:0] W;

	// Outputs
	wire [15:0] R;
	wire [15:0] S;
	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.clk(clk), 
		.reset(reset), 
		.W_Adr(W_Adr), 
		.R_Adr(R_Adr), 
		.S_Adr(S_Adr), 
		.we(we), 
		.W(W), 
		.R(R), 
		.S(S)
	);
	
	

		// Wait 100 ns for global reset to finish
	always
		#5 clk = ~clk;

	initial begin
		$timeformat(-9, 1, " ns", 6);
		// Initialize Inputs
			clk = 0;
			reset = 0;
			W_Adr = 0;
			we = 0;
			R_Adr = 0;
			S_Adr = 0;
			W = 0;
	
			@(negedge clk)
				reset = 1;
			@(negedge clk)
				reset = 0;
				
			ReadMemory;
			WritePattern;
			ReadMemory;
			
			$finish;
			
		end
		
		task ReadMemory;
			integer addr;
			
			for (addr = 0; addr < 4; addr = addr + 1) begin
				@(negedge clk)
					R_Adr = addr;
					S_Adr = addr + 4;
				@(posedge clk)
					#1 $display ("R_Adr = %h, S_Adr = %h, R=%h, S=%h", R_Adr, S_Adr, R, S);
		    end
		endtask
		
		task WritePattern;
			integer addr; begin
				for (addr = 0; addr < 8; addr = addr + 1) begin
					@(negedge clk) 
						we = 1;
						W_Adr = addr;
						W = ~addr;
				end 
				@(negedge clk) 
					we = 0;
			end
		endtask		
			

endmodule

