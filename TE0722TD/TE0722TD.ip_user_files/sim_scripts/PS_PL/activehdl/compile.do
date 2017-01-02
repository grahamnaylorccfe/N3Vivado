vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/processing_system7_bfm_v2_0_5
vlib activehdl/blk_mem_gen_v8_3_3
vlib activehdl/xbip_utils_v3_0_6
vlib activehdl/c_reg_fd_v12_0_2
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_pipe_v3_0_2
vlib activehdl/xbip_dsp48_addsub_v3_0_2
vlib activehdl/xbip_addsub_v3_0_2
vlib activehdl/c_addsub_v12_0_9
vlib activehdl/c_gate_bit_v12_0_2
vlib activehdl/xbip_counter_v3_0_2
vlib activehdl/c_counter_binary_v12_0_9
vlib activehdl/dist_mem_gen_v8_0_10
vlib activehdl/fifo_generator_v13_1_1
vlib activehdl/xbip_bram18k_v3_0_2
vlib activehdl/mult_gen_v12_0_11
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_9
vlib activehdl/axi_bram_ctrl_v4_0_8
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_9
vlib activehdl/axi_data_fifo_v2_1_8
vlib activehdl/axi_crossbar_v2_1_10
vlib activehdl/axi_protocol_converter_v2_1_9

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap processing_system7_bfm_v2_0_5 activehdl/processing_system7_bfm_v2_0_5
vmap blk_mem_gen_v8_3_3 activehdl/blk_mem_gen_v8_3_3
vmap xbip_utils_v3_0_6 activehdl/xbip_utils_v3_0_6
vmap c_reg_fd_v12_0_2 activehdl/c_reg_fd_v12_0_2
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_2 activehdl/xbip_pipe_v3_0_2
vmap xbip_dsp48_addsub_v3_0_2 activehdl/xbip_dsp48_addsub_v3_0_2
vmap xbip_addsub_v3_0_2 activehdl/xbip_addsub_v3_0_2
vmap c_addsub_v12_0_9 activehdl/c_addsub_v12_0_9
vmap c_gate_bit_v12_0_2 activehdl/c_gate_bit_v12_0_2
vmap xbip_counter_v3_0_2 activehdl/xbip_counter_v3_0_2
vmap c_counter_binary_v12_0_9 activehdl/c_counter_binary_v12_0_9
vmap dist_mem_gen_v8_0_10 activehdl/dist_mem_gen_v8_0_10
vmap fifo_generator_v13_1_1 activehdl/fifo_generator_v13_1_1
vmap xbip_bram18k_v3_0_2 activehdl/xbip_bram18k_v3_0_2
vmap mult_gen_v12_0_11 activehdl/mult_gen_v12_0_11
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 activehdl/proc_sys_reset_v5_0_9
vmap axi_bram_ctrl_v4_0_8 activehdl/axi_bram_ctrl_v4_0_8
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_9 activehdl/axi_register_slice_v2_1_9
vmap axi_data_fifo_v2_1_8 activehdl/axi_data_fifo_v2_1_8
vmap axi_crossbar_v2_1_10 activehdl/axi_crossbar_v2_1_10
vmap axi_protocol_converter_v2_1_9 activehdl/axi_protocol_converter_v2_1_9

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"/opt/Xilinx16/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/PS_PL/ip/PS_PL_processing_system7_0_0/sim/PS_PL_processing_system7_0_0.v" \
"../../../bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1.v" \
"../../../bd/PS_PL/ipshared/xilinx.com/xlconstant_v1_1/xlconstant.v" \
"../../../bd/PS_PL/ip/PS_PL_xlconstant_0_0/sim/PS_PL_xlconstant_0_0.v" \

vlog -work blk_mem_gen_v8_3_3 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_0/blk_mem_gen_v8_3_3/simulation/blk_mem_gen_v8_3.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_0/sim/n3z_tonetest_blk_mem_gen_v8_2_0.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_1/sim/n3z_tonetest_blk_mem_gen_v8_2_1.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_10/sim/n3z_tonetest_blk_mem_gen_v8_2_10.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_11/sim/n3z_tonetest_blk_mem_gen_v8_2_11.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_2/sim/n3z_tonetest_blk_mem_gen_v8_2_2.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_3/sim/n3z_tonetest_blk_mem_gen_v8_2_3.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_4/sim/n3z_tonetest_blk_mem_gen_v8_2_4.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_5/sim/n3z_tonetest_blk_mem_gen_v8_2_5.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_6/sim/n3z_tonetest_blk_mem_gen_v8_2_6.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_7/sim/n3z_tonetest_blk_mem_gen_v8_2_7.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_8/sim/n3z_tonetest_blk_mem_gen_v8_2_8.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_2_9/sim/n3z_tonetest_blk_mem_gen_v8_2_9.v" \

