// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Apr 25 17:08:52 2019
// Host        : LAPTOP-RB0P3CIU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_dct_sim_netlist.v
// Design      : mult_dct
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dct,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "5" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "8" *) 
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
gLWewwsOeAK7VJgrqlykxy+5uZZ5o0CD8ft2qcNgSkvBm/qZA0DI9GU9cbi3TyaBfGE4FSinuA8A
xRrt8k3t8cLTJRdhLIo4R0pYcEX/UUMTjZJXl/ySppSRraZi8ZDCutManB1TI4NBTPw9WNJkcPP2
LgS6yqCDRn+oxbOuF7ihZdYdrOZW/lPpI2mm6XzJgHorK93TYvJ3T3wGpx8Uwd2RHMnpnb1xkKVW
Z7fy8KuBJ60HApA6B3CsD21zEIQ6P5vo6jLcejPIiBMus09jd1Xw4TDgeIDBcq4RKnmZM6xXp9ew
2cJWl3FsP4uu8xJUyxOjZQUPv4p5XVC6C+Hdvw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oI8iW1E37eLD836S4N9EQFmI/GvxDPXsjGRTbvqbg2i/qCD1jGGbD61rtZmHY6WulonkitWe5Mmx
UwliU5ucuMNbQN+iTOtlgBKDFfnpQLIkqVToguyyrdh38xw5cGCyPAPtWSSVNe8owGHBPTZ/FzRq
TW4zw1wMHpWaEB95yMM6cEnKsjB8sbaFWoxpRXVm9v+MuAliNleqYsB/GavO08hlJ1S3HvCT4DPK
bWD762y6vPMMaS2cc/O8ffnl8muZRuvRT+JWdHZL4W4b+In/cjpea4tpUOB9026LdRY2bzuAp64q
HX95qMU088bUXJHYCoWeP5rBZQqJNHy2KvMHDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22656)
`pragma protect data_block
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
fl0FBJB61vls2mU+a5gbN28jwGNEhkaaI8EA
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
