`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/15 15:51:10
// Design Name: 
// Module Name: top_tb
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


module dct_top_tb(

    );
    localparam DATA_WIDTH = 32;     //����λ��16λ������
    localparam MEM_DEPTH = 23;      //������ȣ�65������
    
    reg clk;
    reg rst;
    reg [DATA_WIDTH-1:0]data_in;        //�������ݣ�һ��һ������
    reg [DATA_WIDTH-1:0]data_mem[MEM_DEPTH-1:0];        //�Ĵ�������Ŷ�ȡ�����ļ�����
    wire [DATA_WIDTH-1:0]data_out;          //�����һ��һ�����
    reg  in_ready;     //low enable ����λ��ʾ��������65������    
    wire out_ready;    //low enable ����λ��ʾ����������
    
    always #5 clk = ~clk;
    
    dct_top utt(.clk(clk),
                 .ready(in_ready),
                 .rst(rst),
                 .data_in(data_in),
                 .out_ready(out_ready),
                 .data_out(data_out)
    );
    //��txt�ļ��ж���65������
    initial begin
        $display("###########################################");
        in_ready = 1;   
        clk = 0;
        rst = 0;
        $display("#%1d loading data from \'rand.txt\' to data_mem", $time);
        $readmemh("C://Users//hp//Desktop//data_V0323//dct_data//log2_dout_h.txt", data_mem); //�ļ�·��
        //���ļ�ʧ��
         if (data_mem[0] === {DATA_WIDTH{1'bx}}) begin
            $display("#%1d loading rand.txt failed",$time);
            $display("############################################");
            $finish;
         end
         //���ļ��ɹ�
         else begin
            $display("#%1d loading rand.txt succeed",$time);
            $display("############################################");
            //$finish;
         end
         //����write_data�¼�
         #7 -> write_data;
    end    
    
    //��data_inһ��һ����ֵ
    event write_data;
    integer i;
    initial begin
        @(write_data);
        rst = 1;
        $display("#%1d writing data from data_mem to data_in",$time);
        $display("############################################");

        for (i=0; i< MEM_DEPTH; i=i+1)begin
            @(negedge clk)
            data_in = data_mem[i];
            in_ready = 0;
            if(i == MEM_DEPTH-1)begin       //65��������
                
                $display("#%1d wrote over!",$time);
                $display("############################################");
                //����caculateģ��
                #10 -> caculate;
            end
        end
    end
    
    //���ռ�����
    event caculate;
    integer j=0;
    initial begin
        @(caculate)
        @(negedge clk)
        in_ready = 1;
        if(out_ready == 0)begin
            j=j+1;
            $display("#%1d the %dth result is %h ##",$time,j,data_out);
        end
        if(j == 23)begin        //ȫ���������
            $display("#%1d caculated over!",$time);
            $display("############################################");
        end
    end
    
endmodule
