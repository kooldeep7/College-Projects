`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        CSULB CECS 301
// Engineer:       John Tramel
// 
// Create Date:    19:50:39 04/23/2019 
// Design Name: 
// Module Name:    ProgramCountLogic 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:    Memory Address Generation - PC+1 or Branch
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MemAdrsGen (
    input        clk,
    input        rst,
    input        Carry,
    input        Zero,
    input        Step,
    input        ld,
    input  [4:0] InstReg,
    output [4:0] MemAdrs
    );

reg  [4:0] PCMux;
wire [4:0] PC;

//////////////////////////////////////////////////
// Branch Control Logic
//////////////////////////////////////////////////
assign branch = (JZ & Zero) | (JC & Carry) | Jump;

//////////////////////////////////////////////////
// PC Select Mux - branch or next adrs
//////////////////////////////////////////////////
assign PCMux = (branch) ? InstReg : PC + 5'b1;

//////////////////////////////////////////////////
// Program Counter Register
//////////////////////////////////////////////////
LdReg #(16) lddata  (
    .clk(clk),
    .rst(rst),
	 .step(step),
    .ld(Step),
    .din(PCMux),
    .qout(PC)
    );

//////////////////////////////////////////////////
// Memory Adrs Select Mux - Instruction/Data
//////////////////////////////////////////////////
assign PCMux = (branch) ? InstReg : PC + 5'b1;

endmodule

