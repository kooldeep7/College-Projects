`timescale 1ns / 1ps
/**************************C E C S 3 0 1*************************
*	
*  Author: 		Lenin Munoz & Sean Robinson
*	Project: 	Lab #5 Register Files
*	Email: 		lenin.munoz@student.csulb.edu & 
*              sean.robinson@student.csulb.edu
*	Filename:	pixel_clk
*	Date:			10/22/2017
*	Version: 	1.0
*	Notes:		Formula to calculate the value of the counter that counts
*              the incoming clk ticks =(incom freq / outgo freq) /2.
*              Also we can use T = (1 / F) to calculate the freq and
*              time needed to change clk.
*              In this case it is (100 Mhz / 480 Hz) / 2 = 104,166Hz.
******************************************************************/
module pixel_clk(clk, reset, led_clk);
	//Declare inputs and outputs from the TopModule.
	input clk, reset;
	output reg led_clk;
	
	//Int i is kept to track of clk.
	integer i;
	
	/*
	*The statement states the change at the event of clk or reset being pos edge.
	*If reset is 1 then i and clk_out are set to 0.
	*Else increment i by 1 for every clk tick i is 1000 or greater
	*then update the value of clk and reset i to 0.
	*/
	always @(posedge clk or posedge reset) begin
		if (reset == 1'b1) begin
			i = 0; 
			led_clk = 0;
		end //end the if statement
		
		/*
		*Got a clock, so increment the counter.
		*Test to see if half a period has elapsed.
		*/
		else begin
			i = i + 1;
			
			if (i >= 104166) begin
					//clk_out alternates between zero and one
					led_clk = ~led_clk;
					//the counter is reset
					i = 0;
			end
		end
	end				
endmodule
