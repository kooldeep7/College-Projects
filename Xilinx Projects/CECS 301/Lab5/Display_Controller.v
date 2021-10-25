`timescale 1ns / 1ps

module Display_Controller(clk, reset, S, R, AN, a, b, c, d, e, f, g);
	input 		 clk, reset;
	input [15:0] S, R;
	
	output [7:0] AN;
	output 		 a, b, c, d, e, f, g;
	
	wire clk_out;
	wire [2:0] seg_sel;
	wire [3:0] hex;
	
	//divides the 100MHz clock to 480Hz clock
	pixel_clk				pixclk		(clk, reset, clk_out);
	
	//decides which anode will be active based on the clock
	pixel_controller		pixcon		(clk_out, reset, AN, seg_sel);
	
	//decides what value will be displayed on a certain anode
	ad_mux					mux4to1		(seg_sel, R, S, hex);
	
	//decodes a 4bit hex value to 7_segment display
	hex_to_7_seg			ht7s			(hex, a, b, c, d, e, f, g);


endmodule
