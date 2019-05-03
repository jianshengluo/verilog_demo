@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 9afcef76b7fc41ceb661ea3616bcb510 -m64 --debug typical --relax --mt 2 -L xbip_utils_v3_0_7 -L xbip_pipe_v3_0_3 -L xbip_bram18k_v3_0_3 -L mult_gen_v12_0_12 -L xil_defaultlib -L blk_mem_gen_v8_3_6 -L axi_utils_v2_0_3 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_3 -L xbip_dsp48_multadd_v3_0_3 -L floating_point_v7_1_4 -L c_reg_fd_v12_0_3 -L xbip_addsub_v3_0_3 -L c_addsub_v12_0_10 -L c_mux_bit_v12_0_3 -L c_shift_ram_v12_0_10 -L cmpy_v6_0_12 -L floating_point_v7_0_13 -L xfft_v9_0_12 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot top_tb_behav xil_defaultlib.top_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
