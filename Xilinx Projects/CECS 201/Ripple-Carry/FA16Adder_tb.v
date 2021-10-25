`timescale 1ns / 1ns


module FA16Adder_tb;

reg [15:0] A, B;
reg		  Ci;
wire [15:0] S;
wire		  Co;

integer i;

FA16Adder FA16Adder (
		.A(A),
		.B(B),
		.Ci(Ci),
		.S(S),
		.Co(Co)
		);

initial begin
	for (i=0; i<16; i=i+1)
		begin
				if (i%4) Ci = 1; else Ci = 0;
				if (i==15) begin A = 1; B = 16'hFFFF; end
				
				A = i;
				B = i + 35;
				
				#100
				if (S !== A+B+Ci)
					$display("Error S = %d A = %d B = %d Ci = %b", S, A, B, Ci);
				end
		end
		
		
endmodule
		