vcom -work xbip_utils_v3_0_6 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/xbip_utils_v3_0_6/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_2 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/c_reg_fd_v12_0_2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/c_reg_fd_v12_0_2/hdl/c_reg_fd_v12_0.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/xbip_dsp48_wrapper_v3_0_4/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_2 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/xbip_pipe_v3_0_2/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/xbip_pipe_v3_0_2/hdl/xbip_pipe_v3_0.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_2 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/xbip_dsp48_addsub_v3_0_2/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/xbip_dsp48_addsub_v3_0_2/hdl/xbip_dsp48_addsub_v3_0.vhd" \

vcom -work xbip_addsub_v3_0_2 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/xbip_addsub_v3_0_2/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/xbip_addsub_v3_0_2/hdl/xbip_addsub_v3_0.vhd" \

vcom -work c_addsub_v12_0_9 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/c_addsub_v12_0_9/hdl/c_addsub_v12_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/c_addsub_v12_0_9/hdl/c_addsub_v12_0.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_0/sim/n3z_tonetest_c_addsub_v12_0_0.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_1/sim/n3z_tonetest_c_addsub_v12_0_1.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_10/sim/n3z_tonetest_c_addsub_v12_0_10.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_11/sim/n3z_tonetest_c_addsub_v12_0_11.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_12/sim/n3z_tonetest_c_addsub_v12_0_12.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_13/sim/n3z_tonetest_c_addsub_v12_0_13.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_14/sim/n3z_tonetest_c_addsub_v12_0_14.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_15/sim/n3z_tonetest_c_addsub_v12_0_15.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_16/sim/n3z_tonetest_c_addsub_v12_0_16.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_17/sim/n3z_tonetest_c_addsub_v12_0_17.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_18/sim/n3z_tonetest_c_addsub_v12_0_18.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_2/sim/n3z_tonetest_c_addsub_v12_0_2.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_3/sim/n3z_tonetest_c_addsub_v12_0_3.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_4/sim/n3z_tonetest_c_addsub_v12_0_4.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_5/sim/n3z_tonetest_c_addsub_v12_0_5.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_6/sim/n3z_tonetest_c_addsub_v12_0_6.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_7/sim/n3z_tonetest_c_addsub_v12_0_7.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_8/sim/n3z_tonetest_c_addsub_v12_0_8.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_9/sim/n3z_tonetest_c_addsub_v12_0_9.vhd" \

vcom -work c_gate_bit_v12_0_2 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_0/c_gate_bit_v12_0_2/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_0/c_gate_bit_v12_0_2/hdl/c_gate_bit_v12_0.vhd" \

vcom -work xbip_counter_v3_0_2 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_0/xbip_counter_v3_0_2/hdl/xbip_counter_v3_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_0/xbip_counter_v3_0_2/hdl/xbip_counter_v3_0.vhd" \

vcom -work c_counter_binary_v12_0_9 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_0/c_counter_binary_v12_0_9/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_0/c_counter_binary_v12_0_9/hdl/c_counter_binary_v12_0.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_0/sim/n3z_tonetest_c_counter_binary_v12_0_0.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_1/sim/n3z_tonetest_c_counter_binary_v12_0_1.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_10/sim/n3z_tonetest_c_counter_binary_v12_0_10.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_2/sim/n3z_tonetest_c_counter_binary_v12_0_2.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_3/sim/n3z_tonetest_c_counter_binary_v12_0_3.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_4/sim/n3z_tonetest_c_counter_binary_v12_0_4.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_5/sim/n3z_tonetest_c_counter_binary_v12_0_5.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_6/sim/n3z_tonetest_c_counter_binary_v12_0_6.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_7/sim/n3z_tonetest_c_counter_binary_v12_0_7.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_8/sim/n3z_tonetest_c_counter_binary_v12_0_8.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_9/sim/n3z_tonetest_c_counter_binary_v12_0_9.vhd" \

vlog -work dist_mem_gen_v8_0_10 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_0/dist_mem_gen_v8_0_10/simulation/dist_mem_gen_v8_0.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_0/sim/n3z_tonetest_dist_mem_gen_v8_0_0.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_1/sim/n3z_tonetest_dist_mem_gen_v8_0_1.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_2/sim/n3z_tonetest_dist_mem_gen_v8_0_2.v" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_fifo_generator_v12_0_0/fifo_generator_v13_1_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_fifo_generator_v12_0_0/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_fifo_generator_v12_0_0/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_fifo_generator_v12_0_0/sim/n3z_tonetest_fifo_generator_v12_0_0.v" \

