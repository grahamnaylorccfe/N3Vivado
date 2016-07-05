// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: AssociationNicola:SysGen:n3_te0722:1.31
// IP Revision: 98385436

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
PS_PL_n3_te0722_0_1 your_instance_name (
  .attenuatoron(attenuatoron),          // input wire [0 : 0] attenuatoron
  .dummy(dummy),                        // input wire [0 : 0] dummy
  .ptt(ptt),                            // input wire [0 : 0] ptt
  .rs232_from_bt(rs232_from_bt),        // input wire [0 : 0] rs232_from_bt
  .rs232rx(rs232rx),                    // input wire [0 : 0] rs232rx
  .sdoa(sdoa),                          // input wire [0 : 0] sdoa
  .sdob(sdob),                          // input wire [0 : 0] sdob
  .std_bt(std_bt),                      // input wire [0 : 0] std_bt
  .touchdown(touchdown),                // input wire [0 : 0] touchdown
  .touchon(touchon),                    // input wire [0 : 0] touchon
  .touchselect(touchselect),            // input wire [0 : 0] touchselect
  .touchup(touchup),                    // input wire [0 : 0] touchup
  .clk(clk),                            // input wire clk
  .rs232datapresent(rs232datapresent),  // output wire rs232datapresent
  .signallevel(signallevel),            // output wire [7 : 0] signallevel
  .adc_cal(adc_cal),                    // output wire [0 : 0] adc_cal
  .adc_gain(adc_gain),                  // output wire [3 : 0] adc_gain
  .conv(conv),                          // output wire [0 : 0] conv
  .classd_hina(classd_hina),            // output wire [0 : 0] classd_hina
  .classd_hinb(classd_hinb),            // output wire [0 : 0] classd_hinb
  .classd_lina(classd_lina),            // output wire [0 : 0] classd_lina
  .classd_linb(classd_linb),            // output wire [0 : 0] classd_linb
  .keepon(keepon),                      // output wire [0 : 0] keepon
  .lcdcontrast(lcdcontrast),            // output wire [0 : 0] lcdcontrast
  .lcdctrl(lcdctrl),                    // output wire [2 : 0] lcdctrl
  .lcddata(lcddata),                    // output wire [7 : 0] lcddata
  .ledb(ledb),                          // output wire [0 : 0] ledb
  .ledg(ledg),                          // output wire [0 : 0] ledg
  .ledr(ledr),                          // output wire [0 : 0] ledr
  .match_z(match_z),                    // output wire [0 : 0] match_z
  .psuclk(psuclk),                      // output wire [0 : 0] psuclk
  .pwmaudio(pwmaudio),                  // output wire [0 : 0] pwmaudio
  .rs232_to_bt(rs232_to_bt),            // output wire [0 : 0] rs232_to_bt
  .rs232tx(rs232tx),                    // output wire [0 : 0] rs232tx
  .rst_bb(rst_bb),                      // output wire [0 : 0] rst_bb
  .sck(sck),                            // output wire [0 : 0] sck
  .sclk_bt(sclk_bt),                    // output wire [0 : 0] sclk_bt
  .sfs_bt(sfs_bt),                      // output wire [0 : 0] sfs_bt
  .srd_bt(srd_bt),                      // output wire [0 : 0] srd_bt
  .strobe(strobe),                      // output wire [0 : 0] strobe
  .tx_low(tx_low)                      // output wire [0 : 0] tx_low
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

