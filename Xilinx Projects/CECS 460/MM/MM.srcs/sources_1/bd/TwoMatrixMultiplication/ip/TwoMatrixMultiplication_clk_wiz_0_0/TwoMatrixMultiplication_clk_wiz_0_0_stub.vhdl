-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Apr 24 06:56:18 2021
-- Host        : DESKTOP-JSL1OMH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/midtermProject/midtermProject.srcs/sources_1/bd/TwoMatrixMultiplication/ip/TwoMatrixMultiplication_clk_wiz_0_0/TwoMatrixMultiplication_clk_wiz_0_0_stub.vhdl
-- Design      : TwoMatrixMultiplication_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoMatrixMultiplication_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end TwoMatrixMultiplication_clk_wiz_0_0;

architecture stub of TwoMatrixMultiplication_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
