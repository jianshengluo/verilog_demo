`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/19 15:58:44
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//本代码为一帧数据的top
module top
(
	clk,
	data_in,
	ready_in,
	rst,
	data_out,
	ready_out
);
	input [31:0] data_in;
	input clk;
	input rst;
	input ready_in;
	output [31:0] data_out;
	output ready_out;
	
	reg [31:0]ham_din;
	reg ham_rin;
	
	wire [31:0]ham_dout;
	wire [31:0]fft_din;
	wire [31:0]fft_dout;
	wire [31:0]mel_din;
	wire [31:0]mel_dout;
	wire [31:0]ln_din;
	wire [31:0]ln_dout;
	wire [31:0]dct_din;
	wire [31:0]dct_dout;
	wire ham_rout;
	wire fft_rin;
	wire fft_rout;
	wire mel_rin;
	wire mel_rout;
	wire ln_rin;
	wire ln_rout;
	wire dct_rin;
	wire dct_rout;
	
	add_win add_win(.clk(clk),
	  .data_in(ham_din),
	  .ready(ham_rin),
	  .rst(rst),
	  .data_out(ham_dout),
	  .out_ready(ham_rout)
	  );//添加汉明窗
	  
	FFT FFT(.clk(clk),
	.data_in(fft_din),
	.ready(fft_rin),
	.rst(rst),
	.data_out(fft_dout),
	.out_ready(fft_rout)
	);//快速傅里叶变换
	
	mel_top mel_top(.clk(clk),
				  .data_in(mel_din),
				  .ready(mel_rin),
				  .rst(rst),
				  .data_out(mel_dout),
				  .out_ready(mel_rout)
				  );//mel滤波器组
	
	Ln_top Ln_top(.clk(clk),
	  .din(ln_din),
	  .ready(ln_rin),
	  .rst(rst),
	  .dout(ln_dout),
	  .out_ready(ln_rout)
	  );//对数模块
	
	dct_top dct_top(.clk(clk),
				.data_in(dct_din),
				.ready(dct_rin),
				.rst(rst),
				.data_out(dct_dout),
				.out_ready(dct_rout)
				);//离散余弦变换
	
	always @(posedge clk or negedge rst)begin

		if(!rst)begin
			ham_din<=32'b0;
			ham_rin<=1;
		end
		else begin
			ham_din <= data_in;
			ham_rin <= ready_in;
		end
	end
	
	assign fft_din = ham_dout;
	assign fft_rin = ham_rout;
	assign mel_din = fft_dout;
	assign mel_rin = fft_rout;
	assign ln_din = mel_dout;
	assign ln_rin = mel_rout;
	assign dct_din = ln_dout;
	assign dct_rin = ln_rout;
	assign ready_out = dct_rout;
	assign data_out = dct_dout;
		
endmodule
