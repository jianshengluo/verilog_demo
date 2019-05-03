module ham_top_tb(

    );
    localparam DATA_WIDTH = 32;     //数据位宽，16位定点数
    localparam MEM_DEPTH = 128;      //数据深度，65个数据
    
    reg clk;
    reg rst;
    reg [DATA_WIDTH-1:0]data_in;        //输入数据，一个一个输入
    reg [DATA_WIDTH-1:0]data_mem[MEM_DEPTH-1:0];        //寄存器，存放读取到的文件数据
    wire [DATA_WIDTH-1:0]data_out;          //输出，一个一个输出
    reg  in_ready;     //low enable ，低位表示正在输入65个数据    
    wire out_ready;    //low enable ，低位表示结果可以输出
    
    always #5 clk = ~clk;
    
    dct_top utt(.clk(clk),
                 .ready(in_ready),
                 .rst(rst),
                 .data_in(data_in),
                 .out_ready(out_ready),
                 .data_out(data_out)
    );
    //从txt文件中读入128个数据
    initial begin
        $display("###########################################");
        in_ready = 1;   
        clk = 0;
        rst = 0;
        $display("#%1d loading data from \'rand.txt\' to data_mem", $time);
        $readmemh("C:\\Users\\Administrator\\Desktop\\data_V0323\\data_V0323\\dct_data\\log2_dout_h.txt", data_mem); //文件路径
        //读文件失败
         if (data_mem[0] === {DATA_WIDTH{1'bx}}) begin
            $display("#%1d loading rand.txt failed",$time);
            $display("############################################");
            $finish;
         end
         //读文件成功
         else begin
            $display("#%1d loading rand.txt succeed",$time);
            $display("############################################");
            //$finish;
         end
         //触发write_data事件
         #7 -> write_data;
    end    
    
    //给data_in一个一个赋值
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
            if(i == MEM_DEPTH-1)begin       //65个数传完
                
                $display("#%1d wrote over!",$time);
                $display("############################################");
                //触发caculate模块
                #10 -> caculate;
            end
        end
    end
    
    //接收计算结果
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
        if(j == 128)begin        //全部计算完成
            $display("#%1d caculated over!",$time);
            $display("############################################");
        end
    end
    
endmodule
