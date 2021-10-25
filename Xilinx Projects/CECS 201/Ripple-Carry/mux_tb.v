`timescale 1ns / 1ps


module mux_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg add_sub;

	// Outputs
	wire Co;
	wire [15:0] S;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.A(A), 
		.B(B),  
		.Co(Co), 
		.S(S),
		.add_sub(add_sub)
	);

initial begin
	for (i=0; i<16; i=i+1)
		begin
				if (i%4) add_sub = 1; else add_sub = 0;
				if (i==15) begin A = 1; B = 16'hFFFF; end
				
				A = i;
				B = i + 35;
				
				#100
				if (S !== A+B+add_sub)
					$display("Error add_sub = %d A = %d B = %d Ci = %b", S, A, B, add_sub);
				end
		end
endmodule
		

