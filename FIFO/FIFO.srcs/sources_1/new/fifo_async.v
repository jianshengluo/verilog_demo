`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/29 14:47:50
// Design Name: 
// Module Name: fifo_async
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


module fifo_async#(parameter data_width = 16,
                   parameter data_depth = 256,
                   parameter addr_width = 8)
    (
      input rst,
      input wr_clk,
      input wr_en,
      input[data_width-1:0] din,
      input rd_clk,
      input rd_en,
      output reg [data_width-1:0] dout,
      output reg valid,
      output empty,
      output full
    );
    //-----------------------------------------------------------
      //fifo存储ram
      reg [data_width-1:0] fifo_ram[data_depth-1:0];
      //读写指针 
      reg [addr_width:0] wr_ptr;
      reg [addr_width:0] rd_ptr;
      //ram地址
      wire [addr_width-1:0] wr_addr;
      wire [addr_width-1:0] rd_addr;
      //地址指针对应的格雷码
      wire   [addr_width:0]    wr_addr_gray;
      reg    [addr_width:0]    wr_addr_gray_d1;
      reg    [addr_width:0]    wr_addr_gray_d2;
      wire   [addr_width:0]    rd_addr_gray;
      reg    [addr_width:0]    rd_addr_gray_d1;
      reg    [addr_width:0]    rd_addr_gray_d2;  
    //---------------------------------------------------------
      //write_fifo
      integer i;
      always@(posedge wr_clk or posedge rst) begin:write
        if(rst)
          for(i=0;i<data_depth;i=i+1)  fifo_ram[i]<='d0;
        else if(wr_en && !full) 
          fifo_ram[wr_addr]<=din;
        else
          fifo_ram[wr_addr]<=fifo_ram[wr_addr];
        end
      //read_fifo
      always@(posedge rd_clk or posedge rst) begin:read
        if(rst) 
          begin
            dout<='d0;
            valid<='d0;
          end
        else if(rd_en && !empty) 
          begin
            dout<=fifo_ram[rd_addr];
            valid<='d1;
          end
        else
          begin
            dout<='d0;
            valid<='d0;
          end
        end
    //-----------------------------------------------    
      assign wr_addr = wr_ptr[addr_width-1:0];
      assign rd_addr = rd_ptr[addr_width-1:0];
    //-----------------------------------------------
      //格雷码同步化
      always@(posedge wr_clk)
        begin
          rd_addr_gray_d1 <= rd_addr_gray;
          rd_addr_gray_d2 <= rd_addr_gray_d1;
        end  
      always@(posedge wr_clk or posedge rst)
        begin
          if(rst)
            wr_ptr <= 'd0;
          else if(wr_en && (~full))
             wr_ptr <= wr_ptr + 1;
          else 
            wr_ptr <= wr_ptr;
        end
      
      always@(posedge rd_clk)
          begin
            wr_addr_gray_d1 <= wr_addr_gray;
            wr_addr_gray_d2 <= wr_addr_gray_d1;
          end  
        always@(posedge rd_clk or posedge rst)
          begin
            if(rst)
              rd_ptr <= 'd0;
            else if(wr_en && (~empty))
               rd_ptr <= rd_ptr + 1;
            else 
              rd_ptr <= rd_ptr;
          end   
    //---------------------------------------------------
      //地址格雷码
      assign wr_addr_gray = (wr_ptr >> 1) ^ wr_ptr;
      assign rd_addr_gray = (rd_ptr >> 1) ^ rd_ptr;
    
      assign full = (wr_addr_gray == {~(rd_addr_gray_d2[addr_width-1:addr_width-2]),rd_addr_gray_d2[addr_width-3:0]}) ;//高两位不同
      assign empty = ( rd_addr_gray == wr_addr_gray_d2 );  
endmodule