vcom -work xbip_bram18k_v3_0_2 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_0/xbip_bram18k_v3_0_2/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_0/xbip_bram18k_v3_0_2/hdl/xbip_bram18k_v3_0.vhd" \

vcom -work mult_gen_v12_0_11 -93 \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_0/mult_gen_v12_0_11/hdl/mult_gen_v12_0_vh_rfs.vhd" \
"../../../../TE0722TD.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_0/mult_gen_v12_0_11/hdl/mult_gen_v12_0.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_0/sim/n3z_tonetest_mult_gen_v12_0_0.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_1/sim/n3z_tonetest_mult_gen_v12_0_1.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_2/sim/n3z_tonetest_mult_gen_v12_0_2.vhd" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_3/sim/n3z_tonetest_mult_gen_v12_0_3.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/conv_pkg.vhd" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/synth_reg.vhd" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/synth_reg_w_init.vhd" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/srl17e.vhd" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/synth_reg_reg.vhd" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/single_reg_w_init.vhd" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/xlclockdriver_rd.vhd" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/n3z_tonetest_entity_declarations.vhd" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/n3z_tonetest.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/PS_PL/ipshared/associationnicola/n3z_tonetest_v1_08/hdl/n3z_tonetest_axi_lite_interface_verilog.v" \
"../../../bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/sim/PS_PL_n3z_tonetest_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -93 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/PS_PL/ip/PS_PL_rst_clk_wiz_0_49M_0/sim/PS_PL_rst_clk_wiz_0_49M_0.vhd" \

vcom -work axi_bram_ctrl_v4_0_8 -93 \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl_funcs.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/coregen_comp_defs.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_lite_if.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/checkbit_handler_64.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/correct_one_bit_64.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/ecc_gen.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/lite_ecc_reg.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_lite.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/sng_port_arb.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/ua_narrow.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/wrap_brst.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/rd_chnl.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/wr_chnl.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/full_axi.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl_top.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/PS_PL/ip/PS_PL_axi_bram_ctrl_0_0/sim/PS_PL_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/PS_PL/ip/PS_PL_blk_mem_gen_0_0/sim/PS_PL_blk_mem_gen_0_0.v" \
"../../../bd/PS_PL/ipshared/xilinx.com/xlconcat_v2_1/xlconcat.v" \
"../../../bd/PS_PL/ip/PS_PL_xlconcat_0_0/sim/PS_PL_xlconcat_0_0.v" \
"../../../bd/PS_PL/hdl/PS_PL.v" \
"../../../bd/PS_PL/ip/PS_PL_xlconstant_0_1/sim/PS_PL_xlconstant_0_1.v" \
"../../../bd/PS_PL/ip/PS_PL_xlconstant_1_0/sim/PS_PL_xlconstant_1_0.v" \
"../../../bd/PS_PL/ip/PS_PL_xlconstant_2_0/sim/PS_PL_xlconstant_2_0.v" \
"../../../bd/PS_PL/ip/PS_PL_DefaultFrequency_0/sim/PS_PL_DefaultFrequency_0.v" \

vlog -work generic_baseblocks_v2_1_0 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_9 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work axi_data_fifo_v2_1_8 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_10 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/PS_PL/ip/PS_PL_xbar_1/sim/PS_PL_xbar_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/PS_PL/ip/PS_PL_c_counter_binary_0_1/sim/PS_PL_c_counter_binary_0_1.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/PS_PL/ipshared/xilinx.com/xlslice_v1_0/xlslice.v" \
"../../../bd/PS_PL/ip/PS_PL_xlslice_0_0/sim/PS_PL_xlslice_0_0.v" \
"../../../bd/PS_PL/ip/PS_PL_xlslice_0_1/sim/PS_PL_xlslice_0_1.v" \
"../../../bd/PS_PL/ip/PS_PL_xlslice_0_2/sim/PS_PL_xlslice_0_2.v" \
"../../../bd/PS_PL/ip/PS_PL_s00_data_fifo_0/sim/PS_PL_s00_data_fifo_0.v" \

vlog -work axi_protocol_converter_v2_1_9 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/PS_PL/ip/PS_PL_auto_pc_0/sim/PS_PL_auto_pc_0.v" \
"../../../bd/PS_PL/ip/PS_PL_auto_pc_1/sim/PS_PL_auto_pc_1.v" \

vlog -work xil_defaultlib "glbl.v"

