// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 23 10:30:13 2021
// Host        : DESKTOP-JSL1OMH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DeterminantMicroBlaze_util_vector_logic_0_0_sim_netlist.v
// Design      : DeterminantMicroBlaze_util_vector_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DeterminantMicroBlaze_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Op1,
    Res);
  input [7:0]Op1;
  output [7:0]Res;

  wire [7:0]Op1;
  wire [7:0]Res;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_vector_logic_v2_0_1_util_vector_logic inst
       (.Op1(Op1),
        .Res(Res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_vector_logic_v2_0_1_util_vector_logic
   (Res,
    Op1);
  output [7:0]Res;
  input [7:0]Op1;

  wire [7:0]Op1;
  wire [7:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1[0]),
        .O(Res[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Res[1]_INST_0 
       (.I0(Op1[1]),
        .O(Res[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \Res[2]_INST_0 
       (.I0(Op1[2]),
        .O(Res[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \Res[3]_INST_0 
       (.I0(Op1[3]),
        .O(Res[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \Res[4]_INST_0 
       (.I0(Op1[4]),
        .O(Res[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \Res[5]_INST_0 
       (.I0(Op1[5]),
        .O(Res[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \Res[6]_INST_0 
       (.I0(Op1[6]),
        .O(Res[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \Res[7]_INST_0 
       (.I0(Op1[7]),
        .O(Res[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
