module uart_tx#(parameter width=8)(
  input[width-1:0]data_o,
  output reg txd,
  input clk,
  input rst,
  input receive_ack
  );
  
  localparam IDLE = 0,
             SEND_START=1,
             SEND_DATA=2,
             SEND_END=3;
  
  reg[3:0] cur_st,nxt_st;
  reg[4:0] count;
  reg[width-1:0] data_o_tmp;
  
  always@(posedge clk)
    cur_st<=nxt_st;
  
  always@(*)
    begin
      nxt_st = cur_st;
      case(cur_st)
        IDLE: if(receive_ack) nxt_st = SEND_START;
        SEND_START: nxt_st = SEND_DATA;
        SEND_DATA: if(count == 7)nxt_st = SEND_END;
        SEND_END: nxt_st = SEND_START;
        default:nxt_st = IDLE;
      endcase
    end
    
  always@(posedge clk)
    if(cur_st == SEND_DATA)
      count<=count+1;
    else if((cur_st == IDLE)||(cur_st == SEND_END))
      count<=0;
      
  always@(posedge clk)
    if(cur_st == SEND_START)
      data_o_tmp<=data_o;
    else if(cur_st == SEND_DATA)
      data_o_tmp[width-2:0]<=data_o_tmp[width-1:1];
      
   always@(posedge clk)
     if(cur_st == SEND_START)
       txd<=0;
     else if(cur_st == SEND_DATA)
       txd<=data_o_tmp[0];
     else if(cur_st == SEND_END)
       txd<=1;   
endmodule