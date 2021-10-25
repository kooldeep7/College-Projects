//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Apr 24 18:28:37 2021
//Host        : DESKTOP-JSL1OMH running 64-bit major release  (build 9200)
//Command     : generate_target TwoMatrixMultiplication_wrapper.bd
//Design      : TwoMatrixMultiplication_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TwoMatrixMultiplication_wrapper
   (LED,
    SW,
    clk,
    reset,
    usb_uart_rxd,
    usb_uart_txd);
  output [15:0]LED;
  input [5:0]SW;
  input clk;
  input reset;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]LED;
  wire [5:0]SW;
  wire clk;
  wire reset;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  TwoMatrixMultiplication TwoMatrixMultiplication_i
       (.LED(LED),
        .SW(SW),
        .clk(clk),
        .reset(reset),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
