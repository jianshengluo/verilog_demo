module uart_rx#(parameter width =8)(
  input rxd,
  input clk,
  output receive_ack,
  output reg [width-1:0] data_i
);
  localparam IDLE=0,
             RECEIVE=1,
             RECEIVE_END=2;
  reg[3:0] cur_st,nxt_st;
  reg[4:0] count;
  reg[width-1:0] data_i_tmp;
  
  always@(posedge clk)
    cur_st<=nxt_st;
  
  always@(*)
    begin
      nxt_st = cur_st;
      case(cur_st)
        IDLE: if(!rxd) nxt_st = RECEIVE;
        RECEIVE: if(count == 7) nxt_st = RECEIVE_END;
        RECEIVE_END: nxt_st = IDLE;
      endcase
    end
  
  always@(posedge clk)
    if(cur_st == RECEIVE)
      count<=count+1;
    else if ((cur_st == IDLE) ||(cur_st == RECEIVE_END) )
      count<=0;
        
  always@(posedge clk)
    if(cur_st == RECEIVE)
      begin
        data_i[width-2:0]<=data_i[width-1:1];
        data_i[width-1]<=rxd;
      end
    
   assign receive_ack=(cur_st == RECEIVE_END)?1:0;
endmodule 