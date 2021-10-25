`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:22 05/02/2017 
// Design Name: 
// Module Name:    machine 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module machine(clk, reset, in, state, pulse, out);
	input clk, reset, in, pulse;
	output [1:0] state;
	output out;
	reg [1:0] state, nstate;
	reg out, nout;
	
always @(posedge clk, posedge reset)
	if (reset) 
		{state,out} <= {2'b00,1'b0};
	else
		{state,out} <= {nstate,nout};
	
always @(*)
	begin 
	nstate = state;
	nout = out; 


	if (pulse)
		begin
		case(state) 
		2'b00: {nstate,nout} = (in) ? {2'b01,1'b1}: {2'b11,1'b1};
		2'b01: {nstate,nout} = (in) ? {2'b10,1'b0}: {2'b00,1'b0};
		2'b10: {nstate,nout} = (in) ? {2'b11,1'b1}: {2'b01,1'b1};
		2'b11: {nstate,nout} = (in) ? {2'b00,1'b0}: {2'b10,1'b0};
		endcase
		end
	end
	 
	


endmodule
