`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/15 15:56:35
// Design Name: 
// Module Name: mfcc_top
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


module mel_top(
clk,
data_in,
ready,
rst,
data_out,
out_ready
    );
    input [31:0] data_in;//һ������65��
    input ready;
    input clk;
    input rst;
    output [31:0] data_out;//һ�����23�Σ��õ�23������ֵ
    output out_ready;//active low
    
	reg out_ready_r;
    //wire clk_50;
    reg [11:0]addrin_r ;
    wire [31:0]douta;//��ȡ������
    reg wea = 1'b0;//дʹ���ź�ʼ����0
    reg [31:0]data_in_1[127:0];//��������65��16λfft��ֵ
    reg [31:0]data_mem[127:0];//��Ŵ�mem����ȡ������65������
    reg [31:0]data_out_1[22:0];//����������
    reg [31:0] a,b;//�˷�������ab���c
    reg [31:0] d,e;//�ӷ�������de���f
    wire [31:0] f;
    wire [31:0] c;
    reg [4:0] state;
    reg [7:0] i = 8'b0;//ѭ����ȡ����
    reg [4:0] j = 5'b0;//��������Ĵ���
    reg [31:0] data_out_r;
    reg [11:0]addra = 12'b0;
    reg [31:0]dina = 16'b0;
    reg ena = 1'b0;
    reg [7:0]j_128 = 8'd128;
    wire [11:0]addrin_j;
    
    parameter get_data = 5'b00001;
    parameter read_data = 5'b00010;
    parameter matrix = 5'b00100;
    parameter output_data = 5'b01000;
    parameter outit = 5'b10000;
    
    fil_ram fil_ram(.addrb(addrin_r),
                    .clkb(clk),
                    .doutb(douta),
                    .addra(addra),
                    .clka(clk),
                    .dina(dina),
                    .ena(ena),
                    .wea(wea));//���23���˲�������,ֻ��
    
    qmut #(16,32) qmut(.a(a),.b(b),.c(c));//�˷���
	qadd #(16,32) qadd(.d(d),.e(e),.f(f));//�ӷ���
    mult mult(.CLK(clk),.A(j),.B(j_128),.P(addrin_j));//5λ��j��65�õ�һ��11λ����
    
	assign data_out = data_out_r;
	assign out_ready = out_ready_r;
	
    always@(posedge clk or negedge rst)begin
		
		if(!rst) begin
			state <= get_data;
			i <= 8'b0;
			j <= 5'b0;
			data_out_r <= 32'b0;
			a <= 32'b0;
			b <= 32'b0;
			d <= 32'b0;
			e <= 32'b0;
			out_ready_r <= 1'b1;
			addrin_r <= 12'b0;
		end
		
		else begin
			case(state)
			get_data:	if(!ready) begin
							out_ready_r <= 1'b1;
							data_in_1[i] <= data_in;
							i <= i + 1'b1;
							if(i==127) begin
								i <= 8'b0;
								state <= read_data;
							end
						end
			
			read_data:	if(i < 3)begin
                            addrin_r <= addrin_j + i;
                            i <= i + 1'b1;
                        end
                        else if (i>=3 && i<129)begin
                            data_mem[i-3] <= douta;
                            addrin_r <= addrin_j + i;
                            i <= i + 1'b1;
                        end
                        else if(i>=129 && i<131)begin
                            data_mem[i-3] <= douta;
                            i <= i + 1'b1;
                        end
                        else if(i==131) begin
                            i <= 8'b0;
                            state <= matrix;
                            j <= j + 1'b1;
                        end
			
			matrix:		if(i < 128)begin
							a <= data_in_1[i];
							b <= data_mem[i];
							d <= c;
							e <= f;
							i <= i + 1'b1;
						end
						else if(i==128) begin
							d <= c;
							e <= f;
							i <= 7'b0;
							state <= output_data;
						end
			
			output_data:if(j >= 1 && j <= 23)begin
							data_out_1[j-1] <= f;
							state <= read_data;
							i <= 8'b0;
							a <= 32'b0;
							b <= 32'b0;
							d <= 32'b0;
							e <= 32'b0;
						end else begin
							data_out_1[j-1] <= f;
							j <= 5'b0;
							state <= outit;
							i <= 8'b0;
							a <= 32'b0;
                            b <= 32'b0;
                            d <= 32'b0;
                            e <= 32'b0;
						end
			outit:if(j<23)begin
			             data_out_r <= data_out_1[j];
			             j = j + 1'b1;
			             out_ready_r <= 1'b0;
			         end
			         else begin
			             j <= 1'b0;
			             out_ready_r <= 1'b1;
			             data_out_r <= 32'b0;
			             state <= get_data;
			         end
				
			endcase
		end
		
    end
    
endmodule
