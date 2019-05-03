// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Apr 25 17:08:54 2019
// Host        : LAPTOP-RB0P3CIU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Vivado/Project/mfcc/project_1/project_1.srcs/sources_1/ip/mult_dct/mult_dct_sim_netlist.v
// Design      : mult_dct
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dct,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module mult_dct
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [4:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [8:0]P;

  wire [3:0]A;
  wire [4:0]B;
  wire CLK;
  wire [8:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "5" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "8" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dct_mult_gen_v12_0_13 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "5" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "8" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_dct_mult_gen_v12_0_13
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [3:0]A;
  input [4:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [8:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [3:0]A;
  wire [4:0]B;
  wire CLK;
  wire [8:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "5" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "8" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dct_mult_gen_v12_0_13_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
CvmaYyJzAT4gGJRlCkE1yXt5Lv9gJbr2gC0wBzixkhI3TupXRLTg9s4Z9WVWp43QDkUuM3VRZjAj
RVnqESt3JA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hHyS2uxRkJ6sHR79RwG8dxYfMwySDoNzo0ZpVSoiAp/93R212I5J1LxM+7EujDw/cO/x9djlyxbz
erzC6/tIqQ2nS2hUZANmmER9YkiA1RlXlIqDOWo8pOFHNj1c4jf7Zdq7OJMDPvKF+fLgmk5Lu9Y0
15oIyfQw7L+gXpW1qEU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Cfhh7YIOGyVJiZpd5j8xa2ugbHZdDDpkNcw6vvVCCgnGCfzlen3wlGk0omzzJqyVapnfg0aPFCVf
eH/noQVGu1bQkowx0JKcNE5x1v5DKH//UNI+lq09SNF0WKlMcTAGlNSUzO8kgVv9uNbKUHDXodcD
5iGh6bHMhVPSu1QKpTfJlIMd2CMz0JfDQiVbfTaAGKvrQhaqVte7pYpnqiXM7povPwt/ntWHBH4s
XSF4J4eDVLMuQmQNy3vrqFdEUqmQFtLWgNRpG2fwo19Y2lRzT3ux5SiA0Iv55uR6x7AG21x8BZlD
JC102ufirdrREfWUzlClY8zmr+TUHpTF/SgPMw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UWceDgHVHZAg17Yudaw03bncVn75AJ6y0RYlYeqdZU3kMG9E1W6q5REaQAI7sMZSrC2g0zavsx4w
utskoq80P2avoebtdvBfjr/nBCQqUN3AvM3GSk85froboZgk4fCQ8UtEj2Qk7ob+ox/md7d9P9dw
2YULi+eG04dUc1g45wwF0ZoZdARk7Ml+fXMnm7zxmvqVieAEsVq6ETZN/P0pwvIpAakLTayKriGC
qcrb1S28bOuV+Na/FX9rxN6hM5aK7vSdFqja5GGs32r9UVRIkX6i7uqS9pWQDR0Qa31W3z6wrRrT
+2wzEwNMDKYuWVIM1FQo/Tp0NKa1Y+kyjahSGA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tLsJPLnIUk5FSxPTGLkNhAFldHrP7oFH8h39nfqyEmnC/AmGzR3fePfCEcee3I4TYySABpWhyXIf
m1jGiCuHfIpFkF2EJqjWmBev0bD33cbw1av2xtJRFa5gaQjxChO9URfjedFvCQWWwjlxejc9nD0N
O0V2XUDQxd573YmSBuByzshlxt3bujEd6Xeeb8N8NI8c2ZsfY4693LGdb3k6gtY9ZEoo4XuYVt6n
S2tNFVJTfQjyBEXbuCPqpwGf6bPdy2SKvTE/s4rSIVTO08J6bXDaEOBUGg13XVoJJqrayiJRVuQL
LhoiPzgOqS6ude1uUaMHE/SN9X/vt/6uOsOl2w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jgk19ieS+ZYiySHKvgAHMus0OAx0HPJ59p64LMaYK8CyW0wSM8LIn++sFz9tsOBdLj2gb8IKpSVr
SOX9XXXM2pQFSME7x8q0m+EPg9m1+ghIpW4bU/w4zVq4NBjYydZCI0Hpy+X3op0a3+eENVEw5SoK
4R/zOL7aV/2nZ//wkaw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L/BPRr/PHH5da1O06dKRr5ST8eskM6lzR1UPuTvZQ6RCsFEjTD1HgyqjW7/ypnIq7V5TYDC553+Y
rJnEENzDc6RSpzenrYxw7NrURpUedIWlCc/PEf5Zq9gu1ESkpND7t98rc+uiAz7zsn/pHD/K50NR
q9l/gcWkOCgArmADo1Lw9usrfZ8ECIPKY2kLxeTYbh4fsrCpPQsQUk4NxX3N1Q0h3RRUCdHSFc0O
lvGip/vd24OK8zXDMaQv4fPmgToFQMUvLrJXErEUeRlkpxkcX6g6Zu4RMWwwmkNIfZHpc5K8Q3RL
MMc5rARUSXbNbpf28H3iyAMZ0y+EgI0CrKwooA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EvU3mmrzvxe1tIa4W0yxOxUF3OPW+sNjFG4rw5bcR1fC2ZLZ5aQAGUOWhaJiJ0WS5fXUo5q35c7L
eKdyFts4uGl40BrgXFXkcm16dDnxVeDaQiQJNZQc85rIRMs+imu57BWBVIhjhWazmImd5TvNN73w
9M6WNMTlYpN+ilWt9BTasKgnXcSPO0OmdZ9jxI2gJe6HPxiZ9n9gT2jq4WvuukuzVzALqVD0HRpl
ZYk3rHsgPam+6nSqmrDQjDpIhNrmWVyoam8tXm2nIF8nU7uENIGoA2fPnIDogXm4mztDPcZ2q7rr
ptG9cKspmGFvzNuG3Tno+LaoskPAbt91x3r/dg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V0rsBT8/W3r0mEiwhNDPmFdVTQkRGFAfMkK0ZIU0msevW+DIU56HvXpnleM+n4kFB8TZ1cCwMXb5
p7b7m/xKHcxfpqOtmpjYNF5p59ZBM1Zx4xlnibFenE9JoCPMZd29aO762b7FPhE9Pv8Dv9min9/k
5NuHrwf/hcd/haHDtZX4gF5xIUUEfvagOIB+hmGRzkyh1kjLM48CO5Lxy1PWiSAbhVxTqLDdWs9B
K2elTpxiY+0JqJcWN99IajKuiuUU2kphd3IqCeQ+/cdJ+nP5z5LHe6VXEfhjTA3uLlLGRxi9fzws
+7VA2lFuTcz2w81yUhnUG6s7xuS06/dGfEA7eA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22640)
`pragma protect data_block
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
aGyrVoc0ow1J5q8=
`pragma protect end_protected
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
