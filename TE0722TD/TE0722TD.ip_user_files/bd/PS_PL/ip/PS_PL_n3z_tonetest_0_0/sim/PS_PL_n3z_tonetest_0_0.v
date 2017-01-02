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


// IP VLNV: AssociationNicola:SysGen:n3z_tonetest:1.08
// IP Revision: 106228038

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module PS_PL_n3z_tonetest_0_0 (
  attenuatoron,
  defaultfreq,
  dummy,
  ptt,
  rs232_from_bt,
  rs232rx,
  sdoa,
  sdob,
  std_bt,
  touchdown,
  touchon,
  touchselect,
  touchup,
  clk,
  n3z_tonetest_s_axi_awaddr,
  n3z_tonetest_s_axi_awvalid,
  n3z_tonetest_s_axi_wdata,
  n3z_tonetest_s_axi_wstrb,
  n3z_tonetest_s_axi_wvalid,
  n3z_tonetest_s_axi_bready,
  n3z_tonetest_s_axi_araddr,
  n3z_tonetest_s_axi_arvalid,
  n3z_tonetest_s_axi_rready,
  n3z_tonetest_aresetn,
  signallevel,
  adc_cal,
  adc_gain,
  bram_addr,
  bram_data,
  bram_w,
  conv,
  classd_hina,
  classd_hinb,
  classd_lina,
  classd_linb,
  keepon,
  lcdcontrast,
  lcdctrl,
  lcddata,
  ledb,
  ledg,
  ledr,
  match_z,
  psuclk,
  pwmaudio,
  rs232_to_bt,
  rs232tx,
  rst_bb,
  sck,
  sclk_bt,
  sfs_bt,
  srd_bt,
  strobe,
  tx_low,
  n3z_tonetest_s_axi_awready,
  n3z_tonetest_s_axi_wready,
  n3z_tonetest_s_axi_bresp,
  n3z_tonetest_s_axi_bvalid,
  n3z_tonetest_s_axi_arready,
  n3z_tonetest_s_axi_rdata,
  n3z_tonetest_s_axi_rresp,
  n3z_tonetest_s_axi_rvalid
);

