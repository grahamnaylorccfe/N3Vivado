-- Generated from Simulink block N3Z_tonetest/ADCRead/Subsystem1/SCKgenerator/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x9 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x9;
architecture structural of n3z_tonetest_monostable1_x9 is 
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert1_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ADCRead/Subsystem1/SCKgenerator/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2_x6 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2_x6;
architecture structural of n3z_tonetest_monostable2_x6 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  delay2_q_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay2_q_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ADCRead/Subsystem1/SCKgenerator
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_sckgenerator is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dataready : out std_logic_vector( 1-1 downto 0 );
    sck : out std_logic_vector( 1-1 downto 0 );
    conv : out std_logic_vector( 1-1 downto 0 );
    datavalid : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_sckgenerator;
architecture structural of n3z_tonetest_sckgenerator is 
  signal constant1_op_net : std_logic_vector( 5-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dataready <= logical_y_net;
  sck <= convert2_dout_net;
  conv <= register3_q_net;
  datavalid <= relational_op_net;
  convert1_dout_net <= trig;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x9 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2_x6 
  port map (
    in1 => delay2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_a9615b3741 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net_x0
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_limit 
  generic map (
    cnt_15_0 => 63,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_5",
    count_limited => 0,
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    clr => '0',
    rst => register3_q_net,
    en => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter1 : entity xil_defaultlib.sysgen_counter_d6d8543bb8 
  port map (
    clr => '0',
    rst => logical_y_net_x0,
    en => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  delay2 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  register3 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant_op_net,
    rst => logical_y_net_x0,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_ef59dabc43 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 1,
    y_width => 1
  )
  port map (
    x => counter1_op_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 6,
    y_width => 1
  )
  port map (
    x => counter_op_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ADCRead/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x5 is
  port (
    sdoa : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    sdob : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    adcvaluea : out std_logic_vector( 16-1 downto 0 );
    conv : out std_logic_vector( 1-1 downto 0 );
    sck : out std_logic_vector( 1-1 downto 0 );
    dataready : out std_logic_vector( 1-1 downto 0 );
    adcvalueb : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x5;
architecture structural of n3z_tonetest_subsystem1_x5 is 
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal sdoa_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal sdob_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 15-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 15-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
begin
  adcvaluea <= register1_q_net;
  conv <= delay3_q_net;
  sck <= delay4_q_net;
  dataready <= delay1_q_net;
  adcvalueb <= register3_q_net;
  sdoa_net <= sdoa;
  convert1_dout_net <= trig;
  sdob_net <= sdob;
  clk_net <= clk_1;
  ce_net <= ce_1;
  sckgenerator : entity xil_defaultlib.n3z_tonetest_sckgenerator 
  port map (
    trig => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dataready => logical_y_net_x0,
    sck => convert2_dout_net,
    conv => register3_q_net_x0,
    datavalid => relational_op_net
  );
  concat : entity xil_defaultlib.sysgen_concat_73376b6c30 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice_y_net,
    in1 => sdoa_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_73376b6c30 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice1_y_net,
    in1 => sdob_net,
    y => concat1_y_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay3 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => register3_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay4_q_net,
    d1 => relational_op_net,
    y => logical_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    d => concat_y_net,
    rst => convert_dout_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => concat_y_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    d => concat1_y_net,
    rst => convert_dout_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => concat1_y_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 16,
    y_width => 15
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 16,
    y_width => 15
  )
  port map (
    x => register2_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ADCRead
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_adcread is
  port (
    sdoa : in std_logic_vector( 1-1 downto 0 );
    sdob : in std_logic_vector( 1-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    sck : out std_logic_vector( 1-1 downto 0 );
    conv : out std_logic_vector( 1-1 downto 0 );
    adc_data_a : out std_logic_vector( 16-1 downto 0 );
    data_ready : out std_logic_vector( 1-1 downto 0 );
    adc_data_b : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_adcread;
architecture structural of n3z_tonetest_adcread is 
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 16-1 downto 0 );
  signal sdoa_net : std_logic_vector( 1-1 downto 0 );
  signal sdob_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  sck <= delay4_q_net;
  conv <= delay3_q_net;
  adc_data_a <= register1_q_net;
  data_ready <= delay1_q_net;
  adc_data_b <= register3_q_net;
  sdoa_net <= sdoa;
  sdob_net <= sdob;
  convert1_dout_net <= trig;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x5 
  port map (
    sdoa => sdoa_net,
    trig => convert1_dout_net,
    sdob => sdob_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    adcvaluea => register1_q_net,
    conv => delay3_q_net,
    sck => delay4_q_net,
    dataready => delay1_q_net,
    adcvalueb => register3_q_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ADCtrigger/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x10 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x10;
architecture structural of n3z_tonetest_monostable1_x10 is 
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out1 <= logical_y_net;
  slice2_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ADCtrigger
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_adctrigger is
  port (
    audiovolume : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    trig512 : out std_logic_vector( 1-1 downto 0 );
    dim : out std_logic_vector( 1-1 downto 0 );
    clk1mhz : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_adctrigger;
architecture structural of n3z_tonetest_adctrigger is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal audiovolume_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 24-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 20-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 6-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 9-1 downto 0 );
begin
  trig512 <= logical_y_net;
  dim <= relational_op_net;
  clk1mhz <= relational1_op_net;
  audiovolume_net <= audiovolume;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x10 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_7ce6ed9657 
  port map (
    clr => '0',
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_ade4088759 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_173715c57c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_eb56806bdd 
  port map (
    clr => '0',
    a => constant2_op_net,
    b => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_90fd6f9dd3 
  port map (
    clr => '0',
    a => slice4_y_net,
    b => audiovolume_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 23,
    x_width => 24,
    y_width => 6
  )
  port map (
    x => accumulator1_q_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 23,
    new_msb => 23,
    x_width => 24,
    y_width => 1
  )
  port map (
    x => accumulator1_q_net,
    y => slice2_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 14,
    new_msb => 22,
    x_width => 24,
    y_width => 9
  )
  port map (
    x => accumulator1_q_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/Buffer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_buffer_x1 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    user2btfifofull : out std_logic
  );
end n3z_tonetest_buffer_x1;
architecture structural of n3z_tonetest_buffer_x1 is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal fifo_empty_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 7-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_percent_full_net : std_logic_vector( 1-1 downto 0 );
begin
  cmdout <= concat_y_net;
  register1_q_net <= cmd;
  logical_y_net_x0 <= newcmd;
  logical_y_net <= ackfifo;
  user2btfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_e89a3b98d5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  fifo : entity xil_defaultlib.n3z_tonetest_xlfifogen 
  generic map (
    core_name0 => "n3z_tonetest_fifo_generator_v12_0_0",
    data_count_width => 4,
    data_width => 8,
    extra_registers => 0,
    has_ae => 0,
    has_af => 0,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '1',
    din => register1_q_net,
    we => delay_q_net(0),
    re => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net(0),
    percent_full => fifo_percent_full_net,
    full => fifo_full_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 6,
    x_width => 8,
    y_width => 7
  )
  port map (
    x => fifo_dout_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x8 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x8;
architecture structural of n3z_tonetest_monostable_x8 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational2_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational2_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x8 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x8;
architecture structural of n3z_tonetest_monostable1_x8 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational7_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational7_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational7_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/OutputRegister/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem_x2;
architecture structural of n3z_tonetest_subsystem_x2 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x6 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x6;
architecture structural of n3z_tonetest_subsystem1_x6 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4190c690be 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/OutputRegister/Subsystem12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem12_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem12_x0;
architecture structural of n3z_tonetest_subsystem12_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  ack_fifo <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_8f1ac0bb1b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem2_x3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem2_x3;
architecture structural of n3z_tonetest_subsystem2_x3 is 
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_a218a1253f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem3_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    latcheddata1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem3_x2;
architecture structural of n3z_tonetest_subsystem3_x2 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  latcheddata1 <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_1a4e0cfb40 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem4_x3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem4_x3;
architecture structural of n3z_tonetest_subsystem4_x3 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_845cff379f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/OutputRegister/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem7_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem7_x1;
architecture structural of n3z_tonetest_subsystem7_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_731ac842ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_outputregister_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data2archive : out std_logic_vector( 16-1 downto 0 );
    data2archive_w : out std_logic_vector( 1-1 downto 0 );
    serialtx : out std_logic_vector( 8-1 downto 0 );
    tx_w : out std_logic_vector( 1-1 downto 0 );
    cmd2user : out std_logic_vector( 8-1 downto 0 );
    ramadd : out std_logic_vector( 10-1 downto 0 );
    newcmd : out std_logic_vector( 1-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 );
    rst_bt : out std_logic_vector( 1-1 downto 0 );
    writeram : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_outputregister_x2;
architecture structural of n3z_tonetest_outputregister_x2 is 
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 10-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 2-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
begin
  data2archive <= concat3_y_net;
  data2archive_w <= logical_y_net_x3;
  serialtx <= register1_q_net_x0;
  tx_w <= logical_y_net;
  cmd2user <= register1_q_net_x2;
  ramadd <= concat2_y_net;
  newcmd <= logical_y_net_x1;
  ack_fifo <= logical_y_net_x4;
  rst_bt <= slice1_y_net;
  writeram <= convert1_dout_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.n3z_tonetest_subsystem_x2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x5
  );
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x6 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x4,
    strobe => logical_y_net_x3
  );
  subsystem12_x0 : entity xil_defaultlib.n3z_tonetest_subsystem12_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x3,
    ack_fifo => logical_y_net_x2
  );
  subsystem2 : entity xil_defaultlib.n3z_tonetest_subsystem2_x3 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x2,
    strobe => logical_y_net_x1
  );
  subsystem3 : entity xil_defaultlib.n3z_tonetest_subsystem3_x2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x1,
    latcheddata1 => logical_y_net_x0
  );
  subsystem4 : entity xil_defaultlib.n3z_tonetest_subsystem4_x3 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x6
  );
  subsystem7 : entity xil_defaultlib.n3z_tonetest_subsystem7_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x0,
    strobe => logical_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_69beafd7ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => register1_q_net_x6,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x5,
    in1 => register1_q_net_x4,
    y => concat3_y_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice5_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x2,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x2,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert5_dout_net,
    d1 => delay_q_net,
    y => logical_y_net_x4
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => delay1_q_net,
    y => logical1_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x3,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 8,
    y_width => 2
  )
  port map (
    x => register1_q_net_x1,
    y => slice2_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x3,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x3,
    y => slice5_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x7 is
  port (
    portid : in std_logic_vector( 8-1 downto 0 );
    rs : in std_logic;
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    read_buffer : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x7;
architecture structural of n3z_tonetest_subsystem1_x7 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal assert3_dout_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_read_strobe_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  read_buffer <= logical_y_net;
  assert3_dout_net <= portid;
  picoblaze6_read_strobe_net <= rs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical1_y_net,
    d1 => convert_dout_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_9d9deef124 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => inverter_op_net,
    d2 => slice2_y_net,
    d3 => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d(0) => picoblaze6_read_strobe_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 3,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => assert3_dout_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => assert3_dout_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => assert3_dout_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => assert3_dout_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/BTinterface
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_btinterface is
  port (
    serialrx_fmbt : in std_logic_vector( 1-1 downto 0 );
    rts : in std_logic_vector( 1-1 downto 0 );
    address : in std_logic_vector( 12-1 downto 0 );
    bt2userfifofull : in std_logic;
    btcmd : in std_logic_vector( 8-1 downto 0 );
    baudrate16 : in std_logic_vector( 1-1 downto 0 );
    instruction : in std_logic_vector( 18-1 downto 0 );
    newbtcmd : in std_logic_vector( 1-1 downto 0 );
    ramdata : in std_logic_vector( 16-1 downto 0 );
    rstpico : in std_logic_vector( 1-1 downto 0 );
    writebt_ram : in std_logic_vector( 1-1 downto 0 );
    writeprogbtpico : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data2archive : out std_logic_vector( 16-1 downto 0 );
    data2archive_w : out std_logic_vector( 1-1 downto 0 );
    serialtx_2btchip : out std_logic;
    rst_bt : out std_logic_vector( 1-1 downto 0 );
    btramrdbk : out std_logic_vector( 16-1 downto 0 );
    btcmd2user : out std_logic_vector( 8-1 downto 0 );
    newbtcmd2user : out std_logic_vector( 1-1 downto 0 );
    user2btfifofull : out std_logic
  );
end n3z_tonetest_btinterface;
architecture structural of n3z_tonetest_btinterface is 
  signal picoblaze6_write_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal black_box2_serial_out_net : std_logic;
  signal slice1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal adcvalue2_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 10-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal assert3_dout_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_read_strobe_net : std_logic;
  signal assert1_dout_net : std_logic_vector( 8-1 downto 0 );
  signal assert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_bram_enable_net : std_logic_vector( 1-1 downto 0 );
  signal black_box2_buffer_data_present_net : std_logic;
  signal black_box2_buffer_half_full_net : std_logic;
  signal black_box2_buffer_full_net : std_logic;
  signal constant2_op_net : std_logic;
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 4-1 downto 0 );
  signal uart_rx_buffer_data_present_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal picoblaze6_address_net : std_logic_vector( 12-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 16-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 10-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 3-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 8-1 downto 0 );
  signal uart_rx_data_out_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_k_write_strobe_net : std_logic;
  signal picoblaze6_interrupt_ack_net : std_logic;
  signal uart_rx_buffer_half_full_net : std_logic;
  signal uart_rx_buffer_full_net : std_logic;
begin
  data2archive <= concat3_y_net;
  data2archive_w <= logical_y_net_x5;
  serialtx_2btchip <= black_box2_serial_out_net;
  rst_bt <= slice1_y_net_x0;
  adcvalue2_q_net <= serialrx_fmbt;
  constant6_op_net <= rts;
  concat1_y_net <= address;
  fifo_full_net_x0 <= bt2userfifofull;
  register1_q_net <= btcmd;
  btramrdbk <= dual_port_ram1_doutb_net;
  btcmd2user <= register1_q_net_x0;
  logical_y_net_x0 <= baudrate16;
  concat_y_net_x1 <= instruction;
  logical_y_net_x1 <= newbtcmd;
  newbtcmd2user <= logical_y_net_x6;
  concat4_y_net <= ramdata;
  relational5_op_net <= rstpico;
  user2btfifofull <= fifo_full_net;
  relational7_op_net <= writebt_ram;
  relational2_op_net <= writeprogbtpico;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buffer_x0 : entity xil_defaultlib.n3z_tonetest_buffer_x1 
  port map (
    cmd => register1_q_net,
    newcmd => logical_y_net_x1,
    ackfifo => logical_y_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x0,
    user2btfifofull => fifo_full_net
  );
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x8 
  port map (
    in1 => relational2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x3
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x8 
  port map (
    in1 => relational7_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x4
  );
  outputregister : entity xil_defaultlib.n3z_tonetest_outputregister_x2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data2archive => concat3_y_net,
    data2archive_w => logical_y_net_x5,
    serialtx => register1_q_net_x1,
    tx_w => logical_y_net_x7,
    cmd2user => register1_q_net_x0,
    ramadd => concat2_y_net,
    newcmd => logical_y_net_x6,
    ack_fifo => logical_y_net_x2,
    rst_bt => slice1_y_net_x0,
    writeram => convert1_dout_net_x0
  );
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x7 
  port map (
    portid => assert3_dout_net,
    rs => picoblaze6_read_strobe_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    read_buffer => logical_y_net
  );
  assert1 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 8,
    dout_width => 8
  )
  port map (
    din => picoblaze6_port_id_net,
    dout => assert1_dout_net
  );
  assert2 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => picoblaze6_bram_enable_net,
    dout => assert2_dout_net
  );
  assert3 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 8,
    dout_width => 8
  )
  port map (
    din => picoblaze6_port_id_net,
    dout => assert3_dout_net
  );
  black_box2 : entity xil_defaultlib.uart_tx6 
  port map (
    data_in => register1_q_net_x1,
    en_16_x_baud => logical_y_net_x0(0),
    buffer_write => logical_y_net_x7(0),
    buffer_reset => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    serial_out => black_box2_serial_out_net,
    buffer_data_present => black_box2_buffer_data_present_net,
    buffer_half_full => black_box2_buffer_half_full_net,
    buffer_full => black_box2_buffer_full_net
  );
  concat : entity xil_defaultlib.sysgen_concat_22b4795c29 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1(0) => fifo_full_net_x0,
    in2 => constant6_op_net,
    in3(0) => black_box2_buffer_full_net,
    in4 => uart_rx_buffer_data_present_net,
    y => concat_y_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_ed2983513d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c0edae39a5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => picoblaze6_write_strobe_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => assert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  dual_port_ram : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_1",
    latency => 1
  )
  port map (
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => picoblaze6_address_net,
    dina => constant5_op_net,
    wea => constant4_op_net,
    addrb => concat1_y_net,
    dinb => concat_y_net_x1,
    web => logical_y_net_x3,
    ena => convert5_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 10,
    c_address_width_b => 10,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_2",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => concat2_y_net,
    dina => concat3_y_net,
    wea => convert1_dout_net_x0,
    addrb => slice4_y_net,
    dinb => concat4_y_net,
    web => logical_y_net_x4,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  mux : entity xil_defaultlib.sysgen_mux_40a47b92af 
  port map (
    clr => '0',
    sel => slice2_y_net,
    d0 => concat_y_net_x0,
    d1 => slice1_y_net,
    d2 => slice3_y_net,
    d3 => uart_rx_data_out_net,
    d4 => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  picoblaze6 : entity xil_defaultlib.kcpsm6 
  generic map (
    hwbuild => X"00",
    interrupt_vector => X"FFF",
    scratch_pad_memory_size => 256
  )
  port map (
    instruction => convert4_dout_net,
    in_port => mux_y_net,
    interrupt => convert1_dout_net(0),
    sleep => convert1_dout_net(0),
    reset => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    address => picoblaze6_address_net,
    bram_enable => picoblaze6_bram_enable_net(0),
    out_port => picoblaze6_out_port_net,
    port_id => picoblaze6_port_id_net,
    write_strobe => picoblaze6_write_strobe_net(0),
    k_write_strobe => picoblaze6_k_write_strobe_net,
    read_strobe => picoblaze6_read_strobe_net,
    interrupt_ack => picoblaze6_interrupt_ack_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 2,
    x_width => 8,
    y_width => 3
  )
  port map (
    x => assert1_dout_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 12,
    y_width => 10
  )
  port map (
    x => concat1_y_net,
    y => slice4_y_net
  );
  uart_rx : entity xil_defaultlib.uart_rx6 
  port map (
    serial_in => adcvalue2_q_net(0),
    en_16_x_baud => logical_y_net_x0(0),
    buffer_read => logical_y_net(0),
    buffer_reset => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => uart_rx_data_out_net,
    buffer_data_present => uart_rx_buffer_data_present_net(0),
    buffer_half_full => uart_rx_buffer_half_full_net,
    buffer_full => uart_rx_buffer_full_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Bit_Corrector
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_bit_corrector is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_bit_corrector;
architecture structural of n3z_tonetest_bit_corrector is 
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  register1_q_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_3097dd369f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice1_y_net,
    in2 => slice_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 16,
    y_width => 14
  )
  port map (
    x => register1_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 13,
    new_msb => 13,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => register1_q_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 13,
    new_msb => 13,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => register1_q_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Bit_Corrector1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_bit_corrector1 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_bit_corrector1;
architecture structural of n3z_tonetest_bit_corrector1 is 
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register3_q_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  register3_q_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_3097dd369f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice1_y_net,
    in2 => slice_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 16,
    y_width => 14
  )
  port map (
    x => register3_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 13,
    new_msb => 13,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => register3_q_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 13,
    new_msb => 13,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => register3_q_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ConstantDetect/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x6 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x6;
architecture structural of n3z_tonetest_monostable_x6 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ConstantDetect/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x6 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x6;
architecture structural of n3z_tonetest_monostable1_x6 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal std_bt_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  std_bt_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => std_bt_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => std_bt_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ConstantDetect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_constantdetect is
  port (
    signal_x0 : in std_logic_vector( 1-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    isconstant : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_constantdetect;
architecture structural of n3z_tonetest_constantdetect is 
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal std_bt_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 4-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 4-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 3-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 4-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  isconstant <= relational1_op_net;
  std_bt_net <= signal_x0;
  logical_y_net <= strobe;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x6 
  port map (
    in1 => convert_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x6 
  port map (
    in1 => std_bt_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  constant1 : entity xil_defaultlib.sysgen_constant_2780f822c8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_e5b787ccc8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_6",
    op_arith => xlUnsigned,
    op_width => 3
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter1 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_4",
    op_arith => xlUnsigned,
    op_width => 4
  )
  port map (
    clr => '0',
    rst => convert1_dout_net,
    en => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_d2cee2c8ad 
  port map (
    clr => '0',
    d0 => logical_y_net_x2,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x1
  );
  relational1 : entity xil_defaultlib.sysgen_relational_a9bcc6fcd1 
  port map (
    clr => '0',
    a => constant1_op_net,
    b => counter1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_fd8438917a 
  port map (
    clr => '0',
    a => constant2_op_net,
    b => counter1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 3,
    y_width => 1
  )
  port map (
    x => counter_op_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DAC (XAPP154)1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_dac_xapp154_1 is
  port (
    dac_in : in std_logic_vector( 14-1 downto 0 );
    disable_audio : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dac_out : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_dac_xapp154_1;
architecture structural of n3z_tonetest_dac_xapp154_1 is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 14-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delta_adder_s_net : std_logic_vector( 16-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal sigma_adder_s_net : std_logic_vector( 16-1 downto 0 );
  signal r1_q_net : std_logic_vector( 16-1 downto 0 );
begin
  dac_out <= register1_q_net;
  concat_y_net <= dac_in;
  constant_op_net <= disable_audio;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_8327f19d3f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice1_y_net,
    in1 => slice1_y_net,
    y => concat_y_net_x0
  );
  concat1 : entity xil_defaultlib.sysgen_concat_3468eb371a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => concat_y_net_x0,
    in1 => constant2_op_net,
    y => concat1_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net_x0
  );
  constant2 : entity xil_defaultlib.sysgen_constant_727dcb5418 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  delta_adder : entity xil_defaultlib.sysgen_addsub_909e183af5 
  port map (
    clr => '0',
    a => concat_y_net,
    b => concat1_y_net,
    en => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => delta_adder_s_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    d => slice1_y_net,
    rst => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  sigma_adder : entity xil_defaultlib.sysgen_addsub_da2aa58f7c 
  port map (
    clr => '0',
    a => r1_q_net,
    b => delta_adder_s_net,
    clk => clk_net,
    ce => ce_net,
    s => sigma_adder_s_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => r1_q_net,
    y => slice1_y_net
  );
  r1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000001000000"
  )
  port map (
    en => "1",
    d => sigma_adder_s_net,
    rst => constant_op_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => r1_q_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/Buffer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_buffer_x0 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    user2dspfifofull : out std_logic
  );
end n3z_tonetest_buffer_x0;
architecture structural of n3z_tonetest_buffer_x0 is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal fifo_empty_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 7-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_percent_full_net : std_logic_vector( 1-1 downto 0 );
begin
  cmdout <= concat_y_net;
  register1_q_net <= cmd;
  logical_y_net_x0 <= newcmd;
  logical_y_net <= ackfifo;
  user2dspfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_e89a3b98d5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  fifo : entity xil_defaultlib.n3z_tonetest_xlfifogen 
  generic map (
    core_name0 => "n3z_tonetest_fifo_generator_v12_0_0",
    data_count_width => 4,
    data_width => 8,
    extra_registers => 0,
    has_ae => 0,
    has_af => 0,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '1',
    din => register1_q_net,
    we => delay_q_net(0),
    re => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net(0),
    percent_full => fifo_percent_full_net,
    full => fifo_full_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 6,
    x_width => 8,
    y_width => 7
  )
  port map (
    x => fifo_dout_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/InputSelect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_inputselect is
  port (
    select_x0 : in std_logic_vector( 4-1 downto 0 );
    signal_x0 : in std_logic_vector( 18-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    cmd : in std_logic_vector( 8-1 downto 0 );
    multout : in std_logic_vector( 24-1 downto 0 );
    btaudioin : in std_logic_vector( 16-1 downto 0 );
    ramdata : in std_logic_vector( 16-1 downto 0 );
    status : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_inputselect;
architecture structural of n3z_tonetest_inputselect is 
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 24-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal constant_op_net : std_logic_vector( 7-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice14_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  out1 <= mux_y_net;
  slice2_y_net_x0 <= select_x0;
  delay_q_net <= signal_x0;
  slice_y_net <= strobe;
  concat_y_net <= cmd;
  slice1_y_net_x0 <= multout;
  reinterpret_output_port_net <= btaudioin;
  dual_port_ram1_douta_net <= ramdata;
  concat_y_net_x0 <= status;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_c027f7f292 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => slice_y_net,
    y => concat_y_net_x1
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_1eb6753fd5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_ad8f8562f0 
  port map (
    clr => '0',
    sel => slice2_y_net_x0,
    d0 => slice3_y_net,
    d1 => slice4_y_net,
    d2 => concat_y_net_x1,
    d3 => concat_y_net,
    d4 => slice13_y_net,
    d5 => slice14_y_net,
    d6 => slice1_y_net,
    d7 => slice2_y_net,
    d8 => slice6_y_net,
    d9 => slice7_y_net,
    d10 => concat_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_70903483da 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => reinterpret_output_port_net,
    y => slice1_y_net
  );
  slice13 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 23,
    x_width => 24,
    y_width => 8
  )
  port map (
    x => slice1_y_net_x0,
    y => slice13_y_net
  );
  slice14 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 24,
    y_width => 8
  )
  port map (
    x => slice1_y_net_x0,
    y => slice14_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => reinterpret_output_port_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 18,
    y_width => 8
  )
  port map (
    x => reinterpret1_output_port_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 18,
    y_width => 8
  )
  port map (
    x => reinterpret1_output_port_net,
    y => slice4_y_net
  );
  slice6 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice7_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x7 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x7;
architecture structural of n3z_tonetest_monostable1_x7 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational6_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational6_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational6_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2_x3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2_x3;
architecture structural of n3z_tonetest_monostable2_x3 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/LevelMonitor/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x5 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x5;
architecture structural of n3z_tonetest_monostable_x5 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice2_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/LevelMonitor/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2_x4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2_x4;
architecture structural of n3z_tonetest_monostable2_x4 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert2_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/LevelMonitor
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_levelmonitor_x0 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_levelmonitor_x0;
architecture structural of n3z_tonetest_levelmonitor_x0 is 
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 26-1 downto 0 );
  signal register_q_net : std_logic_vector( 26-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 10-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 10-1 downto 0 );
  signal counter_op_net : std_logic_vector( 15-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
begin
  signallevel <= register1_q_net;
  concat4_y_net <= in1;
  convert2_dout_net <= en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x5 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2_x4 
  port map (
    in1 => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsubmode 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 10,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 28,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_0",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 28,
    latency => 1,
    mode_arith => xlUnsigned,
    mode_bin_pt => 0,
    mode_width => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 26
  )
  port map (
    clr => '0',
    a => register_q_net,
    b => convert2_dout_net_x0,
    mode => convert_dout_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 10,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 10,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net_x0
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_7",
    op_arith => xlUnsigned,
    op_width => 15
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    d => addsub_s_net,
    rst => delay1_q_net,
    en => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => slice3_y_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => concat4_y_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 14,
    new_msb => 14,
    x_width => 15,
    y_width => 1
  )
  port map (
    x => counter_op_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 10,
    new_msb => 25,
    x_width => 26,
    y_width => 16
  )
  port map (
    x => register_q_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 15,
    x_width => 16,
    y_width => 10
  )
  port map (
    x => concat4_y_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/LevelMonitor1/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x7 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x7;
architecture structural of n3z_tonetest_monostable_x7 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice2_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/LevelMonitor1/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2_x5 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2_x5;
architecture structural of n3z_tonetest_monostable2_x5 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert2_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/LevelMonitor1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_levelmonitor1_x0 is
  port (
    in1 : in std_logic_vector( 8-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_levelmonitor1_x0;
architecture structural of n3z_tonetest_levelmonitor1_x0 is 
  signal register1_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 23-1 downto 0 );
  signal register_q_net : std_logic_vector( 23-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal counter_op_net : std_logic_vector( 15-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
begin
  signallevel <= register1_q_net_x0;
  register1_q_net <= in1;
  convert2_dout_net <= en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x7 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2_x5 
  port map (
    in1 => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 23,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 25,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_1",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 25,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 23
  )
  port map (
    clr => '0',
    a => register_q_net,
    b => convert2_dout_net_x0,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 8,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net_x0
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_7",
    op_arith => xlUnsigned,
    op_width => 15
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 23,
    init_value => b"00000000000000000000000"
  )
  port map (
    d => addsub_s_net,
    rst => delay1_q_net,
    en => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => slice3_y_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net_x0
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 14,
    new_msb => 14,
    x_width => 15,
    y_width => 1
  )
  port map (
    x => counter_op_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 22,
    x_width => 23,
    y_width => 16
  )
  port map (
    x => register_q_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 8,
    y_width => 8
  )
  port map (
    x => register1_q_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem_x1;
architecture structural of n3z_tonetest_subsystem_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x4 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x4;
architecture structural of n3z_tonetest_subsystem1_x4 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4190c690be 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem10
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem10 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem10;
architecture structural of n3z_tonetest_subsystem10 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_c00788aea8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"11100010"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem11
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem11_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem11_x0;
architecture structural of n3z_tonetest_subsystem11_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_e09cd2cc02 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"10010111"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem12 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem12;
architecture structural of n3z_tonetest_subsystem12 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  ack_fifo <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_821288e337 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"10010111"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem13_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    newvalue : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem13_x1;
architecture structural of n3z_tonetest_subsystem13_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  newvalue <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_f9ecb94ebe 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem15
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem15_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem15_x0;
architecture structural of n3z_tonetest_subsystem15_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4dee2ca19f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem16
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem16_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem16_x0;
architecture structural of n3z_tonetest_subsystem16_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_2f41f97971 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem17
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem17_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem17_x0;
architecture structural of n3z_tonetest_subsystem17_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_7ac4993069 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000001"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem18
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem18 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem18;
architecture structural of n3z_tonetest_subsystem18 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b6f29614f9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem2_x4 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem2_x4;
architecture structural of n3z_tonetest_subsystem2_x4 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_a218a1253f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem23
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem23_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem23_x0;
architecture structural of n3z_tonetest_subsystem23_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_47508c1bc7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem24
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem24 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem24;
architecture structural of n3z_tonetest_subsystem24 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_d383ad7533 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem25
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem25 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem25;
architecture structural of n3z_tonetest_subsystem25 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_d3486b10be 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem26
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem26 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem26;
architecture structural of n3z_tonetest_subsystem26 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_37c57ab154 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem27
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem27 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem27;
architecture structural of n3z_tonetest_subsystem27 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_ac9067f0a9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem28
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem28 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem28;
architecture structural of n3z_tonetest_subsystem28 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_c34ec3e52a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem3_x3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem3_x3;
architecture structural of n3z_tonetest_subsystem3_x3 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_1a4e0cfb40 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem4_x4 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem4_x4;
architecture structural of n3z_tonetest_subsystem4_x4 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_845cff379f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem5_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem5_x1;
architecture structural of n3z_tonetest_subsystem5_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_e05d28d7b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem6_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem6_x1;
architecture structural of n3z_tonetest_subsystem6_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_8f1ac0bb1b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem7_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem7_x2;
architecture structural of n3z_tonetest_subsystem7_x2 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_731ac842ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"01000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem8_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    w : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem8_x1;
architecture structural of n3z_tonetest_subsystem8_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  w <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_2fb1f15adb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister/Subsystem9
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem9_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem9_x1;
architecture structural of n3z_tonetest_subsystem9_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_00dfbd154d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_outputregister_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    square8khz : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    audio_out : out std_logic_vector( 16-1 downto 0 );
    amp : out std_logic_vector( 8-1 downto 0 );
    cmd2user : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 16-1 downto 0 );
    signal_x0 : out std_logic_vector( 16-1 downto 0 );
    data2archive : out std_logic_vector( 16-1 downto 0 );
    phaseincrement : out std_logic_vector( 8-1 downto 0 );
    newcmd : out std_logic_vector( 1-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 );
    ramaddress : out std_logic_vector( 10-1 downto 0 );
    writeram : out std_logic_vector( 1-1 downto 0 );
    txphase : out std_logic_vector( 16-1 downto 0 );
    newvalue : out std_logic_vector( 1-1 downto 0 );
    agcvalue : out std_logic_vector( 4-1 downto 0 );
    audioout : out std_logic_vector( 16-1 downto 0 );
    starttonea : out std_logic_vector( 8-1 downto 0 );
    starttonealong : out std_logic_vector( 8-1 downto 0 );
    starttoneb : out std_logic_vector( 8-1 downto 0 );
    starttoneblong : out std_logic_vector( 8-1 downto 0 );
    stoptonea : out std_logic_vector( 8-1 downto 0 );
    stoptonealong : out std_logic_vector( 8-1 downto 0 );
    stoptoneb : out std_logic_vector( 8-1 downto 0 );
    stoptoneblong : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_outputregister_x1;
architecture structural of n3z_tonetest_outputregister_x1 is 
  signal register1_q_net_x19 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x14 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x26 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal concat5_y_net : std_logic_vector( 10-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 4-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net_x17 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x18 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x20 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x30 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x29 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x28 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x27 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x24 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x23 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x22 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x21 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x16 : std_logic_vector( 8-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 2-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  audio_out <= register1_q_net_x19;
  amp <= register1_q_net_x14;
  cmd2user <= register1_q_net_x8;
  coeff <= concat1_y_net;
  signal_x0 <= concat2_y_net;
  data2archive <= concat4_y_net;
  phaseincrement <= register1_q_net_x26;
  newcmd <= logical_y_net;
  ack_fifo <= logical_y_net_x1;
  ramaddress <= concat5_y_net;
  writeram <= convert7_dout_net;
  txphase <= concat7_y_net;
  newvalue <= logical_y_net_x2;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net_x0 <= write;
  agcvalue <= slice8_y_net;
  audioout <= concat_y_net;
  convert2_dout_net_x0 <= square8khz;
  starttonea <= slice10_y_net;
  starttonealong <= slice9_y_net;
  starttoneb <= slice12_y_net;
  starttoneblong <= slice13_y_net;
  stoptonea <= register1_q_net_x4;
  stoptonealong <= register1_q_net;
  stoptoneb <= register1_q_net_x0;
  stoptoneblong <= register1_q_net_x2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  levelmonitor : entity xil_defaultlib.n3z_tonetest_levelmonitor_x0 
  port map (
    in1 => concat4_y_net,
    en => convert2_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    signallevel => register1_q_net_x17
  );
  levelmonitor1 : entity xil_defaultlib.n3z_tonetest_levelmonitor1_x0 
  port map (
    in1 => register1_q_net_x14,
    en => convert2_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    signallevel => register1_q_net_x18
  );
  subsystem : entity xil_defaultlib.n3z_tonetest_subsystem_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x20
  );
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x4 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x30
  );
  subsystem10_x0 : entity xil_defaultlib.n3z_tonetest_subsystem10 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x29
  );
  subsystem11_x0 : entity xil_defaultlib.n3z_tonetest_subsystem11_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x28
  );
  subsystem12_x0 : entity xil_defaultlib.n3z_tonetest_subsystem12 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x27,
    ack_fifo => logical_y_net_x3
  );
  subsystem13 : entity xil_defaultlib.n3z_tonetest_subsystem13_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x26,
    newvalue => logical_y_net_x2
  );
  subsystem15 : entity xil_defaultlib.n3z_tonetest_subsystem15_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x24
  );
  subsystem16 : entity xil_defaultlib.n3z_tonetest_subsystem16_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x23
  );
  subsystem17 : entity xil_defaultlib.n3z_tonetest_subsystem17_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x22
  );
  subsystem18_x0 : entity xil_defaultlib.n3z_tonetest_subsystem18 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x21
  );
  subsystem2 : entity xil_defaultlib.n3z_tonetest_subsystem2_x4 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x8,
    strobe => logical_y_net
  );
  subsystem23 : entity xil_defaultlib.n3z_tonetest_subsystem23_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x4
  );
  subsystem24 : entity xil_defaultlib.n3z_tonetest_subsystem24 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net
  );
  subsystem25 : entity xil_defaultlib.n3z_tonetest_subsystem25 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x0
  );
  subsystem26 : entity xil_defaultlib.n3z_tonetest_subsystem26 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x2
  );
  subsystem27 : entity xil_defaultlib.n3z_tonetest_subsystem27 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x3
  );
  subsystem28 : entity xil_defaultlib.n3z_tonetest_subsystem28 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x1
  );
  subsystem3 : entity xil_defaultlib.n3z_tonetest_subsystem3_x3 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x10
  );
  subsystem4 : entity xil_defaultlib.n3z_tonetest_subsystem4_x4 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x11
  );
  subsystem5_x0 : entity xil_defaultlib.n3z_tonetest_subsystem5_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x12
  );
  subsystem6 : entity xil_defaultlib.n3z_tonetest_subsystem6_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x13
  );
  subsystem7 : entity xil_defaultlib.n3z_tonetest_subsystem7_x2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x14
  );
  subsystem8 : entity xil_defaultlib.n3z_tonetest_subsystem8_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x15,
    w => logical_y_net_x0
  );
  subsystem9 : entity xil_defaultlib.n3z_tonetest_subsystem9_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x16
  );
  concat : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x3,
    in1 => register1_q_net_x1,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x10,
    in1 => register1_q_net_x11,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x12,
    in1 => register1_q_net_x13,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x20,
    in1 => register1_q_net_x30,
    y => concat3_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x29,
    in1 => register1_q_net_x28,
    y => concat4_y_net
  );
  concat5 : entity xil_defaultlib.sysgen_concat_69beafd7ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice6_y_net,
    in1 => register1_q_net_x16,
    y => concat5_y_net
  );
  concat7 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x24,
    in1 => register1_q_net_x23,
    y => concat7_y_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert7 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x3,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert5_dout_net,
    d1 => delay_q_net,
    y => logical_y_net_x1
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    d => concat3_y_net,
    rst => inverter_op_net,
    en => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net_x19
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x22,
    y => slice_y_net
  );
  slice10 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => register1_q_net_x17,
    y => slice10_y_net
  );
  slice12 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => register1_q_net_x18,
    y => slice12_y_net
  );
  slice13 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => register1_q_net_x18,
    y => slice13_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x27,
    y => slice4_y_net
  );
  slice6 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 8,
    y_width => 2
  )
  port map (
    x => register1_q_net_x15,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x15,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x21,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => register1_q_net_x17,
    y => slice9_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DSProcessor1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_dsprocessor1 is
  port (
    filterredsignal : in std_logic_vector( 18-1 downto 0 );
    addrram : in std_logic_vector( 12-1 downto 0 );
    dataram : in std_logic_vector( 18-1 downto 0 );
    writeram : in std_logic_vector( 1-1 downto 0 );
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    btauidioin : in std_logic_vector( 16-1 downto 0 );
    address : in std_logic_vector( 12-1 downto 0 );
    dsp2userfifofull : in std_logic;
    nobtsignal : in std_logic_vector( 1-1 downto 0 );
    ramdata : in std_logic_vector( 16-1 downto 0 );
    square8khz : in std_logic_vector( 1-1 downto 0 );
    tx_high : in std_logic_vector( 1-1 downto 0 );
    writedsp_ram : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    audioout_x0 : out std_logic_vector( 16-1 downto 0 );
    amp : out std_logic_vector( 8-1 downto 0 );
    cmdtouser : out std_logic_vector( 8-1 downto 0 );
    data2archive : out std_logic_vector( 16-1 downto 0 );
    phaseincrement_8bits : out std_logic_vector( 8-1 downto 0 );
    newcmdtouser : out std_logic_vector( 1-1 downto 0 );
    tx_phase : out std_logic_vector( 16-1 downto 0 );
    newvalue : out std_logic_vector( 1-1 downto 0 );
    agcvalue : out std_logic_vector( 4-1 downto 0 );
    audioout : out std_logic_vector( 16-1 downto 0 );
    dspramrdbk : out std_logic_vector( 16-1 downto 0 );
    starttonea : out std_logic_vector( 8-1 downto 0 );
    starttonealong : out std_logic_vector( 8-1 downto 0 );
    starttoneb : out std_logic_vector( 8-1 downto 0 );
    starttoneblong : out std_logic_vector( 8-1 downto 0 );
    stoptonea : out std_logic_vector( 8-1 downto 0 );
    stoptonealong : out std_logic_vector( 8-1 downto 0 );
    stoptoneb : out std_logic_vector( 8-1 downto 0 );
    stoptoneblong : out std_logic_vector( 8-1 downto 0 );
    user2dspfifofull : out std_logic
  );
end n3z_tonetest_dsprocessor1;
architecture structural of n3z_tonetest_dsprocessor1 is 
  signal register1_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal concat4_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 4-1 downto 0 );
  signal concat_y_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 24-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat5_y_net : std_logic_vector( 10-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal assert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_bram_enable_net : std_logic_vector( 1-1 downto 0 );
  signal assert4_dout_net : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 5-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_write_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal picoblaze6_address_net : std_logic_vector( 12-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 10-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal picoblaze6_k_write_strobe_net : std_logic;
  signal picoblaze6_read_strobe_net : std_logic;
  signal picoblaze6_interrupt_ack_net : std_logic;
begin
  audioout_x0 <= register1_q_net_x0;
  amp <= register1_q_net_x8;
  cmdtouser <= register1_q_net_x3;
  data2archive <= concat4_y_net_x0;
  phaseincrement_8bits <= register1_q_net_x1;
  newcmdtouser <= logical_y_net_x4;
  tx_phase <= concat7_y_net;
  newvalue <= logical_y_net_x3;
  register_q_net <= filterredsignal;
  concat1_y_net <= addrram;
  concat_y_net_x1 <= dataram;
  relational3_op_net <= writeram;
  register1_q_net <= cmd;
  logical_y_net_x0 <= newcmd;
  relational5_op_net <= rst;
  slice_y_net <= strobe;
  reinterpret_output_port_net_x0 <= btauidioin;
  agcvalue <= slice8_y_net;
  concat1_y_net <= address;
  audioout <= concat_y_net_x2;
  fifo_full_net_x0 <= dsp2userfifofull;
  dspramrdbk <= dual_port_ram1_doutb_net;
  relational1_op_net <= nobtsignal;
  concat4_y_net <= ramdata;
  convert2_dout_net_x0 <= square8khz;
  starttonea <= slice10_y_net;
  starttonealong <= slice9_y_net;
  starttoneb <= slice12_y_net;
  starttoneblong <= slice13_y_net;
  stoptonea <= register1_q_net_x4;
  stoptonealong <= register1_q_net_x5;
  stoptoneb <= register1_q_net_x6;
  stoptoneblong <= register1_q_net_x7;
  slice11_y_net <= tx_high;
  user2dspfifofull <= fifo_full_net;
  relational6_op_net <= writedsp_ram;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buffer_x0 : entity xil_defaultlib.n3z_tonetest_buffer_x0 
  port map (
    cmd => register1_q_net,
    newcmd => logical_y_net_x0,
    ackfifo => logical_y_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x0,
    user2dspfifofull => fifo_full_net
  );
  inputselect : entity xil_defaultlib.n3z_tonetest_inputselect 
  port map (
    select_x0 => slice2_y_net,
    signal_x0 => delay_q_net,
    strobe => slice_y_net,
    cmd => concat_y_net_x0,
    multout => slice1_y_net,
    btaudioin => reinterpret_output_port_net_x0,
    ramdata => dual_port_ram1_douta_net,
    status => concat_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => mux_y_net
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x7 
  port map (
    in1 => relational6_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2_x3 
  port map (
    in1 => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  outputregister : entity xil_defaultlib.n3z_tonetest_outputregister_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    square8khz => convert2_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    audio_out => register1_q_net_x0,
    amp => register1_q_net_x8,
    cmd2user => register1_q_net_x3,
    coeff => concat1_y_net_x0,
    signal_x0 => concat2_y_net,
    data2archive => concat4_y_net_x0,
    phaseincrement => register1_q_net_x1,
    newcmd => logical_y_net_x4,
    ack_fifo => logical_y_net_x1,
    ramaddress => concat5_y_net,
    writeram => convert7_dout_net,
    txphase => concat7_y_net,
    newvalue => logical_y_net_x3,
    agcvalue => slice8_y_net,
    audioout => concat_y_net_x2,
    starttonea => slice10_y_net,
    starttonealong => slice9_y_net,
    starttoneb => slice12_y_net,
    starttoneblong => slice13_y_net,
    stoptonea => register1_q_net_x4,
    stoptonealong => register1_q_net_x5,
    stoptoneb => register1_q_net_x6,
    stoptoneblong => register1_q_net_x7
  );
  assert1 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => picoblaze6_bram_enable_net,
    dout => assert1_dout_net
  );
  assert4 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 8,
    dout_width => 8
  )
  port map (
    din => picoblaze6_port_id_net,
    dout => assert4_dout_net
  );
  concat : entity xil_defaultlib.sysgen_concat_0b0b5b091f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1 => slice11_y_net,
    in2 => relational1_op_net,
    in3(0) => fifo_full_net_x0,
    y => concat_y_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_95996df5e3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c0edae39a5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice11_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => picoblaze6_write_strobe_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x2,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => assert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 17,
    reg_retiming => 0,
    reset => 0,
    width => 18
  )
  port map (
    rst => '1',
    d => register_q_net,
    en => convert5_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  dual_port_ram : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_3",
    latency => 1
  )
  port map (
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => picoblaze6_address_net,
    dina => constant5_op_net,
    wea => constant4_op_net,
    addrb => concat1_y_net,
    dinb => concat_y_net_x1,
    web => relational3_op_net,
    ena => convert6_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 10,
    c_address_width_b => 10,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_4",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => concat5_y_net,
    dina => concat4_y_net_x0,
    wea => convert7_dout_net,
    addrb => slice4_y_net,
    dinb => concat4_y_net,
    web => logical_y_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  mult : entity xil_defaultlib.n3z_tonetest_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "n3z_tonetest_mult_gen_v12_0_0",
    en_arith => xlUnsigned,
    en_bin_pt => 0,
    en_width => 1,
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    rst => "0",
    a => reinterpret_output_port_net,
    b => reinterpret1_output_port_net,
    en => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  picoblaze6 : entity xil_defaultlib.kcpsm6 
  generic map (
    hwbuild => X"00",
    interrupt_vector => X"FFF",
    scratch_pad_memory_size => 256
  )
  port map (
    instruction => convert4_dout_net,
    in_port => mux_y_net,
    interrupt => convert1_dout_net(0),
    sleep => convert1_dout_net(0),
    reset => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    address => picoblaze6_address_net,
    bram_enable => picoblaze6_bram_enable_net(0),
    out_port => picoblaze6_out_port_net,
    port_id => picoblaze6_port_id_net,
    write_strobe => picoblaze6_write_strobe_net(0),
    k_write_strobe => picoblaze6_k_write_strobe_net,
    read_strobe => picoblaze6_read_strobe_net,
    interrupt_ack => picoblaze6_interrupt_ack_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat1_y_net_x0,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat2_y_net,
    output_port => reinterpret1_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 31,
    x_width => 32,
    y_width => 24
  )
  port map (
    x => mult_p_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => assert4_dout_net,
    y => slice2_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 12,
    y_width => 10
  )
  port map (
    x => concat1_y_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Delay16ms
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_delay16ms is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    pulse8khz : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_delay16ms;
architecture structural of n3z_tonetest_delay16ms is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= delay_q_net;
  slice11_y_net <= in1;
  logical_y_net <= pulse8khz;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 128,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    rst => '1',
    d => slice11_y_net,
    en => convert1_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/AGCandFilter1/Filter1/Latch
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_latch_x2 is
  port (
    set : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    state : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_latch_x2;
architecture structural of n3z_tonetest_latch_x2 is 
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal set1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  state <= register2_q_net;
  delay1_q_net <= set;
  convert1_dout_net <= rst;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => set1_op_net,
    rst => convert1_dout_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  set1 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => set1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/AGCandFilter1/Filter1/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x9 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x9;
architecture structural of n3z_tonetest_monostable_x9 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  inverter1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter1_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/AGCandFilter1/Filter1/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x11 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x11;
architecture structural of n3z_tonetest_monostable1_x11 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  inverter2_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter2_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/AGCandFilter1/Filter1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_filter1 is
  port (
    strobe : in std_logic_vector( 1-1 downto 0 );
    input : in std_logic_vector( 16-1 downto 0 );
    tx_high : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    output : out std_logic_vector( 18-1 downto 0 )
  );
end n3z_tonetest_filter1;
architecture structural of n3z_tonetest_filter1 is 
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 8-1 downto 0 );
  signal counter_op_net : std_logic_vector( 8-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 8-1 downto 0 );
  signal concat_y_net : std_logic_vector( 10-1 downto 0 );
  signal constant_op_net : std_logic_vector( 2-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 10-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 31-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice18_y_net : std_logic_vector( 18-1 downto 0 );
  signal slice19_y_net : std_logic_vector( 18-1 downto 0 );
begin
  output <= register_q_net;
  logical_y_net_x2 <= strobe;
  reinterpret1_output_port_net <= input;
  slice11_y_net <= tx_high;
  clk_net <= clk_1;
  ce_net <= ce_1;
  latch : entity xil_defaultlib.n3z_tonetest_latch_x2 
  port map (
    set => delay1_q_net,
    rst => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    state => register2_q_net
  );
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x9 
  port map (
    in1 => inverter1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x11 
  port map (
    in1 => inverter2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  accumulator : entity xil_defaultlib.sysgen_accum_f435551619 
  port map (
    clr => '0',
    b => reinterpret2_output_port_net,
    rst => logical_y_net_x0,
    en => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_3",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 9,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 8
  )
  port map (
    clr => '0',
    en => "1",
    a => counter_op_net,
    b => counter1_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_69beafd7ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => mux_y_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_9fe97968f8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1 => slice11_y_net,
    in2 => counter1_op_net,
    y => concat1_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_90e08939e1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_43831abc60 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x2,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_2",
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    rst => "0",
    clr => '0',
    en => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter1 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_2",
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    clr => '0',
    rst => inverter_op_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  dual_port_ram : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 10,
    c_address_width_b => 10,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_6",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => concat_y_net,
    dina => reinterpret1_output_port_net,
    wea => logical_y_net_x1,
    addrb => concat1_y_net,
    dinb => constant3_op_net,
    web => constant4_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => slice17_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => constant2_op_net,
    d1 => convert_dout_net,
    y => logical_y_net_x1
  );
  mult : entity xil_defaultlib.n3z_tonetest_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "n3z_tonetest_mult_gen_v12_0_0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 31,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => dual_port_ram_douta_net,
    b => dual_port_ram_doutb_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mux : entity xil_defaultlib.sysgen_mux_0f61a6a8ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => register2_q_net,
    d0 => counter_op_net,
    d1 => addsub_s_net,
    y => mux_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => reinterpret3_output_port_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_10a2a2cdc6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice18_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_10a2a2cdc6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice19_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice17 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 7,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => counter1_op_net,
    y => slice17_y_net
  );
  slice18 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 13,
    new_msb => 30,
    x_width => 31,
    y_width => 18
  )
  port map (
    x => mult_p_net,
    y => slice18_y_net
  );
  slice19 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 18,
    y_width => 18
  )
  port map (
    x => accumulator_q_net,
    y => slice19_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/AGCandFilter1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_agcandfilter1 is
  port (
    in1 : in std_logic_vector( 25-1 downto 0 );
    audiosampleclk : in std_logic_vector( 1-1 downto 0 );
    agcvalue : in std_logic_vector( 4-1 downto 0 );
    btaudio : in std_logic_vector( 16-1 downto 0 );
    nobtsignal : in std_logic_vector( 1-1 downto 0 );
    tx_high : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 18-1 downto 0 )
  );
end n3z_tonetest_agcandfilter1;
architecture structural of n3z_tonetest_agcandfilter1 is 
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 25-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice8_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 25-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 4-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 10-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 6-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 11-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 5-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 12-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 4-1 downto 0 );
  signal concat5_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 13-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 3-1 downto 0 );
  signal concat6_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice11_y_net_x0 : std_logic_vector( 14-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 2-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 15-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal m3_y_net : std_logic_vector( 25-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 25-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice14_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice15_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice16_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= register_q_net;
  addsub_s_net <= in1;
  logical_y_net <= audiosampleclk;
  slice8_y_net_x0 <= agcvalue;
  reinterpret_output_port_net <= btaudio;
  relational1_op_net <= nobtsignal;
  slice11_y_net <= tx_high;
  clk_net <= clk_1;
  ce_net <= ce_1;
  filter1 : entity xil_defaultlib.n3z_tonetest_filter1 
  port map (
    strobe => logical_y_net,
    input => reinterpret1_output_port_net,
    tx_high => slice11_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    output => register_q_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_0a0e933569 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice17_y_net,
    in1 => slice17_y_net,
    in2 => slice17_y_net,
    in3 => slice17_y_net,
    in4 => slice17_y_net,
    in5 => reinterpret3_output_port_net,
    in6 => constant1_op_net,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_cb04417d34 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice7_y_net,
    in1 => constant10_op_net,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_4e866f198a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice8_y_net,
    in1 => constant9_op_net,
    y => concat3_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_f7e97768de 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice9_y_net,
    in1 => constant8_op_net,
    y => concat4_y_net
  );
  concat5 : entity xil_defaultlib.sysgen_concat_2dec865db8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice10_y_net,
    in1 => constant7_op_net,
    y => concat5_y_net
  );
  concat6 : entity xil_defaultlib.sysgen_concat_cc27c1e9a8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice11_y_net_x0,
    in1 => constant6_op_net,
    y => concat6_y_net
  );
  concat7 : entity xil_defaultlib.sysgen_concat_73376b6c30 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice12_y_net,
    in1 => constant5_op_net,
    y => concat7_y_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_ed2983513d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_a0d784c0dd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_90e08939e1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_5c721efa33 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_ed2983513d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_95996df5e3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => slice11_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_03bb0ceeeb 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x0
  );
  m3 : entity xil_defaultlib.sysgen_mux_694efeab37 
  port map (
    clr => '0',
    sel => logical_y_net_x0,
    d0 => concat1_y_net,
    d1 => reinterpret2_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => m3_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_7f11b167ea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => slice8_y_net_x0,
    d0 => concat2_y_net,
    d1 => concat3_y_net,
    d2 => concat4_y_net,
    d3 => concat5_y_net,
    d4 => concat6_y_net,
    d5 => concat7_y_net,
    d6 => slice13_y_net,
    d7 => slice14_y_net,
    d8 => slice15_y_net,
    d9 => slice16_y_net,
    d10 => slice5_y_net,
    d11 => slice6_y_net,
    d12 => slice3_y_net,
    d13 => slice4_y_net,
    d14 => slice1_y_net,
    d15 => slice2_y_net,
    y => mux1_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux1_y_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_b3084df45c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => addsub_s_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_8b540ca26d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret_output_port_net,
    output_port => reinterpret3_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 23,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice1_y_net
  );
  slice10 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 12,
    x_width => 25,
    y_width => 13
  )
  port map (
    x => m3_y_net,
    y => slice10_y_net
  );
  slice11 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 25,
    y_width => 14
  )
  port map (
    x => m3_y_net,
    y => slice11_y_net_x0
  );
  slice12 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 25,
    y_width => 15
  )
  port map (
    x => m3_y_net,
    y => slice12_y_net
  );
  slice13 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice13_y_net
  );
  slice14 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 16,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice14_y_net
  );
  slice15 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 17,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice15_y_net
  );
  slice16 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 18,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice16_y_net
  );
  slice17 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => reinterpret3_output_port_net,
    y => slice17_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 9,
    new_msb => 24,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 21,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 22,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 19,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 20,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => m3_y_net,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 25,
    y_width => 10
  )
  port map (
    x => m3_y_net,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 10,
    x_width => 25,
    y_width => 11
  )
  port map (
    x => m3_y_net,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 11,
    x_width => 25,
    y_width => 12
  )
  port map (
    x => m3_y_net,
    y => slice9_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/CtrlBitSequenceAddress
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_ctrlbitsequenceaddress is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    ctrlsequenceraddress : out std_logic_vector( 5-1 downto 0 )
  );
