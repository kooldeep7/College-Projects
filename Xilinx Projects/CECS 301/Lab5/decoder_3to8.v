`timescale 1ns / 1ps

module decoder_3to8(en, in, y);
	input [2:0] in;
	input en;
	output reg [7:0] y;
	
	/*
	*Combo logic block decides which register
	*will recieve high output based on the 
	*address input
	*/
	always @(in or en) 
		if (!en)
			y = 8'b0;
		else 
			case (in)	
				3'b000: 	y = 8'b00000001;// register 1
				3'b001: 	y = 8'b00000010;// register 2
				3'b010: 	y = 8'b00000100;// register 3
				3'b011: 	y = 8'b00001000;// register 4
				3'b100: 	y = 8'b00010000;// register 5
				3'b101: 	y = 8'b00100000;// register 6
				3'b110: 	y = 8'b01000000;// register 7
				3'b111: 	y = 8'b10000000;// register 8
				default: y = 8'b00000000;// default
			endcase
endmodule
