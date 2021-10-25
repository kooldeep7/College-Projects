`timescale 1ns / 1ps

module TopModule(clk, reset, we, W_Adr, R_Adr, S_Adr, SW, AN, a, b, c, d, e, f, g );
	//Declare the inputs and outputs
	input clk, reset, we;
	
	input [2:0] W_Adr, R_Adr, S_Adr;
	input [3:0] SW;
	
	output [7:0] AN;
	output a, b, c, d, e, f, g;
	
	wire clk_out, oswire;
	wire [15:0] R, S;
	
	/*
	*The purpose of the clk_500 module is to devide the onboard 
	*nexys 4DDR 100Mhz clock down to a 500Hz clock
	*/
	clk_500hz						clk0		(clk, reset, clk_out);
	
	one_shot 						os			(clk_out, reset, we, oswire);
	
	/*
	*The Register_Files module is simply a structural module that 
	*instantiates the actual modules used to store the inputs and 
	*
	*The debounce module creates a one-shot pulse based on
	*the we enable being pressed on the nexys board
	*retrieve data from registers based on the addres
	*/
	Register_File					RF			(clk, reset, W_Adr, R_Adr, S_Adr, oswire,
														{12'hFFF, SW[3], SW[2], SW[1], SW[0]}, R, S);
	/*
	*Display Controller is a structural module that instantiates all the
	*modules that controll the display outputs such as the anodes and 
	*the 7-seg display based on the register file outputs
	*/													
	Display_Controller			DC			(clk, reset, R, S, AN, a, b, c, d, e, f, g);
														
endmodule