end n3z_tonetest_ctrlbitsequenceaddress;
architecture structural of n3z_tonetest_ctrlbitsequenceaddress is 
  signal counter2_op_net : std_logic_vector( 5-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 5-1 downto 0 );
  signal register3_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  ctrlsequenceraddress <= counter2_op_net;
  delay1_q_net <= trig;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_fe66a4e73b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter2 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_8",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  register3 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant_op_net,
    rst => delay1_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_a38da1e39a 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/CtrlSequencer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_ctrlsequencer is
  port (
    in1 : in std_logic_vector( 5-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    m1 : out std_logic_vector( 1-1 downto 0 );
    m2 : out std_logic_vector( 2-1 downto 0 );
    iqaddress : out std_logic_vector( 1-1 downto 0 );
    latchi : out std_logic_vector( 1-1 downto 0 );
    latchq : out std_logic_vector( 1-1 downto 0 );
    latchdemod : out std_logic_vector( 1-1 downto 0 );
    accu : out std_logic_vector( 1-1 downto 0 );
    incrmntstreamaddress : out std_logic_vector( 1-1 downto 0 );
    allctrlbits : out std_logic_vector( 10-1 downto 0 );
    iqadd_sub : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_ctrlsequencer;
architecture structural of n3z_tonetest_ctrlsequencer is 
  signal bitbasher_m1_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher_m2_net : std_logic_vector( 2-1 downto 0 );
  signal bitbasher_iqaddress_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal ctrlbitsequence_data_net : std_logic_vector( 10-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 5-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal bitbasher1_latchi_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher1_latchq_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher1_latchdemod_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher2_accu_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher2_increment_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher2_iqadd_sub_net : std_logic_vector( 1-1 downto 0 );
begin
  m1 <= bitbasher_m1_net;
  m2 <= bitbasher_m2_net;
  iqaddress <= bitbasher_iqaddress_net;
  latchi <= convert4_dout_net;
  latchq <= convert3_dout_net;
  latchdemod <= convert2_dout_net;
  accu <= convert1_dout_net;
  incrmntstreamaddress <= convert_dout_net;
  allctrlbits <= ctrlbitsequence_data_net;
  iqadd_sub <= convert5_dout_net;
  counter2_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bitbasher : entity xil_defaultlib.sysgen_bitbasher_e7970768b1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => ctrlbitsequence_data_net,
    m1 => bitbasher_m1_net,
    m2 => bitbasher_m2_net,
    iqaddress => bitbasher_iqaddress_net
  );
  bitbasher1 : entity xil_defaultlib.sysgen_bitbasher_a4c48cb4c6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => ctrlbitsequence_data_net,
    latchi => bitbasher1_latchi_net,
    latchq => bitbasher1_latchq_net,
    latchdemod => bitbasher1_latchdemod_net
  );
  bitbasher2 : entity xil_defaultlib.sysgen_bitbasher_e5b9bd11ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => ctrlbitsequence_data_net,
    accu => bitbasher2_accu_net,
    increment => bitbasher2_increment_net,
    iqadd_sub => bitbasher2_iqadd_sub_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher2_increment_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher2_accu_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_latchdemod_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_latchq_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_latchi_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher2_iqadd_sub_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  ctrlbitsequence : entity xil_defaultlib.n3z_tonetest_xlsprom_dist 
  generic map (
    addr_width => 5,
    c_address_width => 5,
    c_width => 10,
    core_name0 => "n3z_tonetest_dist_mem_gen_v8_0_1",
    latency => 1
  )
  port map (
    en => "1",
    addr => counter2_op_net,
    clk => clk_net,
    ce => ce_net,
    data => ctrlbitsequence_data_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/FilterStreamIntegration/TrigDistrib/3LineTo8Way
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_3lineto8way_x0 is
  port (
    in1 : in std_logic_vector( 3-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 );
    out2 : out std_logic_vector( 1-1 downto 0 );
    out3 : out std_logic_vector( 1-1 downto 0 );
    out4 : out std_logic_vector( 1-1 downto 0 );
    out5 : out std_logic_vector( 1-1 downto 0 );
    out6 : out std_logic_vector( 1-1 downto 0 );
    out7 : out std_logic_vector( 1-1 downto 0 );
    out8 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_3lineto8way_x0;
architecture structural of n3z_tonetest_3lineto8way_x0 is 
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 3-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal bitbasher_b0_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher_b1_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher_b2_net : std_logic_vector( 1-1 downto 0 );
  signal rom_data_net : std_logic_vector( 8-1 downto 0 );
  signal bitbasher1_b3_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher1_b4_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher1_b5_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher2_b6_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher2_b7_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= convert_dout_net;
  out2 <= convert1_dout_net;
  out3 <= convert2_dout_net;
  out4 <= convert3_dout_net;
  out5 <= convert4_dout_net;
  out6 <= convert5_dout_net;
  out7 <= convert6_dout_net;
  out8 <= convert7_dout_net;
  delay_q_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bitbasher : entity xil_defaultlib.sysgen_bitbasher_98fbdd9c51 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b0 => bitbasher_b0_net,
    b1 => bitbasher_b1_net,
    b2 => bitbasher_b2_net
  );
  bitbasher1 : entity xil_defaultlib.sysgen_bitbasher_3d92772749 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b3 => bitbasher1_b3_net,
    b4 => bitbasher1_b4_net,
    b5 => bitbasher1_b5_net
  );
  bitbasher2 : entity xil_defaultlib.sysgen_bitbasher_9a1c468a02 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b6 => bitbasher2_b6_net,
    b7 => bitbasher2_b7_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher_b0_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher_b1_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher_b2_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_b3_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_b4_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_b5_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher2_b6_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert7 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher2_b7_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  rom : entity xil_defaultlib.n3z_tonetest_xlsprom_dist 
  generic map (
    addr_width => 3,
    c_address_width => 4,
    c_width => 8,
    core_name0 => "n3z_tonetest_dist_mem_gen_v8_0_2",
    latency => 1
  )
  port map (
    en => "1",
    addr => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom_data_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/FilterStreamIntegration/TrigDistrib
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_trigdistrib is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    in2 : in std_logic_vector( 3-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 );
    out2 : out std_logic_vector( 1-1 downto 0 );
    out3 : out std_logic_vector( 1-1 downto 0 );
    out4 : out std_logic_vector( 1-1 downto 0 );
    out5 : out std_logic_vector( 1-1 downto 0 );
    out6 : out std_logic_vector( 1-1 downto 0 );
    out7 : out std_logic_vector( 1-1 downto 0 );
    out8 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_trigdistrib;
architecture structural of n3z_tonetest_trigdistrib is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical5_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 3-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  out2 <= logical1_y_net;
  out3 <= logical2_y_net;
  out4 <= logical3_y_net;
  out5 <= logical4_y_net;
  out6 <= logical5_y_net;
  out7 <= logical6_y_net;
  out8 <= logical7_y_net;
  delay1_q_net <= trig;
  delay_q_net <= in2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  x3lineto8way : entity xil_defaultlib.n3z_tonetest_3lineto8way_x0 
  port map (
    in1 => delay_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => convert_dout_net,
    out2 => convert1_dout_net,
    out3 => convert2_dout_net,
    out4 => convert3_dout_net,
    out5 => convert4_dout_net,
    out6 => convert5_dout_net,
    out7 => convert6_dout_net,
    out8 => convert7_dout_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert_dout_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert1_dout_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert2_dout_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert3_dout_net,
    y => logical3_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert4_dout_net,
    y => logical4_y_net
  );
  logical5 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert5_dout_net,
    y => logical5_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert6_dout_net,
    y => logical6_y_net
  );
  logical7 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert7_dout_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/FilterStreamIntegration/TrigDistrib1/3LineTo8Way
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_3lineto8way is
  port (
    in1 : in std_logic_vector( 3-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 );
    out2 : out std_logic_vector( 1-1 downto 0 );
    out3 : out std_logic_vector( 1-1 downto 0 );
    out4 : out std_logic_vector( 1-1 downto 0 );
    out5 : out std_logic_vector( 1-1 downto 0 );
    out6 : out std_logic_vector( 1-1 downto 0 );
    out7 : out std_logic_vector( 1-1 downto 0 );
    out8 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_3lineto8way;
architecture structural of n3z_tonetest_3lineto8way is 
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 3-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal bitbasher_b0_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher_b1_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher_b2_net : std_logic_vector( 1-1 downto 0 );
  signal rom_data_net : std_logic_vector( 8-1 downto 0 );
  signal bitbasher1_b3_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher1_b4_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher1_b5_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher2_b6_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher2_b7_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= convert_dout_net;
  out2 <= convert1_dout_net;
  out3 <= convert2_dout_net;
  out4 <= convert3_dout_net;
  out5 <= convert4_dout_net;
  out6 <= convert5_dout_net;
  out7 <= convert6_dout_net;
  out8 <= convert7_dout_net;
  counter1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bitbasher : entity xil_defaultlib.sysgen_bitbasher_98fbdd9c51 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b0 => bitbasher_b0_net,
    b1 => bitbasher_b1_net,
    b2 => bitbasher_b2_net
  );
  bitbasher1 : entity xil_defaultlib.sysgen_bitbasher_3d92772749 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b3 => bitbasher1_b3_net,
    b4 => bitbasher1_b4_net,
    b5 => bitbasher1_b5_net
  );
  bitbasher2 : entity xil_defaultlib.sysgen_bitbasher_9a1c468a02 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b6 => bitbasher2_b6_net,
    b7 => bitbasher2_b7_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher_b0_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher_b1_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher_b2_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_b3_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_b4_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher1_b5_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher2_b6_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert7 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => bitbasher2_b7_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  rom : entity xil_defaultlib.n3z_tonetest_xlsprom_dist 
  generic map (
    addr_width => 3,
    c_address_width => 4,
    c_width => 8,
    core_name0 => "n3z_tonetest_dist_mem_gen_v8_0_2",
    latency => 1
  )
  port map (
    en => "1",
    addr => counter1_op_net,
    clk => clk_net,
    ce => ce_net,
    data => rom_data_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/FilterStreamIntegration/TrigDistrib1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_trigdistrib1 is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    in2 : in std_logic_vector( 3-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 );
    out2 : out std_logic_vector( 1-1 downto 0 );
    out3 : out std_logic_vector( 1-1 downto 0 );
    out4 : out std_logic_vector( 1-1 downto 0 );
    out5 : out std_logic_vector( 1-1 downto 0 );
    out6 : out std_logic_vector( 1-1 downto 0 );
    out7 : out std_logic_vector( 1-1 downto 0 );
    out8 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_trigdistrib1;
architecture structural of n3z_tonetest_trigdistrib1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical5_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 3-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  out2 <= logical1_y_net;
  out3 <= logical2_y_net;
  out4 <= logical3_y_net;
  out5 <= logical4_y_net;
  out6 <= logical5_y_net;
  out7 <= logical6_y_net;
  out8 <= logical7_y_net;
  logical_y_net_x0 <= trig;
  counter1_op_net <= in2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  x3lineto8way : entity xil_defaultlib.n3z_tonetest_3lineto8way 
  port map (
    in1 => counter1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => convert_dout_net,
    out2 => convert1_dout_net,
    out3 => convert2_dout_net,
    out4 => convert3_dout_net,
    out5 => convert4_dout_net,
    out6 => convert5_dout_net,
    out7 => convert6_dout_net,
    out8 => convert7_dout_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert_dout_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert1_dout_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert2_dout_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert3_dout_net,
    y => logical3_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert4_dout_net,
    y => logical4_y_net
  );
  logical5 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert5_dout_net,
    y => logical5_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert6_dout_net,
    y => logical6_y_net
  );
  logical7 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert7_dout_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/FilterStreamIntegration
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_filterstreamintegration is
  port (
    stream2accu : in std_logic_vector( 3-1 downto 0 );
    accu : in std_logic_vector( 1-1 downto 0 );
    signal_x0 : in std_logic_vector( 18-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    streammaturing : in std_logic_vector( 3-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    demodsignal : out std_logic_vector( 25-1 downto 0 );
    demodstrobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_filterstreamintegration;
architecture structural of n3z_tonetest_filterstreamintegration is 
  signal addsub_s_net : std_logic_vector( 25-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 3-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 3-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical5_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 3-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical5_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 25-1 downto 0 );
  signal accumulator2_q_net : std_logic_vector( 25-1 downto 0 );
  signal accumulator3_q_net : std_logic_vector( 25-1 downto 0 );
  signal accumulator4_q_net : std_logic_vector( 25-1 downto 0 );
  signal accumulator5_q_net : std_logic_vector( 25-1 downto 0 );
  signal accumulator6_q_net : std_logic_vector( 25-1 downto 0 );
  signal accumulator7_q_net : std_logic_vector( 25-1 downto 0 );
  signal accumulator8_q_net : std_logic_vector( 25-1 downto 0 );
  signal constant_op_net : std_logic_vector( 25-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 25-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 3-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 3-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 2-1 downto 0 );
  signal register6_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 3-1 downto 0 );
  signal register_q_net : std_logic_vector( 25-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 25-1 downto 0 );
begin
  demodsignal <= addsub_s_net;
  demodstrobe <= delay3_q_net;
  counter2_op_net <= stream2accu;
  convert1_dout_net <= accu;
  register2_q_net <= signal_x0;
  logical_y_net_x0 <= rst;
  counter1_op_net <= streammaturing;
  clk_net <= clk_1;
  ce_net <= ce_1;
  trigdistrib : entity xil_defaultlib.n3z_tonetest_trigdistrib 
  port map (
    trig => delay1_q_net,
    in2 => delay_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1,
    out2 => logical1_y_net_x0,
    out3 => logical2_y_net_x0,
    out4 => logical3_y_net_x0,
    out5 => logical4_y_net,
    out6 => logical5_y_net,
    out7 => logical6_y_net,
    out8 => logical7_y_net_x0
  );
  trigdistrib1 : entity xil_defaultlib.n3z_tonetest_trigdistrib1 
  port map (
    trig => logical_y_net_x0,
    in2 => counter1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net,
    out2 => logical1_y_net,
    out3 => logical2_y_net,
    out4 => logical3_y_net,
    out5 => logical4_y_net_x0,
    out6 => logical5_y_net_x0,
    out7 => logical6_y_net_x0,
    out8 => logical7_y_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_f7268c511b 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical_y_net,
    en => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  accumulator2 : entity xil_defaultlib.sysgen_accum_b0a8506b02 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical7_y_net,
    en => logical1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => accumulator2_q_net
  );
  accumulator3 : entity xil_defaultlib.sysgen_accum_b0a8506b02 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical6_y_net_x0,
    en => logical2_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => accumulator3_q_net
  );
  accumulator4 : entity xil_defaultlib.sysgen_accum_b0a8506b02 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical5_y_net_x0,
    en => logical3_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => accumulator4_q_net
  );
  accumulator5 : entity xil_defaultlib.sysgen_accum_b0a8506b02 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical4_y_net_x0,
    en => logical4_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator5_q_net
  );
  accumulator6 : entity xil_defaultlib.sysgen_accum_b0a8506b02 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical3_y_net,
    en => logical5_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator6_q_net
  );
  accumulator7 : entity xil_defaultlib.sysgen_accum_b0a8506b02 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical2_y_net,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator7_q_net
  );
  accumulator8 : entity xil_defaultlib.sysgen_accum_b0a8506b02 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical1_y_net,
    en => logical7_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => accumulator8_q_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsubmode 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 25,
    b_arith => xlSigned,
    b_bin_pt => 17,
    b_width => 25,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 26,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 26,
    latency => 0,
    mode_arith => xlUnsigned,
    mode_bin_pt => 0,
    mode_width => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 17,
    s_width => 25
  )
  port map (
    clr => '0',
    en => "1",
    a => constant_op_net,
    b => delay4_q_net,
    mode => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 3,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 2,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 4,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_5",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 4,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 3
  )
  port map (
    clr => '0',
    en => "1",
    a => slice2_y_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_a3235e36b1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_bd297e968a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 3
  )
  port map (
    en => '1',
    rst => '1',
    d => counter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 3
  )
  port map (
    en => '1',
    rst => '1',
    d => counter1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 14,
    reg_retiming => 0,
    reset => 0,
    width => 25
  )
  port map (
    en => '1',
    rst => '1',
    d => register_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_ea7bc0468a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice1_y_net,
    d1 => slice_y_net,
    y => logical_y_net_x2
  );
  mux : entity xil_defaultlib.sysgen_mux_78005b416f 
  port map (
    clr => '0',
    sel => delay2_q_net,
    d0 => accumulator1_q_net,
    d1 => accumulator8_q_net,
    d2 => accumulator7_q_net,
    d3 => accumulator6_q_net,
    d4 => accumulator5_q_net,
    d5 => accumulator4_q_net,
    d6 => accumulator3_q_net,
    d7 => accumulator2_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 25,
    init_value => b"0000000000000000000000000"
  )
  port map (
    rst => "0",
    d => mux_y_net,
    en => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register6 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => logical_y_net_x2,
    en => logical3_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 3,
    y_width => 1
  )
  port map (
    x => addsub1_s_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 3,
    y_width => 1
  )
  port map (
    x => addsub1_s_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 2,
    x_width => 3,
    y_width => 3
  )
  port map (
    x => counter1_op_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x10 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x10;
architecture structural of n3z_tonetest_monostable_x10 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/StreamControl1/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x11 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x11;
architecture structural of n3z_tonetest_monostable_x11 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1/StreamControl1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_streamcontrol1 is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    incstream : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    lut6lsbs : out std_logic_vector( 6-1 downto 0 );
    lutwindow3msbs : out std_logic_vector( 3-1 downto 0 );
    streamaddress : out std_logic_vector( 3-1 downto 0 );
    streamreachingmaturity : out std_logic_vector( 3-1 downto 0 );
    streamreachingmaturitytrig : out std_logic_vector( 1-1 downto 0 );
    square8khz : out std_logic_vector( 1-1 downto 0 );
    counter6khz : out std_logic_vector( 6-1 downto 0 )
  );
