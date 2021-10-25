`timescale 1ns/1ns

// john tramel csulb cecs 301
// register file 8 registers 16 bits each
// synthesizable register file

module RegFile (clk, rst, write, step, RdAdrsA, RdAdrsB, WtAdrs, WtData, OperA, OperB);

input         clk, rst, write, step;
input  [ 2:0] RdAdrsA, RdAdrsB, WtAdrs;
input  [15:0] WtData;
output [15:0] OperA, OperB;

reg    [15:0] mem [0:7];

integer       i;

// read paths

assign OperA = mem[RdAdrsA];
assign OperB = mem[RdAdrsB];

// write path

always @(posedge clk, posedge rst)
   if (rst)
	   for (i=0; i<8; i=i+1)
		   mem[i] <= 16'b0;
	else
	   if (step & write)
		   mem[WtAdrs] <= WtData;
			
endmodule
