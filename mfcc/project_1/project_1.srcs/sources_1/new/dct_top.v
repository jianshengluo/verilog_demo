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


module dct_top(
clk,
data_in,
ready,
rst,
data_out,
out_ready
    );
    input [31:0] data_in;//һ������23��
    input ready;
    input clk;
    input rst;
    output [31:0] data_out;//һ�����12��,�õ�12��MFCC����
    output out_ready;//active low
    
	reg out_ready_r;
    //wire clk_50;
    reg [8:0]addrin_r ;
    wire [31:0]douta_r;//��ȡ������
    wire [31:0]douta;
    reg wea = 1'b0;//дʹ���ź�ʼ����0
    reg [31:0]data_in_1[22:0];//��Ŷ���ģ���г�����23��32bit��
    reg [31:0]data_mem[22:0];//��Ŵ�mem����ȡ������23������
    reg [31:0]data_out_1[11:0];//����������
    reg [31:0] a,b;//�˷�������ab���c
    reg [31:0] d,e;//�ӷ�������de���f
    wire [31:0] f;
    wire [31:0] c;
    reg [4:0] state;
    reg [4:0] i = 5'b0;//ѭ����ȡ����
    reg [3:0] j = 5'b0;//��������Ĵ���
    reg [31:0] data_out_r;
    reg [8:0]addra = 8'b0;
    reg [31:0]dina = 16'b0;
    reg ena = 1'b0;
    reg [4:0]j_23 = 8'd23;
    wire [8:0]addrin_j;
    
    parameter get_data = 5'b00001;
    parameter read_data = 5'b00010;
    parameter matrix = 5'b00100;
    parameter output_data = 5'b01000;
    parameter outit = 5'b10000;
    

    dct_ram dct_ram(.addrb(addrin_r),
                    .clkb(clk),
                    .doutb(douta),
                    .addra(addra),
                    .clka(clk),
                    .dina(dina),
                    .ena(ena),
                    .wea(wea));//���23���˲�������,ֻ��
    
    qmut #(16,32) qmut(.a(a),.b(b),.c(c));//�˷���
	qadd #(16,32) qadd(.d(d),.e(e),.f(f));//�ӷ���
    mult_dct mult_dct(.CLK(clk),.A(j),.B(j_23),.P(addrin_j));//5λ��j��65�õ�һ��11λ����
    
	assign data_out = data_out_r;
	assign out_ready = out_ready_r;
	assign douta_r = douta[31]?{douta[31] + {~douta[30:0] + 1}}:{douta[31:0]};
	
    always@(posedge clk or negedge rst)begin
		
		if(!rst) begin
			state <= get_data;
			i <= 5'b0;
			j <= 4'b0;
			data_out_r <= 32'b0;
			a <= 32'b0;
			b <= 32'b0;
			d <= 32'b0;
			e <= 32'b0;
			out_ready_r <= 1'b1;
			addrin_r <= 8'b0;
		end
		
		else begin
			case(state)
			get_data:	if(!ready) begin
							out_ready_r <= 1'b1;
							data_in_1[i] <= data_in;
							i <= i + 1'b1;
							if(i==22) begin
								i <= 5'b0;
								state <= read_data;
							end
						end
			
			read_data:	if(i < 3)begin
                            addrin_r <= addrin_j + i;
                            i <= i + 1'b1;
                        end
                        else if (i>=3 && i<24)begin
                            data_mem[i-3] <= douta_r;
                            addrin_r <= addrin_j + i;
                            i <= i + 1'b1;
                        end
                        else if(i>=24 && i<26)begin
                            data_mem[i-3] <= douta_r;
                            i <= i + 1'b1;
                        end
                        else if(i==26) begin
                            i <= 5'b0;
                            state <= matrix;
                            j <= j + 1'b1;
                        end
			
			matrix:		if(i < 23)begin
							a <= data_in_1[i];
							b <= data_mem[i];
							d <= c;
							e <= f;
							i <= i + 1'b1;
						end
						else if(i==23) begin
							d <= c;
							e <= f;
							i <= 5'b0;
							state <= output_data;
						end
			
			output_data:if(j >= 1 && j <= 12)begin
							data_out_1[j-1] <= f;
							state <= read_data;
							i <= 5'b0;
							a <= 32'b0;
							b <= 32'b0;
							d <= 32'b0;
							e <= 32'b0;
						end else begin
							data_out_r[j-1] <= f;
							j <= 4'b0;
							state <= outit;
							i <= 5'b0;
							a <= 32'b0;
                            b <= 32'b0;
                            d <= 32'b0;
                            e <= 32'b0;
						end
                outit:  if(j<12)begin
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
