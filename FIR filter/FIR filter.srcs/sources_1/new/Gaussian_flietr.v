`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/27 10:11:11
// Design Name: 
// Module Name: Gaussian FIR Filter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 高斯FIR滤波器 8抽头 全同步
// 系数偶对称，保证相位特性，高电平同步复位
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Gaussian_filter#(parameter order=8,
word_size_in = 8,word_size_out = 2*word_size_in+2,
//FIR fliter coefficient
b0=8'd7,b1=8'd17,b2=8'd32,b3=8'd46,b4=8'd52,b5=8'd46,b6=8'd32,b7=8'd17,b8=8'd7)( 
    input [word_size_in-1:0] data_in,
    input clk,
    input rst,
    output [word_size_out-1:0] data_out
    );
    reg [word_size_in-1:0] samples [1:order];
    integer k;
    assign data_out=b0*data_in+b1*samples[1]+b2*samples[2]+b3*samples[3]+
    b4*samples[4]+b5*samples[5]+b6*samples[6]+b7*samples[7]+b8*samples[8];
    
    always@(posedge clk)
      if(rst == 1) 
        begin for(k=1;k<=order;k=k+1) samples[k]<=0;end
      else begin 
        samples[1]<=data_in;
        for(k=2;k<=order;k=k+1) samples[k]<=samples[k-1];end
endmodule
