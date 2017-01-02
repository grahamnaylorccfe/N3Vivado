# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg225-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.cache/wt [current_project]
set_property parent.project_path /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/graham/Dropbox/cores
  /home/graham/Dropbox/SysgenOutput/TE0722/ToneDetect
} [current_project]
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i0_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i1_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i2_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i3_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i4_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i5_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i6_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i7_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i8_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i9_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_i0_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_i1_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_i2_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3SysGen/UserPico.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3SysGen/DSPpico.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3SysGen/KeyPadPico.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3SysGen/ToneDetectpico.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/PS_PL.bd
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_processing_system7_0_0/PS_PL_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i0/n3z_tonetest_blk_mem_gen_v8_3_i0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i1/n3z_tonetest_blk_mem_gen_v8_3_i1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i2/n3z_tonetest_blk_mem_gen_v8_3_i2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i3/n3z_tonetest_blk_mem_gen_v8_3_i3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i4/n3z_tonetest_blk_mem_gen_v8_3_i4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i5/n3z_tonetest_blk_mem_gen_v8_3_i5_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i6/n3z_tonetest_blk_mem_gen_v8_3_i6_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i7/n3z_tonetest_blk_mem_gen_v8_3_i7_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i8/n3z_tonetest_blk_mem_gen_v8_3_i8_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_blk_mem_gen_v8_3_i9/n3z_tonetest_blk_mem_gen_v8_3_i9_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_i0/n3z_tonetest_c_addsub_v12_0_i0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_i1/n3z_tonetest_c_addsub_v12_0_i1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_i11/n3z_tonetest_c_addsub_v12_0_i11_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_i12/n3z_tonetest_c_addsub_v12_0_i12_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_i13/n3z_tonetest_c_addsub_v12_0_i13_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_i15/n3z_tonetest_c_addsub_v12_0_i15_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_addsub_v12_0_i16/n3z_tonetest_c_addsub_v12_0_i16_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i0/n3z_tonetest_c_counter_binary_v12_0_i0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i1/n3z_tonetest_c_counter_binary_v12_0_i1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i10/n3z_tonetest_c_counter_binary_v12_0_i10_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i11/n3z_tonetest_c_counter_binary_v12_0_i11_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i2/n3z_tonetest_c_counter_binary_v12_0_i2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i3/n3z_tonetest_c_counter_binary_v12_0_i3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i4/n3z_tonetest_c_counter_binary_v12_0_i4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i5/n3z_tonetest_c_counter_binary_v12_0_i5_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i6/n3z_tonetest_c_counter_binary_v12_0_i6_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i7/n3z_tonetest_c_counter_binary_v12_0_i7_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i8/n3z_tonetest_c_counter_binary_v12_0_i8_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_c_counter_binary_v12_0_i9/n3z_tonetest_c_counter_binary_v12_0_i9_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_i0/n3z_tonetest_dist_mem_gen_v8_0_i0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_i1/n3z_tonetest_dist_mem_gen_v8_0_i1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_dist_mem_gen_v8_0_i2/n3z_tonetest_dist_mem_gen_v8_0_i2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_fifo_generator_v13_1_i0/n3z_tonetest_fifo_generator_v13_1_i0/n3z_tonetest_fifo_generator_v13_1_i0.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_fifo_generator_v13_1_i0/n3z_tonetest_fifo_generator_v13_1_i0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_fifo_generator_v13_1_i1/n3z_tonetest_fifo_generator_v13_1_i1/n3z_tonetest_fifo_generator_v13_1_i1.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_fifo_generator_v13_1_i1/n3z_tonetest_fifo_generator_v13_1_i1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_i0/n3z_tonetest_mult_gen_v12_0_i0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_i1/n3z_tonetest_mult_gen_v12_0_i1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_i2/n3z_tonetest_mult_gen_v12_0_i2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/n3z_tonetest_mult_gen_v12_0_i3/n3z_tonetest_mult_gen_v12_0_i3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3z_tonetest_0_0/constrs/n3z_tonetest.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_rst_clk_wiz_0_49M_0/PS_PL_rst_clk_wiz_0_49M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_rst_clk_wiz_0_49M_0/PS_PL_rst_clk_wiz_0_49M_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_rst_clk_wiz_0_49M_0/PS_PL_rst_clk_wiz_0_49M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_xbar_1/PS_PL_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_axi_fifo_mm_s_0_0/PS_PL_axi_fifo_mm_s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_axi_fifo_mm_s_1_0/PS_PL_axi_fifo_mm_s_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_blk_mem_gen_0_0/PS_PL_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_UserPicoInstructions_0/PS_PL_UserPicoInstructions_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_DSPPicoInstructions_0/PS_PL_DSPPicoInstructions_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_UserPicoInstructions_1/PS_PL_UserPicoInstructions_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/ip/PS_PL_auto_pc_0/PS_PL_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/PS_PL_ooc.xdc]
set_property is_locked true [get_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/PS_PL.bd]

read_verilog -library xil_defaultlib /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/sources_1/bd/PS_PL/hdl/PS_PL_wrapper.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/constrs_1/imports/VivadoProject/n3_te0722a5_clock.xdc
set_property used_in_implementation false [get_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722TD/N3Z_TD_FIFO/N3Z_TD_FIFO.srcs/constrs_1/imports/VivadoProject/n3_te0722a5_clock.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top PS_PL_wrapper -part xc7z010clg225-1


write_checkpoint -force -noxdef PS_PL_wrapper.dcp

catch { report_utilization -file PS_PL_wrapper_utilization_synth.rpt -pb PS_PL_wrapper_utilization_synth.pb }
