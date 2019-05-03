// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Apr 25 17:30:54 2019
// Host        : LAPTOP-RB0P3CIU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Vivado/Project/mfcc/project_1/project_1.srcs/sources_1/ip/ham_ram/ham_ram_stub.v
// Design      : ham_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module ham_ram(clka, ena, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[6:0],dina[31:0],clkb,addrb[6:0],doutb[31:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [6:0]addra;
  input [31:0]dina;
  input clkb;
  input [6:0]addrb;
  output [31:0]doutb;
endmodule
