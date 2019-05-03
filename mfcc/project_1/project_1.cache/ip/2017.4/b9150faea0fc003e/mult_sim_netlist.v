// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Apr 25 17:19:51 2019
// Host        : LAPTOP-RB0P3CIU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_sim_netlist.v
// Design      : mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [4:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [11:0]P;

  wire [4:0]A;
  wire [7:0]B;
  wire CLK;
  wire [11:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "5" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "11" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "5" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "11" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [4:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [11:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [4:0]A;
  wire [7:0]B;
  wire CLK;
  wire [11:0]P;
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
  (* C_A_WIDTH = "5" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "11" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13_viv i_mult
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
VefD/IjK6RnTaCBmgZgLXq8nkUOvUiki81Sjiou5QoXKxmp3TZxuzJA+/BGmzHzWaywOw9W4+//v
JaEfev2bfFyGzNh+tXcZYRKLF3/9IlbqaAIJS3dleYwThzxKuV8Y8P8kVaZOzaOQNoi5xCvNbo5i
0NihlEig1g4vuD5dFBfPElnYisXqYLO8v8YIjAPT5rEM+5mLNauhS7xuA/6I2m/68o3tFW3D6bSW
h8ZV+LUm7jDkIDBBMXzyC79Gc3AuAhDaa1S2/oIOUtlHXk1k+3qG/3X5Dp3dmFemmnR0MHziYE/5
TpSWK4dvTOYMGrZZGMAyXGvSB6IGmqnFJttpkA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
10kNw0+YRRqVWIOvz4lUGR2UxeZTLiZeHop8FObglSP2S6yIZDeay6YnfVQPpjUVOJuoigabYksX
JQYAnsW714hyo53/9NL7IM3QQMks3n5rX3iuu40pEdUFvf8Mk/KoaQf42aKGeEM99k1Xl2q7pRgI
Ek90aB5x4gYrKQt1YmQeo6RvWq5oR5qttQ6OTJ6yMb7QGi1CVQDkl+rzuwNcdcAszZFK8d5FqbHL
WAurvi5N3/W7pne8Mssi7mtIesJhvKQA0bvVf1BjCGR5Axh9/jIQUpaar08JNrxDrBc5XF2D4f7B
ZvdVZhUayEriYCR97wwdZdHwCrvE+I8nUGfTeg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32096)
`pragma protect data_block
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
+4miPr8=
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
