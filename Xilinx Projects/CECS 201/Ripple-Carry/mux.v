`timescale 1ns / 1ns

module mux(A,B,S,Co,add_sub);
input [15:0] A, B;
input 		add_sub;
output [15:0] S;
output 		 Co;
wire [15:0] Y;


assign Y = (add_sub) ? ~ B: B;

FA16Adder FA16Adder (.A(A), .B(Y), .S(S), .Ci(add_sub), .Co(Co));

endmodule
