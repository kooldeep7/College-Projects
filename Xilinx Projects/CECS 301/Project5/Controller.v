`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:56 04/28/2019 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input            clk,
    input            rst,
    input            step,
    input      [4:0] OpCode,
    output reg [2:0] OPSEL,
    output reg       JZ,
    output reg       JC,
    output reg       JUMP,
    output reg       LDPC,
    output reg       LDIR,
    output reg       WTMM,
    output reg       WTRF,
    output reg       LDR,
    output reg       STR 
    );
       
always @(*)
   begin
   LDPC   = 1'b0;
   LDIR   = 1'b0;
   WTMM   = 1'b0;
   WTRF   = 1'b0;
   LDR    = 1'b0;
   STR    = 1'b0;
   JZ     = 1'b0;
   JC     = 1'b0;
   JUMP   = 1'b0;
   OPSEL  = 3'b0;
   case(OpCode)
      5'b00000: begin                 LDPC = 1'b1; LDIR = 1'b1;                          end   // NOP
      5'b00001: begin OPSEL = 3'b000; LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1;             end   // ADD
      5'b00010: begin OPSEL = 3'b001; LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1;             end   // SUB
      5'b00011: begin OPSEL = 3'b010; LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1;             end   // SHL
      5'b00100: begin OPSEL = 3'b011; LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1;             end   // ROR
      5'b00101: begin OPSEL = 3'b100; LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1;             end   // AND
      5'b00110: begin OPSEL = 3'b101; LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1;             end   // OR
      5'b00111: begin OPSEL = 3'b110; LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1;             end   // XOR
      5'b01000: begin OPSEL = 3'b111; LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1;             end   // NEG
      5'b01001: begin                 LDPC = 1'b1; LDIR = 1'b1; WTRF = 1'b1; LDR = 1'b1; end   // LDR
      5'b01010: begin                 LDPC = 1'b1; LDIR = 1'b1; WTMM = 1'b1; STR = 1'b1; end   // STR
      5'b01011: begin JZ    = 1'b1;   LDPC = 1'b1; LDIR = 1'b1;                          end   // Jump if ZERO
      5'b01100: begin JC    = 1'b1;   LDPC = 1'b1; LDIR = 1'b1;                          end   // Jump if CARRY
      5'b01101: begin JUMP  = 1'b1;   LDPC = 1'b1; LDIR = 1'b1;                          end   // Jump
      5'b01110: begin                 LDPC = 1'b1; LDIR = 1'b1;                          end   // NOP
      5'b01111: begin                 LDPC = 1'b1; LDIR = 1'b1;                          end   // NOP
      default:  begin                 LDPC = 1'b1; LDIR = 1'b1;                          end   // NOP
      endcase
   end

endmodule
