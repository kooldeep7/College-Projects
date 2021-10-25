`timescale 1ns / 1ps

module reg16(clk, reset, ld, din, DA, DB, oea, oeb);
	input 			clk, reset, ld, oea, oeb;
	input  [15:0] 	din;
	output [15:0] 	DA, DB;
	reg	 [15:0]	dout; 
	
	//An internal register.
	
	//Behavioral section for writing to the register
	always @(posedge clk or posedge reset) begin
		if (reset)
			dout <= 16'b0;
		else 
			if(ld)
					dout <= din;
			else 	dout <= dout;
	end
	//when the output enable is on for A 
	//DA becomes Dout otherwise it is in hight
	//impedence
	//same rule apply for DB
	assign DA = oea ? dout : 16'hz;
	assign DB = oeb ? dout : 16'hz;
	
endmodule
