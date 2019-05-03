`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/28 16:19:44
// Design Name: 
// Module Name: fifo_example_tb
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


module fifo_example_tb(

    );
    localparam width = 8;
    localparam num= 3;
    reg rst;
    reg clk;
    reg wr;
    reg rd;
    reg [width-1:0]data_in;
    wire [width-1:0]data_out;
    wire [num-1:0]fifo_cnt;
    wire full;
    wire empty;
    
    fifo_example test(
    .clk(clk),
    .rst(rst),
    .wr(wr),
    .rd(rd),
    .data_in(data_in),
    .data_out(data_out),
    .fifo_cnt(fifo_cnt),
    .empty(empty),
    .full(full)
    );
    
    always #1 clk= ~clk;
    
    initial begin
      clk = 0;
      rst = 1;
      #2 rst = 0;
      #1 begin 
           wr = 1;
           rd = 0;
           data_in = 8'd1;
          end
      #1 begin 
            wr = 0;
            rd = 0;
            data_in = 8'd2;
         end
      #1 begin 
           wr = 1;
           rd = 0;
           data_in = 8'd3;
          end
      #1 begin 
           wr = 0;
           rd = 0;
           data_in = 8'd4;
          end    
      #1 begin 
           wr = 0;
           rd = 1;
           data_in = 8'd5;
         end
      #1 begin 
           wr = 0;
           rd = 0;
           data_in = 8'd6;
        end
      #1 begin
           wr=0;
           rd=1;
           data_in=8'd7;
         end
      #1 begin
         wr=0;
         rd=0;
         data_in=8'd8;
         end 
      #1 $finish;
     end
     
endmodule
