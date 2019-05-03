`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 11:52:45
// Design Name: 
// Module Name: MS
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


module Ln_top(
    input clk,
    input rst,
    input [31:0] din,       //����32λ������
    output [31:0] dout,    //�������->����ת�����
	input ready,
	output out_ready
    );
   
    //Ln�����Ĵ���������������
   reg in_valid_1;  //IP��ʹ�ܣ�����Ч
   wire in_valid_2;
   wire in_valid_3;
   wire out_valid_1;    //��Ч���������
   wire out_valid_2;
   wire out_valid_3;
   wire [31:0] dout_1;//�������->����ת�����
   wire [31:0] dout_2;//���ln()���
   wire [31:0] din_abs;
   reg [31:0] indata_1;
   wire [31:0] indata_2;
   wire [31:0] indata_3;
   wire [31:0] outdata_1;
   wire [31:0] outdata_2;
   wire [31:0] outdata_3;
   reg [4:0]i;
   
   assign din_abs = din[31]?{~din[31] + din[30:0]}:{din[31:0]};
   
  //���� -> ����     
   fixed2float M1(
   .s_axis_a_tdata(indata_1),
   .s_axis_a_tvalid(in_valid_1),
   .m_axis_result_tdata(outdata_1),
   .m_axis_result_tvalid(out_valid_1)
   );
   
  //ln���� 
    ln_ip M2 (
      .s_axis_a_tvalid(in_valid_2),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(indata_2),              // input wire [31 : 0] s_axis_a_tdata
      .m_axis_result_tvalid(out_valid_2),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(outdata_2)    // output wire [31 : 0] m_axis_result_tdata
    );

  //���� -> ����
   float2fixed M3(
   .s_axis_a_tdata(indata_3),
   .s_axis_a_tvalid(in_valid_3),
   .m_axis_result_tdata(outdata_3),
   .m_axis_result_tvalid(out_valid_3)
   );
  
   
    always@(posedge clk or negedge rst)begin
    if(!rst)
        begin
           indata_1<=32'b0;
           in_valid_1<=1'b0;
           i<= 0;
        end
    else if(!ready)
        begin
            indata_1<=din_abs; 
            in_valid_1<=1'b1;
        end
    else begin
        indata_1<=32'b0;
        in_valid_1<=1'b0;
        i<= 0;
    end
    end
         
assign indata_2=outdata_1;
assign indata_3=outdata_2;

assign in_valid_2=out_valid_1;
assign in_valid_3=out_valid_2;

//assign dout=outdata_3;
assign dout = outdata_3[31]?{outdata_3[31] + {~outdata_3[30:0] + 1}}:{outdata_3[31:0]};
assign out_ready = ~out_valid_3;

endmodule
