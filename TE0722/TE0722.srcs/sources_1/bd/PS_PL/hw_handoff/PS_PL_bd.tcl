
################################################################
# This is a generated script based on design: PS_PL
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source PS_PL_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z010clg225-1


# CHANGE DESIGN NAME HERE
set design_name PS_PL

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set adc_cal [ create_bd_port -dir O -from 0 -to 0 -type data adc_cal ]
  set adc_gain [ create_bd_port -dir O -from 3 -to 0 -type data adc_gain ]
  set classd_hina [ create_bd_port -dir O -from 0 -to 0 -type data classd_hina ]
  set classd_hinb [ create_bd_port -dir O -from 0 -to 0 -type data classd_hinb ]
  set classd_lina [ create_bd_port -dir O -from 0 -to 0 -type data classd_lina ]
  set classd_linb [ create_bd_port -dir O -from 0 -to 0 -type data classd_linb ]
  set conv [ create_bd_port -dir O -from 0 -to 0 -type data conv ]
  set keepon [ create_bd_port -dir O -from 0 -to 0 -type data keepon ]
  set lcdcontrast [ create_bd_port -dir O -from 0 -to 0 -type data lcdcontrast ]
  set lcdctrl [ create_bd_port -dir O -from 2 -to 0 -type data lcdctrl ]
  set lcddata [ create_bd_port -dir O -from 7 -to 0 -type data lcddata ]
  set ledb [ create_bd_port -dir O -from 0 -to 0 -type data ledb ]
  set ledg [ create_bd_port -dir O -from 0 -to 0 -type data ledg ]
  set ledr [ create_bd_port -dir O -from 0 -to 0 -type data ledr ]
  set match_z [ create_bd_port -dir O -from 0 -to 0 -type data match_z ]
  set psuclk [ create_bd_port -dir O -from 0 -to 0 -type data psuclk ]
  set ptt [ create_bd_port -dir I -from 0 -to 0 -type data ptt ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $ptt
  set pwmaudio [ create_bd_port -dir O -from 0 -to 0 -type data pwmaudio ]
  set rs232_from_bt [ create_bd_port -dir I -from 0 -to 0 -type data rs232_from_bt ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $rs232_from_bt
  set rs232_to_bt [ create_bd_port -dir O -from 0 -to 0 -type data rs232_to_bt ]
  set rs232rx [ create_bd_port -dir I -from 0 -to 0 -type data rs232rx ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $rs232rx
  set rs232tx [ create_bd_port -dir O -from 0 -to 0 -type data rs232tx ]
  set rst_bb [ create_bd_port -dir O -from 0 -to 0 -type data rst_bb ]
  set sck [ create_bd_port -dir O -from 0 -to 0 -type data sck ]
  set sclk_bt [ create_bd_port -dir O -from 0 -to 0 -type data sclk_bt ]
  set sdoa [ create_bd_port -dir I -from 0 -to 0 -type data sdoa ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $sdoa
  set sdob [ create_bd_port -dir I -from 0 -to 0 -type data sdob ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $sdob
  set sfs_bt [ create_bd_port -dir O -from 0 -to 0 -type data sfs_bt ]
  set srd_bt [ create_bd_port -dir O -from 0 -to 0 -type data srd_bt ]
  set std_bt [ create_bd_port -dir I -from 0 -to 0 -type data std_bt ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $std_bt
  set touchdown [ create_bd_port -dir I -from 0 -to 0 -type data touchdown ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $touchdown
  set touchon [ create_bd_port -dir I -from 0 -to 0 -type data touchon ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $touchon
  set touchselect [ create_bd_port -dir I -from 0 -to 0 -type data touchselect ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $touchselect
  set touchup [ create_bd_port -dir I -from 0 -to 0 -type data touchup ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $touchup
  set tx_low [ create_bd_port -dir O -from 0 -to 0 -type data tx_low ]
  set unused_input1 [ create_bd_port -dir I -from 0 -to 0 -type data unused_input1 ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $unused_input1
  set unused_input2 [ create_bd_port -dir I -from 0 -to 0 -type data unused_input2 ]
  set_property -dict [ list CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}  ] $unused_input2

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.1 clk_wiz_0 ]
  set_property -dict [ list CONFIG.CLKIN1_JITTER_PS {200.0} CONFIG.CLKOUT1_JITTER {177.254} CONFIG.CLKOUT1_PHASE_ERROR {162.020} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {49.152} CONFIG.PRIM_IN_FREQ {50} CONFIG.RESET_TYPE {ACTIVE_LOW}  ] $clk_wiz_0

  # Create instance: n3_te0722_0, and set properties
  set n3_te0722_0 [ create_bd_cell -type ip -vlnv AssociationNicola:SysGen:n3_te0722:1.31 n3_te0722_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} CONFIG.PCW_UART1_PERIPHERAL_ENABLE {0} CONFIG.PCW_UIPARAM_DDR_ENABLE {0} CONFIG.PCW_USE_M_AXI_GP0 {0}  ] $processing_system7_0

  # Create port connections
  connect_bd_net -net attenuatoron_1 [get_bd_ports unused_input1] [get_bd_pins n3_te0722_0/attenuatoron]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins n3_te0722_0/clk]
  connect_bd_net -net dummy_1 [get_bd_ports unused_input2] [get_bd_pins n3_te0722_0/dummy]
  connect_bd_net -net n3_te0722_0_adc_cal [get_bd_ports adc_cal] [get_bd_pins n3_te0722_0/adc_cal]
  connect_bd_net -net n3_te0722_0_adc_gain [get_bd_ports adc_gain] [get_bd_pins n3_te0722_0/adc_gain]
  connect_bd_net -net n3_te0722_0_classd_hina [get_bd_ports classd_hina] [get_bd_pins n3_te0722_0/classd_hina]
  connect_bd_net -net n3_te0722_0_classd_hinb [get_bd_ports classd_hinb] [get_bd_pins n3_te0722_0/classd_hinb]
  connect_bd_net -net n3_te0722_0_classd_lina [get_bd_ports classd_lina] [get_bd_pins n3_te0722_0/classd_lina]
  connect_bd_net -net n3_te0722_0_classd_linb [get_bd_ports classd_linb] [get_bd_pins n3_te0722_0/classd_linb]
  connect_bd_net -net n3_te0722_0_conv [get_bd_ports conv] [get_bd_pins n3_te0722_0/conv]
  connect_bd_net -net n3_te0722_0_keepon [get_bd_ports keepon] [get_bd_pins n3_te0722_0/keepon]
  connect_bd_net -net n3_te0722_0_lcdcontrast [get_bd_ports lcdcontrast] [get_bd_pins n3_te0722_0/lcdcontrast]
  connect_bd_net -net n3_te0722_0_lcdctrl [get_bd_ports lcdctrl] [get_bd_pins n3_te0722_0/lcdctrl]
  connect_bd_net -net n3_te0722_0_lcddata [get_bd_ports lcddata] [get_bd_pins n3_te0722_0/lcddata]
  connect_bd_net -net n3_te0722_0_ledb [get_bd_ports ledb] [get_bd_pins n3_te0722_0/ledb]
  connect_bd_net -net n3_te0722_0_ledg [get_bd_ports ledg] [get_bd_pins n3_te0722_0/ledg]
  connect_bd_net -net n3_te0722_0_ledr [get_bd_ports ledr] [get_bd_pins n3_te0722_0/ledr]
  connect_bd_net -net n3_te0722_0_match_z [get_bd_ports match_z] [get_bd_pins n3_te0722_0/match_z]
  connect_bd_net -net n3_te0722_0_psuclk [get_bd_ports psuclk] [get_bd_pins n3_te0722_0/psuclk]
  connect_bd_net -net n3_te0722_0_pwmaudio [get_bd_ports pwmaudio] [get_bd_pins n3_te0722_0/pwmaudio]
  connect_bd_net -net n3_te0722_0_rs232_to_bt [get_bd_ports rs232_to_bt] [get_bd_pins n3_te0722_0/rs232_to_bt]
  connect_bd_net -net n3_te0722_0_rs232tx [get_bd_ports rs232tx] [get_bd_pins n3_te0722_0/rs232tx]
  connect_bd_net -net n3_te0722_0_rst_bb [get_bd_ports rst_bb] [get_bd_pins n3_te0722_0/rst_bb]
  connect_bd_net -net n3_te0722_0_sck [get_bd_ports sck] [get_bd_pins n3_te0722_0/sck]
  connect_bd_net -net n3_te0722_0_sclk_bt [get_bd_ports sclk_bt] [get_bd_pins n3_te0722_0/sclk_bt]
  connect_bd_net -net n3_te0722_0_sfs_bt [get_bd_ports sfs_bt] [get_bd_pins n3_te0722_0/sfs_bt]
  connect_bd_net -net n3_te0722_0_srd_bt [get_bd_ports srd_bt] [get_bd_pins n3_te0722_0/srd_bt]
  connect_bd_net -net n3_te0722_0_tx_low [get_bd_ports tx_low] [get_bd_pins n3_te0722_0/tx_low]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK0]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins clk_wiz_0/resetn] [get_bd_pins processing_system7_0/FCLK_RESET0_N]
  connect_bd_net -net ptt_1 [get_bd_ports ptt] [get_bd_pins n3_te0722_0/ptt]
  connect_bd_net -net rs232_from_bt_1 [get_bd_ports rs232_from_bt] [get_bd_pins n3_te0722_0/rs232_from_bt]
  connect_bd_net -net rs232rx_1 [get_bd_ports rs232rx] [get_bd_pins n3_te0722_0/rs232rx]
  connect_bd_net -net sdoa_1 [get_bd_ports sdoa] [get_bd_pins n3_te0722_0/sdoa]
  connect_bd_net -net sdob_1 [get_bd_ports sdob] [get_bd_pins n3_te0722_0/sdob]
  connect_bd_net -net std_bt_1 [get_bd_ports std_bt] [get_bd_pins n3_te0722_0/std_bt]
  connect_bd_net -net touchdown_1 [get_bd_ports touchdown] [get_bd_pins n3_te0722_0/touchdown]
  connect_bd_net -net touchon_1 [get_bd_ports touchon] [get_bd_pins n3_te0722_0/touchon]
  connect_bd_net -net touchselect_1 [get_bd_ports touchselect] [get_bd_pins n3_te0722_0/touchselect]
  connect_bd_net -net touchup_1 [get_bd_ports touchup] [get_bd_pins n3_te0722_0/touchup]

  # Create address segments
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


