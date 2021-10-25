`timescale 1ns / 1ps
/**************************C E C S 3 0 1*************************
*
*  File Name:  pixel_controller
*  Project:    Integer_Data_path
*  Designer:   Lenin Munoz & Sean Robinson
*  Rev. Date:   10/30/17
*	Version: 	1.0
*	Notes:		This module is a finite state machine which has 3 parts: 
*              the next state output, the state register, and the output combo.
*              Since this is an autonomous fsm it will go from S0 to S7.  
******************************************************************/
module pixel_controller(clk, reset, AN, seg_sel);
	//Declare inputs, outputs, and registers.
	input clk, reset;
	output reg [7:0] AN;
	//This value selects a value which will be assigned to y.
	output reg [2:0] seg_sel;
	
	//Present states and Next States.
	reg [2:0] PS, NS;
	
	
	/*
	********************************************************************
	********************NEXT STATE COMBINATIONAL LOGIC******************
	********************************************************************
	*This fsm sets a new state based on what the present state is.
	*/
	
	always @ (PS) begin
		case (PS)
			3'b000 : NS = 3'b001;
			3'b001 : NS = 3'b010;
			3'b010 : NS = 3'b011;
			3'b011 : NS = 3'b100;
			3'b100 : NS = 3'b101;
			3'b101 : NS = 3'b110;
			3'b110 : NS = 3'b111;
			3'b111 : NS = 3'b000;
			default: NS = 3'b000;
		endcase
	end
	
	/*
	********************************************************************
	*****************************STATE REGISTER*************************
	********************************************************************
	*The state register is a simple DFF, when the reset is 1 the present state 
	*returns to its inital state otherwise present state is set equal to next state.
	*/
	
	always @(posedge clk or posedge reset) begin
		if (reset == 1'b1) 
			PS = 3'b000;
		else 
			PS = NS;
	end
	 
	/*
	*********************************************************************
	*************************OUTPUT COMBINATIONAL LOGIC******************
	*********************************************************************
	*When the present state is at a specific state the anodes and seg sel will have 
	*an output. AN has 8 bits and seg_sel has 3 bits which is totaled up to be 11 bits. 
	*/
	always @(PS) begin
		case(PS)
			3'b000 : {AN, seg_sel} = 11'b11111110_000;//AN[0]
			3'b001 : {AN, seg_sel} = 11'b11111101_001;//AN[1]
			3'b010 : {AN, seg_sel} = 11'b11111011_010;//AN[2]
			3'b011 : {AN, seg_sel} = 11'b11110111_011;//AN[3]
			3'b100 : {AN, seg_sel} = 11'b11101111_100;//AN[4]
			3'b101 : {AN, seg_sel} = 11'b11011111_101;//AN[5]
			3'b110 : {AN, seg_sel} = 11'b10111111_110;//AN[6]
			3'b111 : {AN, seg_sel} = 11'b01111111_111;//AN[7]
			default:	{AN, seg_sel} = 11'b11111110_000;//AN[0]
		endcase
	end

endmodule
