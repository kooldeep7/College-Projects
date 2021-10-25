`timescale 1ns / 1ps

module Register_File(clk, reset, W_Adr, R_Adr, S_Adr, we, W, R, S);
	input clk, reset, we;
	input [2:0]  W_Adr, R_Adr, S_Adr; 
	input [15:0] W;
	output [15:0] R, S;
	
	wire [7:0] ld, oea, oeb;
	
	/*
	*the 3 to 8 decoder takes in an adress and creates and 
	*8 bit output based on the write enable input
	*/
	decoder_3to8			dec0		(  we, W_Adr,  ld),
								dec1		(1'b1, R_Adr, oea),
								dec2		(1'b1, S_Adr, oeb);
	/*
	*The 8 instances of Reg_16 create a single output for R and S
	*since only one register can output at a time based on the oe(a or b).
	*The files also store a 16 bit value W when ld is active
	*/	
					
	reg16						reg0		(clk, reset, ld[0], W, R, S, oea[0], oeb[0]),
								reg1		(clk, reset, ld[1], W, R, S, oea[1], oeb[1]),
								reg2		(clk, reset, ld[2], W, R, S, oea[2], oeb[2]),
								reg3		(clk, reset, ld[3], W, R, S, oea[3], oeb[3]),
								reg4		(clk, reset, ld[4], W, R, S, oea[4], oeb[4]),
								reg5		(clk, reset, ld[5], W, R, S, oea[5], oeb[5]),
								reg6		(clk, reset, ld[6], W, R, S, oea[6], oeb[6]),
								reg7		(clk, reset, ld[7], W, R, S, oea[7], oeb[7]);
								
endmodule
