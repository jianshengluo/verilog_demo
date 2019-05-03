`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/12 18:25:08
// Design Name: 
// Module Name: qadd
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


module qadd
#(parameter Q=7,
  parameter N=16
  )
(
    input [N-1:0] d,
    input [N-1:0] e,
    output [N-1:0] f
    );
    
    reg [N-1:0] res;
    
    assign f = res;
    
    always @(d,e)
    begin
        //both negative
        if(d[N-1]==1 && e[N-1]==1)begin
            res[N-1]=1;
            res[N-2:0]=d[N-2:0] + e[N-2:0];
        end
        //both positive
        else if(d[N-1]==0 && e[N-1]==0)begin
            res[N-1]=0;
            res[N-2:0]=d[N-2:0] + e[N-2:0];
        end
        //substract a-b
        else if(d[N-1]==0 && e[N-1]==1)begin
            if(d[N-2:0] > e[N-2:0])begin
                res[N-1]=0;
                res[N-2:0]=d[N-2:0] - e[N-2:0];
            end
            else begin
                res[N-1]=1;
                res[N-2:0]=e[N-2:0] - d[N-2:0];
            end
        end
        //substract b-a
        else begin
            if(d[N-2:0] > e[N-2:0])begin
                res[N-1]=1;
                res[N-2:0]=d[N-2:0] - e[N-2:0];
            end
            else begin
                res[N-1]=0;
                res[N-2:0]=e[N-2:0] - d[N-2:0];
            end
        end
    end
endmodule
