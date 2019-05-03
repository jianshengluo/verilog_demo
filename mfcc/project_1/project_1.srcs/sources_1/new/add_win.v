`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 20:33:01
// Design Name: 
// Module Name: divide_data_add_window
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


module add_win(
clk,
data_in,
ready,
rst,
data_out,
out_ready
    );
    input clk;
    input rst;
    input [31:0]data_in;
    input ready;
    output [31:0]data_out;
    output out_ready;
    
    reg out_ready_r;
    //wire clk_50;
    reg [7:0]addrin_r ;
    wire [31:0]douta;//读取的数据
    reg wea = 1'b0;//写使能信号始终置0
    reg [31:0]data_in_1[127:0];//存放分帧模块中出来的128个32bit数
    reg [31:0]data_mem[127:0];//存放从mem里面取出来的128个数据
    reg [31:0] a,b;//乘法器输入ab输出c
    wire [31:0] c;
    reg [3:0] state;
    
    reg [7:0] i = 8'b0;//循环读取数据
    
    reg [31:0] data_out_r;
    reg [8:0]addra = 9'b0;
    reg [31:0]dina = 32'b0;
    reg ena = 1'b0;
    
    parameter get_data = 4'b0001;
    parameter read_data = 4'b0010;
    parameter matrix = 4'b0100;
    parameter output_data = 4'b1000;
    

    ham_ram ham_ram(.addrb(addrin_r),   //读数据口
                    .clkb(clk),
                    .doutb(douta),
                    
                    .addra(addra),      //写数据口，无用
                    .clka(clk),
                    .dina(dina),
                    .ena(ena),
                    .wea(wea));//存放23组滤波器数据,只读
    
    qmut #(16,32) qmut(.a(a),.b(b),.c(c));//乘法器
    
    assign data_out = data_out_r;
    assign out_ready = out_ready_r;
    
    always@(posedge clk or negedge rst)begin
        
        if(!rst) begin
            state <= get_data;
            i <= 8'b0;
            data_out_r <= 32'b0;
            a <= 32'b0;
            b <= 32'b0;
            out_ready_r <= 1'b1;
            addrin_r <= 8'b0;
        end
        
        else begin
            case(state)
            get_data:    begin
                            out_ready_r <= 1'b1;
                            data_out_r <= 32'b0;
                            if(!ready) begin
                            out_ready_r <= 1'b1;
                            data_in_1[i] <= data_in;
                            i <= i + 1'b1;
                            if(i==127) begin
                                i <= 8'b0;
                                state <= read_data;
                            end
                        end
                        end
            
            read_data:    if(i < 3)begin
                            addrin_r <= i;
                            i <= i + 1'b1;
                        end
                        else if (i>=3 && i<129)begin
                            data_mem[i-3] <= douta;
                            addrin_r <= i;
                            i <= i + 1'b1;
                        end
                        else if(i>=129 && i<131)begin
                            data_mem[i-3] <= douta;
                            i <= i + 1'b1;
                        end
                        else if(i==131) begin
                            i <= 8'b0;
                            state <= matrix;
                        end
            
            matrix:        if(i < 1)begin
                            a <= data_in_1[i];
                            b <= data_mem[i];
                            i <= i + 1'b1;
                        end else if(i < 128)begin
                            a <= data_in_1[i];
                            b <= data_mem[i];
                            i <= i + 1'b1;
                            data_out_r <= c;
                            out_ready_r <= 1'b0;
                        end
                        else if(i==128) begin
                            i <= 8'b0;
                            data_out_r <= c;
                            out_ready_r <= 1'b0;
                            state <= output_data;
                        end
            
            output_data:begin
                            state <= get_data;
                            data_out_r <= 32'b0;
                            out_ready_r <= 1'b1;
                            i <= 8'b0;
                            a <= 32'b0;
                            b <= 32'b0;
                        end
                
            endcase
        end
        
    end
endmodule
