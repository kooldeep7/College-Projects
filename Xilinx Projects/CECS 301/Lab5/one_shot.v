`timescale 1ns / 1ps

module one_shot(clk, reset, D_in, D_out); //one shot or debounce
	//Declare inputs and outputs from the TopModule
	input clk, reset, D_in;
	output D_out;
	wire D_out;
	
	//Declare reg values that will be used in creating a debounce
	reg q9, q8, q7, q6, q5, q4, q3, q2, q1, q0;
	
	/*
	*If reset is 1 or active, all regs will be 0.
	*Else on every clk tick, the value will be passed down from input D to reg.
	*/
	always @ (posedge clk or posedge reset) begin
		if (reset == 1'b1)
			{q9, q8, q7, q6, q5, q4, q3, q2, q1, q0} <= 10'b0;
		else begin
			/*
			*The shift register is updated at every clk posedge
			*The sample values are being shifted in from the right to left
			*/
			q9 <= q8; q8 <= q7; q7 <= q6; q6 <= q5; q5 <= q4;
			q4 <= q3; q3 <= q2; q2 <= q1; q1 <= q0; q0 <= D_in;
			
		end //end the if-else statement

	end //end the always block 
	
		/*
		*Create the debounced, one-shot output pulse
		*q9 has ! is to create 1 one shot pulse otherwise it would be a 
		*constant stream of high inputs
		*/
	assign D_out = !q9 & q8 & q7 & q6 & q5 & q4 & q3 & q2 & q1 & q0;
		
endmodule
