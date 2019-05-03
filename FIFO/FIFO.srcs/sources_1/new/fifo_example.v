`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/28 15:49:20
// Design Name: 
// Module Name: fifo_example
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 同步fifo 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo_example#(parameter width=8,depth=8,num=3)(
      input clk,
      input wr,
      input rd,
      input rst,
      input[width-1:0] data_in,
      output full,
      output empty,
      output reg [num-1:0]fifo_cnt,
      output reg [width-1:0]data_out
      );
      //ram定义
      reg[width-1:0] fifo_ram[depth-1:0];
      //读写指针定义
      reg[num-1:0] rd_ptr;
      reg[num-1:0] wr_ptr;
      //空满判断
      assign full = (fifo_cnt == depth);
      assign empty = (fifo_cnt == 0);
      
      always@(posedge clk) begin: write
        if(wr && !full) 
          fifo_ram[wr_ptr]<=data_in;
        else if(wr && rd)
          fifo_ram[wr_ptr]<=data_in;
      end
      
      always@(posedge clk) begin: read
        if(rd && !empty)
          data_out<=fifo_ram[rd_ptr];
        else if(rd && wr && empty)
          data_out<=fifo_ram[rd_ptr];
      end
      
      always@(posedge clk) begin: pointer
        if(rst) begin
          wr_ptr<=0;
          rd_ptr<=0;
        end
        else begin
          wr_ptr<=((wr && !full) || (wr&&rd))?wr_ptr+1:wr_ptr;
          rd_ptr<=((rd && !empty) || (rd && wr))?rd_ptr+1:rd_ptr;
        end
      end
      
      always@(posedge clk)begin: counter
        if(rst)
          fifo_cnt<=0;
        else begin
          case({wr,rd})
            2'b00:fifo_cnt<=fifo_cnt;
            2'b01:fifo_cnt<=(fifo_cnt == 0)?0:fifo_cnt-1;
            2'b10:fifo_cnt<=(fifo_cnt == 8)?8:fifo_cnt+1;
            2'b11:fifo_cnt<=fifo_cnt;
            default:fifo_cnt<=fifo_cnt;
          endcase
        end
      end      
endmodule
