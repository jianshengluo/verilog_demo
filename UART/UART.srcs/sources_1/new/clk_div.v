module clk_div(
  input clk,
  output reg clk_out
  );
  
  localparam Baud_Rate = 9600,
             div_num='d100_000_000;//分频数为时钟速率除以波特率
  
  reg[15:0] num;
  
  always@(posedge clk)
    if(num == div_num) begin
      num<=0;
      clk_out<=1;
    end
    else begin
      num<=num+1;
      clk_out<=0;
    end
endmodule