(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 attenuatoron DATA" *)
input wire [0 : 0] attenuatoron;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 defaultfreq DATA" *)
input wire [1 : 0] defaultfreq;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dummy DATA" *)
input wire [0 : 0] dummy;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ptt DATA" *)
input wire [0 : 0] ptt;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rs232_from_bt DATA" *)
input wire [0 : 0] rs232_from_bt;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rs232rx DATA" *)
input wire [0 : 0] rs232rx;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sdoa DATA" *)
input wire [0 : 0] sdoa;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sdob DATA" *)
input wire [0 : 0] sdob;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 std_bt DATA" *)
input wire [0 : 0] std_bt;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 touchdown DATA" *)
input wire [0 : 0] touchdown;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 touchon DATA" *)
input wire [0 : 0] touchon;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 touchselect DATA" *)
input wire [0 : 0] touchselect;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 touchup DATA" *)
input wire [0 : 0] touchup;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi AWADDR" *)
input wire [4 : 0] n3z_tonetest_s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi AWVALID" *)
input wire n3z_tonetest_s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi WDATA" *)
input wire [31 : 0] n3z_tonetest_s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi WSTRB" *)
input wire [3 : 0] n3z_tonetest_s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi WVALID" *)
input wire n3z_tonetest_s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi BREADY" *)
input wire n3z_tonetest_s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi ARADDR" *)
input wire [4 : 0] n3z_tonetest_s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi ARVALID" *)
input wire n3z_tonetest_s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi RREADY" *)
input wire n3z_tonetest_s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 n3z_tonetest_aresetn RST" *)
input wire n3z_tonetest_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 signallevel DATA" *)
output wire [7 : 0] signallevel;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 adc_cal DATA" *)
output wire [0 : 0] adc_cal;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 adc_gain DATA" *)
output wire [3 : 0] adc_gain;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bram_addr DATA" *)
output wire [15 : 0] bram_addr;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bram_signal_data DATA" *)
output wire [15 : 0] bram_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bram_w DATA" *)
output wire [0 : 0] bram_w;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 conv DATA" *)
output wire [0 : 0] conv;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 classd_hina DATA" *)
output wire [0 : 0] classd_hina;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 classd_hinb DATA" *)
output wire [0 : 0] classd_hinb;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 classd_lina DATA" *)
output wire [0 : 0] classd_lina;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 classd_linb DATA" *)
output wire [0 : 0] classd_linb;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 keepon DATA" *)
output wire [0 : 0] keepon;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 lcdcontrast DATA" *)
output wire [0 : 0] lcdcontrast;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 lcdctrl DATA" *)
output wire [2 : 0] lcdctrl;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 lcddata DATA" *)
output wire [7 : 0] lcddata;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ledb DATA" *)
output wire [0 : 0] ledb;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ledg DATA" *)
output wire [0 : 0] ledg;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ledr DATA" *)
output wire [0 : 0] ledr;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 match_z DATA" *)
output wire [0 : 0] match_z;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 psuclk DATA" *)
output wire [0 : 0] psuclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pwmaudio DATA" *)
output wire [0 : 0] pwmaudio;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rs232_to_bt DATA" *)
output wire [0 : 0] rs232_to_bt;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rs232tx DATA" *)
output wire [0 : 0] rs232tx;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rst_bb DATA" *)
output wire [0 : 0] rst_bb;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sck DATA" *)
output wire [0 : 0] sck;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sclk_bt DATA" *)
output wire [0 : 0] sclk_bt;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sfs_bt DATA" *)
output wire [0 : 0] sfs_bt;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 srd_bt DATA" *)
output wire [0 : 0] srd_bt;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 strobe DATA" *)
output wire [0 : 0] strobe;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_low DATA" *)
output wire [0 : 0] tx_low;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi AWREADY" *)
output wire n3z_tonetest_s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi WREADY" *)
output wire n3z_tonetest_s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi BRESP" *)
output wire [1 : 0] n3z_tonetest_s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi BVALID" *)
output wire n3z_tonetest_s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi ARREADY" *)
output wire n3z_tonetest_s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi RDATA" *)
output wire [31 : 0] n3z_tonetest_s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi RRESP" *)
output wire [1 : 0] n3z_tonetest_s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 n3z_tonetest_s_axi RVALID" *)
output wire n3z_tonetest_s_axi_rvalid;

  n3z_tonetest inst (
    .attenuatoron(attenuatoron),
    .defaultfreq(defaultfreq),
    .dummy(dummy),
    .ptt(ptt),
    .rs232_from_bt(rs232_from_bt),
    .rs232rx(rs232rx),
    .sdoa(sdoa),
    .sdob(sdob),
    .std_bt(std_bt),
    .touchdown(touchdown),
    .touchon(touchon),
    .touchselect(touchselect),
    .touchup(touchup),
    .clk(clk),
    .n3z_tonetest_s_axi_awaddr(n3z_tonetest_s_axi_awaddr),
    .n3z_tonetest_s_axi_awvalid(n3z_tonetest_s_axi_awvalid),
    .n3z_tonetest_s_axi_wdata(n3z_tonetest_s_axi_wdata),
    .n3z_tonetest_s_axi_wstrb(n3z_tonetest_s_axi_wstrb),
    .n3z_tonetest_s_axi_wvalid(n3z_tonetest_s_axi_wvalid),
    .n3z_tonetest_s_axi_bready(n3z_tonetest_s_axi_bready),
    .n3z_tonetest_s_axi_araddr(n3z_tonetest_s_axi_araddr),
    .n3z_tonetest_s_axi_arvalid(n3z_tonetest_s_axi_arvalid),
    .n3z_tonetest_s_axi_rready(n3z_tonetest_s_axi_rready),
    .n3z_tonetest_aresetn(n3z_tonetest_aresetn),
    .signallevel(signallevel),
    .adc_cal(adc_cal),
    .adc_gain(adc_gain),
    .bram_addr(bram_addr),
    .bram_data(bram_data),
    .bram_w(bram_w),
    .conv(conv),
    .classd_hina(classd_hina),
    .classd_hinb(classd_hinb),
    .classd_lina(classd_lina),
    .classd_linb(classd_linb),
    .keepon(keepon),
    .lcdcontrast(lcdcontrast),
    .lcdctrl(lcdctrl),
    .lcddata(lcddata),
    .ledb(ledb),
    .ledg(ledg),
    .ledr(ledr),
    .match_z(match_z),
    .psuclk(psuclk),
    .pwmaudio(pwmaudio),
    .rs232_to_bt(rs232_to_bt),
    .rs232tx(rs232tx),
    .rst_bb(rst_bb),
    .sck(sck),
    .sclk_bt(sclk_bt),
    .sfs_bt(sfs_bt),
    .srd_bt(srd_bt),
    .strobe(strobe),
    .tx_low(tx_low),
    .n3z_tonetest_s_axi_awready(n3z_tonetest_s_axi_awready),
    .n3z_tonetest_s_axi_wready(n3z_tonetest_s_axi_wready),
    .n3z_tonetest_s_axi_bresp(n3z_tonetest_s_axi_bresp),
    .n3z_tonetest_s_axi_bvalid(n3z_tonetest_s_axi_bvalid),
    .n3z_tonetest_s_axi_arready(n3z_tonetest_s_axi_arready),
    .n3z_tonetest_s_axi_rdata(n3z_tonetest_s_axi_rdata),
    .n3z_tonetest_s_axi_rresp(n3z_tonetest_s_axi_rresp),
    .n3z_tonetest_s_axi_rvalid(n3z_tonetest_s_axi_rvalid)
  );
endmodule
