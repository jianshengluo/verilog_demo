`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/24 16:19:54
// Design Name: 
// Module Name: FFT
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


module FFT
#(parameter width=32,
parameter length=128)
(
clk,
data_in,
ready,
rst,
data_out,
out_ready
    );
    
    input [width-1:0] data_in;//一共接收128次数据
    input ready;
    input clk;
    input rst;
    output [width-1:0] data_out;
    output out_ready;
    
    //fft ip input
    reg s_axis_config_tvalid; 
    reg s_axis_data_tvalid; 
    reg s_axis_data_tlast; 
    reg m_axis_data_tready; 
    reg [7:0] s_axis_config_tdata; 
    reg [63: 0] s_axis_data_tdata; 
    // fft ip Outputs 
    wire s_axis_config_tready; 
    wire s_axis_data_tready; 
    wire m_axis_data_tvalid; 
    wire m_axis_data_tlast; 
    wire event_frame_started; 
    wire event_tlast_unexpected; 
    wire event_tlast_missing; 
    wire event_status_channel_halt; 
    wire event_data_in_channel_halt; 
    wire event_data_out_channel_halt; 
    wire [79 : 0] m_axis_data_tdata; 
    
    parameter ready_start = 4'b0001;
    parameter get_data = 4'b0010;
    parameter output_data = 4'b0100;
    parameter config_start = 4'b1000;
    reg [3:0]state = ready_start;
    reg [7:0]i;
    //assign data_out = m_axis_data_tdata[31:0];
    assign data_out = m_axis_data_tdata[31]?{m_axis_data_tdata[31] + {~m_axis_data_tdata[30:0] + 1}}:{m_axis_data_tdata[31:0]};
    assign out_ready = ~m_axis_data_tvalid;
    fft fft(
        .aclk(clk), // input wire aclk 
        .s_axis_config_tdata(s_axis_config_tdata), // input wire [15 : 0] s_axis_config_tdata 
        .s_axis_config_tvalid(s_axis_config_tvalid), // input wire s_axis_config_tvalid 
        .s_axis_config_tready(s_axis_config_tready), // output wire s_axis_config_tready 
        .s_axis_data_tdata(s_axis_data_tdata), // input wire [95 : 0] s_axis_data_tdata 
        .s_axis_data_tvalid(s_axis_data_tvalid), // input wire s_axis_data_tvalid 
        .s_axis_data_tready(s_axis_data_tready), // output wire s_axis_data_tready 
        .s_axis_data_tlast(s_axis_data_tlast), // input wire s_axis_data_tlast 
        .m_axis_data_tdata(m_axis_data_tdata), // output wire [95 : 0] m_axis_data_tdata 
        .m_axis_data_tvalid(m_axis_data_tvalid), // output wire m_axis_data_tvalid 
        .m_axis_data_tready(m_axis_data_tready), // input wire m_axis_data_tready 
        .m_axis_data_tlast(m_axis_data_tlast), // output wire m_axis_data_tlast 
        .event_frame_started(event_frame_started), // output wire event_frame_started 
        .event_tlast_unexpected(event_tlast_unexpected), // output wire event_tlast_unexpected 
        .event_tlast_missing(event_tlast_missing), // output wire event_tlast_missing 
        .event_status_channel_halt(event_status_channel_halt), // output wire event_status_channel_halt 
        .event_data_in_channel_halt(event_data_in_channel_halt), // output wire event_data_in_channel_halt 
        .event_data_out_channel_halt(event_data_out_channel_halt) // output wire event_data_out_channel_halt 
      );
      
    always @(posedge clk or negedge rst)begin
    
        if(!rst) begin
s_axis_config_tvalid = 0;
        
        s_axis_config_tdata = 0;
        
        s_axis_data_tvalid = 0;
        
        s_axis_data_tdata = 0;
        
        s_axis_data_tlast = 0;
        
        m_axis_data_tready = 0;
            state <= ready_start;
            i <= 8'b0;
        end
        
        else begin
            case(state)
            ready_start:begin//if(!ready)begin
                            state <= get_data;
                            m_axis_data_tready <= 1'b1;
                            s_axis_config_tvalid <= 1'b1;
                            s_axis_config_tdata <= 7'b00000001;
                            s_axis_data_tvalid <= 1'b0;
                            s_axis_data_tdata <= 64'b0;
                            //i<=8'b0;
                            //s_axis_data_tdata <= {{32'b0},data_in};
                       //end
            end
            
            config_start:begin
                state <= get_data;
                s_axis_config_tvalid <= 1'b0;
            end
                        
            get_data:begin
            s_axis_config_tvalid <= 1'b0;
            if(!ready)begin                   
                   if(i<128)begin
                        s_axis_data_tvalid <= 1'b1;
                        s_axis_data_tdata <= {{32'b0},data_in};
                        i <= i + 1'b1;
                    end
                    else if(i==128)begin
                        state <= output_data;
                        s_axis_data_tvalid <= 1'b0;
                        s_axis_data_tdata <= 64'b0;
                    end
                    //end
            end
            else begin
                state <= get_data;
                s_axis_data_tvalid <= 1'b0;
                s_axis_data_tdata <= 64'b0;
            end
            end
            
            output_data:begin
                            state <= get_data;
                            s_axis_data_tvalid <= 1'b0;
                            s_axis_data_tdata <= 64'b0;
                        end
            endcase
        end
    
    end
    
endmodule
