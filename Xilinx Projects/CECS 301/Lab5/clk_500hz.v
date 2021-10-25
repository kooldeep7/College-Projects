`timescale 1ns / 1ps

module clk_500hz(clk, reset, clk_out);

	//Declare inputs and outputs from the TopModule.
	input clk, reset;
	output clk_out;
	reg clk_out;
	
	//Int i is kept to track of clk.
	integer i;
	
	/*
	*The statement states the change at the event of clk or reset being pos edge.
	*If reset is 1 then i and clk_out are set to 0.
	*Else increment i by 1 for every clk tick i is 1000 or greater
	*then update the value of clk and reset i to 0.
	*/
	always @ (posedge clk or posedge reset) begin
		if (reset == 1'b1) begin
			i = 0;
			clk_out = 0;
		end //end the if statement
			
		/*
		*Got a clock, so increment the counter.
		*Test to see if half a period has elapsed.
		*/
		
		else begin
			i = i + 1;
			
			/*100,000 total split to 50,000 to find respective 
			 *values clock out/~clock out.
			*/
			if (i >= 100000) begin
				clk_out = ~clk_out;
				i = 0;
			end // if
		end // else
	end // always
endmodule