end n3z_tonetest_streamcontrol1;
architecture structural of n3z_tonetest_streamcontrol1 is 
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 3-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 3-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 3-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 6-1 downto 0 );
begin
  lut6lsbs <= counter_op_net;
  lutwindow3msbs <= addsub_s_net;
  streamaddress <= counter2_op_net;
  streamreachingmaturity <= counter1_op_net;
  streamreachingmaturitytrig <= logical_y_net;
  square8khz <= slice_y_net;
  delay1_q_net <= trig;
  convert_dout_net <= incstream;
  counter6khz <= counter_op_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x11 
  port map (
    in1 => relational1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 3,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 3,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 4,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_6",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 4,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 3
  )
  port map (
    clr => '0',
    en => "1",
    a => counter1_op_net,
    b => counter2_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_a0d784c0dd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_5",
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    rst => "0",
    clr => '0',
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter1 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_6",
    op_arith => xlUnsigned,
    op_width => 3
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  counter2 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_6",
    op_arith => xlUnsigned,
    op_width => 3
  )
  port map (
    rst => "0",
    clr => '0',
    en => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_71869bf5c6 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 6,
    y_width => 1
  )
  port map (
    x => counter_op_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/DemodulationSSB1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_demodulationssb1 is
  port (
    signalin : in std_logic_vector( 16-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    agcvalue : in std_logic_vector( 4-1 downto 0 );
    btaudio : in std_logic_vector( 16-1 downto 0 );
    nobtsignal : in std_logic_vector( 1-1 downto 0 );
    rxfreq : in std_logic_vector( 16-1 downto 0 );
    tx_high : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    demodsignal : out std_logic_vector( 18-1 downto 0 );
    demodsqstrobe : out std_logic_vector( 1-1 downto 0 );
    counter6khz : out std_logic_vector( 6-1 downto 0 );
    pulse8khz : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_demodulationssb1;
architecture structural of n3z_tonetest_demodulationssb1 is 
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal adcvalue_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 4-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub_s_net_x0 : std_logic_vector( 25-1 downto 0 );
  signal counter2_op_net_x0 : std_logic_vector( 5-1 downto 0 );
  signal bitbasher_m1_net : std_logic_vector( 1-1 downto 0 );
  signal bitbasher_m2_net : std_logic_vector( 2-1 downto 0 );
  signal bitbasher_iqaddress_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal ctrlbitsequence_data_net : std_logic_vector( 10-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 3-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 3-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 3-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 24-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net : std_logic_vector( 18-1 downto 0 );
  signal baseband_op_net : std_logic_vector( 16-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal concat_y_net : std_logic_vector( 9-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 9-1 downto 0 );
  signal slice_y_net : std_logic_vector( 8-1 downto 0 );
  signal concat2_y_net_x0 : std_logic_vector( 10-1 downto 0 );
  signal m1_y_net : std_logic_vector( 9-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal lut_data_net : std_logic_vector( 18-1 downto 0 );
  signal m2_y_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
begin
  demodsignal <= register_q_net;
  demodsqstrobe <= slice_y_net_x0;
  adcvalue_q_net <= signalin;
  delay1_q_net <= trig;
  slice8_y_net <= agcvalue;
  reinterpret_output_port_net_x0 <= btaudio;
  counter6khz <= counter_op_net;
  relational1_op_net <= nobtsignal;
  pulse8khz <= logical_y_net_x0;
  concat2_y_net <= rxfreq;
  slice11_y_net <= tx_high;
  clk_net <= clk_1;
  ce_net <= ce_1;
  agcandfilter1 : entity xil_defaultlib.n3z_tonetest_agcandfilter1 
  port map (
    in1 => addsub_s_net_x0,
    audiosampleclk => logical_y_net_x0,
    agcvalue => slice8_y_net,
    btaudio => reinterpret_output_port_net_x0,
    nobtsignal => relational1_op_net,
    tx_high => slice11_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => register_q_net
  );
  ctrlbitsequenceaddress : entity xil_defaultlib.n3z_tonetest_ctrlbitsequenceaddress 
  port map (
    trig => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    ctrlsequenceraddress => counter2_op_net_x0
  );
  ctrlsequencer : entity xil_defaultlib.n3z_tonetest_ctrlsequencer 
  port map (
    in1 => counter2_op_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    m1 => bitbasher_m1_net,
    m2 => bitbasher_m2_net,
    iqaddress => bitbasher_iqaddress_net,
    latchi => convert4_dout_net,
    latchq => convert3_dout_net,
    latchdemod => convert2_dout_net,
    accu => convert1_dout_net,
    incrmntstreamaddress => convert_dout_net,
    allctrlbits => ctrlbitsequence_data_net,
    iqadd_sub => convert5_dout_net
  );
  filterstreamintegration : entity xil_defaultlib.n3z_tonetest_filterstreamintegration 
  port map (
    stream2accu => counter2_op_net,
    accu => convert1_dout_net,
    signal_x0 => register2_q_net,
    rst => logical_y_net,
    streammaturing => counter1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    demodsignal => addsub_s_net_x0,
    demodstrobe => delay3_q_net
  );
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x10 
  port map (
    in1 => slice_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  streamcontrol1 : entity xil_defaultlib.n3z_tonetest_streamcontrol1 
  port map (
    trig => delay1_q_net,
    incstream => convert_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    lut6lsbs => counter_op_net,
    lutwindow3msbs => addsub_s_net,
    streamaddress => counter2_op_net,
    streamreachingmaturity => counter1_op_net,
    streamreachingmaturitytrig => logical_y_net,
    square8khz => slice_y_net_x0,
    counter6khz => counter_op_net
  );
  accumulator : entity xil_defaultlib.sysgen_accum_655e1dcf1c 
  port map (
    clr => '0',
    b => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsubmode 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 17,
    b_width => 18,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 19,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 19,
    latency => 0,
    mode_arith => xlUnsigned,
    mode_bin_pt => 0,
    mode_width => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 17,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => register3_q_net,
    b => register4_q_net,
    mode => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net_x1
  );
  baseband : entity xil_defaultlib.sysgen_constant_d5e395a873 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => baseband_op_net
  );
  cmult : entity xil_defaultlib.n3z_tonetest_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_bin_pt => 15,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 1,
    c_b_width => 16,
    c_output_width => 34,
    core_name0 => "n3z_tonetest_mult_gen_v12_0_1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult_p_net
  );
  concat : entity xil_defaultlib.sysgen_concat_29359719ea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => addsub_s_net,
    in1 => counter_op_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_df4adc5aa1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => bitbasher_iqaddress_net,
    in1 => slice_y_net,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_c972ec02f4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => bitbasher_m1_net,
    in1 => m1_y_net,
    y => concat2_y_net_x0
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice11_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net_x0
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net_x0
  );
  lut : entity xil_defaultlib.n3z_tonetest_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_5",
    latency => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => concat2_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    data => lut_data_net
  );
  m1 : entity xil_defaultlib.sysgen_mux_01f180e972 
  port map (
    clr => '0',
    sel => bitbasher_m1_net,
    d0 => concat1_y_net,
    d1 => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    y => m1_y_net
  );
  m2 : entity xil_defaultlib.sysgen_mux_0c551e4813 
  port map (
    clr => '0',
    sel => bitbasher_m2_net,
    d0 => reinterpret_output_port_net,
    d1 => register_q_net_x0,
    d2 => register1_q_net,
    d3 => addsub_s_net_x1,
    clk => clk_net,
    ce => ce_net,
    y => m2_y_net
  );
  mult : entity xil_defaultlib.n3z_tonetest_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 17,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 17,
    b_width => 18,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 18,
    c_baat => 18,
    c_output_width => 36,
    c_type => 0,
    core_name0 => "n3z_tonetest_mult_gen_v12_0_2",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 17,
    p_width => 18,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => m2_y_net,
    b => lut_data_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mux : entity xil_defaultlib.sysgen_mux_d788387139 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => convert_dout_net_x0,
    d0 => concat2_y_net,
    d1 => baseband_op_net,
    y => mux_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => mult_p_net,
    en => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net_x0
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => mult_p_net,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => mult_p_net,
    en => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => cmult_p_net,
    en => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register4 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 18,
    init_value => b"000000000000000000"
  )
  port map (
    rst => "0",
    d => cmult_p_net,
    en => delay1_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register4_q_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_93768b945e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => adcvalue_q_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 23,
    x_width => 24,
    y_width => 8
  )
  port map (
    x => accumulator_q_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/Buffer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_buffer_x2 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    user2kpfifofull : out std_logic
  );
end n3z_tonetest_buffer_x2;
architecture structural of n3z_tonetest_buffer_x2 is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal fifo_empty_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 7-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_percent_full_net : std_logic_vector( 1-1 downto 0 );
begin
  cmdout <= concat_y_net;
  register1_q_net <= cmd;
  logical_y_net_x0 <= newcmd;
  logical_y_net <= ackfifo;
  user2kpfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_e89a3b98d5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  fifo : entity xil_defaultlib.n3z_tonetest_xlfifogen 
  generic map (
    core_name0 => "n3z_tonetest_fifo_generator_v12_0_0",
    data_count_width => 4,
    data_width => 8,
    extra_registers => 0,
    has_ae => 0,
    has_af => 0,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '1',
    din => register1_q_net,
    we => delay_q_net(0),
    re => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net(0),
    percent_full => fifo_percent_full_net,
    full => fifo_full_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 6,
    x_width => 8,
    y_width => 7
  )
  port map (
    x => fifo_dout_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x12 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x12;
architecture structural of n3z_tonetest_monostable_x12 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational4_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational4_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x12 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x12;
architecture structural of n3z_tonetest_monostable1_x12 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational8_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational8_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational8_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2_x7 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2_x7;
architecture structural of n3z_tonetest_monostable2_x7 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  logical_y_net_x0 <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x8 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x8;
architecture structural of n3z_tonetest_subsystem1_x8 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_845cff379f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem10
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem10_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem10_x0;
architecture structural of n3z_tonetest_subsystem10_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_1a4e0cfb40 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"11100010"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem11
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem11 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem11;
architecture structural of n3z_tonetest_subsystem11 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_e09cd2cc02 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"01000110"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem12_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem12_x1;
architecture structural of n3z_tonetest_subsystem12_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  ack_fifo <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_e05d28d7b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"10010111"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem13 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem13;
architecture structural of n3z_tonetest_subsystem13 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_821288e337 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"01110101"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem14
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem14 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem14;
architecture structural of n3z_tonetest_subsystem14 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_f9ecb94ebe 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"01000110"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem2_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem2_x0;
architecture structural of n3z_tonetest_subsystem2_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem3;
architecture structural of n3z_tonetest_subsystem3 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4190c690be 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem4 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem4;
architecture structural of n3z_tonetest_subsystem4 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_731ac842ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem5 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem5;
architecture structural of n3z_tonetest_subsystem5 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_a218a1253f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem6 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem6;
architecture structural of n3z_tonetest_subsystem6 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_8f1ac0bb1b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"10010111"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem7 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem7;
architecture structural of n3z_tonetest_subsystem7 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_00dfbd154d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem8 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem8;
architecture structural of n3z_tonetest_subsystem8 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_2fb1f15adb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister/Subsystem9
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem9 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem9;
architecture structural of n3z_tonetest_subsystem9 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_c00788aea8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"01110101"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_outputregister_x3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmd2user : out std_logic_vector( 8-1 downto 0 );
    data2archive : out std_logic_vector( 16-1 downto 0 );
    data2archive_w : out std_logic_vector( 1-1 downto 0 );
    newcmd : out std_logic_vector( 1-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 );
    lcddata : out std_logic_vector( 8-1 downto 0 );
    lcd_ctrl : out std_logic_vector( 4-1 downto 0 );
    ram_add : out std_logic_vector( 10-1 downto 0 );
    latchon : out std_logic_vector( 8-1 downto 0 );
    write_ram : out std_logic_vector( 1-1 downto 0 );
    set_rxfreq : out std_logic_vector( 16-1 downto 0 );
    set_txfreq : out std_logic_vector( 16-1 downto 0 );
    lcdcontrast : out std_logic_vector( 6-1 downto 0 )
  );
end n3z_tonetest_outputregister_x3;
architecture structural of n3z_tonetest_outputregister_x3 is 
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 4-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 10-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 6-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 2-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
begin
  cmd2user <= register1_q_net_x5;
  data2archive <= concat4_y_net;
  data2archive_w <= logical_y_net_x3;
  newcmd <= logical_y_net_x1;
  ack_fifo <= logical_y_net_x4;
  lcddata <= register1_q_net_x4;
  lcd_ctrl <= slice6_y_net;
  ram_add <= concat1_y_net;
  latchon <= register1_q_net_x0;
  write_ram <= convert1_dout_net;
  set_rxfreq <= concat2_y_net;
  set_txfreq <= concat3_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  lcdcontrast <= slice17_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x8 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x11,
    strobe => logical_y_net_x3
  );
  subsystem10_x0 : entity xil_defaultlib.n3z_tonetest_subsystem10_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x10
  );
  subsystem11_x0 : entity xil_defaultlib.n3z_tonetest_subsystem11 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x9
  );
  subsystem12_x0 : entity xil_defaultlib.n3z_tonetest_subsystem12_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x8,
    ack_fifo => logical_y_net_x2
  );
  subsystem13 : entity xil_defaultlib.n3z_tonetest_subsystem13 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x7
  );
  subsystem14_x0 : entity xil_defaultlib.n3z_tonetest_subsystem14 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x6
  );
  subsystem2 : entity xil_defaultlib.n3z_tonetest_subsystem2_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x5,
    strobe => logical_y_net_x1
  );
  subsystem3 : entity xil_defaultlib.n3z_tonetest_subsystem3 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x4
  );
  subsystem4 : entity xil_defaultlib.n3z_tonetest_subsystem4 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x12
  );
  subsystem5_x0 : entity xil_defaultlib.n3z_tonetest_subsystem5 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x2
  );
  subsystem6 : entity xil_defaultlib.n3z_tonetest_subsystem6 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x1,
    strobe => logical_y_net
  );
  subsystem7 : entity xil_defaultlib.n3z_tonetest_subsystem7 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x0,
    strobe => logical_y_net_x0
  );
  subsystem8 : entity xil_defaultlib.n3z_tonetest_subsystem8 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net
  );
  subsystem9 : entity xil_defaultlib.n3z_tonetest_subsystem9 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x3
  );
  concat1 : entity xil_defaultlib.sysgen_concat_69beafd7ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice1_y_net,
    in1 => register1_q_net,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x3,
    in1 => register1_q_net_x9,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x7,
    in1 => register1_q_net_x6,
    y => concat3_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x10,
    in1 => register1_q_net_x11,
    y => concat4_y_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x2,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert5_dout_net,
    d1 => delay_q_net,
    y => logical_y_net_x4
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 8,
    y_width => 2
  )
  port map (
    x => register1_q_net_x1,
    y => slice1_y_net
  );
  slice17 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 5,
    x_width => 8,
    y_width => 6
  )
  port map (
    x => register1_q_net_x2,
    y => slice17_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x1,
    y => slice2_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x8,
    y => slice4_y_net
  );
  slice6 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x12,
    y => slice6_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/KeyPadinterface
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_keypadinterface is
  port (
    touchsignal : in std_logic_vector( 8-1 downto 0 );
    touchsignal1 : in std_logic_vector( 8-1 downto 0 );
    adcpeak : in std_logic_vector( 8-1 downto 0 );
    address : in std_logic_vector( 12-1 downto 0 );
    demodpeak : in std_logic_vector( 8-1 downto 0 );
    instruction : in std_logic_vector( 18-1 downto 0 );
    kp2userfifofull : in std_logic;
    keypadcmd : in std_logic_vector( 8-1 downto 0 );
    newkeypadcmd : in std_logic_vector( 1-1 downto 0 );
    ramdata : in std_logic_vector( 16-1 downto 0 );
    rstpico : in std_logic_vector( 1-1 downto 0 );
    starttonea : in std_logic_vector( 8-1 downto 0 );
    starttonealong : in std_logic_vector( 8-1 downto 0 );
    starttoneb : in std_logic_vector( 8-1 downto 0 );
    starttoneblong : in std_logic_vector( 8-1 downto 0 );
    stoptonea : in std_logic_vector( 8-1 downto 0 );
    stoptonealong : in std_logic_vector( 8-1 downto 0 );
    stoptoneb : in std_logic_vector( 8-1 downto 0 );
    stoptoneblong : in std_logic_vector( 8-1 downto 0 );
    txtone : in std_logic_vector( 8-1 downto 0 );
    writekp_ram : in std_logic_vector( 1-1 downto 0 );
    writeprogkeypadpico : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data2archive : out std_logic_vector( 16-1 downto 0 );
    data2archive_w : out std_logic_vector( 1-1 downto 0 );
    lcddata : out std_logic_vector( 8-1 downto 0 );
    lcdctrl : out std_logic_vector( 4-1 downto 0 );
    latchon : out std_logic_vector( 8-1 downto 0 );
    kpramrdbk : out std_logic_vector( 16-1 downto 0 );
    kpcmd2user : out std_logic_vector( 8-1 downto 0 );
    lcdcontrast : out std_logic_vector( 6-1 downto 0 );
    newkpcmd2user : out std_logic_vector( 1-1 downto 0 );
    rxfreq : out std_logic_vector( 16-1 downto 0 );
    resetpeak : out std_logic_vector( 1-1 downto 0 );
    txfreq : out std_logic_vector( 16-1 downto 0 );
    user2kpfifofull : out std_logic
  );
