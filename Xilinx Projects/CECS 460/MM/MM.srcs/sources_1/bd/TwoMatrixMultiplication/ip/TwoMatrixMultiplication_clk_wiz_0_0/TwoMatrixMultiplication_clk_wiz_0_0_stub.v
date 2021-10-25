// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Apr 24 06:56:18 2021
// Host        : DESKTOP-JSL1OMH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/midtermProject/midtermProject.srcs/sources_1/bd/TwoMatrixMultiplication/ip/TwoMatrixMultiplication_clk_wiz_0_0/TwoMatrixMultiplication_clk_wiz_0_0_stub.v
// Design      : TwoMatrixMultiplication_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module TwoMatrixMultiplication_clk_wiz_0_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule