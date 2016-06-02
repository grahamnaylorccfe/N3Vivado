# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7z010clg225-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.cache/wt [current_project]
set_property parent.project_path /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/graham/Dropbox/SysgenOutput/TE0722/ip
  /home/graham/Dropbox/N3workingG/TE0722Rebuild/trenz.biz_user_JTAG_Monitor_1.0
} [current_project]
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_0_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_1_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_2_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_3_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_4_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_5_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_6_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_7_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_8_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_9_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_dist_mem_gen_v8_0_0_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_dist_mem_gen_v8_0_1_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_dist_mem_gen_v8_0_2_vivado.coe
add_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/PS_PL.bd
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_processing_system7_0_0/PS_PL_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_0/n3_te0722_blk_mem_gen_v8_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_1/n3_te0722_blk_mem_gen_v8_2_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_2/n3_te0722_blk_mem_gen_v8_2_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_3/n3_te0722_blk_mem_gen_v8_2_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_4/n3_te0722_blk_mem_gen_v8_2_4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_5/n3_te0722_blk_mem_gen_v8_2_5_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_6/n3_te0722_blk_mem_gen_v8_2_6_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_7/n3_te0722_blk_mem_gen_v8_2_7_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_8/n3_te0722_blk_mem_gen_v8_2_8_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_blk_mem_gen_v8_2_9/n3_te0722_blk_mem_gen_v8_2_9_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_addsub_v12_0_0/n3_te0722_c_addsub_v12_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_addsub_v12_0_1/n3_te0722_c_addsub_v12_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_addsub_v12_0_11/n3_te0722_c_addsub_v12_0_11_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_addsub_v12_0_12/n3_te0722_c_addsub_v12_0_12_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_addsub_v12_0_13/n3_te0722_c_addsub_v12_0_13_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_addsub_v12_0_15/n3_te0722_c_addsub_v12_0_15_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_addsub_v12_0_16/n3_te0722_c_addsub_v12_0_16_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_0/n3_te0722_c_counter_binary_v12_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_1/n3_te0722_c_counter_binary_v12_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_10/n3_te0722_c_counter_binary_v12_0_10_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_2/n3_te0722_c_counter_binary_v12_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_3/n3_te0722_c_counter_binary_v12_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_4/n3_te0722_c_counter_binary_v12_0_4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_5/n3_te0722_c_counter_binary_v12_0_5_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_6/n3_te0722_c_counter_binary_v12_0_6_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_7/n3_te0722_c_counter_binary_v12_0_7_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_8/n3_te0722_c_counter_binary_v12_0_8_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_c_counter_binary_v12_0_9/n3_te0722_c_counter_binary_v12_0_9_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_dist_mem_gen_v8_0_0/n3_te0722_dist_mem_gen_v8_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_dist_mem_gen_v8_0_1/n3_te0722_dist_mem_gen_v8_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_dist_mem_gen_v8_0_2/n3_te0722_dist_mem_gen_v8_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_fifo_generator_v12_0_0/n3_te0722_fifo_generator_v12_0_0/n3_te0722_fifo_generator_v12_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_fifo_generator_v12_0_0/n3_te0722_fifo_generator_v12_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_mult_gen_v12_0_0/n3_te0722_mult_gen_v12_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_mult_gen_v12_0_1/n3_te0722_mult_gen_v12_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_n3_te0722_0_1/n3_te0722_mult_gen_v12_0_2/n3_te0722_mult_gen_v12_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/ipshared/AssociationNicola/n3_te0722_v1_29/1a8f9962/constrs/n3_te0722_clock.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/ipshared/AssociationNicola/n3_te0722_v1_29/1a8f9962/constrs/n3_te0722.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/PS_PL_ooc.xdc]
set_property is_locked true [get_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/PS_PL.bd]

read_verilog -library xil_defaultlib /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/hdl/PS_PL_wrapper.v
read_xdc /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/constrs_1/imports/VivadoProject/n3_te0722a5_clock.xdc
set_property used_in_implementation false [get_files /home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/constrs_1/imports/VivadoProject/n3_te0722a5_clock.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file PS_PL_wrapper.hwdef }
synth_design -top PS_PL_wrapper -part xc7z010clg225-1
write_checkpoint -noxdef PS_PL_wrapper.dcp
catch { report_utilization -file PS_PL_wrapper_utilization_synth.rpt -pb PS_PL_wrapper_utilization_synth.pb }
