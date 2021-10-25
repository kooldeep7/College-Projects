//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Apr 23 10:26:59 2021
//Host        : DESKTOP-JSL1OMH running 64-bit major release  (build 9200)
//Command     : generate_target DeterminantMicroBlaze_wrapper.bd
//Design      : DeterminantMicroBlaze_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DeterminantMicroBlaze_wrapper
   (LED,
    SW,
    clk,
    reset,
    usb_uart_rxd,
    usb_uart_txd);
  output [15:0]LED;
  input [2:0]SW;
  input clk;
  input reset;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]LED;
  wire [2:0]SW;
  wire clk;
  wire reset;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  DeterminantMicroBlaze DeterminantMicroBlaze_i
       (.LED(LED),
        .SW(SW),
        .clk(clk),
        .reset(reset),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
