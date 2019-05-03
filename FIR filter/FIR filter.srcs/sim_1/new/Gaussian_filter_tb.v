`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/27 10:35:50
// Design Name: 
// Module Name: Gaussian_filter_tb
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


module Gaussian_filter_tb(
    );
    localparam word_size = 8;
    localparam word_size_out = 2*word_size+2; 
    reg clk;
    reg rst;
    reg[word_size-1:0] data_in;
    wire[word_size_out-1:0] data_out;
    
    Gaussian_filter test(
    .data_in(data_in),
    .clk(clk),
    .rst(rst),
    .data_out(data_out)
    );
    
    always #1 clk = ~clk;
    always #1 data_in = data_in + 8'd1;
    initial begin
      $display("###########################################");
      clk=0;
      rst=0;
      data_in=0;
    end
endmodule
