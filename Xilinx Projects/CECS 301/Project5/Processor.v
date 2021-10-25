`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:51 04/28/2019 
// Design Name: 
// Module Name:    Processor 
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
module Processor(
    input         clk,
    input         rst,
	 input         Step,
	 input  [ 3:0] MuxSel,
	 output [15:0] MuxOut
	 
    );
	 
wire  [5:0] PCMux;           // Mux to Program Counter
wire  [5:0] MemAdrs;         // Memory Address
wire [15:0] MemDat;          // Memory Data Out
wire [15:0] RegA;            // Register A of Reg File
wire [15:0] RegB;            // Register B of Reg File
wire [15:0] RegFileData;     // Data written to Reg File
wire  [5:0] PC;              // Program Counter
wire [15:0] IR;              // Instruction Register
wire [15:0] ALU;             // ALU Output
wire  [4:0] OpCode;          // OPCODE Field (IR[15:11])
wire  [2:0] RdAdrsA;         // Register File Operand A Address
wire [15:0] IRDataIn;        // Input to Instruction Register

//////////////////////////////////////////////////
// Controller Outputs
//////////////////////////////////////////////////
wire  [2:0] OPSEL;           // Operation Select to ALU
wire        BRANCH;          // Branch Control
wire        JZ;              // Jump if Zero
wire        JC;              // Jump if Carry
wire        JUMP;            // Jump Always
wire        LDPC;            // Load the Program Counter
wire        LDIR;            // Load the Instruction Register
wire        WTMM;            // Memory Write
wire        WTRF;            // Register File Write
wire        LDR;             // Load Register from Memory
wire        STR;             // Store Register to Memory

//////////////////////////////////////////////////
//
//////////////////////////////////////////////////
assign doit = Step;

//////////////////////////////////////////////////
// Branch Control Logic
//////////////////////////////////////////////////
assign BRANCH = (JZ & Zero) | (JC & Carry) | JUMP;

//////////////////////////////////////////////////
// PC Select Mux - branch or next adrs
//////////////////////////////////////////////////
assign PCMux = (BRANCH) ? IR[5:0] : PC + 5'b1;

//////////////////////////////////////////////////
// Program Counter Register
//////////////////////////////////////////////////
LdReg #(6) lddata  (
    .clk(clk),
    .rst(rst),
	 .step(doit),
    .ld(LDPC),
    .din(PCMux),
    .qout(PC)
    );

//////////////////////////////////////////////////
// Memory Adrs Select Mux - Instruction/Data
//////////////////////////////////////////////////
assign MemAdrs = (STR|LDR) ? IR[5:0] : PC;

//////////////////////////////////////////////////
// 64 x 16 Memory
//////////////////////////////////////////////////	 
Memory mem (
    .clk(clk),
    .WrtMem(WTMM),
    .Step(doit),
    .Adrs(MemAdrs),
    .Din(RegA),
    .Dout(MemDat)
    );

assign IRDataIn = (LDR|STR) ? 16'b0 : MemDat;
//////////////////////////////////////////////////
// Instruction Register
//////////////////////////////////////////////////
LdReg #(16) irreg  (
    .clk(clk),
    .rst(rst),
	 .step(doit),
    .ld(LDIR),
    .din(IRDataIn),
    .qout(IR)
	 );
	 
//////////////////////////////////////////////////
// Register File Write Data Mux / Read Adrs A Mux
//////////////////////////////////////////////////
assign RegFileData = (LDR) ? MemDat : ALU;
assign RdAdrsA     = (STR) ? IR[8:6] : IR[5:3];
	 
//////////////////////////////////////////////////
// Register File 
//////////////////////////////////////////////////	 
RegFile regfile
       (
		 .clk(clk), 
		 .rst(rst), 
		 .write(WTRF), 
		 .step(doit), 
		 .RdAdrsA(RdAdrsA), 
		 .RdAdrsB(IR[2:0]), 
		 .WtAdrs(IR[8:6]), 
		 .WtData(RegFileData), 
		 .OperA(RegA), 
		 .OperB(RegB)
		 );

//////////////////////////////////////////////////
// Register File 
//////////////////////////////////////////////////	 
Alu alu(
    .OpSel(OPSEL),
    .A(RegA),
    .B(RegB),
    .Y(ALU),
    .Carry(Carry),
    .Zero(Zero)
    );

//////////////////////////////////////////////////
// Controller 
//////////////////////////////////////////////////	 
assign OpCode = IR[15:11];
Controller controller(
       .clk(clk),
       .rst(rst),
       .step(doit),
       .OpCode(OpCode),
       .OPSEL(OPSEL),
       .JZ(JZ),
       .JC(JC),
       .JUMP(JUMP),
       .LDPC(LDPC),
       .LDIR(LDIR),
       .WTMM(WTMM),
       .WTRF(WTRF),
       .LDR(LDR),
       .STR(STR) 
    );

//////////////////////////////////////////////////
// Test Multiplexer
//////////////////////////////////////////////////
assign MuxOut = (MuxSel == 4'b0000) ? {10'b0,PCMux} :
                (MuxSel == 4'b0001) ? {10'b0,MemAdrs} :
					 (MuxSel == 4'b0010) ? MemDat :
					 (MuxSel == 4'b0011) ? RegA :
					 (MuxSel == 4'b0100) ? RegB :
					 (MuxSel == 4'b0101) ? RegFileData :
					 (MuxSel == 4'b0110) ? {10'b0,PC} :
					 (MuxSel == 4'b0111) ? IR :
					 (MuxSel == 4'b1000) ? ALU :
                (MuxSel == 4'b1001) ? {11'b0,OpCode} :
					 (MuxSel == 4'b1010) ? {13'b0,RdAdrsA} :
					 (MuxSel == 4'b1011) ? IRDataIn :
					                       16'h1234; 
	 
endmodule