end n3z_tonetest_keypadinterface;
architecture structural of n3z_tonetest_keypadinterface is 
  signal concat4_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 4-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 8-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 12-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net_x1 : std_logic_vector( 10-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal assert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_bram_enable_net : std_logic_vector( 1-1 downto 0 );
  signal assert4_dout_net : std_logic_vector( 4-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 4-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 7-1 downto 0 );
  signal constant_op_net : std_logic_vector( 4-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_write_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_read_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal picoblaze6_address_net : std_logic_vector( 12-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 16-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 10-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_k_write_strobe_net : std_logic;
  signal picoblaze6_interrupt_ack_net : std_logic;
begin
  data2archive <= concat4_y_net_x0;
  data2archive_w <= logical_y_net_x5;
  lcddata <= register1_q_net_x7;
  lcdctrl <= slice6_y_net;
  latchon <= register1_q_net_x3;
  concat1_y_net <= touchsignal;
  concat2_y_net <= touchsignal1;
  register2_q_net <= adcpeak;
  concat1_y_net_x0 <= address;
  register2_q_net_x0 <= demodpeak;
  concat_y_net_x1 <= instruction;
  fifo_full_net_x0 <= kp2userfifofull;
  kpramrdbk <= dual_port_ram1_doutb_net;
  kpcmd2user <= register1_q_net_x6;
  register1_q_net_x5 <= keypadcmd;
  lcdcontrast <= slice17_y_net;
  newkpcmd2user <= logical_y_net_x6;
  logical_y_net <= newkeypadcmd;
  concat4_y_net <= ramdata;
  rxfreq <= concat2_y_net_x0;
  resetpeak <= logical_y_net_x3;
  relational5_op_net <= rstpico;
  slice10_y_net <= starttonea;
  slice9_y_net <= starttonealong;
  slice12_y_net <= starttoneb;
  slice13_y_net <= starttoneblong;
  register1_q_net_x2 <= stoptonea;
  register1_q_net_x1 <= stoptonealong;
  register1_q_net_x0 <= stoptoneb;
  register1_q_net <= stoptoneblong;
  txfreq <= addsub_s_net;
  register1_q_net_x4 <= txtone;
  user2kpfifofull <= fifo_full_net;
  relational8_op_net <= writekp_ram;
  relational4_op_net <= writeprogkeypadpico;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buffer_x0 : entity xil_defaultlib.n3z_tonetest_buffer_x2 
  port map (
    cmd => register1_q_net_x5,
    newcmd => logical_y_net,
    ackfifo => logical_y_net_x4,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x0,
    user2kpfifofull => fifo_full_net
  );
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x12 
  port map (
    in1 => relational4_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x12 
  port map (
    in1 => relational8_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2_x7 
  port map (
    in1 => logical_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x3
  );
  outputregister : entity xil_defaultlib.n3z_tonetest_outputregister_x3 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmd2user => register1_q_net_x6,
    data2archive => concat4_y_net_x0,
    data2archive_w => logical_y_net_x5,
    newcmd => logical_y_net_x6,
    ack_fifo => logical_y_net_x4,
    lcddata => register1_q_net_x7,
    lcd_ctrl => slice6_y_net,
    ram_add => concat1_y_net_x1,
    latchon => register1_q_net_x3,
    write_ram => convert1_dout_net_x0,
    set_rxfreq => concat2_y_net_x0,
    set_txfreq => concat3_y_net,
    lcdcontrast => slice17_y_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 17,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_7",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => concat3_y_net,
    b => register1_q_net_x4,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  assert1 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => picoblaze6_bram_enable_net,
    dout => assert1_dout_net
  );
  assert4 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 4,
    dout_width => 4
  )
  port map (
    din => slice2_y_net,
    dout => assert4_dout_net
  );
  concat : entity xil_defaultlib.sysgen_concat_30cbfc2d25 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1(0) => fifo_full_net_x0,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_7f14361dbf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_1eb6753fd5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c0edae39a5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => picoblaze6_write_strobe_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => picoblaze6_read_strobe_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert7 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => assert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  dual_port_ram : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_7",
    latency => 1
  )
  port map (
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => picoblaze6_address_net,
    dina => constant5_op_net,
    wea => constant4_op_net,
    addrb => concat1_y_net_x0,
    dinb => concat_y_net_x1,
    web => logical_y_net_x1,
    ena => convert7_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 10,
    c_address_width_b => 10,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_8",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => concat1_y_net_x1,
    dina => concat4_y_net_x0,
    wea => convert1_dout_net_x0,
    addrb => slice4_y_net,
    dinb => concat4_y_net,
    web => logical_y_net_x2,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  logical : entity xil_defaultlib.sysgen_logical_41c8cd19f6 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x0
  );
  mux : entity xil_defaultlib.sysgen_mux_4dadff0a56 
  port map (
    clr => '0',
    sel => assert4_dout_net,
    d0 => concat_y_net_x0,
    d1 => concat1_y_net,
    d2 => slice_y_net,
    d3 => slice1_y_net,
    d4 => concat_y_net,
    d5 => concat2_y_net,
    d6 => register2_q_net,
    d7 => register2_q_net_x0,
    d8 => slice10_y_net,
    d9 => slice9_y_net,
    d10 => slice12_y_net,
    d11 => slice13_y_net,
    d12 => register1_q_net_x2,
    d13 => register1_q_net_x1,
    d14 => register1_q_net_x0,
    d15 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  picoblaze6 : entity xil_defaultlib.kcpsm6 
  generic map (
    hwbuild => X"00",
    interrupt_vector => X"FFF",
    scratch_pad_memory_size => 256
  )
  port map (
    instruction => convert4_dout_net,
    in_port => mux_y_net,
    interrupt => convert1_dout_net(0),
    sleep => convert1_dout_net(0),
    reset => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    address => picoblaze6_address_net,
    bram_enable => picoblaze6_bram_enable_net(0),
    out_port => picoblaze6_out_port_net,
    port_id => picoblaze6_port_id_net,
    write_strobe => picoblaze6_write_strobe_net(0),
    k_write_strobe => picoblaze6_k_write_strobe_net,
    read_strobe => picoblaze6_read_strobe_net(0),
    interrupt_ack => picoblaze6_interrupt_ack_net
  );
  relational : entity xil_defaultlib.sysgen_relational_e71d3c6531 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => assert4_dout_net,
    b => constant_op_net,
    op => relational_op_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => picoblaze6_port_id_net,
    y => slice2_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 12,
    y_width => 10
  )
  port map (
    x => concat1_y_net_x0,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Latch
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_latch_x1 is
  port (
    set : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    state : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_latch_x1;
architecture structural of n3z_tonetest_latch_x1 is 
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal set1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  state <= register2_q_net;
  relational_op_net <= set;
  logical_y_net <= rst;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => set1_op_net,
    rst => logical_y_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  set1 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => set1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LevelMonitor/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x0;
architecture structural of n3z_tonetest_monostable_x0 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice2_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LevelMonitor/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x2;
architecture structural of n3z_tonetest_monostable1_x2 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LevelMonitor
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_levelmonitor is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    rstpeak : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 8-1 downto 0 );
    pksignal : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_levelmonitor;
architecture structural of n3z_tonetest_levelmonitor is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 26-1 downto 0 );
  signal register_q_net : std_logic_vector( 26-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 8-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 7-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal counter_op_net : std_logic_vector( 20-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 7-1 downto 0 );
  signal register3_q_net : std_logic_vector( 8-1 downto 0 );
begin
  signallevel <= concat_y_net;
  pksignal <= register2_q_net;
  mux1_y_net <= in1;
  delay1_q_net <= en;
  logical_y_net_x1 <= rstpeak;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x0 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x2 
  port map (
    in1 => relational_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsubmode 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 28,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_8",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 28,
    latency => 0,
    mode_arith => xlUnsigned,
    mode_bin_pt => 0,
    mode_width => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => convert2_dout_net,
    mode => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.n3z_tonetest_xladdsubmode 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_9",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 0,
    mode_arith => xlUnsigned,
    mode_bin_pt => 0,
    mode_width => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 8
  )
  port map (
    clr => '0',
    en => "1",
    a => constant_op_net,
    b => convert2_dout_net,
    mode => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_c027f7f292 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net,
    in1 => counter1_op_net,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 8,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_9",
    op_arith => xlUnsigned,
    op_width => 20
  )
  port map (
    rst => "0",
    clr => '0',
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter1 : entity xil_defaultlib.sysgen_counter_0d564c4081 
  port map (
    clr => '0',
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 26,
    init_value => b"00000000000000000000000000"
  )
  port map (
    d => addsub_s_net,
    rst => convert1_dout_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 7,
    init_value => b"0000000"
  )
  port map (
    rst => "0",
    d => slice3_y_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    d => register3_q_net,
    rst => logical_y_net_x1,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => addsub1_s_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_e7217667d7 
  port map (
    clr => '0',
    a => register2_q_net,
    b => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => mux1_y_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 19,
    new_msb => 19,
    x_width => 20,
    y_width => 1
  )
  port map (
    x => counter_op_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 19,
    new_msb => 25,
    x_width => 26,
    y_width => 7
  )
  port map (
    x => register_q_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 13,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => mux1_y_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LevelMonitor1/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x3;
architecture structural of n3z_tonetest_monostable1_x3 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LevelMonitor1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_levelmonitor1 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    rstpeak : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    pksignal : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_levelmonitor1;
architecture structural of n3z_tonetest_levelmonitor1 is 
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 8-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
begin
  pksignal <= register2_q_net;
  concat4_y_net <= in1;
  logical_y_net <= en;
  logical_y_net_x0 <= rstpeak;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x3 
  port map (
    in1 => relational_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  addsub1 : entity xil_defaultlib.n3z_tonetest_xladdsubmode 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_9",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 0,
    mode_arith => xlUnsigned,
    mode_bin_pt => 0,
    mode_width => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 8
  )
  port map (
    clr => '0',
    en => "1",
    a => constant_op_net,
    b => convert2_dout_net,
    mode => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 8,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    d => register3_q_net,
    rst => logical_y_net_x0,
    en => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => addsub1_s_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_e7217667d7 
  port map (
    clr => '0',
    a => register2_q_net,
    b => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => concat4_y_net,
    y => slice1_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => concat4_y_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/FastLevelMonitor/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x1;
architecture structural of n3z_tonetest_monostable_x1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice2_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/FastLevelMonitor
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_fastlevelmonitor is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_fastlevelmonitor;
architecture structural of n3z_tonetest_fastlevelmonitor is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal addsub12_s_net : std_logic_vector( 9-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 13-1 downto 0 );
  signal register_q_net : std_logic_vector( 13-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 8-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 6-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal counter_op_net : std_logic_vector( 8-1 downto 0 );
begin
  signallevel <= register1_q_net;
  addsub12_s_net <= in1;
  delay1_q_net <= en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x1 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsubmode 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 13,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 15,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_10",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 15,
    latency => 0,
    mode_arith => xlUnsigned,
    mode_bin_pt => 0,
    mode_width => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 13
  )
  port map (
    clr => '0',
    en => "1",
    a => register_q_net,
    b => convert2_dout_net,
    mode => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 6,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_3",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 9,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 8
  )
  port map (
    clr => '0',
    en => "1",
    a => slice3_y_net,
    b => slice5_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 8,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 8,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_2",
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    rst => "0",
    clr => '0',
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 13,
    init_value => b"0000000000000"
  )
  port map (
    d => addsub_s_net,
    rst => convert1_dout_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => addsub1_s_net,
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 8,
    x_width => 9,
    y_width => 1
  )
  port map (
    x => addsub12_s_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 7,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => counter_op_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 12,
    x_width => 13,
    y_width => 8
  )
  port map (
    x => register_q_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 9,
    y_width => 8
  )
  port map (
    x => addsub12_s_net,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 12,
    x_width => 13,
    y_width => 6
  )
  port map (
    x => register_q_net,
    y => slice5_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/LoranTrigger
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_lorantrigger is
  port (
    loransignal : in std_logic_vector( 9-1 downto 0 );
    thresh : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    trig : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_lorantrigger;
architecture structural of n3z_tonetest_lorantrigger is 
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub12_s_net : std_logic_vector( 9-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice_y_net : std_logic_vector( 7-1 downto 0 );
begin
  trig <= relational_op_net;
  addsub12_s_net <= loransignal;
  register1_q_net <= thresh;
  clk_net <= clk_1;
  ce_net <= ce_1;
  relational : entity xil_defaultlib.sysgen_relational_de33fa5c1a 
  port map (
    clr => '0',
    a => addsub12_s_net,
    b => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 7,
    x_width => 8,
    y_width => 7
  )
  port map (
    x => register1_q_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/LranPass/Eighth
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_eighth is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_eighth;
architecture structural of n3z_tonetest_eighth is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 9-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 6-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub_s_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_98f9db0373 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice2_y_net,
    in2 => slice1_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_938b6a704d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 8,
    x_width => 9,
    y_width => 6
  )
  port map (
    x => addsub_s_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 8,
    x_width => 9,
    y_width => 1
  )
  port map (
    x => addsub_s_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/LranPass/Half
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_half is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_half;
architecture structural of n3z_tonetest_half is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 9-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub3_s_net <= in1;
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_938b6a704d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 8,
    x_width => 9,
    y_width => 8
  )
  port map (
    x => addsub3_s_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/LranPass/Half1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_half1 is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_half1;
architecture structural of n3z_tonetest_half1 is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 9-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub6_s_net <= in1;
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_938b6a704d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 8,
    x_width => 9,
    y_width => 8
  )
  port map (
    x => addsub6_s_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/LranPass/Quarter
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_quarter is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_quarter;
architecture structural of n3z_tonetest_quarter is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 9-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 7-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub1_s_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_cd0d06caf2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice1_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_938b6a704d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 8,
    x_width => 9,
    y_width => 7
  )
  port map (
    x => addsub1_s_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 8,
    x_width => 9,
    y_width => 1
  )
  port map (
    x => addsub1_s_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/LranPass/Quarter2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_quarter2 is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_quarter2;
architecture structural of n3z_tonetest_quarter2 is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 9-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 7-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub2_s_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_cd0d06caf2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice1_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_938b6a704d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 8,
    x_width => 9,
    y_width => 7
  )
  port map (
    x => addsub2_s_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 8,
    x_width => 9,
    y_width => 1
  )
  port map (
    x => addsub2_s_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect/LranPass
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_lranpass is
  port (
    signal_x0 : in std_logic_vector( 16-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 9-1 downto 0 )
  );
end n3z_tonetest_lranpass;
architecture structural of n3z_tonetest_lranpass is 
  signal addsub12_s_net : std_logic_vector( 9-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal delay15_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 8-1 downto 0 );
  signal addsub10_s_net : std_logic_vector( 10-1 downto 0 );
  signal addsub8_s_net : std_logic_vector( 9-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 9-1 downto 0 );
  signal addsub11_s_net : std_logic_vector( 9-1 downto 0 );
  signal addsub9_s_net : std_logic_vector( 10-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay14_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 9-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay13_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay20_q_net : std_logic_vector( 8-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 9-1 downto 0 );
  signal delay_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay12_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= addsub12_s_net;
  mux1_y_net <= signal_x0;
  delay1_q_net <= strobe;
  clk_net <= clk_1;
  ce_net <= ce_1;
  eighth : entity xil_defaultlib.n3z_tonetest_eighth 
  port map (
    in1 => addsub_s_net,
    out1 => reinterpret_output_port_net
  );
  half : entity xil_defaultlib.n3z_tonetest_half 
  port map (
    in1 => addsub3_s_net,
    out1 => reinterpret_output_port_net_x1
  );
  half1 : entity xil_defaultlib.n3z_tonetest_half1 
  port map (
    in1 => addsub6_s_net,
    out1 => reinterpret_output_port_net_x2
  );
  quarter : entity xil_defaultlib.n3z_tonetest_quarter 
  port map (
    in1 => addsub1_s_net,
    out1 => reinterpret_output_port_net_x3
  );
  quarter2 : entity xil_defaultlib.n3z_tonetest_quarter2 
  port map (
    in1 => addsub2_s_net,
    out1 => reinterpret_output_port_net_x4
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_11",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => reinterpret_output_port_net_x0,
    b => delay15_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_11",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => delay6_q_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub10 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 9,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 9,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 10,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_12",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 10,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 10
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub8_s_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub10_s_net
  );
  addsub11 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 10,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 10,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 11,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_13",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 11,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub10_s_net,
    b => addsub9_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub11_s_net
  );
  addsub12 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 9,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 10,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_12",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 10,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub11_s_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub12_s_net
  );
  addsub2 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_14",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => delay14_q_net,
    b => delay17_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_15",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => delay4_q_net,
    b => delay1_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_15",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => delay8_q_net,
    b => delay13_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_15",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => delay9_q_net,
    b => delay11_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_15",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => delay18_q_net,
    b => delay20_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_11",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => reinterpret_output_port_net_x3,
    b => reinterpret_output_port_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addsub7_s_net
  );
  addsub8 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_11",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 9
  )
  port map (
    clr => '0',
    en => "1",
    a => reinterpret_output_port_net_x4,
    b => reinterpret_output_port_net_x2,
    clk => clk_net,
    ce => ce_net,
    s => addsub8_s_net
  );
  addsub9 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 9,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 9,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 10,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_12",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 10,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 10
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub7_s_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub9_s_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay6_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net_x0
  );
  delay10 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay9_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay10_q_net
  );
  delay11 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay10_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay11_q_net
  );
  delay12 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay11_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay12_q_net
  );
  delay13 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay5_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay13_q_net
  );
  delay14 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay21_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay14_q_net
  );
  delay15 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay14_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay15_q_net
  );
  delay16 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '1',
    d => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay18_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net
  );
  delay18 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay12_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay17_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay1_q_net_x0,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay20 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay19_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay20_q_net
  );
  delay21 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay20_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  delay3 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay2_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay3_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay4_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => reinterpret_output_port_net_x0,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay13_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay7_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay8_q_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay9_q_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_938b6a704d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net_x0
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => mux1_y_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/LoranPulsedetect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_loranpulsedetect is
  port (
    signal_x0 : in std_logic_vector( 16-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    trig : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_loranpulsedetect;
architecture structural of n3z_tonetest_loranpulsedetect is 
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal addsub12_s_net : std_logic_vector( 9-1 downto 0 );
begin
  trig <= relational_op_net;
  mux1_y_net <= signal_x0;
  delay1_q_net <= strobe;
  clk_net <= clk_1;
  ce_net <= ce_1;
  fastlevelmonitor : entity xil_defaultlib.n3z_tonetest_fastlevelmonitor 
  port map (
    in1 => addsub12_s_net,
    en => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    signallevel => register1_q_net
  );
  lorantrigger : entity xil_defaultlib.n3z_tonetest_lorantrigger 
  port map (
    loransignal => addsub12_s_net,
    thresh => register1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    trig => relational_op_net
  );
  lranpass : entity xil_defaultlib.n3z_tonetest_lranpass 
  port map (
    signal_x0 => mux1_y_net,
    strobe => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub12_s_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable;
architecture structural of n3z_tonetest_monostable is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert3_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert3_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1;
architecture structural of n3z_tonetest_monostable1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert2_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2;
architecture structural of n3z_tonetest_monostable2 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert1_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Monostable3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable3;
architecture structural of n3z_tonetest_monostable3 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert3_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert3_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Monostable4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable4;
architecture structural of n3z_tonetest_monostable4 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert4_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert4_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Monostable5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable5 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable5;
architecture structural of n3z_tonetest_monostable5 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert8_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert8_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert8_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/SSBmodulator /Latch
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_latch is
  port (
    set : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    state : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_latch;
architecture structural of n3z_tonetest_latch is 
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal set1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  state <= register2_q_net;
  convert2_dout_net <= set;
  logical_y_net <= rst;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => set1_op_net,
    rst => logical_y_net,
    en => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  set1 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => set1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/SSBmodulator /Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x0;
architecture structural of n3z_tonetest_monostable1_x0 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert1_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/SSBmodulator /Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2_x0;
architecture structural of n3z_tonetest_monostable2_x0 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/SSBmodulator /Monostable3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable3_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable3_x0;
architecture structural of n3z_tonetest_monostable3_x0 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice2_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/SSBmodulator /RampGen
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_rampgen is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 17-1 downto 0 )
  );
end n3z_tonetest_rampgen;
architecture structural of n3z_tonetest_rampgen is 
  signal slice_y_net : std_logic_vector( 17-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal accumulator_q_net : std_logic_vector( 21-1 downto 0 );
begin
  out1 <= slice_y_net;
  addsub_s_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  accumulator : entity xil_defaultlib.sysgen_accum_6bc94263f5 
  port map (
    clr => '0',
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 20,
    x_width => 21,
    y_width => 17
  )
  port map (
    x => accumulator_q_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/SSBmodulator /Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    in3 : in std_logic_vector( 17-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 );
    polarity : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem;
architecture structural of n3z_tonetest_subsystem is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 17-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub_s_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 15-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= logical_y_net;
  polarity <= slice2_y_net;
  reinterpret1_output_port_net <= in1;
  addsub_s_net <= in3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 8,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 18,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_18",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 18,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 0,
    s_width => 18
  )
  port map (
    clr => '0',
    en => "1",
    a => constant_op_net,
    b => reinterpret1_output_port_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net_x0
  );
  concat : entity xil_defaultlib.sysgen_concat_c95b4fd9a5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => inverter_op_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_d2cee2c8ad 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_1346821100 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_58583f9b7b 
  port map (
    clr => '0',
    a => reinterpret_output_port_net,
    b => addsub_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 17,
    y_width => 15
  )
  port map (
    x => addsub_s_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 17,
    y_width => 1
  )
  port map (
    x => addsub_s_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 16,
    x_width => 17,
    y_width => 1
  )
  port map (
    x => addsub_s_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/SSBmodulator 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_ssbmodulator is
  port (
    audioamp : in std_logic_vector( 8-1 downto 0 );
    carrierfreq : in std_logic_vector( 16-1 downto 0 );
    tx_enable : in std_logic_vector( 1-1 downto 0 );
    txphase : in std_logic_vector( 16-1 downto 0 );
    phaseincrement : in std_logic_vector( 8-1 downto 0 );
    newphasevalue : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    hina : out std_logic_vector( 1-1 downto 0 );
    hinb : out std_logic_vector( 1-1 downto 0 );
    lina : out std_logic_vector( 1-1 downto 0 );
    linb : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_ssbmodulator;
architecture structural of n3z_tonetest_ssbmodulator is 
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 17-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 17-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 19-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 17-1 downto 0 );
  signal concat_y_net : std_logic_vector( 17-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 7-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 7-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical8_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical10_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical5_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical9_y_net : std_logic_vector( 1-1 downto 0 );
begin
  hina <= logical2_y_net;
  hinb <= logical3_y_net;
  lina <= mux_y_net;
  linb <= mux1_y_net;
  register1_q_net_x0 <= audioamp;
  addsub_s_net_x0 <= carrierfreq;
  delay_q_net <= tx_enable;
  concat7_y_net <= txphase;
  register1_q_net <= phaseincrement;
  logical_y_net_x3 <= newphasevalue;
  clk_net <= clk_1;
  ce_net <= ce_1;
  latch : entity xil_defaultlib.n3z_tonetest_latch 
  port map (
    set => convert2_dout_net,
    rst => logical_y_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    state => register2_q_net
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x0 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2_x0 
  port map (
    in1 => slice_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  monostable3 : entity xil_defaultlib.n3z_tonetest_monostable3_x0 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  rampgen : entity xil_defaultlib.n3z_tonetest_rampgen 
  port map (
    in1 => addsub_s_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => slice_y_net
  );
  subsystem : entity xil_defaultlib.n3z_tonetest_subsystem 
  port map (
    in1 => reinterpret1_output_port_net,
    in3 => addsub_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2,
    polarity => slice2_y_net_x0
  );
  accumulator : entity xil_defaultlib.sysgen_accum_fff4f158ea 
  port map (
    clr => '0',
    b => register1_q_net,
    rst => logical_y_net_x3,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  addsub : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 17,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 17,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 18,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_16",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 18,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 17
  )
  port map (
    clr => '0',
    en => "1",
    a => slice_y_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.n3z_tonetest_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 17,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 18,
    core_name0 => "n3z_tonetest_c_addsub_v12_0_17",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 18,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 17
  )
  port map (
    clr => '0',
    en => "1",
    a => concat_y_net,
    b => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_7898937da8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register_q_net,
    in1 => constant2_op_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_7f250806b7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant4_op_net,
    in1 => delay_q_net_x0,
    in2 => constant1_op_net,
    y => concat1_y_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_1eb6753fd5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_1315fc97a9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice2_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  counter1 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_10",
    op_arith => xlUnsigned,
    op_width => 7
  )
  port map (
    clr => '0',
    rst => logical_y_net_x1,
    en => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '1',
    d => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net_x0
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical4_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical8_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_cddbae5b41 
  port map (
    clr => '0',
    d0 => logical_y_net_x2,
    d1 => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x4
  );
  logical1 : entity xil_defaultlib.sysgen_logical_cddbae5b41 
  port map (
    clr => '0',
    d0 => logical_y_net_x2,
    d1 => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical10 : entity xil_defaultlib.sysgen_logical_d2cee2c8ad 
  port map (
    clr => '0',
    d0 => register2_q_net,
    d1 => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical10_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_d2cee2c8ad 
  port map (
    clr => '0',
    d0 => logical_y_net_x4,
    d1 => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_d2cee2c8ad 
  port map (
    clr => '0',
    d0 => logical1_y_net,
    d1 => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_f48e67331f 
  port map (
    clr => '0',
    d0 => logical_y_net_x2,
    d1 => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical4_y_net
  );
  logical5 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical4_y_net,
    d1 => delay1_q_net,
    y => logical5_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_d2cee2c8ad 
  port map (
    clr => '0',
    d0 => logical5_y_net,
    d1 => logical10_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  logical7 : entity xil_defaultlib.sysgen_logical_d2cee2c8ad 
  port map (
    clr => '0',
    d0 => logical9_y_net,
    d1 => logical10_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
  logical8 : entity xil_defaultlib.sysgen_logical_f48e67331f 
  port map (
    clr => '0',
    d0 => logical_y_net_x2,
    d1 => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical8_y_net
  );
  logical9 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical8_y_net,
    d1 => delay2_q_net,
    y => logical9_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_05a9e9736c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => register2_q_net,
    d0 => logical3_y_net,
    d1 => logical6_y_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_05a9e9736c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => register2_q_net,
    d0 => logical2_y_net,
    d1 => logical7_y_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_0f61a6a8ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => register2_q_net,
    d0 => constant3_op_net,
    d1 => register1_q_net_x0,
    y => mux2_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => concat7_y_net,
    en => logical_y_net_x3,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_0aab830ee0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat1_y_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 16,
    x_width => 17,
    y_width => 1
  )
  port map (
    x => addsub_s_net,
    y => slice_y_net_x0
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 18,
    x_width => 19,
    y_width => 16
  )
  port map (
    x => accumulator_q_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 7,
    y_width => 1
  )
  port map (
    x => counter1_op_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Signed_Unsigned_offset
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_signed_unsigned_offset is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 14-1 downto 0 )
  );
end n3z_tonetest_signed_unsigned_offset;
architecture structural of n3z_tonetest_signed_unsigned_offset is 
  signal concat_y_net : std_logic_vector( 14-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 13-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= concat_y_net;
  reinterpret_output_port_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_0d27e87d86 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => inverter_op_net,
    in1 => slice2_y_net,
    y => concat_y_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 14,
    x_width => 16,
    y_width => 13
  )
  port map (
    x => reinterpret_output_port_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => reinterpret_output_port_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem1/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2_x1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2_x1;
architecture structural of n3z_tonetest_monostable2_x1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert1_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem1/Subsystem1/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x1;
architecture structural of n3z_tonetest_monostable1_x1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  register2_q_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => register2_q_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem1/Subsystem1/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable2_x2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable2_x2;
architecture structural of n3z_tonetest_monostable2_x2 is 
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  inverter_op_net_x0 <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => inverter_op_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net_x0,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem1/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x0 is
  port (
    sdoa : in std_logic_vector( 1-1 downto 0 );
    sck : in std_logic_vector( 1-1 downto 0 );
    conv : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    adcvaluea : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x0;
architecture structural of n3z_tonetest_subsystem1_x0 is 
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal std_bt_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 15-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
begin
  adcvaluea <= reinterpret_output_port_net;
  std_bt_net <= sdoa;
  convert1_dout_net <= sck;
  register2_q_net <= conv;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x1 
  port map (
    in1 => register2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2_x2 
  port map (
    in1 => inverter_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  concat : entity xil_defaultlib.sysgen_concat_73376b6c30 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice_y_net,
    in1 => std_bt_net,
    y => concat_y_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    d => concat_y_net,
    rst => logical_y_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => concat_y_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => register1_q_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 16,
    y_width => 15
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1 is
  port (
    pcmin : in std_logic_vector( 1-1 downto 0 );
    x128khz : in std_logic_vector( 1-1 downto 0 );
    sfs : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    audioout : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_subsystem1;
architecture structural of n3z_tonetest_subsystem1 is 
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal std_bt_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
begin
  audioout <= reinterpret_output_port_net;
  std_bt_net <= pcmin;
  convert1_dout_net <= x128khz;
  relational1_op_net <= sfs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2_x1 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x0 
  port map (
    sdoa => std_bt_net,
    sck => convert1_dout_net,
    conv => register2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    adcvaluea => reinterpret_output_port_net
  );
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => relational1_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem2/Divide2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_divide2 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end n3z_tonetest_divide2;
architecture structural of n3z_tonetest_divide2 is 
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 15-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  delay_q_net <= in1;
  concat1 : entity xil_defaultlib.sysgen_concat_c95b4fd9a5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice4_y_net,
    in1 => slice1_y_net,
    y => concat1_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat1_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 15,
    x_width => 16,
    y_width => 15
  )
  port map (
    x => delay_q_net,
    y => slice1_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => delay_q_net,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem2/Latch
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_latch_x0 is
  port (
    set : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    state : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_latch_x0;
architecture structural of n3z_tonetest_latch_x0 is 
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal set1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  state <= register2_q_net;
  logical_y_net <= set;
  convert2_dout_net <= rst;
  clk_net <= clk_1;
  ce_net <= ce_1;
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => set1_op_net,
    rst => convert2_dout_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  set1 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => set1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem2/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x4;
architecture structural of n3z_tonetest_monostable_x4 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  logical1_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical1_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem2 is
  port (
    signal_x0 : in std_logic_vector( 16-1 downto 0 );
    strbe : in std_logic_vector( 1-1 downto 0 );
    loranpulsetrig : in std_logic_vector( 1-1 downto 0 );
    enablegating : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    archive : out std_logic_vector( 16-1 downto 0 );
    cleanedup : out std_logic_vector( 16-1 downto 0 );
    lorantrig : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem2;
architecture structural of n3z_tonetest_subsystem2 is 
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal adcvalue_q_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net : std_logic_vector( 2-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 7-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 7-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 7-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  archive <= delay_q_net;
  cleanedup <= adcvalue_q_net;
  mux1_y_net <= signal_x0;
  delay1_q_net <= strbe;
  relational_op_net_x0 <= loranpulsetrig;
  logical1_y_net_x0 <= enablegating;
  lorantrig <= logical_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  divide2 : entity xil_defaultlib.n3z_tonetest_divide2 
  port map (
    in1 => delay_q_net,
    out1 => reinterpret_output_port_net
  );
  latch : entity xil_defaultlib.n3z_tonetest_latch_x0 
  port map (
    set => logical_y_net,
    rst => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    state => register2_q_net
  );
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x4 
  port map (
    in1 => logical1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  adcvalue : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => mux_y_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => adcvalue_q_net
  );
  concat : entity xil_defaultlib.sysgen_concat_8327f19d3f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => convert1_dout_net,
    in1 => convert_dout_net,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_f948f4cbc9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_74a583781e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_43831abc60 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  counter1 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_10",
    op_arith => xlUnsigned,
    op_width => 7
  )
  port map (
    clr => '0',
    rst => inverter_op_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 15,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    rst => '1',
    d => mux1_y_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    y => logical_y_net_x1
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net_x0,
    d1 => convert3_dout_net,
    y => logical1_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_23d9ca36d1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => concat_y_net,
    d0 => delay_q_net,
    d1 => reinterpret_output_port_net,
    d2 => reinterpret_output_port_net,
    d3 => constant2_op_net,
    y => mux_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_2ff909d7aa 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_b71d0844b7 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 7,
    y_width => 1
  )
  port map (
    x => counter1_op_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem4/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x2;
architecture structural of n3z_tonetest_monostable_x2 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert2_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem4/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x4;
architecture structural of n3z_tonetest_monostable1_x4 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert1_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem4/PCMclock/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable1_x5 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable1_x5;
architecture structural of n3z_tonetest_monostable1_x5 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice3_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice3_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem4/PCMclock
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_pcmclock is
  port (
    square128khz : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    x128khz : out std_logic_vector( 1-1 downto 0 );
    clk8khz : out std_logic_vector( 1-1 downto 0 );
    stfs : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_pcmclock;
architecture structural of n3z_tonetest_pcmclock is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 4-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 4-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 4-1 downto 0 );
begin
  x128khz <= delay_q_net;
  clk8khz <= relational_op_net;
  stfs <= relational1_op_net;
  slice3_y_net <= square128khz;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x5 
  port map (
    in1 => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_2780f822c8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c91082eec8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_4",
    op_arith => xlUnsigned,
    op_width => 4
  )
  port map (
    rst => "0",
    clr => '0',
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_a9bcc6fcd1 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem4_x1 is
  port (
    audioin : in std_logic_vector( 16-1 downto 0 );
    square128khz : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    pcmout : out std_logic_vector( 1-1 downto 0 );
    x128khz : out std_logic_vector( 1-1 downto 0 );
    sfs : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem4_x1;
architecture structural of n3z_tonetest_subsystem4_x1 is 
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 15-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
begin
  pcmout <= slice2_y_net;
  x128khz <= convert1_dout_net;
  sfs <= relational1_op_net;
  concat_y_net <= audioin;
  slice3_y_net <= square128khz;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x2 
  port map (
    in1 => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1_x4 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  pcmclock : entity xil_defaultlib.n3z_tonetest_pcmclock 
  port map (
    square128khz => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    x128khz => delay_q_net,
    clk8khz => relational_op_net,
    stfs => relational1_op_net
  );
  concat : entity xil_defaultlib.sysgen_concat_73376b6c30 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice_y_net,
    in1 => slice2_y_net,
    y => concat_y_net_x0
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  mux : entity xil_defaultlib.sysgen_mux_fabffae51a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => logical_y_net,
    d0 => concat_y_net_x0,
    d1 => register_q_net,
    y => mux_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => reinterpret_output_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => mux_y_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0aab830ee0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 16,
    y_width => 15
  )
  port map (
    x => register1_q_net,
    y => slice_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => register1_q_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ToneDetect/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_monostable_x3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_monostable_x3;
architecture structural of n3z_tonetest_monostable_x3 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational11_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  relational11_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => relational11_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational11_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ToneDetect/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x2;
architecture structural of n3z_tonetest_subsystem1_x2 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_a218a1253f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ToneDetect/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem2_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem2_x2;
architecture structural of n3z_tonetest_subsystem2_x2 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ToneDetect/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem3_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem3_x1;
architecture structural of n3z_tonetest_subsystem3_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4190c690be 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ToneDetect/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem4_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem4_x2;
architecture structural of n3z_tonetest_subsystem4_x2 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_731ac842ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze6_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ToneDetect/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_outputregister is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmd2user : out std_logic_vector( 8-1 downto 0 );
    newcmd : out std_logic_vector( 1-1 downto 0 );
    lomsb : out std_logic_vector( 8-1 downto 0 );
    dodemod : out std_logic_vector( 1-1 downto 0 );
    sharedramaddress : out std_logic_vector( 16-1 downto 0 );
    sharedramwrite : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_outputregister;
architecture structural of n3z_tonetest_outputregister is 
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
begin
  cmd2user <= register1_q_net_x0;
  newcmd <= logical_y_net_x0;
  lomsb <= register1_q_net_x1;
  dodemod <= logical_y_net_x1;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  sharedramaddress <= concat_y_net;
  sharedramwrite <= logical_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net,
    strobe => logical_y_net
  );
  subsystem2 : entity xil_defaultlib.n3z_tonetest_subsystem2_x2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x0,
    strobe => logical_y_net_x0
  );
  subsystem3 : entity xil_defaultlib.n3z_tonetest_subsystem3_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x1,
    strobe => logical_y_net_x1
  );
  subsystem4 : entity xil_defaultlib.n3z_tonetest_subsystem4_x2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x2
  );
  concat : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x2,
    in1 => register1_q_net,
    y => concat_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/ToneDetect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_tonedetect is
  port (
    address : in std_logic_vector( 12-1 downto 0 );
    filterredsignal : in std_logic_vector( 18-1 downto 0 );
    instruction : in std_logic_vector( 18-1 downto 0 );
    rstpico : in std_logic_vector( 1-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    writeprogtonedetectpico : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    newtdcmd2user : out std_logic_vector( 1-1 downto 0 );
    sharedramaddress : out std_logic_vector( 16-1 downto 0 );
    sharedramdata : out std_logic_vector( 16-1 downto 0 );
    sharedramwrite : out std_logic_vector( 1-1 downto 0 );
    tdcmd2user : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_tonedetect;
architecture structural of n3z_tonetest_tonedetect is 
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal concat_y_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal relational11_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal assert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_bram_enable_net : std_logic_vector( 1-1 downto 0 );
  signal assert4_dout_net : std_logic_vector( 3-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 3-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 7-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_write_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal picoblaze6_address_net : std_logic_vector( 12-1 downto 0 );
  signal mult_p_net : std_logic_vector( 34-1 downto 0 );
  signal rom_data_net : std_logic_vector( 16-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_k_write_strobe_net : std_logic;
  signal picoblaze6_read_strobe_net : std_logic;
  signal picoblaze6_interrupt_ack_net : std_logic;
  signal prevousdemodvalue : std_logic_vector( 34-1 downto 0 );
begin
  concat1_y_net <= address;
  register_q_net <= filterredsignal;
  concat_y_net <= instruction;
  newtdcmd2user <= logical_y_net_x0;
  relational5_op_net <= rstpico;
  sharedramaddress <= concat_y_net_x0;
  sharedramdata <= slice5_y_net;
  sharedramwrite <= logical_y_net_x1;
  slice_y_net_x0 <= strobe;
  tdcmd2user <= register1_q_net_x0;
  relational11_op_net <= writeprogtonedetectpico;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3z_tonetest_monostable_x3 
  port map (
    in1 => relational11_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  outputregister : entity xil_defaultlib.n3z_tonetest_outputregister 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmd2user => register1_q_net_x0,
    newcmd => logical_y_net_x0,
    lomsb => register1_q_net,
    dodemod => logical_y_net,
    sharedramaddress => concat_y_net_x0,
    sharedramwrite => logical_y_net_x1
  );
  assert1 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => picoblaze6_bram_enable_net,
    dout => assert1_dout_net
  );
  assert4 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 3,
    dout_width => 3
  )
  port map (
    din => slice2_y_net,
    dout => assert4_dout_net
  );
  concat : entity xil_defaultlib.sysgen_concat_c027f7f292 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1 => slice_y_net_x0,
    y => concat_y_net_x1
  );
  constant1 : entity xil_defaultlib.sysgen_constant_1eb6753fd5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c0edae39a5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => relational5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => picoblaze6_write_strobe_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert7 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => assert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  dual_port_ram : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_9",
    latency => 1
  )
  port map (
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => picoblaze6_address_net,
    dina => constant5_op_net,
    wea => constant4_op_net,
    addrb => concat1_y_net,
    dinb => concat_y_net,
    web => logical_y_net_x2,
    ena => convert7_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  mult : entity xil_defaultlib.n3z_tonetest_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 18,
    b_arith => xlSigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 18,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 18,
    c_output_width => 34,
    c_type => 0,
    core_name0 => "n3z_tonetest_mult_gen_v12_0_3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 34,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register_q_net,
    b => rom_data_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mux : entity xil_defaultlib.sysgen_mux_2f79518f68 
  port map (
    clr => '0',
    sel => assert4_dout_net,
    d0 => slice1_y_net,
    d1 => slice_y_net,
    d2 => concat_y_net_x1,
    d3 => slice4_y_net,
    d4 => slice3_y_net,
    d5 => constant2_op_net,
    d6 => constant2_op_net,
    d7 => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  picoblaze6 : entity xil_defaultlib.kcpsm6 
  generic map (
    hwbuild => X"00",
    interrupt_vector => X"FFF",
    scratch_pad_memory_size => 256
  )
  port map (
    instruction => convert4_dout_net,
    in_port => mux_y_net,
    interrupt => convert1_dout_net(0),
    sleep => convert1_dout_net(0),
    reset => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    address => picoblaze6_address_net,
    bram_enable => picoblaze6_bram_enable_net(0),
    out_port => picoblaze6_out_port_net,
    port_id => picoblaze6_port_id_net,
    write_strobe => picoblaze6_write_strobe_net(0),
    k_write_strobe => picoblaze6_k_write_strobe_net,
    read_strobe => picoblaze6_read_strobe_net,
    interrupt_ack => picoblaze6_interrupt_ack_net
  );
  rom : entity xil_defaultlib.n3z_tonetest_xlsprom 
  generic map (
    c_address_width => 8,
    c_width => 16,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_10",
    latency => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom_data_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 34,
    init_value => b"0000000000000000000000000000000000"
  )
  port map (
    rst => "0",
    d => mult_p_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => prevousdemodvalue
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 18,
    y_width => 8
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 18,
    y_width => 8
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 2,
    x_width => 8,
    y_width => 3
  )
  port map (
    x => picoblaze6_port_id_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 25,
    x_width => 34,
    y_width => 8
  )
  port map (
    x => prevousdemodvalue,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 26,
    new_msb => 33,
    x_width => 34,
    y_width => 8
  )
  port map (
    x => prevousdemodvalue,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 17,
    x_width => 18,
    y_width => 16
  )
  port map (
    x => register_q_net,
    y => slice5_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/16baudrate /pulse1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_pulse1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_pulse1;
architecture structural of n3z_tonetest_pulse1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  slice1_y_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => slice1_y_net,
    y => logical_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/16baudrate 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_16baudrate is
  port (
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_16baudrate;
architecture structural of n3z_tonetest_16baudrate is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 12-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= logical_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  pulse1 : entity xil_defaultlib.n3z_tonetest_pulse1 
  port map (
    in1 => slice1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_a2ed39216a 
  port map (
    clr => '0',
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_143f8695fb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 11,
    new_msb => 11,
    x_width => 12,
    y_width => 1
  )
  port map (
    x => accumulator1_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/Buffer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_buffer is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    dsp2userfifofull : out std_logic
  );
end n3z_tonetest_buffer;
architecture structural of n3z_tonetest_buffer is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal fifo_empty_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 7-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_percent_full_net : std_logic_vector( 1-1 downto 0 );
begin
  cmdout <= concat_y_net;
  register1_q_net <= cmd;
  logical_y_net <= newcmd;
  logical1_y_net <= ackfifo;
  dsp2userfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_e89a3b98d5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  fifo : entity xil_defaultlib.n3z_tonetest_xlfifogen 
  generic map (
    core_name0 => "n3z_tonetest_fifo_generator_v12_0_0",
    data_count_width => 4,
    data_width => 8,
    extra_registers => 0,
    has_ae => 0,
    has_af => 0,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '1',
    din => register1_q_net,
    we => delay_q_net(0),
    re => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net(0),
    percent_full => fifo_percent_full_net,
    full => fifo_full_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 6,
    x_width => 8,
    y_width => 7
  )
  port map (
    x => fifo_dout_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/Buffer1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_buffer1 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    bt2userfifofull : out std_logic
  );
end n3z_tonetest_buffer1;
architecture structural of n3z_tonetest_buffer1 is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal fifo_empty_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 7-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_percent_full_net : std_logic_vector( 1-1 downto 0 );
begin
  cmdout <= concat_y_net;
  register1_q_net <= cmd;
  logical_y_net <= newcmd;
  logical_y_net_x0 <= ackfifo;
  bt2userfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_e89a3b98d5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  fifo : entity xil_defaultlib.n3z_tonetest_xlfifogen 
  generic map (
    core_name0 => "n3z_tonetest_fifo_generator_v12_0_0",
    data_count_width => 4,
    data_width => 8,
    extra_registers => 0,
    has_ae => 0,
    has_af => 0,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '1',
    din => register1_q_net,
    we => delay_q_net(0),
    re => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net(0),
    percent_full => fifo_percent_full_net,
    full => fifo_full_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 6,
    x_width => 8,
    y_width => 7
  )
  port map (
    x => fifo_dout_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/Buffer2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_buffer2 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    kp2userfifofull : out std_logic
  );
end n3z_tonetest_buffer2;
architecture structural of n3z_tonetest_buffer2 is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal fifo_empty_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 7-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_percent_full_net : std_logic_vector( 1-1 downto 0 );
begin
  cmdout <= concat_y_net;
  register1_q_net <= cmd;
  logical_y_net <= newcmd;
  logical2_y_net <= ackfifo;
  kp2userfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_e89a3b98d5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  fifo : entity xil_defaultlib.n3z_tonetest_xlfifogen 
  generic map (
    core_name0 => "n3z_tonetest_fifo_generator_v12_0_0",
    data_count_width => 4,
    data_width => 8,
    extra_registers => 0,
    has_ae => 0,
    has_af => 0,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '1',
    din => register1_q_net,
    we => delay_q_net(0),
    re => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net(0),
    percent_full => fifo_percent_full_net,
    full => fifo_full_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 6,
    x_width => 8,
    y_width => 7
  )
  port map (
    x => fifo_dout_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/Buffer3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_buffer3 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_buffer3;
architecture structural of n3z_tonetest_buffer3 is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal fifo_empty_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 7-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_dout_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_percent_full_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
begin
  cmdout <= concat_y_net;
  register1_q_net <= cmd;
  logical_y_net <= newcmd;
  logical3_y_net <= ackfifo;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_e89a3b98d5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical3_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  fifo : entity xil_defaultlib.n3z_tonetest_xlfifogen 
  generic map (
    core_name0 => "n3z_tonetest_fifo_generator_v12_0_0",
    data_count_width => 4,
    data_width => 8,
    extra_registers => 0,
    has_ae => 0,
    has_af => 0,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '1',
    din => register1_q_net,
    we => delay_q_net(0),
    re => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo_dout_net,
    empty => fifo_empty_net(0),
    percent_full => fifo_percent_full_net,
    full => fifo_full_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 6,
    x_width => 8,
    y_width => 7
  )
  port map (
    x => fifo_dout_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem_x0;
architecture structural of n3z_tonetest_subsystem_x0 is 
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_9d0d8dba2f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem1/pulse2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_pulse2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_pulse2;
architecture structural of n3z_tonetest_pulse2 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  register2_q_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => register2_q_net,
    y => logical_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    memwrite : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x3;
architecture structural of n3z_tonetest_subsystem1_x3 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
  signal register3_q_net : std_logic_vector( 1-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  memwrite <= logical_y_net_x0;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  pulse2 : entity xil_defaultlib.n3z_tonetest_pulse2 
  port map (
    in1 => register2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4190c690be 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem13_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem13_x0;
architecture structural of n3z_tonetest_subsystem13_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_f9ecb94ebe 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem14
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem14_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    ackfifo : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem14_x0;
architecture structural of n3z_tonetest_subsystem14_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  ackfifo <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_6aeed7700f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"01110100"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem15
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem15 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem15;
architecture structural of n3z_tonetest_subsystem15 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_112f602149 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem16
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem16 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem16;
architecture structural of n3z_tonetest_subsystem16 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_47508c1bc7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem17
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem17 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem17;
architecture structural of n3z_tonetest_subsystem17 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
begin
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_7ac4993069 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000100"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem19
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem19 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem19;
architecture structural of n3z_tonetest_subsystem19 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_f89c3d03e9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00100000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem2_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem2_x1;
architecture structural of n3z_tonetest_subsystem2_x1 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_a218a1253f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem20
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem20 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem20;
architecture structural of n3z_tonetest_subsystem20 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_073cc76cc2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem21
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem21 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem21;
architecture structural of n3z_tonetest_subsystem21 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_871182b3d0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem22
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem22 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem22;
architecture structural of n3z_tonetest_subsystem22 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_d383ad7533 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem23
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem23 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem23;
architecture structural of n3z_tonetest_subsystem23 is 
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  strobe <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_d3486b10be 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem3_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem3_x0;
architecture structural of n3z_tonetest_subsystem3_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_1a4e0cfb40 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem4_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem4_x0;
architecture structural of n3z_tonetest_subsystem4_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_845cff379f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem5_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem5_x0;
architecture structural of n3z_tonetest_subsystem5_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_e05d28d7b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem6_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem6_x0;
architecture structural of n3z_tonetest_subsystem6_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_8f1ac0bb1b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem7_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem7_x0;
architecture structural of n3z_tonetest_subsystem7_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_731ac842ab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"01011100"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem8_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem8_x0;
architecture structural of n3z_tonetest_subsystem8_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_2fb1f15adb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister/Subsystem9
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem9_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3z_tonetest_subsystem9_x0;
architecture structural of n3z_tonetest_subsystem9_x0 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_00dfbd154d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_9e4476deab 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_outputregister_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    picocmd : out std_logic_vector( 8-1 downto 0 );
    newcmd : out std_logic_vector( 1-1 downto 0 );
    uarttx : out std_logic_vector( 8-1 downto 0 );
    uartwrite : out std_logic_vector( 1-1 downto 0 );
    gain_adc : out std_logic_vector( 4-1 downto 0 );
    instruction : out std_logic_vector( 18-1 downto 0 );
    address : out std_logic_vector( 12-1 downto 0 );
    write_inst_1 : out std_logic_vector( 1-1 downto 0 );
    write_inst_2 : out std_logic_vector( 1-1 downto 0 );
    enable_archive : out std_logic_vector( 1-1 downto 0 );
    select_source : out std_logic_vector( 8-1 downto 0 );
    tx_high : out std_logic_vector( 1-1 downto 0 );
    rstpico2 : out std_logic_vector( 1-1 downto 0 );
    txtone : out std_logic_vector( 8-1 downto 0 );
    cal : out std_logic_vector( 1-1 downto 0 );
    write_inst_3 : out std_logic_vector( 1-1 downto 0 );
    write_inst_4 : out std_logic_vector( 1-1 downto 0 );
    configure : out std_logic_vector( 8-1 downto 0 );
    adcselect : out std_logic_vector( 1-1 downto 0 );
    ackfifobt : out std_logic_vector( 1-1 downto 0 );
    ackfifodsp : out std_logic_vector( 1-1 downto 0 );
    ackfifokp : out std_logic_vector( 1-1 downto 0 );
    ackfifotd : out std_logic_vector( 1-1 downto 0 );
    attenuator : out std_logic_vector( 8-1 downto 0 );
    btcmd : out std_logic_vector( 8-1 downto 0 );
    keypadcmd : out std_logic_vector( 8-1 downto 0 );
    loranblankselect : out std_logic_vector( 1-1 downto 0 );
    newbtcmd : out std_logic_vector( 1-1 downto 0 );
    newkeypadcmd : out std_logic_vector( 1-1 downto 0 );
    ramdata : out std_logic_vector( 16-1 downto 0 );
    writebt_ram : out std_logic_vector( 1-1 downto 0 );
    writedsp_ram : out std_logic_vector( 1-1 downto 0 );
    writekp_ram : out std_logic_vector( 1-1 downto 0 );
    writeprogtonedetectpico : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_outputregister_x0;
architecture structural of n3z_tonetest_outputregister_x0 is 
  signal register1_q_net_x16 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x11 : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 4-1 downto 0 );
  signal concat_y_net : std_logic_vector( 18-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x20 : std_logic_vector( 8-1 downto 0 );
  signal slice18_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x14 : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice20_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x10 : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational11_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net_x21 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x22 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x8 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x9 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 6-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 6-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 6-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 4-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice16_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress1_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress2_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress3_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress4_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress5_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress6_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress7_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress8_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress9_op_net : std_logic_vector( 4-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 4-1 downto 0 );
  signal relational9_op_net : std_logic_vector( 1-1 downto 0 );
begin
  picocmd <= register1_q_net_x16;
  newcmd <= logical_y_net_x6;
  uarttx <= register1_q_net_x15;
  uartwrite <= logical_y_net_x11;
  gain_adc <= slice_y_net;
  instruction <= concat_y_net;
  address <= concat1_y_net;
  write_inst_1 <= relational1_op_net;
  write_inst_2 <= relational3_op_net;
  enable_archive <= convert3_dout_net;
  select_source <= register1_q_net_x13;
  tx_high <= slice11_y_net;
  rstpico2 <= relational5_op_net;
  txtone <= register1_q_net_x20;
  cal <= slice18_y_net;
  write_inst_3 <= relational2_op_net;
  write_inst_4 <= relational4_op_net;
  configure <= register1_q_net_x14;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net_x0 <= write;
  adcselect <= slice20_y_net;
  ackfifobt <= logical_y_net_x10;
  ackfifodsp <= logical1_y_net;
  ackfifokp <= logical2_y_net;
  ackfifotd <= logical3_y_net;
  attenuator <= register1_q_net_x0;
  btcmd <= register1_q_net;
  keypadcmd <= register1_q_net_x1;
  loranblankselect <= slice9_y_net;
  newbtcmd <= logical_y_net;
  newkeypadcmd <= logical_y_net_x0;
  ramdata <= concat4_y_net;
  writebt_ram <= relational7_op_net;
  writedsp_ram <= relational6_op_net;
  writekp_ram <= relational8_op_net;
  writeprogtonedetectpico <= relational11_op_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.n3z_tonetest_subsystem_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x16,
    strobe => logical_y_net_x6
  );
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x3 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x15,
    memwrite => logical_y_net_x11
  );
  subsystem13 : entity xil_defaultlib.n3z_tonetest_subsystem13_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x20
  );
  subsystem14_x0 : entity xil_defaultlib.n3z_tonetest_subsystem14_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x21,
    ackfifo => logical_y_net_x7
  );
  subsystem15 : entity xil_defaultlib.n3z_tonetest_subsystem15 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x22,
    strobe => logical_y_net_x8
  );
  subsystem16 : entity xil_defaultlib.n3z_tonetest_subsystem16 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x6,
    strobe => logical_y_net_x9
  );
  subsystem17 : entity xil_defaultlib.n3z_tonetest_subsystem17 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    strobe => logical_y_net_x2
  );
  subsystem19_x0 : entity xil_defaultlib.n3z_tonetest_subsystem19 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x3,
    strobe => logical_y_net_x3
  );
  subsystem2 : entity xil_defaultlib.n3z_tonetest_subsystem2_x1 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x2
  );
  subsystem20_x0 : entity xil_defaultlib.n3z_tonetest_subsystem20 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net,
    strobe => logical_y_net
  );
  subsystem21_x0 : entity xil_defaultlib.n3z_tonetest_subsystem21 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x1,
    strobe => logical_y_net_x0
  );
  subsystem22_x0 : entity xil_defaultlib.n3z_tonetest_subsystem22 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x0,
    strobe => logical_y_net_x1
  );
  subsystem23 : entity xil_defaultlib.n3z_tonetest_subsystem23 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x7,
    strobe => logical_y_net_x5
  );
  subsystem3 : entity xil_defaultlib.n3z_tonetest_subsystem3_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x8
  );
  subsystem4 : entity xil_defaultlib.n3z_tonetest_subsystem4_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x9
  );
  subsystem5_x0 : entity xil_defaultlib.n3z_tonetest_subsystem5_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x10
  );
  subsystem6 : entity xil_defaultlib.n3z_tonetest_subsystem6_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x11
  );
  subsystem7 : entity xil_defaultlib.n3z_tonetest_subsystem7_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x12
  );
  subsystem8 : entity xil_defaultlib.n3z_tonetest_subsystem8_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x13
  );
  subsystem9 : entity xil_defaultlib.n3z_tonetest_subsystem9_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x14
  );
  concat : entity xil_defaultlib.sysgen_concat_69e08b2947 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice3_y_net,
    in2 => slice4_y_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_a9669812bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice5_y_net,
    in1 => register1_q_net_x10,
    y => concat1_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_0a45c5a438 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x22,
    in1 => register1_q_net_x6,
    y => concat4_y_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice6_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice8_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice10_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice16_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice13_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x7,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x7,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x7,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x2,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x7,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert4_dout_net,
    d1 => delay_q_net,
    y => logical_y_net_x10
  );
  logical1 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => delay1_q_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => delay2_q_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_7eb4d35172 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert5_dout_net,
    d1 => delay4_q_net,
    y => logical3_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_87a7c4caa7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  portaddress1 : entity xil_defaultlib.sysgen_constant_ed3ca9b237 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress1_op_net
  );
  portaddress2 : entity xil_defaultlib.sysgen_constant_afbe4cb741 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress2_op_net
  );
  portaddress3 : entity xil_defaultlib.sysgen_constant_2780f822c8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress3_op_net
  );
  portaddress4 : entity xil_defaultlib.sysgen_constant_7f14361dbf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress4_op_net
  );
  portaddress5 : entity xil_defaultlib.sysgen_constant_542a2e0340 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress5_op_net
  );
  portaddress6 : entity xil_defaultlib.sysgen_constant_4224fbce52 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress6_op_net
  );
  portaddress7 : entity xil_defaultlib.sysgen_constant_e5b787ccc8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress7_op_net
  );
  portaddress8 : entity xil_defaultlib.sysgen_constant_d04e2b4d34 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress8_op_net
  );
  portaddress9 : entity xil_defaultlib.sysgen_constant_c22280d55e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress9_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational11 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress9_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational11_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress1_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress2_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  relational4 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress3_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational4_op_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress4_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational5_op_net
  );
  relational6 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress5_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational6_op_net
  );
  relational7 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress6_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational7_op_net
  );
  relational8 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress7_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational8_op_net
  );
  relational9 : entity xil_defaultlib.sysgen_relational_35db827390 
  port map (
    clr => '0',
    a => portaddress8_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational9_op_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x12,
    y => slice_y_net
  );
  slice10 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x11,
    y => slice10_y_net
  );
  slice11 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 7,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x11,
    y => slice11_y_net
  );
  slice13 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x21,
    y => slice13_y_net
  );
  slice16 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x21,
    y => slice16_y_net
  );
  slice18 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 7,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x12,
    y => slice18_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 5,
    x_width => 8,
    y_width => 6
  )
  port map (
    x => register1_q_net_x2,
    y => slice2_y_net
  );
  slice20 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x3,
    y => slice20_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 5,
    x_width => 8,
    y_width => 6
  )
  port map (
    x => register1_q_net_x8,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 5,
    x_width => 8,
    y_width => 6
  )
  port map (
    x => register1_q_net_x9,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x11,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 4,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x21,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 5,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x7,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x21,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 4,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x3,
    y => slice9_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_subsystem1_x1 is
  port (
    portid : in std_logic_vector( 8-1 downto 0 );
    rs : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    read_buffer : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_subsystem1_x1;
architecture structural of n3z_tonetest_subsystem1_x1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal assert4_dout_net : std_logic_vector( 8-1 downto 0 );
  signal assert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  read_buffer <= logical_y_net;
  assert4_dout_net <= portid;
  assert6_dout_net <= rs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => register_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  logical : entity xil_defaultlib.sysgen_logical_e7013a6c42 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical1_y_net,
    d1 => convert_dout_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_871ea0e105 
  port map (
    clr => '0',
    d0 => slice_y_net,
    d1 => slice1_y_net,
    d2 => slice2_y_net,
    d3 => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => assert6_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => assert4_dout_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => assert4_dout_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => assert4_dout_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 3,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => assert4_dout_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest/User_Interface
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_user_interface is
  port (
    archiveddata : in std_logic_vector( 16-1 downto 0 );
    rs232_rx : in std_logic_vector( 1-1 downto 0 );
    cmdfromdsp : in std_logic_vector( 8-1 downto 0 );
    newcmdfromdsp : in std_logic_vector( 1-1 downto 0 );
    adcsignallevel : in std_logic_vector( 8-1 downto 0 );
    btramrdbk : in std_logic_vector( 16-1 downto 0 );
    btcmd2user : in std_logic_vector( 8-1 downto 0 );
    dspramrdbk : in std_logic_vector( 16-1 downto 0 );
    datafromarm : in std_logic_vector( 8-1 downto 0 );
    kpramrdbk : in std_logic_vector( 16-1 downto 0 );
    kpcmd2user : in std_logic_vector( 8-1 downto 0 );
    newbtcmd2user : in std_logic_vector( 1-1 downto 0 );
    newkpcmd2user : in std_logic_vector( 1-1 downto 0 );
    newtdcmd2user : in std_logic_vector( 1-1 downto 0 );
    ratelorantrips : in std_logic_vector( 8-1 downto 0 );
    rdyforusertxdata : in std_logic_vector( 1-1 downto 0 );
    tdcmd2user : in std_logic_vector( 8-1 downto 0 );
    user2btfifofull : in std_logic;
    user2dspfifofull : in std_logic;
    user2kpfifofull : in std_logic;
    validfromarm : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    w_bram2 : out std_logic_vector( 1-1 downto 0 );
    addressb : out std_logic_vector( 12-1 downto 0 );
    instruction : out std_logic_vector( 18-1 downto 0 );
    picocmd : out std_logic_vector( 8-1 downto 0 );
    newcmd : out std_logic_vector( 1-1 downto 0 );
    enable_archive : out std_logic_vector( 1-1 downto 0 );
    select_source : out std_logic_vector( 8-1 downto 0 );
    tx_high : out std_logic_vector( 1-1 downto 0 );
    rs232tx : out std_logic;
    rstout : out std_logic_vector( 1-1 downto 0 );
    txtone : out std_logic_vector( 8-1 downto 0 );
    adcgain : out std_logic_vector( 4-1 downto 0 );
    cal : out std_logic_vector( 1-1 downto 0 );
    adcselect : out std_logic_vector( 1-1 downto 0 );
    armdataack : out std_logic_vector( 1-1 downto 0 );
    attenuator : out std_logic_vector( 8-1 downto 0 );
    bt2userfifofull : out std_logic;
    btcmd : out std_logic_vector( 8-1 downto 0 );
    baudrate16 : out std_logic_vector( 1-1 downto 0 );
    dsp2userfifofull : out std_logic;
    kp2userfifofull : out std_logic;
    keypadcmd : out std_logic_vector( 8-1 downto 0 );
    loranblankselect : out std_logic_vector( 1-1 downto 0 );
    newbtcmd : out std_logic_vector( 1-1 downto 0 );
    newkeypadcmd : out std_logic_vector( 1-1 downto 0 );
    ramdata : out std_logic_vector( 16-1 downto 0 );
    setuartmux : out std_logic_vector( 1-1 downto 0 );
    usertxdata : out std_logic_vector( 8-1 downto 0 );
    writebt_ram : out std_logic_vector( 1-1 downto 0 );
    writedsp_ram : out std_logic_vector( 1-1 downto 0 );
    writekp_ram : out std_logic_vector( 1-1 downto 0 );
    writeprogbtpico : out std_logic_vector( 1-1 downto 0 );
    writeprogkeypadpico : out std_logic_vector( 1-1 downto 0 );
    writeprogtonedetectpico : out std_logic_vector( 1-1 downto 0 );
    writeusertxdata : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_user_interface;
architecture structural of n3z_tonetest_user_interface is 
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal concat_y_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal black_box_serial_out_net : std_logic;
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal slice18_y_net : std_logic_vector( 1-1 downto 0 );
  signal archiveram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal couta2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal slice20_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x8 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal dual_port_ram1_doutb_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net_x1 : std_logic;
  signal dual_port_ram1_doutb_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal notrips_q_net : std_logic_vector( 8-1 downto 0 );
  signal data2arm_tready_net : std_logic_vector( 1-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net_x3 : std_logic;
  signal fifo_full_net_x4 : std_logic;
  signal fifo_full_net_x5 : std_logic;
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational11_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x9 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal assert4_dout_net : std_logic_vector( 8-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal assert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_read_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal assert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_bram_enable_net : std_logic_vector( 1-1 downto 0 );
  signal black_box_buffer_data_present_net : std_logic;
  signal black_box_buffer_half_full_net : std_logic;
  signal black_box_buffer_full_net : std_logic;
  signal constant2_op_net : std_logic;
  signal concat_y_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 3-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 18-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_write_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal picoblaze1_address_net : std_logic_vector( 12-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 4-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_k_write_strobe_net : std_logic;
  signal picoblaze1_interrupt_ack_net : std_logic;
  signal uart_rx_data_out_net : std_logic_vector( 8-1 downto 0 );
  signal uart_rx_buffer_data_present_net : std_logic;
  signal uart_rx_buffer_half_full_net : std_logic;
  signal uart_rx_buffer_full_net : std_logic;
begin
  w_bram2 <= relational3_op_net;
  addressb <= concat1_y_net;
  instruction <= concat_y_net_x5;
  picocmd <= register1_q_net_x12;
  newcmd <= logical_y_net_x7;
  enable_archive <= convert3_dout_net;
  select_source <= register1_q_net_x5;
  tx_high <= slice11_y_net;
  rs232tx <= black_box_serial_out_net;
  rstout <= relational5_op_net;
  txtone <= register1_q_net_x10;
  adcgain <= slice_y_net_x0;
  cal <= slice18_y_net;
  archiveram_doutb_net <= archiveddata;
  couta2_q_net <= rs232_rx;
  register1_q_net_x2 <= cmdfromdsp;
  logical_y_net_x1 <= newcmdfromdsp;
  concat_y_net_x4 <= adcsignallevel;
  adcselect <= slice20_y_net;
  armdataack <= logical_y_net_x8;
  attenuator <= register1_q_net_x6;
  bt2userfifofull <= fifo_full_net_x0;
  btcmd <= register1_q_net_x8;
  dual_port_ram1_doutb_net <= btramrdbk;
  register1_q_net_x0 <= btcmd2user;
  baudrate16 <= logical_y_net_x0;
  dsp2userfifofull <= fifo_full_net;
  dual_port_ram1_doutb_net_x0 <= dspramrdbk;
  register1_q_net_x1 <= datafromarm;
  kp2userfifofull <= fifo_full_net_x1;
  dual_port_ram1_doutb_net_x1 <= kpramrdbk;
  register1_q_net_x3 <= kpcmd2user;
  keypadcmd <= register1_q_net_x7;
  loranblankselect <= slice9_y_net_x0;
  newbtcmd <= logical_y_net_x5;
  logical_y_net_x2 <= newbtcmd2user;
  logical_y_net_x3 <= newkpcmd2user;
  newkeypadcmd <= logical_y_net_x4;
  logical_y_net <= newtdcmd2user;
  ramdata <= concat4_y_net;
  notrips_q_net <= ratelorantrips;
  data2arm_tready_net <= rdyforusertxdata;
  setuartmux <= slice9_y_net;
  register1_q_net <= tdcmd2user;
  fifo_full_net_x3 <= user2btfifofull;
  fifo_full_net_x4 <= user2dspfifofull;
  fifo_full_net_x5 <= user2kpfifofull;
  usertxdata <= register1_q_net_x11;
  register2_q_net <= validfromarm;
  writebt_ram <= relational7_op_net;
  writedsp_ram <= relational6_op_net;
  writekp_ram <= relational8_op_net;
  writeprogbtpico <= relational2_op_net;
  writeprogkeypadpico <= relational4_op_net;
  writeprogtonedetectpico <= relational11_op_net;
  writeusertxdata <= logical_y_net_x6;
  clk_net <= clk_1;
  ce_net <= ce_1;
  x16baudrate : entity xil_defaultlib.n3z_tonetest_16baudrate 
  port map (
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  buffer_x0 : entity xil_defaultlib.n3z_tonetest_buffer 
  port map (
    cmd => register1_q_net_x2,
    newcmd => logical_y_net_x1,
    ackfifo => logical1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net,
    dsp2userfifofull => fifo_full_net
  );
  buffer1 : entity xil_defaultlib.n3z_tonetest_buffer1 
  port map (
    cmd => register1_q_net_x0,
    newcmd => logical_y_net_x2,
    ackfifo => logical_y_net_x9,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x0,
    bt2userfifofull => fifo_full_net_x0
  );
  buffer2 : entity xil_defaultlib.n3z_tonetest_buffer2 
  port map (
    cmd => register1_q_net_x3,
    newcmd => logical_y_net_x3,
    ackfifo => logical2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x1,
    kp2userfifofull => fifo_full_net_x1
  );
  buffer3 : entity xil_defaultlib.n3z_tonetest_buffer3 
  port map (
    cmd => register1_q_net,
    newcmd => logical_y_net,
    ackfifo => logical3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x2
  );
  outputregister : entity xil_defaultlib.n3z_tonetest_outputregister_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    picocmd => register1_q_net_x12,
    newcmd => logical_y_net_x7,
    uarttx => register1_q_net_x11,
    uartwrite => logical_y_net_x6,
    gain_adc => slice_y_net_x0,
    instruction => concat_y_net_x5,
    address => concat1_y_net,
    write_inst_1 => relational1_op_net,
    write_inst_2 => relational3_op_net,
    enable_archive => convert3_dout_net,
    select_source => register1_q_net_x5,
    tx_high => slice11_y_net,
    rstpico2 => relational5_op_net,
    txtone => register1_q_net_x10,
    cal => slice18_y_net,
    write_inst_3 => relational2_op_net,
    write_inst_4 => relational4_op_net,
    configure => register1_q_net_x4,
    adcselect => slice20_y_net,
    ackfifobt => logical_y_net_x9,
    ackfifodsp => logical1_y_net,
    ackfifokp => logical2_y_net,
    ackfifotd => logical3_y_net,
    attenuator => register1_q_net_x6,
    btcmd => register1_q_net_x8,
    keypadcmd => register1_q_net_x7,
    loranblankselect => slice9_y_net_x0,
    newbtcmd => logical_y_net_x5,
    newkeypadcmd => logical_y_net_x4,
    ramdata => concat4_y_net,
    writebt_ram => relational7_op_net,
    writedsp_ram => relational6_op_net,
    writekp_ram => relational8_op_net,
    writeprogtonedetectpico => relational11_op_net
  );
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1_x1 
  port map (
    portid => assert4_dout_net,
    rs => assert6_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    read_buffer => logical_y_net_x8
  );
  assert4 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 8,
    dout_width => 8
  )
  port map (
    din => picoblaze1_port_id_net,
    dout => assert4_dout_net
  );
  assert6 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => picoblaze1_read_strobe_net,
    dout => assert6_dout_net
  );
  assert7 : entity xil_defaultlib.xlpassthrough 
  generic map (
    din_width => 1,
    dout_width => 1
  )
  port map (
    din => picoblaze1_bram_enable_net,
    dout => assert7_dout_net
  );
  black_box : entity xil_defaultlib.uart_tx6 
  port map (
    data_in => register1_q_net_x11,
    en_16_x_baud => logical_y_net_x0(0),
    buffer_write => logical_y_net_x6(0),
    buffer_reset => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    serial_out => black_box_serial_out_net,
    buffer_data_present => black_box_buffer_data_present_net,
    buffer_half_full => black_box_buffer_half_full_net,
    buffer_full => black_box_buffer_full_net
  );
  concat : entity xil_defaultlib.sysgen_concat_a42bf19f97 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0(0) => fifo_full_net_x5,
    in1(0) => fifo_full_net_x3,
    in2(0) => fifo_full_net_x4,
    in3 => constant1_op_net,
    in4 => data2arm_tready_net,
    in5 => register2_q_net,
    y => concat_y_net_x3
  );
  constant1 : entity xil_defaultlib.sysgen_constant_5c721efa33 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c0edae39a5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => picoblaze1_write_strobe_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 18,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 18,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert8 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => assert7_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert8_dout_net
  );
  dual_port_ram : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_11",
    latency => 1
  )
  port map (
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => picoblaze1_address_net,
    dina => constant5_op_net,
    wea => constant4_op_net,
    addrb => concat1_y_net,
    dinb => concat_y_net_x5,
    web => relational1_op_net,
    ena => convert8_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_4dadff0a56 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => register1_q_net_x1,
    d1 => concat_y_net_x3,
    d2 => slice1_y_net,
    d3 => slice2_y_net,
    d4 => concat_y_net,
    d5 => concat_y_net_x0,
    d6 => concat_y_net_x1,
    d7 => concat_y_net_x2,
    d8 => notrips_q_net,
    d9 => slice3_y_net,
    d10 => slice4_y_net,
    d11 => slice5_y_net,
    d12 => slice6_y_net,
    d13 => slice7_y_net,
    d14 => slice8_y_net,
    d15 => concat_y_net_x4,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  picoblaze1 : entity xil_defaultlib.kcpsm6 
  generic map (
    hwbuild => X"00",
    interrupt_vector => X"FFF",
    scratch_pad_memory_size => 256
  )
  port map (
    instruction => convert4_dout_net,
    in_port => mux1_y_net,
    interrupt => convert2_dout_net(0),
    sleep => convert2_dout_net(0),
    reset => convert2_dout_net(0),
    clk => clk_net,
    ce => ce_net,
    address => picoblaze1_address_net,
    bram_enable => picoblaze1_bram_enable_net(0),
    out_port => picoblaze1_out_port_net,
    port_id => picoblaze1_port_id_net,
    write_strobe => picoblaze1_write_strobe_net(0),
    k_write_strobe => picoblaze1_k_write_strobe_net,
    read_strobe => picoblaze1_read_strobe_net(0),
    interrupt_ack => picoblaze1_interrupt_ack_net
  );
  slice : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => assert4_dout_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => archiveram_doutb_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => archiveram_doutb_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net_x0,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net_x0,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net_x1,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net_x1,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x4,
    y => slice9_y_net
  );
  uart_rx : entity xil_defaultlib.uart_rx6 
  port map (
    serial_in => couta2_q_net(0),
    en_16_x_baud => logical_y_net_x0(0),
    buffer_read => logical_y_net_x8(0),
    buffer_reset => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => uart_rx_data_out_net,
    buffer_data_present => uart_rx_buffer_data_present_net,
    buffer_half_full => uart_rx_buffer_half_full_net,
    buffer_full => uart_rx_buffer_full_net
  );
end structural;
-- Generated from Simulink block N3Z_tonetest_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_struct is
  port (
    attenuatoron : in std_logic_vector( 1-1 downto 0 );
    audiovolume : in std_logic_vector( 8-1 downto 0 );
    data2arm_tready : in std_logic_vector( 1-1 downto 0 );
    defaultfreq : in std_logic_vector( 2-1 downto 0 );
    dummy : in std_logic_vector( 1-1 downto 0 );
    fromarm_tdata : in std_logic_vector( 16-1 downto 0 );
    fromarm_tvalid : in std_logic_vector( 1-1 downto 0 );
    ptt : in std_logic_vector( 1-1 downto 0 );
    rs232_from_bt : in std_logic_vector( 1-1 downto 0 );
    rs232rx : in std_logic_vector( 1-1 downto 0 );
    sdoa : in std_logic_vector( 1-1 downto 0 );
    sdob : in std_logic_vector( 1-1 downto 0 );
    std_bt : in std_logic_vector( 1-1 downto 0 );
    touchdown : in std_logic_vector( 1-1 downto 0 );
    touchon : in std_logic_vector( 1-1 downto 0 );
    touchselect : in std_logic_vector( 1-1 downto 0 );
    touchup : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 8-1 downto 0 );
    adc_cal : out std_logic_vector( 1-1 downto 0 );
    adc_gain : out std_logic_vector( 4-1 downto 0 );
    bram_addr : out std_logic_vector( 16-1 downto 0 );
    bram_data : out std_logic_vector( 16-1 downto 0 );
    bram_w : out std_logic_vector( 1-1 downto 0 );
    conv : out std_logic_vector( 1-1 downto 0 );
    classd_hina : out std_logic_vector( 1-1 downto 0 );
    classd_hinb : out std_logic_vector( 1-1 downto 0 );
    classd_lina : out std_logic_vector( 1-1 downto 0 );
    classd_linb : out std_logic_vector( 1-1 downto 0 );
    data2arm_tdata : out std_logic_vector( 8-1 downto 0 );
    data2arm_tvalid : out std_logic_vector( 1-1 downto 0 );
    fromarm_tready : out std_logic_vector( 1-1 downto 0 );
    keepon : out std_logic_vector( 1-1 downto 0 );
    lcdcontrast : out std_logic_vector( 1-1 downto 0 );
    lcdctrl : out std_logic_vector( 3-1 downto 0 );
    lcddata : out std_logic_vector( 8-1 downto 0 );
    ledb : out std_logic_vector( 1-1 downto 0 );
    ledg : out std_logic_vector( 1-1 downto 0 );
    ledr : out std_logic_vector( 1-1 downto 0 );
    match_z : out std_logic_vector( 1-1 downto 0 );
    psuclk : out std_logic_vector( 1-1 downto 0 );
    pwmaudio : out std_logic_vector( 1-1 downto 0 );
    rs232_to_bt : out std_logic_vector( 1-1 downto 0 );
    rs232tx : out std_logic_vector( 1-1 downto 0 );
    rst_bb : out std_logic_vector( 1-1 downto 0 );
    sck : out std_logic_vector( 1-1 downto 0 );
    sclk_bt : out std_logic_vector( 1-1 downto 0 );
    sfs_bt : out std_logic_vector( 1-1 downto 0 );
    srd_bt : out std_logic_vector( 1-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 );
    tx_low : out std_logic_vector( 1-1 downto 0 )
  );
end n3z_tonetest_struct;
architecture structural of n3z_tonetest_struct is 
  signal concat_y_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal slice18_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal attenuatoron_net : std_logic_vector( 1-1 downto 0 );
  signal audiovolume_net : std_logic_vector( 8-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice5_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x8 : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal data2arm_tready_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal defaultfreq_net : std_logic_vector( 2-1 downto 0 );
  signal dummy_net : std_logic_vector( 1-1 downto 0 );
  signal fromarm_tdata_net : std_logic_vector( 16-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal fromarm_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 3-1 downto 0 );
  signal register1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal ptt_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x23 : std_logic_vector( 1-1 downto 0 );
  signal rs232_from_bt_net : std_logic_vector( 1-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 1-1 downto 0 );
  signal rs232rx_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal sdoa_net : std_logic_vector( 1-1 downto 0 );
  signal sdob_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal std_bt_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal touchdown_net : std_logic_vector( 1-1 downto 0 );
  signal touchon_net : std_logic_vector( 1-1 downto 0 );
  signal touchselect_net : std_logic_vector( 1-1 downto 0 );
  signal touchup_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal black_box2_serial_out_net : std_logic;
  signal adcvalue2_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal fifo_full_net_x1 : std_logic;
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x10 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal reinterpret_output_port_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x16 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 14-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x22 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x14 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x19 : std_logic_vector( 8-1 downto 0 );
  signal concat4_y_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x21 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x22 : std_logic_vector( 1-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x23 : std_logic_vector( 1-1 downto 0 );
  signal register_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice8_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal concat_y_net_x4 : std_logic_vector( 16-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal dual_port_ram1_doutb_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x18 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x17 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x16 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net_x5 : std_logic;
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x14 : std_logic_vector( 1-1 downto 0 );
  signal adcvalue_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal concat2_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x12 : std_logic_vector( 1-1 downto 0 );
  signal slice6_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal concat2_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net_x2 : std_logic;
  signal dual_port_ram1_doutb_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net_x11 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x13 : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net_x4 : std_logic;
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x15 : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x19 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x20 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x18 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x17 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x9 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal relational11_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal black_box_serial_out_net : std_logic;
  signal archiveram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal couta2_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice20_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal notrips_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal adcvalue1_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal archiveram_douta_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net_x0 : std_logic_vector( 12-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x3 : std_logic_vector( 2-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 5-1 downto 0 );
  signal couta1_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 4-1 downto 0 );
  signal touch1_q_net : std_logic_vector( 1-1 downto 0 );
  signal touch2_q_net : std_logic_vector( 1-1 downto 0 );
  signal touch3_q_net : std_logic_vector( 1-1 downto 0 );
  signal touch4_q_net : std_logic_vector( 1-1 downto 0 );
  signal concat3_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x21 : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 13-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 8-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 2-1 downto 0 );
  signal counter4_op_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 8-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 2-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
begin
  signallevel <= concat_y_net_x2;
  adc_cal <= slice18_y_net;
  adc_gain <= slice_y_net_x0;
  attenuatoron_net <= attenuatoron;
  audiovolume_net <= audiovolume;
  bram_addr <= concat_y_net_x0;
  bram_data <= slice5_y_net_x0;
  bram_w <= logical_y_net_x8;
  conv <= delay3_q_net;
  classd_hina <= logical2_y_net;
  classd_hinb <= logical3_y_net;
  classd_lina <= mux_y_net;
  classd_linb <= mux1_y_net;
  data2arm_tdata <= register1_q_net_x2;
  data2arm_tready_net <= data2arm_tready;
  data2arm_tvalid <= logical_y_net_x3;
  defaultfreq_net <= defaultfreq;
  dummy_net <= dummy;
  fromarm_tdata_net <= fromarm_tdata;
  fromarm_tready <= inverter_op_net;
  fromarm_tvalid_net <= fromarm_tvalid;
  keepon <= slice2_y_net;
  lcdcontrast <= relational1_op_net;
  lcdctrl <= slice1_y_net;
  lcddata <= register1_q_net_x12;
  ledb <= logical4_y_net;
  ledg <= logical3_y_net_x0;
  ledr <= logical2_y_net_x0;
  match_z <= slice8_y_net;
  psuclk <= relational1_op_net_x0;
  ptt_net <= ptt;
  pwmaudio <= register1_q_net_x23;
  rs232_from_bt_net <= rs232_from_bt;
  rs232_to_bt <= mux4_y_net;
  rs232rx_net <= rs232rx;
  rs232tx <= mux_y_net_x0;
  rst_bb <= slice1_y_net_x0;
  sck <= delay4_q_net;
  sclk_bt <= convert1_dout_net;
  sdoa_net <= sdoa;
  sdob_net <= sdob;
  sfs_bt <= relational1_op_net_x1;
  srd_bt <= slice2_y_net_x0;
  std_bt_net <= std_bt;
  strobe <= slice_y_net_x1;
  tx_low <= inverter4_op_net;
  touchdown_net <= touchdown;
  touchon_net <= touchon;
  touchselect_net <= touchselect;
  touchup_net <= touchup;
  clk_net <= clk_1;
  ce_net <= ce_1;
  adcread : entity xil_defaultlib.n3z_tonetest_adcread 
  port map (
    sdoa => sdoa_net,
    sdob => sdob_net,
    trig => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    sck => delay4_q_net,
    conv => delay3_q_net,
    adc_data_a => register1_q_net_x0,
    data_ready => delay1_q_net,
    adc_data_b => register3_q_net
  );
  adctrigger : entity xil_defaultlib.n3z_tonetest_adctrigger 
  port map (
    audiovolume => audiovolume_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    trig512 => logical_y_net_x1,
    dim => relational_op_net_x0,
    clk1mhz => relational1_op_net_x0
  );
  btinterface : entity xil_defaultlib.n3z_tonetest_btinterface 
  port map (
    serialrx_fmbt => adcvalue2_q_net,
    rts => constant6_op_net,
    address => concat1_y_net,
    bt2userfifofull => fifo_full_net_x1,
    btcmd => register1_q_net_x5,
    baudrate16 => logical_y_net_x10,
    instruction => concat_y_net_x1,
    newbtcmd => logical_y_net_x4,
    ramdata => concat4_y_net,
    rstpico => relational5_op_net,
    writebt_ram => relational7_op_net,
    writeprogbtpico => relational2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data2archive => concat3_y_net,
    data2archive_w => logical_y_net_x0,
    serialtx_2btchip => black_box2_serial_out_net,
    rst_bt => slice1_y_net_x0,
    btramrdbk => dual_port_ram1_doutb_net,
    btcmd2user => register1_q_net_x10,
    newbtcmd2user => logical_y_net,
    user2btfifofull => fifo_full_net
  );
  bit_corrector : entity xil_defaultlib.n3z_tonetest_bit_corrector 
  port map (
    in1 => register1_q_net_x0,
    out1 => reinterpret_output_port_net_x2
  );
  bit_corrector1 : entity xil_defaultlib.n3z_tonetest_bit_corrector1 
  port map (
    in1 => register3_q_net,
    out1 => reinterpret_output_port_net_x1
  );
  constantdetect : entity xil_defaultlib.n3z_tonetest_constantdetect 
  port map (
    signal_x0 => std_bt_net,
    strobe => logical_y_net_x16,
    clk_1 => clk_net,
    ce_1 => ce_net,
    isconstant => relational1_op_net_x2
  );
  dac_xapp154_1 : entity xil_defaultlib.n3z_tonetest_dac_xapp154_1 
  port map (
    dac_in => concat_y_net,
    disable_audio => constant_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dac_out => register1_q_net_x23
  );
  dsprocessor1 : entity xil_defaultlib.n3z_tonetest_dsprocessor1 
  port map (
    filterredsignal => register_q_net_x0,
    addrram => concat1_y_net,
    dataram => concat_y_net_x1,
    writeram => relational3_op_net,
    cmd => register1_q_net_x1,
    newcmd => logical_y_net_x2,
    rst => relational5_op_net,
    strobe => slice_y_net_x1,
    btauidioin => reinterpret_output_port_net_x0,
    address => concat1_y_net,
    dsp2userfifofull => fifo_full_net_x0,
    nobtsignal => relational1_op_net_x2,
    ramdata => concat4_y_net,
    square8khz => convert2_dout_net,
    tx_high => slice11_y_net,
    writedsp_ram => relational6_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    audioout_x0 => register1_q_net_x22,
    amp => register1_q_net_x14,
    cmdtouser => register1_q_net_x19,
    data2archive => concat4_y_net_x1,
    phaseincrement_8bits => register1_q_net_x21,
    newcmdtouser => logical_y_net_x22,
    tx_phase => concat7_y_net,
    newvalue => logical_y_net_x23,
    agcvalue => slice8_y_net_x0,
    audioout => concat_y_net_x4,
    dspramrdbk => dual_port_ram1_doutb_net_x1,
    starttonea => slice10_y_net,
    starttonealong => slice9_y_net_x2,
    starttoneb => slice12_y_net_x0,
    starttoneblong => slice13_y_net,
    stoptonea => register1_q_net_x18,
    stoptonealong => register1_q_net_x17,
    stoptoneb => register1_q_net_x16,
    stoptoneblong => register1_q_net_x15,
    user2dspfifofull => fifo_full_net_x5
  );
  delay16ms : entity xil_defaultlib.n3z_tonetest_delay16ms 
  port map (
    in1 => slice11_y_net,
    pulse8khz => logical_y_net_x14,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => delay_q_net_x0
  );
  demodulationssb1 : entity xil_defaultlib.n3z_tonetest_demodulationssb1 
  port map (
    signalin => adcvalue_q_net,
    trig => delay1_q_net_x0,
    agcvalue => slice8_y_net_x0,
    btaudio => reinterpret_output_port_net_x0,
    nobtsignal => relational1_op_net_x2,
    rxfreq => concat2_y_net_x0,
    tx_high => slice11_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    demodsignal => register_q_net_x0,
    demodsqstrobe => slice_y_net_x1,
    counter6khz => counter_op_net,
    pulse8khz => logical_y_net_x14
  );
  keypadinterface : entity xil_defaultlib.n3z_tonetest_keypadinterface 
  port map (
    touchsignal => concat1_y_net_x0,
    touchsignal1 => concat2_y_net_x1,
    adcpeak => register2_q_net_x0,
    address => concat1_y_net,
    demodpeak => register2_q_net,
    instruction => concat_y_net_x1,
    kp2userfifofull => fifo_full_net_x2,
    keypadcmd => register1_q_net_x6,
    newkeypadcmd => logical_y_net_x5,
    ramdata => concat4_y_net,
    rstpico => relational5_op_net,
    starttonea => slice10_y_net,
    starttonealong => slice9_y_net_x2,
    starttoneb => slice12_y_net_x0,
    starttoneblong => slice13_y_net,
    stoptonea => register1_q_net_x18,
    stoptonealong => register1_q_net_x17,
    stoptoneb => register1_q_net_x16,
    stoptoneblong => register1_q_net_x15,
    txtone => register1_q_net_x3,
    writekp_ram => relational8_op_net,
    writeprogkeypadpico => relational4_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data2archive => concat4_y_net_x0,
    data2archive_w => logical_y_net_x12,
    lcddata => register1_q_net_x12,
    lcdctrl => slice6_y_net_x0,
    latchon => register1_q_net_x11,
    kpramrdbk => dual_port_ram1_doutb_net_x0,
    kpcmd2user => register1_q_net_x13,
    lcdcontrast => slice17_y_net,
    newkpcmd2user => logical_y_net_x11,
    rxfreq => concat2_y_net_x0,
    resetpeak => logical_y_net_x13,
    txfreq => addsub_s_net,
    user2kpfifofull => fifo_full_net_x4
  );
  latch : entity xil_defaultlib.n3z_tonetest_latch_x1 
  port map (
    set => relational_op_net,
    rst => logical_y_net_x15,
    clk_1 => clk_net,
    ce_1 => ce_net,
    state => register2_q_net_x1
  );
  levelmonitor : entity xil_defaultlib.n3z_tonetest_levelmonitor 
  port map (
    in1 => mux1_y_net_x0,
    en => delay1_q_net_x0,
    rstpeak => logical_y_net_x13,
    clk_1 => clk_net,
    ce_1 => ce_net,
    signallevel => concat_y_net_x2,
    pksignal => register2_q_net_x0
  );
  levelmonitor1 : entity xil_defaultlib.n3z_tonetest_levelmonitor1 
  port map (
    in1 => concat4_y_net_x1,
    en => logical_y_net_x19,
    rstpeak => logical_y_net_x13,
    clk_1 => clk_net,
    ce_1 => ce_net,
    pksignal => register2_q_net
  );
  loranpulsedetect : entity xil_defaultlib.n3z_tonetest_loranpulsedetect 
  port map (
    signal_x0 => mux1_y_net_x0,
    strobe => delay1_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    trig => relational_op_net_x1
  );
  monostable : entity xil_defaultlib.n3z_tonetest_monostable 
  port map (
    in1 => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x20
  );
  monostable1_x0 : entity xil_defaultlib.n3z_tonetest_monostable1 
  port map (
    in1 => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x19
  );
  monostable2 : entity xil_defaultlib.n3z_tonetest_monostable2 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x18
  );
  monostable3 : entity xil_defaultlib.n3z_tonetest_monostable3 
  port map (
    in1 => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x17
  );
  monostable4 : entity xil_defaultlib.n3z_tonetest_monostable4 
  port map (
    in1 => convert4_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x16
  );
  monostable5 : entity xil_defaultlib.n3z_tonetest_monostable5 
  port map (
    in1 => convert8_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x15
  );
  ssbmodulator : entity xil_defaultlib.n3z_tonetest_ssbmodulator 
  port map (
    audioamp => register1_q_net_x14,
    carrierfreq => addsub_s_net,
    tx_enable => delay_q_net_x0,
    txphase => concat7_y_net,
    phaseincrement => register1_q_net_x21,
    newphasevalue => logical_y_net_x23,
    clk_1 => clk_net,
    ce_1 => ce_net,
    hina => logical2_y_net,
    hinb => logical3_y_net,
    lina => mux_y_net,
    linb => mux1_y_net
  );
  signed_unsigned_offset : entity xil_defaultlib.n3z_tonetest_signed_unsigned_offset 
  port map (
    in1 => reinterpret_output_port_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => concat_y_net
  );
  subsystem1 : entity xil_defaultlib.n3z_tonetest_subsystem1 
  port map (
    pcmin => std_bt_net,
    x128khz => convert1_dout_net,
    sfs => relational1_op_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    audioout => reinterpret_output_port_net_x0
  );
  subsystem2 : entity xil_defaultlib.n3z_tonetest_subsystem2 
  port map (
    signal_x0 => mux1_y_net_x0,
    strbe => delay1_q_net_x0,
    loranpulsetrig => relational_op_net_x1,
    enablegating => logical1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    archive => delay_q_net,
    cleanedup => adcvalue_q_net,
    lorantrig => logical_y_net_x7
  );
  subsystem4 : entity xil_defaultlib.n3z_tonetest_subsystem4_x1 
  port map (
    audioin => concat_y_net_x4,
    square128khz => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    pcmout => slice2_y_net_x0,
    x128khz => convert1_dout_net,
    sfs => relational1_op_net_x1
  );
  tonedetect : entity xil_defaultlib.n3z_tonetest_tonedetect 
  port map (
    address => concat1_y_net,
    filterredsignal => register_q_net_x0,
    instruction => concat_y_net_x1,
    rstpico => relational5_op_net,
    strobe => slice_y_net_x1,
    writeprogtonedetectpico => relational11_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    newtdcmd2user => logical_y_net_x9,
    sharedramaddress => concat_y_net_x0,
    sharedramdata => slice5_y_net_x0,
    sharedramwrite => logical_y_net_x8,
    tdcmd2user => register1_q_net_x9
  );
  user_interface : entity xil_defaultlib.n3z_tonetest_user_interface 
  port map (
    archiveddata => archiveram_doutb_net,
    rs232_rx => couta2_q_net,
    cmdfromdsp => register1_q_net_x19,
    newcmdfromdsp => logical_y_net_x22,
    adcsignallevel => concat_y_net_x2,
    btramrdbk => dual_port_ram1_doutb_net,
    btcmd2user => register1_q_net_x10,
    dspramrdbk => dual_port_ram1_doutb_net_x1,
    datafromarm => register1_q_net,
    kpramrdbk => dual_port_ram1_doutb_net_x0,
    kpcmd2user => register1_q_net_x13,
    newbtcmd2user => logical_y_net,
    newkpcmd2user => logical_y_net_x11,
    newtdcmd2user => logical_y_net_x9,
    ratelorantrips => notrips_q_net,
    rdyforusertxdata => data2arm_tready_net,
    tdcmd2user => register1_q_net_x9,
    user2btfifofull => fifo_full_net,
    user2dspfifofull => fifo_full_net_x5,
    user2kpfifofull => fifo_full_net_x4,
    validfromarm => register2_q_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    w_bram2 => relational3_op_net,
    addressb => concat1_y_net,
    instruction => concat_y_net_x1,
    picocmd => register1_q_net_x1,
    newcmd => logical_y_net_x2,
    enable_archive => convert3_dout_net,
    select_source => register1_q_net_x8,
    tx_high => slice11_y_net,
    rs232tx => black_box_serial_out_net,
    rstout => relational5_op_net,
    txtone => register1_q_net_x3,
    adcgain => slice_y_net_x0,
    cal => slice18_y_net,
    adcselect => slice20_y_net,
    armdataack => logical_y_net_x6,
    attenuator => register1_q_net_x7,
    bt2userfifofull => fifo_full_net_x1,
    btcmd => register1_q_net_x5,
    baudrate16 => logical_y_net_x10,
    dsp2userfifofull => fifo_full_net_x0,
    kp2userfifofull => fifo_full_net_x2,
    keypadcmd => register1_q_net_x6,
    loranblankselect => slice9_y_net_x0,
    newbtcmd => logical_y_net_x4,
    newkeypadcmd => logical_y_net_x5,
    ramdata => concat4_y_net,
    setuartmux => slice9_y_net_x1,
    usertxdata => register1_q_net_x2,
    writebt_ram => relational7_op_net,
    writedsp_ram => relational6_op_net,
    writekp_ram => relational8_op_net,
    writeprogbtpico => relational2_op_net,
    writeprogkeypadpico => relational4_op_net,
    writeprogtonedetectpico => relational11_op_net,
    writeusertxdata => logical_y_net_x3
  );
  adcvalue1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => rs232rx_net,
    en => convert7_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => adcvalue1_q_net
  );
  adcvalue2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => rs232_from_bt_net,
    en => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => adcvalue2_q_net
  );
  archiveram : entity xil_defaultlib.n3z_tonetest_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3z_tonetest_blk_mem_gen_v8_2_0",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => counter_op_net_x0,
    dina => mux2_y_net,
    wea => convert5_dout_net,
    addrb => concat1_y_net,
    dinb => constant5_op_net,
    web => constant4_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => archiveram_douta_net,
    doutb => archiveram_doutb_net
  );
  concat : entity xil_defaultlib.sysgen_concat_8327f19d3f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => attenuatoron_net,
    in1 => dummy_net,
    y => concat_y_net_x3
  );
  concat1 : entity xil_defaultlib.sysgen_concat_70764c071c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1 => defaultfreq_net,
    in2 => couta1_q_net,
    y => concat1_y_net_x0
  );
  concat2 : entity xil_defaultlib.sysgen_concat_6f3f039edd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant2_op_net,
    in1 => touch1_q_net,
    in2 => touch2_q_net,
    in3 => touch3_q_net,
    in4 => touch4_q_net,
    y => concat2_y_net_x1
  );
  concat3 : entity xil_defaultlib.sysgen_concat_a02e301377 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => concat_y_net_x3,
    in1 => concat_y_net_x3,
    in2 => concat_y_net_x3,
    in3 => concat_y_net_x3,
    y => concat3_y_net_x0
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_95996df5e3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ed2983513d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_aa73bd71eb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_43831abc60 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_e539002db5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  convert : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => inverter4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net_x0
  );
  convert2 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice4_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net_x0
  );
  convert4 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice5_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x21,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice11_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert7 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice9_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  convert8 : entity xil_defaultlib.n3z_tonetest_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => logical_y_net_x6,
    clk => clk_net,
    ce => ce_net,
    dout => convert8_dout_net
  );
  counter : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_0",
    op_arith => xlUnsigned,
    op_width => 12
  )
  port map (
    clr => '0',
    rst => logical_y_net_x20,
    en => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net_x0
  );
  counter1 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_1",
    op_arith => xlUnsigned,
    op_width => 13
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net_x19,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  counter2 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_2",
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    clr => '0',
    rst => logical_y_net_x17,
    en => logical_y_net_x7,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_3",
    op_arith => xlUnsigned,
    op_width => 2
  )
  port map (
    rst => "0",
    clr => '0',
    en => convert1_dout_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  counter4 : entity xil_defaultlib.n3z_tonetest_xlcounter_free 
  generic map (
    core_name0 => "n3z_tonetest_c_counter_binary_v12_0_4",
    op_arith => xlUnsigned,
    op_width => 4
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net_x18,
    clk => clk_net,
    ce => ce_net,
    op => counter4_op_net
  );
  couta1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => ptt_net,
    clk => clk_net,
    ce => ce_net,
    q => couta1_q_net
  );
  couta2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => rs232rx_net,
    en => inverter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => couta2_q_net
  );
  delay : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '1',
    d => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net_x1
  );
  delay1 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net_x0
  );
  delay2 : entity xil_defaultlib.n3z_tonetest_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '1',
    d => slice9_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => register2_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => slice11_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter3 : entity xil_defaultlib.sysgen_inverter_5105f17b7b 
  port map (
    clr => '0',
    ip => convert7_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  inverter4 : entity xil_defaultlib.sysgen_inverter_a35fcdf048 
  port map (
    clr => '0',
    ip => slice11_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_cddbae5b41 
  port map (
    clr => '0',
    d0 => convert3_dout_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x21
  );
  logical1 : entity xil_defaultlib.sysgen_logical_222ceed782 
  port map (
    clr => '0',
    d0 => slice9_y_net_x0,
    d1 => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_e45b646e6b 
  port map (
    clr => '0',
    d0 => convert_dout_net,
    d1 => relational_op_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net_x0
  );
  logical3 : entity xil_defaultlib.sysgen_logical_e45b646e6b 
  port map (
    clr => '0',
    d0 => convert6_dout_net,
    d1 => relational_op_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net_x0
  );
  logical4 : entity xil_defaultlib.sysgen_logical_e45b646e6b 
  port map (
    clr => '0',
    d0 => relational_op_net_x0,
    d1 => relational1_op_net_x2,
    clk => clk_net,
    ce => ce_net,
    y => logical4_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_4da12e1d60 
  port map (
    clr => '0',
    sel => slice9_y_net_x1,
    d0(0) => black_box_serial_out_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net_x0
  );
  mux1 : entity xil_defaultlib.sysgen_mux_b3f130dff9 
  port map (
    clr => '0',
    sel => slice20_y_net,
    d0 => reinterpret_output_port_net_x2,
    d1 => reinterpret_output_port_net_x1,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net_x0
  );
  mux2 : entity xil_defaultlib.sysgen_mux_65325f3200 
  port map (
    clr => '0',
    sel => slice6_y_net,
    d0 => reinterpret1_output_port_net,
    d1 => concat4_y_net_x1,
    d2 => concat3_y_net,
    d3 => concat4_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_c18da20ebb 
  port map (
    clr => '0',
    sel => slice6_y_net,
    d0 => delay1_q_net_x0,
    d1 => logical_y_net_x19,
    d2 => logical_y_net_x0,
    d3 => logical_y_net_x12,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_4da12e1d60 
  port map (
    clr => '0',
    sel => slice9_y_net_x1,
    d0(0) => black_box2_serial_out_net,
    d1 => adcvalue1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  notrips : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => counter2_op_net,
    en => logical_y_net_x17,
    clk => clk_net,
    ce => ce_net,
    q => notrips_q_net
  );
  register_x0 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => rs232_from_bt_net,
    en => convert7_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => delay2_q_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_bce6d4f7b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => register1_q_net_x22,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_8b540ca26d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => adcvalue_q_net,
    output_port => reinterpret1_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_5592ce976f 
  port map (
    clr => '0',
    a => delay_q_net_x1,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_eb56806bdd 
  port map (
    clr => '0',
    a => slice17_y_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice1 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 2,
    x_width => 4,
    y_width => 3
  )
  port map (
    x => slice6_y_net_x0,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x11,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 2,
    y_width => 1
  )
  port map (
    x => counter3_op_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 12,
    new_msb => 12,
    x_width => 13,
    y_width => 1
  )
  port map (
    x => counter1_op_net,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 3,
    x_width => 4,
    y_width => 1
  )
  port map (
    x => counter4_op_net,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 8,
    y_width => 2
  )
  port map (
    x => register1_q_net_x8,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => fromarm_tdata_net,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x7,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.n3z_tonetest_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => fromarm_tdata_net,
    y => slice9_y_net
  );
  touch1 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => touchup_net,
    clk => clk_net,
    ce => ce_net,
    q => touch1_q_net
  );
  touch2 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => touchdown_net,
    clk => clk_net,
    ce => ce_net,
    q => touch2_q_net
  );
  touch3 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => touchselect_net,
    clk => clk_net,
    ce => ce_net,
    q => touch3_q_net
  );
  touch4 : entity xil_defaultlib.n3z_tonetest_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => touchon_net,
    clk => clk_net,
    ce => ce_net,
    q => touch4_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest_default_clock_driver is
  port (
    n3z_tonetest_sysclk : in std_logic;
    n3z_tonetest_sysce : in std_logic;
    n3z_tonetest_sysclr : in std_logic;
    n3z_tonetest_clk1 : out std_logic;
    n3z_tonetest_ce1 : out std_logic
  );
end n3z_tonetest_default_clock_driver;
architecture structural of n3z_tonetest_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => n3z_tonetest_sysclk,
    sysce => n3z_tonetest_sysce,
    sysclr => n3z_tonetest_sysclr,
    clk => n3z_tonetest_clk1,
    ce => n3z_tonetest_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3z_tonetest is
  port (
    attenuatoron : in std_logic_vector( 1-1 downto 0 );
    defaultfreq : in std_logic_vector( 2-1 downto 0 );
    dummy : in std_logic_vector( 1-1 downto 0 );
    ptt : in std_logic_vector( 1-1 downto 0 );
    rs232_from_bt : in std_logic_vector( 1-1 downto 0 );
    rs232rx : in std_logic_vector( 1-1 downto 0 );
    sdoa : in std_logic_vector( 1-1 downto 0 );
    sdob : in std_logic_vector( 1-1 downto 0 );
    std_bt : in std_logic_vector( 1-1 downto 0 );
    touchdown : in std_logic_vector( 1-1 downto 0 );
    touchon : in std_logic_vector( 1-1 downto 0 );
    touchselect : in std_logic_vector( 1-1 downto 0 );
    touchup : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    n3z_tonetest_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    n3z_tonetest_s_axi_awvalid : in std_logic;
    n3z_tonetest_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    n3z_tonetest_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    n3z_tonetest_s_axi_wvalid : in std_logic;
    n3z_tonetest_s_axi_bready : in std_logic;
    n3z_tonetest_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    n3z_tonetest_s_axi_arvalid : in std_logic;
    n3z_tonetest_s_axi_rready : in std_logic;
    n3z_tonetest_aresetn : in std_logic;
    signallevel : out std_logic_vector( 8-1 downto 0 );
    adc_cal : out std_logic_vector( 1-1 downto 0 );
    adc_gain : out std_logic_vector( 4-1 downto 0 );
    bram_addr : out std_logic_vector( 16-1 downto 0 );
    bram_data : out std_logic_vector( 16-1 downto 0 );
    bram_w : out std_logic_vector( 1-1 downto 0 );
    conv : out std_logic_vector( 1-1 downto 0 );
    classd_hina : out std_logic_vector( 1-1 downto 0 );
    classd_hinb : out std_logic_vector( 1-1 downto 0 );
    classd_lina : out std_logic_vector( 1-1 downto 0 );
    classd_linb : out std_logic_vector( 1-1 downto 0 );
    keepon : out std_logic_vector( 1-1 downto 0 );
    lcdcontrast : out std_logic_vector( 1-1 downto 0 );
    lcdctrl : out std_logic_vector( 3-1 downto 0 );
    lcddata : out std_logic_vector( 8-1 downto 0 );
    ledb : out std_logic_vector( 1-1 downto 0 );
    ledg : out std_logic_vector( 1-1 downto 0 );
    ledr : out std_logic_vector( 1-1 downto 0 );
    match_z : out std_logic_vector( 1-1 downto 0 );
    psuclk : out std_logic_vector( 1-1 downto 0 );
    pwmaudio : out std_logic_vector( 1-1 downto 0 );
    rs232_to_bt : out std_logic_vector( 1-1 downto 0 );
    rs232tx : out std_logic_vector( 1-1 downto 0 );
    rst_bb : out std_logic_vector( 1-1 downto 0 );
    sck : out std_logic_vector( 1-1 downto 0 );
    sclk_bt : out std_logic_vector( 1-1 downto 0 );
    sfs_bt : out std_logic_vector( 1-1 downto 0 );
    srd_bt : out std_logic_vector( 1-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 );
    tx_low : out std_logic_vector( 1-1 downto 0 );
    n3z_tonetest_s_axi_awready : out std_logic;
    n3z_tonetest_s_axi_wready : out std_logic;
    n3z_tonetest_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    n3z_tonetest_s_axi_bvalid : out std_logic;
    n3z_tonetest_s_axi_arready : out std_logic;
    n3z_tonetest_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    n3z_tonetest_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    n3z_tonetest_s_axi_rvalid : out std_logic
  );
end n3z_tonetest;
architecture structural of n3z_tonetest is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "n3z_tonetest,sysgen_core_2014_4,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z010,speed=-1,package=clg225,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,clock_loc=,testbench=0,interface_doc=1,ce_clr=0,clock_period=20.3409,system_simulink_period=2.03409e-08,simulation_time=0.0001,accum=14,addsub=31,assert=12,bitbasher=9,blackbox2=9,cmult=1,concat=65,constant=159,convert=120,counter=24,delay=110,dpram=10,fifo=7,inv=65,logical=176,mult=4,mux=22,register=138,reinterpret=24,relational=108,slice=185,sprom=6,}";
  signal audiovolume : std_logic_vector( 8-1 downto 0 );
  signal data2arm_tdata : std_logic_vector( 8-1 downto 0 );
  signal data2arm_tready : std_logic_vector( 1-1 downto 0 );
  signal data2arm_tvalid : std_logic_vector( 1-1 downto 0 );
  signal fromarm_tdata : std_logic_vector( 16-1 downto 0 );
  signal fromarm_tready : std_logic_vector( 1-1 downto 0 );
  signal fromarm_tvalid : std_logic_vector( 1-1 downto 0 );
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_net : std_logic;
begin
  n3z_tonetest_axi_lite_interface : entity xil_defaultlib.n3z_tonetest_axi_lite_interface 
  port map (
    data2arm_tdata => data2arm_tdata,
    data2arm_tvalid => data2arm_tvalid,
    fromarm_tready => fromarm_tready,
    n3z_tonetest_s_axi_awaddr => n3z_tonetest_s_axi_awaddr,
    n3z_tonetest_s_axi_awvalid => n3z_tonetest_s_axi_awvalid,
    n3z_tonetest_s_axi_wdata => n3z_tonetest_s_axi_wdata,
    n3z_tonetest_s_axi_wstrb => n3z_tonetest_s_axi_wstrb,
    n3z_tonetest_s_axi_wvalid => n3z_tonetest_s_axi_wvalid,
    n3z_tonetest_s_axi_bready => n3z_tonetest_s_axi_bready,
    n3z_tonetest_s_axi_araddr => n3z_tonetest_s_axi_araddr,
    n3z_tonetest_s_axi_arvalid => n3z_tonetest_s_axi_arvalid,
    n3z_tonetest_s_axi_rready => n3z_tonetest_s_axi_rready,
    n3z_tonetest_aresetn => n3z_tonetest_aresetn,
    n3z_tonetest_aclk => clk,
    fromarm_tvalid => fromarm_tvalid,
    fromarm_tdata => fromarm_tdata,
    data2arm_tready => data2arm_tready,
    audiovolume => audiovolume,
    n3z_tonetest_s_axi_awready => n3z_tonetest_s_axi_awready,
    n3z_tonetest_s_axi_wready => n3z_tonetest_s_axi_wready,
    n3z_tonetest_s_axi_bresp => n3z_tonetest_s_axi_bresp,
    n3z_tonetest_s_axi_bvalid => n3z_tonetest_s_axi_bvalid,
    n3z_tonetest_s_axi_arready => n3z_tonetest_s_axi_arready,
    n3z_tonetest_s_axi_rdata => n3z_tonetest_s_axi_rdata,
    n3z_tonetest_s_axi_rresp => n3z_tonetest_s_axi_rresp,
    n3z_tonetest_s_axi_rvalid => n3z_tonetest_s_axi_rvalid,
    clk => clk_net
  );
  n3z_tonetest_default_clock_driver : entity xil_defaultlib.n3z_tonetest_default_clock_driver 
  port map (
    n3z_tonetest_sysclk => clk_net,
    n3z_tonetest_sysce => '1',
    n3z_tonetest_sysclr => '0',
    n3z_tonetest_clk1 => clk_1_net,
    n3z_tonetest_ce1 => ce_1_net
  );
  n3z_tonetest_struct : entity xil_defaultlib.n3z_tonetest_struct 
  port map (
    attenuatoron => attenuatoron,
    audiovolume => audiovolume,
    data2arm_tready => data2arm_tready,
    defaultfreq => defaultfreq,
    dummy => dummy,
    fromarm_tdata => fromarm_tdata,
    fromarm_tvalid => fromarm_tvalid,
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
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    signallevel => signallevel,
    adc_cal => adc_cal,
    adc_gain => adc_gain,
    bram_addr => bram_addr,
    bram_data => bram_data,
    bram_w => bram_w,
    conv => conv,
    classd_hina => classd_hina,
    classd_hinb => classd_hinb,
    classd_lina => classd_lina,
    classd_linb => classd_linb,
    data2arm_tdata => data2arm_tdata,
    data2arm_tvalid => data2arm_tvalid,
    fromarm_tready => fromarm_tready,
    keepon => keepon,
    lcdcontrast => lcdcontrast,
    lcdctrl => lcdctrl,
    lcddata => lcddata,
    ledb => ledb,
    ledg => ledg,
    ledr => ledr,
    match_z => match_z,
    psuclk => psuclk,
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
end structural;
