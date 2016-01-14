-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: AssociationNicola:SysGen:n3_te0722:1.06
-- IP Revision: 83608845

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.n3_te0722;

ENTITY PS_PL_n3_te0722_0_0 IS
  PORT (
    ptt : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rs232_from_bt : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rs232rx : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    sdoa : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    sdob : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    std_bt : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    touchdown : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    touchon : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    touchselect : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    touchup : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    clk : IN STD_LOGIC;
    rs232datapresent : OUT STD_LOGIC;
    signallevel : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    adc_cal : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    adc_gain : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    attenuatoron : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    conv : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    classd_hina : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    classd_hinb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    classd_lina : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    classd_linb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    keepon : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    lcdcontrast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    lcdctrl : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    lcddata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ledb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ledg : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ledr : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    pwmaudio : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rs232_to_bt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rs232tx : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rst_bb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    sck : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    sclk_bt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    sfs_bt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    srd_bt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    strobe : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    tx_low : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END PS_PL_n3_te0722_0_0;

ARCHITECTURE PS_PL_n3_te0722_0_0_arch OF PS_PL_n3_te0722_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF PS_PL_n3_te0722_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT n3_te0722 IS
    PORT (
      ptt : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      rs232_from_bt : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      rs232rx : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      sdoa : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      sdob : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      std_bt : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      touchdown : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      touchon : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      touchselect : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      touchup : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      clk : IN STD_LOGIC;
      rs232datapresent : OUT STD_LOGIC;
      signallevel : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      adc_cal : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      adc_gain : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      attenuatoron : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      conv : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      classd_hina : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      classd_hinb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      classd_lina : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      classd_linb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      keepon : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      lcdcontrast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      lcdctrl : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      lcddata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ledb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      ledg : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      ledr : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      pwmaudio : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rs232_to_bt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rs232tx : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rst_bb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      sck : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      sclk_bt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      sfs_bt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      srd_bt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      strobe : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      tx_low : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT n3_te0722;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF PS_PL_n3_te0722_0_0_arch: ARCHITECTURE IS "n3_te0722,Vivado 2014.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF PS_PL_n3_te0722_0_0_arch : ARCHITECTURE IS "PS_PL_n3_te0722_0_0,n3_te0722,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ptt: SIGNAL IS "xilinx.com:signal:data:1.0 ptt DATA";
  ATTRIBUTE X_INTERFACE_INFO OF rs232_from_bt: SIGNAL IS "xilinx.com:signal:data:1.0 rs232_from_bt DATA";
  ATTRIBUTE X_INTERFACE_INFO OF rs232rx: SIGNAL IS "xilinx.com:signal:data:1.0 rs232rx DATA";
  ATTRIBUTE X_INTERFACE_INFO OF sdoa: SIGNAL IS "xilinx.com:signal:data:1.0 sdoa DATA";
  ATTRIBUTE X_INTERFACE_INFO OF sdob: SIGNAL IS "xilinx.com:signal:data:1.0 sdob DATA";
  ATTRIBUTE X_INTERFACE_INFO OF std_bt: SIGNAL IS "xilinx.com:signal:data:1.0 std_bt DATA";
  ATTRIBUTE X_INTERFACE_INFO OF touchdown: SIGNAL IS "xilinx.com:signal:data:1.0 touchdown DATA";
  ATTRIBUTE X_INTERFACE_INFO OF touchon: SIGNAL IS "xilinx.com:signal:data:1.0 touchon DATA";
  ATTRIBUTE X_INTERFACE_INFO OF touchselect: SIGNAL IS "xilinx.com:signal:data:1.0 touchselect DATA";
  ATTRIBUTE X_INTERFACE_INFO OF touchup: SIGNAL IS "xilinx.com:signal:data:1.0 touchup DATA";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rs232datapresent: SIGNAL IS "xilinx.com:signal:data:1.0 rs232datapresent DATA";
  ATTRIBUTE X_INTERFACE_INFO OF signallevel: SIGNAL IS "xilinx.com:signal:data:1.0 signallevel DATA";
  ATTRIBUTE X_INTERFACE_INFO OF adc_cal: SIGNAL IS "xilinx.com:signal:data:1.0 adc_cal DATA";
  ATTRIBUTE X_INTERFACE_INFO OF adc_gain: SIGNAL IS "xilinx.com:signal:data:1.0 adc_gain DATA";
  ATTRIBUTE X_INTERFACE_INFO OF attenuatoron: SIGNAL IS "xilinx.com:signal:data:1.0 attenuatoron DATA";
  ATTRIBUTE X_INTERFACE_INFO OF conv: SIGNAL IS "xilinx.com:signal:data:1.0 conv DATA";
  ATTRIBUTE X_INTERFACE_INFO OF classd_hina: SIGNAL IS "xilinx.com:signal:data:1.0 classd_hina DATA";
  ATTRIBUTE X_INTERFACE_INFO OF classd_hinb: SIGNAL IS "xilinx.com:signal:data:1.0 classd_hinb DATA";
  ATTRIBUTE X_INTERFACE_INFO OF classd_lina: SIGNAL IS "xilinx.com:signal:data:1.0 classd_lina DATA";
  ATTRIBUTE X_INTERFACE_INFO OF classd_linb: SIGNAL IS "xilinx.com:signal:data:1.0 classd_linb DATA";
  ATTRIBUTE X_INTERFACE_INFO OF keepon: SIGNAL IS "xilinx.com:signal:data:1.0 keepon DATA";
  ATTRIBUTE X_INTERFACE_INFO OF lcdcontrast: SIGNAL IS "xilinx.com:signal:data:1.0 lcdcontrast DATA";
  ATTRIBUTE X_INTERFACE_INFO OF lcdctrl: SIGNAL IS "xilinx.com:signal:data:1.0 lcdctrl DATA";
  ATTRIBUTE X_INTERFACE_INFO OF lcddata: SIGNAL IS "xilinx.com:signal:data:1.0 lcddata DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ledb: SIGNAL IS "xilinx.com:signal:data:1.0 ledb DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ledg: SIGNAL IS "xilinx.com:signal:data:1.0 ledg DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ledr: SIGNAL IS "xilinx.com:signal:data:1.0 ledr DATA";
  ATTRIBUTE X_INTERFACE_INFO OF pwmaudio: SIGNAL IS "xilinx.com:signal:data:1.0 pwmaudio DATA";
  ATTRIBUTE X_INTERFACE_INFO OF rs232_to_bt: SIGNAL IS "xilinx.com:signal:data:1.0 rs232_to_bt DATA";
  ATTRIBUTE X_INTERFACE_INFO OF rs232tx: SIGNAL IS "xilinx.com:signal:data:1.0 rs232tx DATA";
  ATTRIBUTE X_INTERFACE_INFO OF rst_bb: SIGNAL IS "xilinx.com:signal:data:1.0 rst_bb DATA";
  ATTRIBUTE X_INTERFACE_INFO OF sck: SIGNAL IS "xilinx.com:signal:data:1.0 sck DATA";
  ATTRIBUTE X_INTERFACE_INFO OF sclk_bt: SIGNAL IS "xilinx.com:signal:data:1.0 sclk_bt DATA";
  ATTRIBUTE X_INTERFACE_INFO OF sfs_bt: SIGNAL IS "xilinx.com:signal:data:1.0 sfs_bt DATA";
  ATTRIBUTE X_INTERFACE_INFO OF srd_bt: SIGNAL IS "xilinx.com:signal:data:1.0 srd_bt DATA";
  ATTRIBUTE X_INTERFACE_INFO OF strobe: SIGNAL IS "xilinx.com:signal:data:1.0 strobe DATA";
  ATTRIBUTE X_INTERFACE_INFO OF tx_low: SIGNAL IS "xilinx.com:signal:data:1.0 tx_low DATA";
BEGIN
  U0 : n3_te0722
    PORT MAP (
      ptt => ptt,
      rs232_from_bt => rs232_from_bt,
      rs232rx => rs232rx,
      sdoa => sdoa,
      sdob => sdob,
      std_bt => std_bt,
      touchdown => touchdown,
      touchon => touchon,
      touchselect => touchselect,
      touchup => touchup,
      clk => clk,
      rs232datapresent => rs232datapresent,
      signallevel => signallevel,
      adc_cal => adc_cal,
      adc_gain => adc_gain,
      attenuatoron => attenuatoron,
      conv => conv,
      classd_hina => classd_hina,
      classd_hinb => classd_hinb,
      classd_lina => classd_lina,
      classd_linb => classd_linb,
      keepon => keepon,
      lcdcontrast => lcdcontrast,
      lcdctrl => lcdctrl,
      lcddata => lcddata,
      ledb => ledb,
      ledg => ledg,
      ledr => ledr,
      pwmaudio => pwmaudio,
      rs232_to_bt => rs232_to_bt,
      rs232tx => rs232tx,
      rst_bb => rst_bb,
      sck => sck,
      sclk_bt => sclk_bt,
      sfs_bt => sfs_bt,
      srd_bt => srd_bt,
      strobe => strobe,
      tx_low => tx_low
    );
END PS_PL_n3_te0722_0_0_arch;
