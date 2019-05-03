// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Apr 25 17:19:52 2019
// Host        : LAPTOP-RB0P3CIU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Vivado/Project/mfcc/project_1/project_1.srcs/sources_1/ip/mult/mult_sim_netlist.v
// Design      : mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module mult
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
  mult_mult_gen_v12_0_13 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_mult_gen_v12_0_13
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
  mult_mult_gen_v12_0_13_viv i_mult
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
KW448g7qlFj+sBLv5v5i39K8x9ilU2V18cwHBIuQyoPwH3UEjqHM5jvcsxspcGteR5k3ENkzKdKS
z1vlPa1tS4jfhnBOCghqhU4nergZZyOZhDspyDmZxKzT7sf54XnxaJIx8QSgCj1j8LqfMG1Nz9gi
RLrhQ+Kenn5xyxLlfCZAsoQQRAQtb/wlK75xbxlfch3nRRcO9ALPxy2xMUJwHBYX9tBbfd4A2TlD
EW2nDnDNXtxOUbs/cGy6io5Z0C5X3M0SEGfjV2OYTgTqHTvx1reOjXx9vHLnmyH796o1JabzzZg+
+1rb9FIuC3PwbCIiY0k2MduYHFb89noh5hoJZg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l1aeDZeybYZ+GNqY0SkMn3/YqlQUnM3FnqSwZaRaNQdRx/vD76QB2MVI0kB2Iif8oFj2rT7htQh3
owRH6UwYkxW+S6VZ1Qq5GfqkOWu0bqMvNAPX0iKE/pbDlLGboKKs2vbU41wO1hIBfyoD2rscXVBz
1KI5WVXTW4CPGr9IfkQQB7A6eRpeOAwe0+Fuqf2z/jjJtCwW9VLs5Q3HB38sjLWcrTKHBC8TBo8D
HlQbpnouBp7NzloBcwwXtgK+QoIuz7mMicC041TdMQpIEuTFTXhQ5p7BQImvMmjsZ4mvrJUVPGiC
bq+UWzwYuhWIfPNuOC1GhxnwpvsF+jr9W7N/qQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32064)
`pragma protect data_block
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
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
