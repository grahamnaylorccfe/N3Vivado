set_property SRC_FILE_INFO {cfile:/home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_processing_system7_0_0/PS_PL_processing_system7_0_0.xdc rfile:../../../TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_processing_system7_0_0/PS_PL_processing_system7_0_0.xdc id:1 order:EARLY scoped_inst:PS_PL_i/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/graham/Dropbox/N3workingG/TE0722Rebuild/N3Vivado/TE0722/TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1.xdc rfile:../../../TE0722.srcs/sources_1/bd/PS_PL/ip/PS_PL_clk_wiz_0_1/PS_PL_clk_wiz_0_1.xdc id:2 order:EARLY scoped_inst:PS_PL_i/clk_wiz_0/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.6
set_property src_info {type:SCOPED_XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.20000000000000001
