module dct_top(
clk,
data_in,
ready,
rst,
data_out,
out_ready
    );
    input [31:0] data_in;//一共接收128次
    input ready;
    input clk;
    input rst;
    output [31:0] data_out;//一共输出128次,得到128个结果
    output out_ready;//active low
    
	reg out_ready_r;
    //wire clk_50;
    reg [6:0]addrin_r ;
    wire [31:0]douta;//读取的数据
    reg wea = 1'b0;//写使能信号始终置0
    reg [31:0]data_in_1[128:0];//存放分帧模块中出来的128个32bit数
    reg [31:0]data_mem[128:0];//存放从mem里面取出来的128个数据
    reg [31:0] a,b;//乘法器输入ab输出c
    reg [31:0] d,e;//加法器输入de输出f
    wire [31:0] f;
    wire [31:0] c;
    reg [3:0] state;
	
    reg [8:0] i = 9'b0;//循环读取数据
    reg       j = 1'b0;//矩阵运算的次数
	
    reg [31:0] data_out_r;
    reg [6:0]addra = 8'b0;
    reg [31:0]dina = 16'b0;
    reg ena = 1'b0;
    reg [7:0]j_128 = 8'd128;
    //wire [6:0]addrin_j;
    
    parameter get_data = 4'b0001;
    parameter read_data = 4'b0010;
    parameter matrix = 4'b0100;
    parameter output_data = 4'b1000;
    

    ham_ram ham_ram(.addrb(addrin_r),
                    .clkb(clk),
                    .doutb(douta),
                    .addra(addra),
                    .clka(clk),
                    .dina(dina),
                    .ena(ena),
                    .wea(wea));//存放23组滤波器数据,只读
    
    qmut #(16,32) qmut(.a(a),.b(b),.c(c));//乘法器
	qadd #(16,32) qadd(.d(d),.e(e),.f(f));//加法器
    //mult_dct mult_dct(.CLK(clk),.A(j),.B(j_128),.P(addrin_j));//5位的j乘65得到一个11位的数
    
	assign data_out = data_out_r;
	assign out_ready = out_ready_r;
	
    always@(posedge clk or negedge rst)begin
		
		if(!rst) begin
			state <= get_data;
			i <= 9'b0;
			j <= 1'b0;
			data_out_r <= 32'b0;
			a <= 32'b0;
			b <= 32'b0;
			d <= 32'b0;
			e <= 32'b0;
			out_ready_r <= 1'b1;
			addrin_r <= 9'b0;
		end
		
		else begin
			case(state)
			get_data:	if(!ready) begin
							out_ready_r <= 1'b1;
							data_in_1[i] <= data_in;
							i <= i + 1'b1;
							if(i==127) begin
								i <= 9'b0;
								state <= read_data;
							end
						end
			
			read_data:	if(i < 3)begin
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
                            i <= 9'b0;
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
							i <= 9'b0;
							state <= output_data;
						end
			
			output_data:if(j ==1 )begin
							data_out_r <= f;
							state <= read_data;
							out_ready_r <= 1'b0;
							i <= 9'b0;
							a <= 32'b0;
							b <= 32'b0;
							d <= 32'b0;
							e <= 32'b0;
						end else begin
							data_out_r <= f;
							j <= 1'b0;
							state <= get_data;
							out_ready_r <= 1'b0;
							i <= 9'b0;
							a <= 32'b0;
                            b <= 32'b0;
                            d <= 32'b0;
                            e <= 32'b0;
						end
				
			endcase
		end
		
    end
    
endmodule
