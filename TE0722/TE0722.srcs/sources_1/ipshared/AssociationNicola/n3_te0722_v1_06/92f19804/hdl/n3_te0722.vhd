-- Generated from Simulink block N3_TE0722/ADCRead/Subsystem1/SCKgenerator/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1;
architecture structural of n3_te0722_monostable1 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/ADCRead/Subsystem1/SCKgenerator/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2;
architecture structural of n3_te0722_monostable2 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay2_q_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/ADCRead/Subsystem1/SCKgenerator
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_sckgenerator is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dataready : out std_logic_vector( 1-1 downto 0 );
    sck : out std_logic_vector( 1-1 downto 0 );
    conv : out std_logic_vector( 1-1 downto 0 );
    datavalid : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_sckgenerator;
architecture structural of n3_te0722_sckgenerator is 
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
  signal constant1_op_net : std_logic_vector( 5-1 downto 0 );
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
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2 
  port map (
    in1 => delay2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_da80fc534e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_f0528702ad 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  counter : entity xil_defaultlib.n3_te0722_xlcounter_limit 
  generic map (
    cnt_15_0 => 63,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "n3_te0722_c_counter_binary_v12_0_5",
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
  counter1 : entity xil_defaultlib.sysgen_counter_8286a049da 
  port map (
    clr => '0',
    rst => logical_y_net_x0,
    en => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  delay2 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  register3 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational : entity xil_defaultlib.sysgen_relational_7d1cbbfc9f 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/ADCRead/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1 is
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
end n3_te0722_subsystem1;
architecture structural of n3_te0722_subsystem1 is 
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 16-1 downto 0 );
  signal sdoa_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal sdob_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 15-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 15-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
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
  sckgenerator : entity xil_defaultlib.n3_te0722_sckgenerator 
  port map (
    trig => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dataready => logical_y_net,
    sck => convert2_dout_net,
    conv => register3_q_net_x0,
    datavalid => relational_op_net
  );
  concat : entity xil_defaultlib.sysgen_concat_f5ece1a0ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice_y_net,
    in1 => sdoa_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_f5ece1a0ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice1_y_net,
    in1 => sdob_net,
    y => concat1_y_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
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
    q => delay1_q_net
  );
  delay3 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay4 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay5 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter1 : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay4_q_net,
    d1 => relational_op_net,
    y => logical_y_net_x0
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    d => concat_y_net,
    rst => convert_dout_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    d => concat1_y_net,
    rst => convert_dout_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.n3_te0722_xlregister 
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/ADCRead
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_adcread is
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
end n3_te0722_adcread;
architecture structural of n3_te0722_adcread is 
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
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1 
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
-- Generated from Simulink block N3_TE0722/ADCtrigger/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x0;
architecture structural of n3_te0722_monostable1_x0 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/ADCtrigger
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_adctrigger is
  port (
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    trig512 : out std_logic_vector( 1-1 downto 0 );
    dim : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_adctrigger;
architecture structural of n3_te0722_adctrigger is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 24-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 20-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 6-1 downto 0 );
begin
  trig512 <= logical_y_net;
  dim <= relational_op_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x0 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_4e69a491f2 
  port map (
    clr => '0',
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_1d55056d95 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_fa69e2b6e3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_411f504019 
  port map (
    clr => '0',
    a => constant2_op_net,
    b => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/Buffer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_buffer is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    user2btfifofull : out std_logic
  );
end n3_te0722_buffer;
architecture structural of n3_te0722_buffer is 
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
  user2btfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_b8076a50b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  fifo : entity xil_defaultlib.n3_te0722_xlfifogen 
  generic map (
    core_name0 => "n3_te0722_fifo_generator_v12_0_0",
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/BTinterface/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable;
architecture structural of n3_te0722_monostable is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational2_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x1;
architecture structural of n3_te0722_monostable1_x1 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational7_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/OutputRegister/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem;
architecture structural of n3_te0722_subsystem is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_284a1cf5ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem1_x0;
architecture structural of n3_te0722_subsystem1_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b44737ca6b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/OutputRegister/Subsystem12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem12 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem12;
architecture structural of n3_te0722_subsystem12 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4c0c741fc3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem2;
architecture structural of n3_te0722_subsystem2 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_fb04f6f258 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    latcheddata1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem3;
architecture structural of n3_te0722_subsystem3 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_dfb629d4c6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem4 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem4;
architecture structural of n3_te0722_subsystem4 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_6cfd1da807 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/OutputRegister/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem7 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem7;
architecture structural of n3_te0722_subsystem7 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_1f3d88de9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_outputregister is
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
end n3_te0722_outputregister;
architecture structural of n3_te0722_outputregister is 
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 10-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
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
  data2archive_w <= logical_y_net_x0;
  serialtx <= register1_q_net_x6;
  tx_w <= logical_y_net_x4;
  cmd2user <= register1_q_net_x2;
  ramadd <= concat2_y_net;
  newcmd <= logical_y_net_x2;
  ack_fifo <= logical_y_net;
  rst_bt <= slice1_y_net;
  writeram <= convert1_dout_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.n3_te0722_subsystem 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net
  );
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x0,
    strobe => logical_y_net_x0
  );
  subsystem12_x0 : entity xil_defaultlib.n3_te0722_subsystem12 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x1,
    ack_fifo => logical_y_net_x1
  );
  subsystem2 : entity xil_defaultlib.n3_te0722_subsystem2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x2,
    strobe => logical_y_net_x2
  );
  subsystem3 : entity xil_defaultlib.n3_te0722_subsystem3 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x3,
    latcheddata1 => logical_y_net_x3
  );
  subsystem4 : entity xil_defaultlib.n3_te0722_subsystem4 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x4
  );
  subsystem7 : entity xil_defaultlib.n3_te0722_subsystem7 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x6,
    strobe => logical_y_net_x4
  );
  concat2 : entity xil_defaultlib.sysgen_concat_5f99f9b565 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => register1_q_net_x4,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net,
    in1 => register1_q_net_x0,
    y => concat3_y_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert5_dout_net,
    d1 => delay_q_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => delay1_q_net,
    y => logical1_y_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x1,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 8,
    y_width => 2
  )
  port map (
    x => register1_q_net_x3,
    y => slice2_y_net
  );
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x1,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 1,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x1,
    y => slice5_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/BTinterface/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1_x1 is
  port (
    portid : in std_logic_vector( 8-1 downto 0 );
    rs : in std_logic;
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    read_buffer : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem1_x1;
architecture structural of n3_te0722_subsystem1_x1 is 
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
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical1_y_net,
    d1 => convert_dout_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_c4a4f82793 
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
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/BTinterface
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_btinterface is
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
end n3_te0722_btinterface;
architecture structural of n3_te0722_btinterface is 
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal black_box2_serial_out_net : std_logic;
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal rs232_from_bt_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 10-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
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
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_write_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 18-1 downto 0 );
  signal picoblaze6_address_net : std_logic_vector( 12-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 16-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 10-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 3-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 8-1 downto 0 );
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
  rst_bt <= slice1_y_net;
  rs232_from_bt_net <= serialrx_fmbt;
  constant6_op_net <= rts;
  concat1_y_net <= address;
  fifo_full_net_x0 <= bt2userfifofull;
  register1_q_net <= btcmd;
  btramrdbk <= dual_port_ram1_doutb_net;
  btcmd2user <= register1_q_net_x0;
  logical_y_net_x7 <= baudrate16;
  concat_y_net_x1 <= instruction;
  logical_y_net <= newbtcmd;
  newbtcmd2user <= logical_y_net_x3;
  concat4_y_net <= ramdata;
  relational5_op_net <= rstpico;
  user2btfifofull <= fifo_full_net;
  relational7_op_net <= writebt_ram;
  relational2_op_net <= writeprogbtpico;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buffer_x0 : entity xil_defaultlib.n3_te0722_buffer 
  port map (
    cmd => register1_q_net,
    newcmd => logical_y_net,
    ackfifo => logical_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x0,
    user2btfifofull => fifo_full_net
  );
  monostable : entity xil_defaultlib.n3_te0722_monostable 
  port map (
    in1 => relational2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x1 
  port map (
    in1 => relational7_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  outputregister : entity xil_defaultlib.n3_te0722_outputregister 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data2archive => concat3_y_net,
    data2archive_w => logical_y_net_x5,
    serialtx => register1_q_net_x1,
    tx_w => logical_y_net_x4,
    cmd2user => register1_q_net_x0,
    ramadd => concat2_y_net,
    newcmd => logical_y_net_x3,
    ack_fifo => logical_y_net_x0,
    rst_bt => slice1_y_net,
    writeram => convert1_dout_net
  );
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1_x1 
  port map (
    portid => assert3_dout_net,
    rs => picoblaze6_read_strobe_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    read_buffer => logical_y_net_x6
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
    en_16_x_baud => logical_y_net_x7(0),
    buffer_write => logical_y_net_x4(0),
    buffer_reset => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    serial_out => black_box2_serial_out_net,
    buffer_data_present => black_box2_buffer_data_present_net,
    buffer_half_full => black_box2_buffer_half_full_net,
    buffer_full => black_box2_buffer_full_net
  );
  concat : entity xil_defaultlib.sysgen_concat_92de63d9af 
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
  constant1 : entity xil_defaultlib.sysgen_constant_f01db21bff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_054b4cabac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert1_dout_net_x0
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  dual_port_ram : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_1",
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
    web => logical_y_net_x2,
    ena => convert5_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 10,
    c_address_width_b => 10,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_2",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => concat2_y_net,
    dina => concat3_y_net,
    wea => convert1_dout_net,
    addrb => slice4_y_net,
    dinb => concat4_y_net,
    web => logical_y_net_x1,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  mux : entity xil_defaultlib.sysgen_mux_6ecdcef433 
  port map (
    clr => '0',
    sel => slice2_y_net,
    d0 => concat_y_net_x0,
    d1 => slice1_y_net_x0,
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
    interrupt => convert1_dout_net_x0(0),
    sleep => convert1_dout_net_x0(0),
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice1_y_net_x0
  );
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
    serial_in => rs232_from_bt_net(0),
    en_16_x_baud => logical_y_net_x7(0),
    buffer_read => logical_y_net_x6(0),
    buffer_reset => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => uart_rx_data_out_net,
    buffer_data_present => uart_rx_buffer_data_present_net(0),
    buffer_half_full => uart_rx_buffer_half_full_net,
    buffer_full => uart_rx_buffer_full_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Bit_Corrector
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_bit_corrector is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end n3_te0722_bit_corrector;
architecture structural of n3_te0722_bit_corrector is 
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  register1_q_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_57040711c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice1_y_net,
    in2 => slice_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/Bit_Corrector1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_bit_corrector1 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end n3_te0722_bit_corrector1;
architecture structural of n3_te0722_bit_corrector1 is 
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register3_q_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  register3_q_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_57040711c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice1_y_net,
    in2 => slice_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/ConstantDetect/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x0;
architecture structural of n3_te0722_monostable_x0 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/ConstantDetect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_constantdetect is
  port (
    signal_x0 : in std_logic_vector( 8-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    isconstant : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_constantdetect;
architecture structural of n3_te0722_constantdetect is 
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 4-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 3-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 4-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 4-1 downto 0 );
begin
  isconstant <= relational1_op_net;
  slice7_y_net <= signal_x0;
  logical_y_net <= strobe;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3_te0722_monostable_x0 
  port map (
    in1 => convert_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  constant1 : entity xil_defaultlib.sysgen_constant_db2296db5b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_6",
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
  counter1 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_4",
    op_arith => xlUnsigned,
    op_width => 4
  )
  port map (
    clr => '0',
    rst => logical_y_net_x0,
    en => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  delay : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => slice7_y_net,
    en => logical_y_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => delay_q_net,
    en => logical_y_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net,
    d1 => logical_y_net,
    y => logical_y_net_x1
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 4,
    init_value => b"0000"
  )
  port map (
    rst => "0",
    d => counter1_op_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_9c920752e3 
  port map (
    clr => '0',
    a => delay_q_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_f3ee461a5b 
  port map (
    clr => '0',
    a => constant1_op_net,
    b => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DAC (XAPP154)
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_dac_xapp154 is
  port (
    dac_in : in std_logic_vector( 14-1 downto 0 );
    disable_audio : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dac_out : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_dac_xapp154;
architecture structural of n3_te0722_dac_xapp154 is 
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 14-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal delta_adder_s_net : std_logic_vector( 16-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal sigma_adder_s_net : std_logic_vector( 16-1 downto 0 );
  signal r1_q_net : std_logic_vector( 16-1 downto 0 );
begin
  dac_out <= register1_q_net;
  concat_y_net <= dac_in;
  inverter2_op_net <= disable_audio;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_128e6a17f9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice1_y_net,
    in1 => slice1_y_net,
    y => concat_y_net_x0
  );
  concat1 : entity xil_defaultlib.sysgen_concat_cd33369d5d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => concat_y_net_x0,
    in1 => constant2_op_net,
    y => concat1_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_17f0f938a0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  delta_adder : entity xil_defaultlib.sysgen_addsub_42a5ac525a 
  port map (
    clr => '0',
    a => concat_y_net,
    b => concat1_y_net,
    en => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => delta_adder_s_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    d => slice1_y_net,
    rst => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  sigma_adder : entity xil_defaultlib.sysgen_addsub_63756d9c4b 
  port map (
    clr => '0',
    a => r1_q_net,
    b => delta_adder_s_net,
    clk => clk_net,
    ce => ce_net,
    s => sigma_adder_s_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  r1 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000001000000"
  )
  port map (
    en => "1",
    d => sigma_adder_s_net,
    rst => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    q => r1_q_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/Buffer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_buffer_x0 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    user2dspfifofull : out std_logic
  );
end n3_te0722_buffer_x0;
architecture structural of n3_te0722_buffer_x0 is 
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
  user2dspfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_b8076a50b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  fifo : entity xil_defaultlib.n3_te0722_xlfifogen 
  generic map (
    core_name0 => "n3_te0722_fifo_generator_v12_0_0",
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DSProcessor1/InputSelect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_inputselect is
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
end n3_te0722_inputselect;
architecture structural of n3_te0722_inputselect is 
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 24-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
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
  concat_y_net_x1 <= cmd;
  slice1_y_net_x0 <= multout;
  reinterpret_output_port_net <= btaudioin;
  dual_port_ram1_douta_net <= ramdata;
  concat_y_net_x0 <= status;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_23ea7d6f25 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_7a01d6c188 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  mux : entity xil_defaultlib.sysgen_mux_5cff85af40 
  port map (
    clr => '0',
    sel => slice2_y_net_x0,
    d0 => slice3_y_net,
    d1 => slice4_y_net,
    d2 => concat_y_net,
    d3 => concat_y_net_x1,
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
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_0690e7d195 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice13 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice14 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice6 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice7 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DSProcessor1/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x2;
architecture structural of n3_te0722_monostable1_x2 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational6_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2_x0;
architecture structural of n3_te0722_monostable2_x0 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/LevelMonitor/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x1;
architecture structural of n3_te0722_monostable_x1 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/LevelMonitor/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2_x1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2_x1;
architecture structural of n3_te0722_monostable2_x1 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/LevelMonitor
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_levelmonitor is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 16-1 downto 0 )
  );
end n3_te0722_levelmonitor;
architecture structural of n3_te0722_levelmonitor is 
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 26-1 downto 0 );
  signal register_q_net : std_logic_vector( 26-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 10-1 downto 0 );
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
  convert2_dout_net_x0 <= en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3_te0722_monostable_x1 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2_x1 
  port map (
    in1 => convert2_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsubmode 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_0",
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
    b => convert2_dout_net,
    mode => convert_dout_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert2_dout_net
  );
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_7",
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/LevelMonitor1/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x2;
architecture structural of n3_te0722_monostable_x2 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/LevelMonitor1/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2_x2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2_x2;
architecture structural of n3_te0722_monostable2_x2 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/LevelMonitor1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_levelmonitor1 is
  port (
    in1 : in std_logic_vector( 8-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 16-1 downto 0 )
  );
end n3_te0722_levelmonitor1;
architecture structural of n3_te0722_levelmonitor1 is 
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
  monostable : entity xil_defaultlib.n3_te0722_monostable_x2 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2_x2 
  port map (
    in1 => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_1",
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_7",
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem_x0;
architecture structural of n3_te0722_subsystem_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_284a1cf5ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem1_x2;
architecture structural of n3_te0722_subsystem1_x2 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b44737ca6b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem10
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem10 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem10;
architecture structural of n3_te0722_subsystem10 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_46221ebd60 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem11
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem11 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem11;
architecture structural of n3_te0722_subsystem11 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_48b0422146 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem12_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem12_x0;
architecture structural of n3_te0722_subsystem12_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_ac30286558 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem13 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    newvalue : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem13;
architecture structural of n3_te0722_subsystem13 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_d380f401ce 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem15
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem15 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem15;
architecture structural of n3_te0722_subsystem15 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_18b71d534c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem16
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem16 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem16;
architecture structural of n3_te0722_subsystem16 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_eef5656265 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem17
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem17 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem17;
architecture structural of n3_te0722_subsystem17 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_26d2802334 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem18
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem18 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem18;
architecture structural of n3_te0722_subsystem18 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_9044980e4d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem2_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem2_x0;
architecture structural of n3_te0722_subsystem2_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_fb04f6f258 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem23
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem23 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem23;
architecture structural of n3_te0722_subsystem23 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_dcef63a006 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem24
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem24 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem24;
architecture structural of n3_te0722_subsystem24 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_55df25ca34 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem25
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem25 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem25;
architecture structural of n3_te0722_subsystem25 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b63540ec76 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem26
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem26 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem26;
architecture structural of n3_te0722_subsystem26 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_dfeab17888 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem3_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem3_x0;
architecture structural of n3_te0722_subsystem3_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_dfb629d4c6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem4_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem4_x0;
architecture structural of n3_te0722_subsystem4_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_6cfd1da807 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem5 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem5;
architecture structural of n3_te0722_subsystem5 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b6692eb42f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem6 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem6;
architecture structural of n3_te0722_subsystem6 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4c0c741fc3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem7_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem7_x0;
architecture structural of n3_te0722_subsystem7_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_1f3d88de9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem8 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    w : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem8;
architecture structural of n3_te0722_subsystem8 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_26d12316e1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister/Subsystem9
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem9 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem9;
architecture structural of n3_te0722_subsystem9 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_ad8e6e823c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_outputregister_x0 is
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
    starttonea : out std_logic_vector( 8-1 downto 0 );
    starttonealong : out std_logic_vector( 8-1 downto 0 );
    starttoneb : out std_logic_vector( 8-1 downto 0 );
    starttoneblong : out std_logic_vector( 8-1 downto 0 );
    stoptonea : out std_logic_vector( 8-1 downto 0 );
    stoptonealong : out std_logic_vector( 8-1 downto 0 );
    stoptoneb : out std_logic_vector( 8-1 downto 0 );
    stoptoneblong : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_outputregister_x0;
architecture structural of n3_te0722_outputregister_x0 is 
  signal register1_q_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x26 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat5_y_net : std_logic_vector( 10-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 4-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x17 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x18 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x19 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x20 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x22 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x21 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x23 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x24 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x25 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x27 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x28 : std_logic_vector( 8-1 downto 0 );
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
  audio_out <= register1_q_net_x1;
  amp <= register1_q_net_x26;
  cmd2user <= register1_q_net_x13;
  coeff <= concat1_y_net;
  signal_x0 <= concat2_y_net;
  data2archive <= concat4_y_net;
  phaseincrement <= register1_q_net_x6;
  newcmd <= logical_y_net_x2;
  ack_fifo <= logical_y_net;
  ramaddress <= concat5_y_net;
  writeram <= convert7_dout_net;
  txphase <= concat7_y_net;
  newvalue <= logical_y_net_x1;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  agcvalue <= slice8_y_net;
  convert2_dout_net <= square8khz;
  starttonea <= slice10_y_net;
  starttonealong <= slice9_y_net;
  starttoneb <= slice12_y_net;
  starttoneblong <= slice13_y_net;
  stoptonea <= register1_q_net_x17;
  stoptonealong <= register1_q_net_x18;
  stoptoneb <= register1_q_net_x19;
  stoptoneblong <= register1_q_net_x20;
  clk_net <= clk_1;
  ce_net <= ce_1;
  levelmonitor : entity xil_defaultlib.n3_te0722_levelmonitor 
  port map (
    in1 => concat4_y_net,
    en => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    signallevel => register1_q_net
  );
  levelmonitor1 : entity xil_defaultlib.n3_te0722_levelmonitor1 
  port map (
    in1 => register1_q_net_x26,
    en => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    signallevel => register1_q_net_x0
  );
  subsystem : entity xil_defaultlib.n3_te0722_subsystem_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x2
  );
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1_x2 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x3
  );
  subsystem10_x0 : entity xil_defaultlib.n3_te0722_subsystem10 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x22
  );
  subsystem11_x0 : entity xil_defaultlib.n3_te0722_subsystem11 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x4
  );
  subsystem12_x0 : entity xil_defaultlib.n3_te0722_subsystem12_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x5,
    ack_fifo => logical_y_net_x0
  );
  subsystem13 : entity xil_defaultlib.n3_te0722_subsystem13 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x6,
    newvalue => logical_y_net_x1
  );
  subsystem15 : entity xil_defaultlib.n3_te0722_subsystem15 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x8
  );
  subsystem16 : entity xil_defaultlib.n3_te0722_subsystem16 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x9
  );
  subsystem17 : entity xil_defaultlib.n3_te0722_subsystem17 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x10
  );
  subsystem18_x0 : entity xil_defaultlib.n3_te0722_subsystem18 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x11
  );
  subsystem2 : entity xil_defaultlib.n3_te0722_subsystem2_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x13,
    strobe => logical_y_net_x2
  );
  subsystem23 : entity xil_defaultlib.n3_te0722_subsystem23 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x17
  );
  subsystem24 : entity xil_defaultlib.n3_te0722_subsystem24 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x18
  );
  subsystem25 : entity xil_defaultlib.n3_te0722_subsystem25 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x19
  );
  subsystem26 : entity xil_defaultlib.n3_te0722_subsystem26 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x20
  );
  subsystem3 : entity xil_defaultlib.n3_te0722_subsystem3_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x21
  );
  subsystem4 : entity xil_defaultlib.n3_te0722_subsystem4_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x23
  );
  subsystem5_x0 : entity xil_defaultlib.n3_te0722_subsystem5 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x24
  );
  subsystem6 : entity xil_defaultlib.n3_te0722_subsystem6 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x25
  );
  subsystem7 : entity xil_defaultlib.n3_te0722_subsystem7_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x26
  );
  subsystem8 : entity xil_defaultlib.n3_te0722_subsystem8 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x27,
    w => logical_y_net_x3
  );
  subsystem9_x0 : entity xil_defaultlib.n3_te0722_subsystem9 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x28
  );
  concat1 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x21,
    in1 => register1_q_net_x23,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x24,
    in1 => register1_q_net_x25,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x2,
    in1 => register1_q_net_x3,
    y => concat3_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x22,
    in1 => register1_q_net_x4,
    y => concat4_y_net
  );
  concat5 : entity xil_defaultlib.sysgen_concat_5f99f9b565 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice6_y_net,
    in1 => register1_q_net_x28,
    y => concat5_y_net
  );
  concat7 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x8,
    in1 => register1_q_net_x9,
    y => concat7_y_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert7 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert5_dout_net,
    d1 => delay_q_net,
    y => logical_y_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
    q => register1_q_net_x1
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x10,
    y => slice_y_net
  );
  slice10 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => register1_q_net,
    y => slice10_y_net
  );
  slice12 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => register1_q_net_x0,
    y => slice12_y_net
  );
  slice13 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => register1_q_net_x0,
    y => slice13_y_net
  );
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x5,
    y => slice4_y_net
  );
  slice6 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 8,
    y_width => 2
  )
  port map (
    x => register1_q_net_x27,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x27,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x11,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => register1_q_net,
    y => slice9_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DSProcessor1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_dsprocessor1 is
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
    audioout : out std_logic_vector( 16-1 downto 0 );
    amp : out std_logic_vector( 8-1 downto 0 );
    cmdtouser : out std_logic_vector( 8-1 downto 0 );
    data2archive : out std_logic_vector( 16-1 downto 0 );
    phaseincrement_8bits : out std_logic_vector( 8-1 downto 0 );
    newcmdtouser : out std_logic_vector( 1-1 downto 0 );
    tx_phase : out std_logic_vector( 16-1 downto 0 );
    newvalue : out std_logic_vector( 1-1 downto 0 );
    agcvalue : out std_logic_vector( 4-1 downto 0 );
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
end n3_te0722_dsprocessor1;
architecture structural of n3_te0722_dsprocessor1 is 
  signal register1_q_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 12-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 4-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 4-1 downto 0 );
  signal delay_q_net : std_logic_vector( 18-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 24-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat5_y_net : std_logic_vector( 10-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal assert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze6_bram_enable_net : std_logic_vector( 1-1 downto 0 );
  signal assert4_dout_net : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 6-1 downto 0 );
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
  audioout <= register1_q_net_x2;
  amp <= register1_q_net_x7;
  cmdtouser <= register1_q_net_x8;
  data2archive <= concat4_y_net;
  phaseincrement_8bits <= register1_q_net_x1;
  newcmdtouser <= logical_y_net_x0;
  tx_phase <= concat7_y_net;
  newvalue <= logical_y_net_x1;
  register_q_net <= filterredsignal;
  concat1_y_net_x0 <= addrram;
  concat_y_net_x0 <= dataram;
  relational3_op_net <= writeram;
  register1_q_net <= cmd;
  logical_y_net <= newcmd;
  relational5_op_net <= rst;
  slice_y_net <= strobe;
  reinterpret_output_port_net_x0 <= btauidioin;
  agcvalue <= slice8_y_net;
  concat1_y_net_x0 <= address;
  fifo_full_net_x0 <= dsp2userfifofull;
  dspramrdbk <= dual_port_ram1_doutb_net;
  relational1_op_net <= nobtsignal;
  concat4_y_net_x0 <= ramdata;
  convert2_dout_net_x0 <= square8khz;
  starttonea <= slice10_y_net;
  starttonealong <= slice9_y_net;
  starttoneb <= slice12_y_net;
  starttoneblong <= slice13_y_net;
  stoptonea <= register1_q_net_x3;
  stoptonealong <= register1_q_net_x4;
  stoptoneb <= register1_q_net_x5;
  stoptoneblong <= register1_q_net_x6;
  slice11_y_net <= tx_high;
  user2dspfifofull <= fifo_full_net;
  relational6_op_net <= writedsp_ram;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buffer_x0 : entity xil_defaultlib.n3_te0722_buffer_x0 
  port map (
    cmd => register1_q_net,
    newcmd => logical_y_net,
    ackfifo => logical_y_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net,
    user2dspfifofull => fifo_full_net
  );
  inputselect : entity xil_defaultlib.n3_te0722_inputselect 
  port map (
    select_x0 => slice2_y_net,
    signal_x0 => delay_q_net,
    strobe => slice_y_net,
    cmd => concat_y_net,
    multout => slice1_y_net,
    btaudioin => reinterpret_output_port_net_x0,
    ramdata => dual_port_ram1_douta_net,
    status => concat_y_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => mux_y_net
  );
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x2 
  port map (
    in1 => relational6_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x4
  );
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2_x0 
  port map (
    in1 => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x3
  );
  outputregister : entity xil_defaultlib.n3_te0722_outputregister_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    square8khz => convert2_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    audio_out => register1_q_net_x2,
    amp => register1_q_net_x7,
    cmd2user => register1_q_net_x8,
    coeff => concat1_y_net,
    signal_x0 => concat2_y_net,
    data2archive => concat4_y_net,
    phaseincrement => register1_q_net_x1,
    newcmd => logical_y_net_x0,
    ack_fifo => logical_y_net_x2,
    ramaddress => concat5_y_net,
    writeram => convert7_dout_net,
    txphase => concat7_y_net,
    newvalue => logical_y_net_x1,
    agcvalue => slice8_y_net,
    starttonea => slice10_y_net,
    starttonealong => slice9_y_net,
    starttoneb => slice12_y_net,
    starttoneblong => slice13_y_net,
    stoptonea => register1_q_net_x3,
    stoptonealong => register1_q_net_x4,
    stoptoneb => register1_q_net_x5,
    stoptoneblong => register1_q_net_x6
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
  concat : entity xil_defaultlib.sysgen_concat_8d735268bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1 => relational1_op_net,
    in2(0) => fifo_full_net_x0,
    y => concat_y_net_x1
  );
  constant1 : entity xil_defaultlib.sysgen_constant_94d190a970 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_054b4cabac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    din => logical_y_net_x3,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  dual_port_ram : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_3",
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
    dinb => concat_y_net_x0,
    web => relational3_op_net,
    ena => convert6_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 10,
    c_address_width_b => 10,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_4",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => concat5_y_net,
    dina => concat4_y_net,
    wea => convert7_dout_net,
    addrb => slice4_y_net,
    dinb => concat4_y_net_x0,
    web => logical_y_net_x4,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  mult : entity xil_defaultlib.n3_te0722_xlmult 
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
    core_name0 => "n3_te0722_mult_gen_v12_0_0",
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
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat2_y_net,
    output_port => reinterpret1_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/AGCandFilter1/Filter1/Latch
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_latch is
  port (
    set : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    state : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_latch;
architecture structural of n3_te0722_latch is 
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
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
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
  set1 : entity xil_defaultlib.sysgen_constant_da80fc534e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => set1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/AGCandFilter1/Filter1/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x3;
architecture structural of n3_te0722_monostable_x3 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter1_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/AGCandFilter1/Filter1/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x3;
architecture structural of n3_te0722_monostable1_x3 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter2_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/AGCandFilter1/Filter1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_filter1 is
  port (
    strobe : in std_logic_vector( 1-1 downto 0 );
    input : in std_logic_vector( 16-1 downto 0 );
    tx_high : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    output : out std_logic_vector( 18-1 downto 0 )
  );
end n3_te0722_filter1;
architecture structural of n3_te0722_filter1 is 
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal m3_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
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
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 31-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice18_y_net : std_logic_vector( 18-1 downto 0 );
  signal slice19_y_net : std_logic_vector( 18-1 downto 0 );
begin
  output <= register_q_net;
  logical_y_net <= strobe;
  m3_y_net <= input;
  slice11_y_net <= tx_high;
  clk_net <= clk_1;
  ce_net <= ce_1;
  latch : entity xil_defaultlib.n3_te0722_latch 
  port map (
    set => delay1_q_net,
    rst => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    state => register2_q_net
  );
  monostable : entity xil_defaultlib.n3_te0722_monostable_x3 
  port map (
    in1 => inverter1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x3 
  port map (
    in1 => inverter2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  accumulator : entity xil_defaultlib.sysgen_accum_b84b9943c6 
  port map (
    clr => '0',
    b => reinterpret2_output_port_net,
    rst => logical_y_net_x0,
    en => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_3",
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
  concat : entity xil_defaultlib.sysgen_concat_5f99f9b565 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant_op_net,
    in1 => mux_y_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_6f39b1303f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1 => slice11_y_net,
    in2 => counter1_op_net,
    y => concat1_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_1fe5d9a589 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_da80fc534e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_da80fc534e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_dbd1a789a9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert1_dout_net
  );
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_2",
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
  counter1 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_2",
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay2 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay3 : entity xil_defaultlib.n3_te0722_xldelay 
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
  dual_port_ram : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 10,
    c_address_width_b => 10,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_6",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => concat_y_net,
    dina => m3_y_net,
    wea => logical_y_net_x2,
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice17_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => constant2_op_net,
    d1 => convert_dout_net,
    y => logical_y_net_x2
  );
  mult : entity xil_defaultlib.n3_te0722_xlmult 
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
    core_name0 => "n3_te0722_mult_gen_v12_0_0",
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
  mux : entity xil_defaultlib.sysgen_mux_44a84f2019 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => register2_q_net,
    d0 => counter_op_net,
    d1 => addsub_s_net,
    y => mux_y_net
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_b4da845827 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice18_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_b4da845827 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice19_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice17 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice18 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice19 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/AGCandFilter1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_agcandfilter1 is
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
end n3_te0722_agcandfilter1;
architecture structural of n3_te0722_agcandfilter1 is 
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 25-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 4-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice11_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal m3_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 10-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 6-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice8_y_net_x0 : std_logic_vector( 11-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 5-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 12-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 4-1 downto 0 );
  signal concat5_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 13-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 3-1 downto 0 );
  signal concat6_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 14-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 2-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 15-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
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
  logical_y_net_x0 <= audiosampleclk;
  slice8_y_net <= agcvalue;
  reinterpret_output_port_net <= btaudio;
  relational1_op_net <= nobtsignal;
  slice11_y_net_x0 <= tx_high;
  clk_net <= clk_1;
  ce_net <= ce_1;
  filter1 : entity xil_defaultlib.n3_te0722_filter1 
  port map (
    strobe => logical_y_net_x0,
    input => m3_y_net,
    tx_high => slice11_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    output => register_q_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_3f75b0a13d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice7_y_net,
    in1 => constant10_op_net,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_20b993d268 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice8_y_net_x0,
    in1 => constant9_op_net,
    y => concat3_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_8b481a51f7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice9_y_net,
    in1 => constant8_op_net,
    y => concat4_y_net
  );
  concat5 : entity xil_defaultlib.sysgen_concat_bb191b3b9c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice10_y_net,
    in1 => constant7_op_net,
    y => concat5_y_net
  );
  concat6 : entity xil_defaultlib.sysgen_concat_758a622209 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice11_y_net,
    in1 => constant6_op_net,
    y => concat6_y_net
  );
  concat7 : entity xil_defaultlib.sysgen_concat_f5ece1a0ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice12_y_net,
    in1 => constant5_op_net,
    y => concat7_y_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_94d190a970 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_1fe5d9a589 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_ae79382d65 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_f01db21bff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_74f3954822 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice11_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_d1bc6fd858 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  m3 : entity xil_defaultlib.sysgen_mux_34e60fdd7a 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => reinterpret_output_port_net,
    d1 => reinterpret1_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => m3_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_de8ffb8bfd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => slice8_y_net,
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
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux1_y_net,
    output_port => reinterpret1_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 23,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice1_y_net
  );
  slice10 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 12,
    x_width => 25,
    y_width => 13
  )
  port map (
    x => addsub_s_net,
    y => slice10_y_net
  );
  slice11 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 25,
    y_width => 14
  )
  port map (
    x => addsub_s_net,
    y => slice11_y_net
  );
  slice12 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 25,
    y_width => 15
  )
  port map (
    x => addsub_s_net,
    y => slice12_y_net
  );
  slice13 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice13_y_net
  );
  slice14 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 1,
    new_msb => 16,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice14_y_net
  );
  slice15 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 17,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice15_y_net
  );
  slice16 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 3,
    new_msb => 18,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice16_y_net
  );
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 9,
    new_msb => 24,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 21,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 22,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 19,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 20,
    x_width => 25,
    y_width => 16
  )
  port map (
    x => addsub_s_net,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 25,
    y_width => 10
  )
  port map (
    x => addsub_s_net,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 10,
    x_width => 25,
    y_width => 11
  )
  port map (
    x => addsub_s_net,
    y => slice8_y_net_x0
  );
  slice9 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 11,
    x_width => 25,
    y_width => 12
  )
  port map (
    x => addsub_s_net,
    y => slice9_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/CtrlBitSequenceAddress
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_ctrlbitsequenceaddress is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    ctrlsequenceraddress : out std_logic_vector( 5-1 downto 0 )
  );
end n3_te0722_ctrlbitsequenceaddress;
architecture structural of n3_te0722_ctrlbitsequenceaddress is 
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
  constant_x0 : entity xil_defaultlib.sysgen_constant_da80fc534e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_2916821af6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter2 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_8",
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
  register3 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational : entity xil_defaultlib.sysgen_relational_fb6b5f5354 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/CtrlSequencer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_ctrlsequencer is
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
end n3_te0722_ctrlsequencer;
architecture structural of n3_te0722_ctrlsequencer is 
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
  bitbasher : entity xil_defaultlib.sysgen_bitbasher_7ef972275a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => ctrlbitsequence_data_net,
    m1 => bitbasher_m1_net,
    m2 => bitbasher_m2_net,
    iqaddress => bitbasher_iqaddress_net
  );
  bitbasher1 : entity xil_defaultlib.sysgen_bitbasher_afe18f5232 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => ctrlbitsequence_data_net,
    latchi => bitbasher1_latchi_net,
    latchq => bitbasher1_latchq_net,
    latchdemod => bitbasher1_latchdemod_net
  );
  bitbasher2 : entity xil_defaultlib.sysgen_bitbasher_e0523f276a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => ctrlbitsequence_data_net,
    accu => bitbasher2_accu_net,
    increment => bitbasher2_increment_net,
    iqadd_sub => bitbasher2_iqadd_sub_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  ctrlbitsequence : entity xil_defaultlib.n3_te0722_xlsprom_dist 
  generic map (
    addr_width => 5,
    c_address_width => 5,
    c_width => 10,
    core_name0 => "n3_te0722_dist_mem_gen_v8_0_0",
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
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/FilterStreamIntegration/TrigDistrib/3LineTo8Way
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_3lineto8way is
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
end n3_te0722_3lineto8way;
architecture structural of n3_te0722_3lineto8way is 
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
  bitbasher : entity xil_defaultlib.sysgen_bitbasher_fb763dfbb4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b0 => bitbasher_b0_net,
    b1 => bitbasher_b1_net,
    b2 => bitbasher_b2_net
  );
  bitbasher1 : entity xil_defaultlib.sysgen_bitbasher_36ceb7544c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b3 => bitbasher1_b3_net,
    b4 => bitbasher1_b4_net,
    b5 => bitbasher1_b5_net
  );
  bitbasher2 : entity xil_defaultlib.sysgen_bitbasher_0745c89325 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b6 => bitbasher2_b6_net,
    b7 => bitbasher2_b7_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert6 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert7 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  rom : entity xil_defaultlib.n3_te0722_xlsprom_dist 
  generic map (
    addr_width => 3,
    c_address_width => 4,
    c_width => 8,
    core_name0 => "n3_te0722_dist_mem_gen_v8_0_1",
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
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/FilterStreamIntegration/TrigDistrib
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_trigdistrib is
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
end n3_te0722_trigdistrib;
architecture structural of n3_te0722_trigdistrib is 
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
  x3lineto8way : entity xil_defaultlib.n3_te0722_3lineto8way 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert_dout_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert1_dout_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert2_dout_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert3_dout_net,
    y => logical3_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert4_dout_net,
    y => logical4_y_net
  );
  logical5 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert5_dout_net,
    y => logical5_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert6_dout_net,
    y => logical6_y_net
  );
  logical7 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay1_q_net,
    d1 => convert7_dout_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/FilterStreamIntegration/TrigDistrib1/3LineTo8Way
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_3lineto8way_x0 is
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
end n3_te0722_3lineto8way_x0;
architecture structural of n3_te0722_3lineto8way_x0 is 
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
  bitbasher : entity xil_defaultlib.sysgen_bitbasher_fb763dfbb4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b0 => bitbasher_b0_net,
    b1 => bitbasher_b1_net,
    b2 => bitbasher_b2_net
  );
  bitbasher1 : entity xil_defaultlib.sysgen_bitbasher_36ceb7544c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b3 => bitbasher1_b3_net,
    b4 => bitbasher1_b4_net,
    b5 => bitbasher1_b5_net
  );
  bitbasher2 : entity xil_defaultlib.sysgen_bitbasher_0745c89325 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => rom_data_net,
    b6 => bitbasher2_b6_net,
    b7 => bitbasher2_b7_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert6 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert7 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  rom : entity xil_defaultlib.n3_te0722_xlsprom_dist 
  generic map (
    addr_width => 3,
    c_address_width => 4,
    c_width => 8,
    core_name0 => "n3_te0722_dist_mem_gen_v8_0_1",
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
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/FilterStreamIntegration/TrigDistrib1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_trigdistrib1 is
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
end n3_te0722_trigdistrib1;
architecture structural of n3_te0722_trigdistrib1 is 
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical5_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
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
  out1 <= logical_y_net_x0;
  out2 <= logical1_y_net;
  out3 <= logical2_y_net;
  out4 <= logical3_y_net;
  out5 <= logical4_y_net;
  out6 <= logical5_y_net;
  out7 <= logical6_y_net;
  out8 <= logical7_y_net;
  logical_y_net <= trig;
  counter1_op_net <= in2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  x3lineto8way : entity xil_defaultlib.n3_te0722_3lineto8way_x0 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => convert_dout_net,
    y => logical_y_net_x0
  );
  logical1 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => convert1_dout_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => convert2_dout_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => convert3_dout_net,
    y => logical3_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => convert4_dout_net,
    y => logical4_y_net
  );
  logical5 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => convert5_dout_net,
    y => logical5_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => convert6_dout_net,
    y => logical6_y_net
  );
  logical7 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net,
    d1 => convert7_dout_net,
    y => logical7_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/FilterStreamIntegration
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_filterstreamintegration is
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
end n3_te0722_filterstreamintegration;
architecture structural of n3_te0722_filterstreamintegration is 
  signal addsub_s_net : std_logic_vector( 25-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 3-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 3-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical5_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical6_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical7_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 3-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net_x0 : std_logic_vector( 1-1 downto 0 );
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
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 25-1 downto 0 );
begin
  demodsignal <= addsub_s_net;
  demodstrobe <= delay3_q_net;
  counter2_op_net <= stream2accu;
  convert1_dout_net <= accu;
  register2_q_net <= signal_x0;
  logical_y_net <= rst;
  counter1_op_net <= streammaturing;
  clk_net <= clk_1;
  ce_net <= ce_1;
  trigdistrib : entity xil_defaultlib.n3_te0722_trigdistrib 
  port map (
    trig => delay1_q_net,
    in2 => delay_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1,
    out2 => logical1_y_net,
    out3 => logical2_y_net,
    out4 => logical3_y_net,
    out5 => logical4_y_net,
    out6 => logical5_y_net,
    out7 => logical6_y_net,
    out8 => logical7_y_net_x0
  );
  trigdistrib1 : entity xil_defaultlib.n3_te0722_trigdistrib1 
  port map (
    trig => logical_y_net,
    in2 => counter1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2,
    out2 => logical1_y_net_x0,
    out3 => logical2_y_net_x0,
    out4 => logical3_y_net_x0,
    out5 => logical4_y_net_x0,
    out6 => logical5_y_net_x0,
    out7 => logical6_y_net_x0,
    out8 => logical7_y_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_3bbfe743cb 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical_y_net_x2,
    en => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  accumulator2 : entity xil_defaultlib.sysgen_accum_0ba9c6efa8 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical7_y_net,
    en => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator2_q_net
  );
  accumulator3 : entity xil_defaultlib.sysgen_accum_0ba9c6efa8 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical6_y_net_x0,
    en => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator3_q_net
  );
  accumulator4 : entity xil_defaultlib.sysgen_accum_0ba9c6efa8 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical5_y_net_x0,
    en => logical3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator4_q_net
  );
  accumulator5 : entity xil_defaultlib.sysgen_accum_0ba9c6efa8 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical4_y_net_x0,
    en => logical4_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator5_q_net
  );
  accumulator6 : entity xil_defaultlib.sysgen_accum_0ba9c6efa8 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical3_y_net_x0,
    en => logical5_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator6_q_net
  );
  accumulator7 : entity xil_defaultlib.sysgen_accum_0ba9c6efa8 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical2_y_net_x0,
    en => logical6_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator7_q_net
  );
  accumulator8 : entity xil_defaultlib.sysgen_accum_0ba9c6efa8 
  port map (
    clr => '0',
    b => register2_q_net,
    rst => logical1_y_net_x0,
    en => logical7_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => accumulator8_q_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsubmode 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_4",
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
  addsub1 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_5",
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
  constant_x0 : entity xil_defaultlib.sysgen_constant_02587ff94e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_0988eb3107 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay2 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay3 : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
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
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.n3_te0722_xldelay 
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
  logical : entity xil_defaultlib.sysgen_logical_b2a05aa109 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice1_y_net,
    d1 => slice_y_net,
    y => logical_y_net_x0
  );
  mux : entity xil_defaultlib.sysgen_mux_88eff8d614 
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
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register6 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    rst => "0",
    d => logical_y_net_x0,
    en => logical3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x4;
architecture structural of n3_te0722_monostable_x4 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/StreamControl1/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x5 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x5;
architecture structural of n3_te0722_monostable_x5 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/DemodulationSSB1/StreamControl1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_streamcontrol1 is
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
end n3_te0722_streamcontrol1;
architecture structural of n3_te0722_streamcontrol1 is 
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
  monostable : entity xil_defaultlib.n3_te0722_monostable_x5 
  port map (
    in1 => relational1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_6",
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
  constant5 : entity xil_defaultlib.sysgen_constant_94d190a970 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_5",
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
  counter1 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_6",
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
  counter2 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_6",
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
  relational1 : entity xil_defaultlib.sysgen_relational_c79c65f4bf 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/DemodulationSSB1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_demodulationssb1 is
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
    counter6khz : out std_logic_vector( 6-1 downto 0 )
  );
end n3_te0722_demodulationssb1;
architecture structural of n3_te0722_demodulationssb1 is 
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal adcvalue_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 4-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub_s_net_x0 : std_logic_vector( 25-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 5-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
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
  signal counter2_op_net_x0 : std_logic_vector( 3-1 downto 0 );
  signal register2_q_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 3-1 downto 0 );
  signal addsub_s_net_x1 : std_logic_vector( 3-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 24-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
  signal register3_q_net : std_logic_vector( 18-1 downto 0 );
  signal register4_q_net : std_logic_vector( 18-1 downto 0 );
  signal baseband_op_net : std_logic_vector( 16-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 18-1 downto 0 );
  signal concat_y_net : std_logic_vector( 9-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 9-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal concat2_y_net_x0 : std_logic_vector( 10-1 downto 0 );
  signal m1_y_net : std_logic_vector( 9-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal lut_data_net : std_logic_vector( 18-1 downto 0 );
  signal m2_y_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register_q_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net : std_logic_vector( 18-1 downto 0 );
begin
  demodsignal <= register_q_net;
  demodsqstrobe <= slice_y_net;
  adcvalue_q_net <= signalin;
  delay1_q_net <= trig;
  slice8_y_net <= agcvalue;
  reinterpret_output_port_net <= btaudio;
  counter6khz <= counter_op_net;
  relational1_op_net <= nobtsignal;
  concat2_y_net <= rxfreq;
  slice11_y_net <= tx_high;
  clk_net <= clk_1;
  ce_net <= ce_1;
  agcandfilter1 : entity xil_defaultlib.n3_te0722_agcandfilter1 
  port map (
    in1 => addsub_s_net_x0,
    audiosampleclk => logical_y_net,
    agcvalue => slice8_y_net,
    btaudio => reinterpret_output_port_net,
    nobtsignal => relational1_op_net,
    tx_high => slice11_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => register_q_net
  );
  ctrlbitsequenceaddress : entity xil_defaultlib.n3_te0722_ctrlbitsequenceaddress 
  port map (
    trig => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    ctrlsequenceraddress => counter2_op_net
  );
  ctrlsequencer : entity xil_defaultlib.n3_te0722_ctrlsequencer 
  port map (
    in1 => counter2_op_net,
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
  filterstreamintegration : entity xil_defaultlib.n3_te0722_filterstreamintegration 
  port map (
    stream2accu => counter2_op_net_x0,
    accu => convert1_dout_net,
    signal_x0 => register2_q_net,
    rst => logical_y_net_x0,
    streammaturing => counter1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    demodsignal => addsub_s_net_x0,
    demodstrobe => delay3_q_net
  );
  monostable : entity xil_defaultlib.n3_te0722_monostable_x4 
  port map (
    in1 => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  streamcontrol1 : entity xil_defaultlib.n3_te0722_streamcontrol1 
  port map (
    trig => delay1_q_net,
    incstream => convert_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    lut6lsbs => counter_op_net,
    lutwindow3msbs => addsub_s_net_x1,
    streamaddress => counter2_op_net_x0,
    streamreachingmaturity => counter1_op_net,
    streamreachingmaturitytrig => logical_y_net_x0,
    square8khz => slice_y_net,
    counter6khz => counter_op_net
  );
  accumulator : entity xil_defaultlib.sysgen_accum_4eb9504c6e 
  port map (
    clr => '0',
    b => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsubmode 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_2",
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
    s => addsub_s_net
  );
  baseband : entity xil_defaultlib.sysgen_constant_d1feef1540 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => baseband_op_net
  );
  cmult : entity xil_defaultlib.n3_te0722_xlcmult 
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
    core_name0 => "n3_te0722_mult_gen_v12_0_1",
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
  concat : entity xil_defaultlib.sysgen_concat_e5dec59fc2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => addsub_s_net_x1,
    in1 => counter_op_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_9978b35de8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => bitbasher_iqaddress_net,
    in1 => slice_y_net_x0,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_dd311d0a5e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => bitbasher_m1_net,
    in1 => m1_y_net,
    y => concat2_y_net_x0
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  lut : entity xil_defaultlib.n3_te0722_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_5",
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
  m1 : entity xil_defaultlib.sysgen_mux_03758273cb 
  port map (
    clr => '0',
    sel => bitbasher_m1_net,
    d0 => concat1_y_net,
    d1 => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    y => m1_y_net
  );
  m2 : entity xil_defaultlib.sysgen_mux_f6a3847649 
  port map (
    clr => '0',
    sel => bitbasher_m2_net,
    d0 => reinterpret_output_port_net_x0,
    d1 => register_q_net_x0,
    d2 => register1_q_net,
    d3 => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    y => m2_y_net
  );
  mult : entity xil_defaultlib.n3_te0722_xlmult 
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
    core_name0 => "n3_te0722_mult_gen_v12_0_2",
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
  mux : entity xil_defaultlib.sysgen_mux_ffc52334a4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => convert_dout_net_x0,
    d0 => concat2_y_net,
    d1 => baseband_op_net,
    y => mux_y_net
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register3 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register4 : entity xil_defaultlib.n3_te0722_xlregister 
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
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_7057a35eb0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => adcvalue_q_net,
    output_port => reinterpret_output_port_net_x0
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 23,
    x_width => 24,
    y_width => 8
  )
  port map (
    x => accumulator_q_net,
    y => slice_y_net_x0
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/Buffer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_buffer_x1 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    user2kpfifofull : out std_logic
  );
end n3_te0722_buffer_x1;
architecture structural of n3_te0722_buffer_x1 is 
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
  user2kpfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_b8076a50b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  fifo : entity xil_defaultlib.n3_te0722_xlfifogen 
  generic map (
    core_name0 => "n3_te0722_fifo_generator_v12_0_0",
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/KeyPadinterface/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x6 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x6;
architecture structural of n3_te0722_monostable_x6 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational4_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x4;
architecture structural of n3_te0722_monostable1_x4 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational8_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2_x3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2_x3;
architecture structural of n3_te0722_monostable2_x3 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1_x4 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem1_x4;
architecture structural of n3_te0722_subsystem1_x4 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_6cfd1da807 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem10
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem10_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem10_x0;
architecture structural of n3_te0722_subsystem10_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_dfb629d4c6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem11
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem11_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem11_x0;
architecture structural of n3_te0722_subsystem11_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_48b0422146 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem12_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    ack_fifo : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem12_x1;
architecture structural of n3_te0722_subsystem12_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b6692eb42f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem13_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem13_x0;
architecture structural of n3_te0722_subsystem13_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_ac30286558 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem14
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem14 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem14;
architecture structural of n3_te0722_subsystem14 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_d380f401ce 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem2_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem2_x1;
architecture structural of n3_te0722_subsystem2_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_284a1cf5ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem3_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem3_x1;
architecture structural of n3_te0722_subsystem3_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b44737ca6b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem4_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem4_x1;
architecture structural of n3_te0722_subsystem4_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_1f3d88de9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem5_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem5_x0;
architecture structural of n3_te0722_subsystem5_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_fb04f6f258 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem6_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem6_x0;
architecture structural of n3_te0722_subsystem6_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4c0c741fc3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem7_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem7_x1;
architecture structural of n3_te0722_subsystem7_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_ad8e6e823c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem8_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem8_x0;
architecture structural of n3_te0722_subsystem8_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_26d12316e1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister/Subsystem9
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem9_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem9_x0;
architecture structural of n3_te0722_subsystem9_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert3_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_46221ebd60 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze6_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_outputregister_x1 is
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
end n3_te0722_outputregister_x1;
architecture structural of n3_te0722_outputregister_x1 is 
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 4-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 10-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal picoblaze6_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze6_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 6-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 2-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
begin
  cmd2user <= register1_q_net_x5;
  data2archive <= concat4_y_net;
  data2archive_w <= logical_y_net_x0;
  newcmd <= logical_y_net_x2;
  ack_fifo <= logical_y_net;
  lcddata <= register1_q_net_x6;
  lcd_ctrl <= slice6_y_net;
  ram_add <= concat1_y_net;
  latchon <= register1_q_net_x10;
  write_ram <= convert1_dout_net;
  set_rxfreq <= concat2_y_net;
  set_txfreq <= concat3_y_net;
  picoblaze6_out_port_net <= data;
  picoblaze6_port_id_net <= portid;
  convert3_dout_net <= write;
  lcdcontrast <= slice17_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1_x4 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net,
    strobe => logical_y_net_x0
  );
  subsystem10_x0 : entity xil_defaultlib.n3_te0722_subsystem10_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x0
  );
  subsystem11_x0 : entity xil_defaultlib.n3_te0722_subsystem11_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x1
  );
  subsystem12_x0 : entity xil_defaultlib.n3_te0722_subsystem12_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x2,
    ack_fifo => logical_y_net_x1
  );
  subsystem13 : entity xil_defaultlib.n3_te0722_subsystem13_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x3
  );
  subsystem14_x0 : entity xil_defaultlib.n3_te0722_subsystem14 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x4
  );
  subsystem2 : entity xil_defaultlib.n3_te0722_subsystem2_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x5,
    strobe => logical_y_net_x2
  );
  subsystem3 : entity xil_defaultlib.n3_te0722_subsystem3_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x6
  );
  subsystem4 : entity xil_defaultlib.n3_te0722_subsystem4_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x7
  );
  subsystem5_x0 : entity xil_defaultlib.n3_te0722_subsystem5_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x8
  );
  subsystem6 : entity xil_defaultlib.n3_te0722_subsystem6_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x9,
    strobe => logical_y_net_x3
  );
  subsystem7 : entity xil_defaultlib.n3_te0722_subsystem7_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x10,
    strobe => logical_y_net_x4
  );
  subsystem8 : entity xil_defaultlib.n3_te0722_subsystem8_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x11
  );
  subsystem9_x0 : entity xil_defaultlib.n3_te0722_subsystem9_x0 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x12
  );
  concat1 : entity xil_defaultlib.sysgen_concat_5f99f9b565 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice1_y_net,
    in1 => register1_q_net_x11,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x12,
    in1 => register1_q_net_x1,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x3,
    in1 => register1_q_net_x4,
    y => concat3_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x0,
    in1 => register1_q_net,
    y => concat4_y_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert5_dout_net,
    d1 => delay_q_net,
    y => logical_y_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 8,
    y_width => 2
  )
  port map (
    x => register1_q_net_x9,
    y => slice1_y_net
  );
  slice17 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 5,
    x_width => 8,
    y_width => 6
  )
  port map (
    x => register1_q_net_x8,
    y => slice17_y_net
  );
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x9,
    y => slice2_y_net
  );
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x2,
    y => slice4_y_net
  );
  slice6 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x7,
    y => slice6_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/KeyPadinterface
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_keypadinterface is
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
end n3_te0722_keypadinterface;
architecture structural of n3_te0722_keypadinterface is 
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 4-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal concat2_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net_x1 : std_logic_vector( 12-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 10-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
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
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
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
  data2archive <= concat4_y_net;
  data2archive_w <= logical_y_net_x5;
  lcddata <= register1_q_net_x6;
  lcdctrl <= slice6_y_net;
  latchon <= register1_q_net_x7;
  concat1_y_net_x0 <= touchsignal;
  concat2_y_net_x0 <= touchsignal1;
  register2_q_net <= adcpeak;
  concat1_y_net_x1 <= address;
  register2_q_net_x0 <= demodpeak;
  concat_y_net_x1 <= instruction;
  fifo_full_net_x0 <= kp2userfifofull;
  kpramrdbk <= dual_port_ram1_doutb_net;
  kpcmd2user <= register1_q_net_x5;
  register1_q_net <= keypadcmd;
  lcdcontrast <= slice17_y_net;
  newkpcmd2user <= logical_y_net_x6;
  logical_y_net <= newkeypadcmd;
  concat4_y_net_x0 <= ramdata;
  rxfreq <= concat2_y_net;
  resetpeak <= logical_y_net_x1;
  relational5_op_net <= rstpico;
  slice10_y_net <= starttonea;
  slice9_y_net <= starttonealong;
  slice12_y_net <= starttoneb;
  slice13_y_net <= starttoneblong;
  register1_q_net_x4 <= stoptonea;
  register1_q_net_x3 <= stoptonealong;
  register1_q_net_x2 <= stoptoneb;
  register1_q_net_x1 <= stoptoneblong;
  txfreq <= addsub_s_net;
  register1_q_net_x0 <= txtone;
  user2kpfifofull <= fifo_full_net;
  relational8_op_net <= writekp_ram;
  relational4_op_net <= writeprogkeypadpico;
  clk_net <= clk_1;
  ce_net <= ce_1;
  buffer_x0 : entity xil_defaultlib.n3_te0722_buffer_x1 
  port map (
    cmd => register1_q_net,
    newcmd => logical_y_net,
    ackfifo => logical_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x0,
    user2kpfifofull => fifo_full_net
  );
  monostable : entity xil_defaultlib.n3_te0722_monostable_x6 
  port map (
    in1 => relational4_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x3
  );
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x4 
  port map (
    in1 => relational8_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2_x3 
  port map (
    in1 => logical_y_net_x4,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  outputregister : entity xil_defaultlib.n3_te0722_outputregister_x1 
  port map (
    data => picoblaze6_out_port_net,
    portid => picoblaze6_port_id_net,
    write => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmd2user => register1_q_net_x5,
    data2archive => concat4_y_net,
    data2archive_w => logical_y_net_x5,
    newcmd => logical_y_net_x6,
    ack_fifo => logical_y_net_x0,
    lcddata => register1_q_net_x6,
    lcd_ctrl => slice6_y_net,
    ram_add => concat1_y_net,
    latchon => register1_q_net_x7,
    write_ram => convert1_dout_net,
    set_rxfreq => concat2_y_net,
    set_txfreq => concat3_y_net,
    lcdcontrast => slice17_y_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_7",
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
    b => register1_q_net_x0,
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
  concat : entity xil_defaultlib.sysgen_concat_47167df05f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1(0) => fifo_full_net_x0,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_20b840cb46 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7a01d6c188 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_054b4cabac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert1_dout_net_x0
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert7 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  dual_port_ram : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_7",
    latency => 1
  )
  port map (
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => picoblaze6_address_net,
    dina => constant5_op_net,
    wea => constant4_op_net,
    addrb => concat1_y_net_x1,
    dinb => concat_y_net_x1,
    web => logical_y_net_x3,
    ena => convert7_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 10,
    c_address_width_b => 10,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_8",
    latency => 1
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => concat1_y_net,
    dina => concat4_y_net,
    wea => convert1_dout_net,
    addrb => slice4_y_net,
    dinb => concat4_y_net_x0,
    web => logical_y_net_x2,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  logical : entity xil_defaultlib.sysgen_logical_4d22a5af8c 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => convert5_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x4
  );
  mux : entity xil_defaultlib.sysgen_mux_ec0447c6f3 
  port map (
    clr => '0',
    sel => assert4_dout_net,
    d0 => concat_y_net_x0,
    d1 => concat1_y_net_x0,
    d2 => slice_y_net,
    d3 => slice1_y_net,
    d4 => concat_y_net,
    d5 => concat2_y_net_x0,
    d6 => register2_q_net,
    d7 => register2_q_net_x0,
    d8 => slice10_y_net,
    d9 => slice9_y_net,
    d10 => slice12_y_net,
    d11 => slice13_y_net,
    d12 => register1_q_net_x4,
    d13 => register1_q_net_x3,
    d14 => register1_q_net_x2,
    d15 => register1_q_net_x1,
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
    interrupt => convert1_dout_net_x0(0),
    sleep => convert1_dout_net_x0(0),
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
  relational : entity xil_defaultlib.sysgen_relational_abf5c7d45d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => assert4_dout_net,
    b => constant_op_net,
    op => relational_op_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 12,
    y_width => 10
  )
  port map (
    x => concat1_y_net_x1,
    y => slice4_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/LevelMonitor/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x7 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x7;
architecture structural of n3_te0722_monostable_x7 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/LevelMonitor/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x5 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x5;
architecture structural of n3_te0722_monostable1_x5 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/LevelMonitor
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_levelmonitor_x0 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    rstpeak : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 8-1 downto 0 );
    pksignal : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_levelmonitor_x0;
architecture structural of n3_te0722_levelmonitor_x0 is 
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
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
  logical_y_net <= rstpeak;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3_te0722_monostable_x7 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x5 
  port map (
    in1 => relational_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsubmode 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_8",
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
  addsub1 : entity xil_defaultlib.n3_te0722_xladdsubmode 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_9",
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
  concat : entity xil_defaultlib.sysgen_concat_23ea7d6f25 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net,
    in1 => counter1_op_net,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_284a1cf5ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_9",
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
  counter1 : entity xil_defaultlib.sysgen_counter_0a22c0607b 
  port map (
    clr => '0',
    en => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    d => register3_q_net,
    rst => logical_y_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational : entity xil_defaultlib.sysgen_relational_87825438d9 
  port map (
    clr => '0',
    a => register2_q_net,
    b => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LevelMonitor1/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x6 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x6;
architecture structural of n3_te0722_monostable1_x6 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/LevelMonitor1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_levelmonitor1_x0 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    rstpeak : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    pksignal : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_levelmonitor1_x0;
architecture structural of n3_te0722_levelmonitor1_x0 is 
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 8-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal register3_q_net : std_logic_vector( 8-1 downto 0 );
begin
  pksignal <= register2_q_net;
  concat4_y_net <= in1;
  logical_y_net <= en;
  logical_y_net_x1 <= rstpeak;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x6 
  port map (
    in1 => relational_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  addsub1 : entity xil_defaultlib.n3_te0722_xladdsubmode 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_9",
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
  constant_x0 : entity xil_defaultlib.sysgen_constant_284a1cf5ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register3 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational : entity xil_defaultlib.sysgen_relational_87825438d9 
  port map (
    clr => '0',
    a => register2_q_net,
    b => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/FastLevelMonitor/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x8 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x8;
architecture structural of n3_te0722_monostable_x8 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/FastLevelMonitor
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_fastlevelmonitor is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    signallevel : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_fastlevelmonitor;
architecture structural of n3_te0722_fastlevelmonitor is 
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
  monostable : entity xil_defaultlib.n3_te0722_monostable_x8 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsubmode 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_10",
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
  addsub1 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_3",
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
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_2",
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
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice5 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/LoranTrigger
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_lorantrigger is
  port (
    loransignal : in std_logic_vector( 9-1 downto 0 );
    thresh : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    trig : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_lorantrigger;
architecture structural of n3_te0722_lorantrigger is 
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
  relational : entity xil_defaultlib.sysgen_relational_4ea21f911b 
  port map (
    clr => '0',
    a => addsub12_s_net,
    b => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/LranPass/Eighth
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_eighth is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_eighth;
architecture structural of n3_te0722_eighth is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 9-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 6-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub_s_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_f2ff64b97d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice2_y_net,
    in2 => slice1_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_c2ab346358 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/LranPass/Half
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_half is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_half;
architecture structural of n3_te0722_half is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 9-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub3_s_net <= in1;
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_c2ab346358 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/LranPass/Half1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_half1 is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_half1;
architecture structural of n3_te0722_half1 is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 9-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub6_s_net <= in1;
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_c2ab346358 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/LranPass/Quarter
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_quarter is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_quarter;
architecture structural of n3_te0722_quarter is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 9-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 7-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub1_s_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_d3b1a2f3d6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice1_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_c2ab346358 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/LranPass/Quarter2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_quarter2 is
  port (
    in1 : in std_logic_vector( 9-1 downto 0 );
    out1 : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_quarter2;
architecture structural of n3_te0722_quarter2 is 
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 9-1 downto 0 );
  signal concat_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 7-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  addsub2_s_net <= in1;
  concat : entity xil_defaultlib.sysgen_concat_d3b1a2f3d6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice1_y_net,
    y => concat_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_c2ab346358 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect/LranPass
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_lranpass is
  port (
    signal_x0 : in std_logic_vector( 16-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 9-1 downto 0 )
  );
end n3_te0722_lranpass;
architecture structural of n3_te0722_lranpass is 
  signal addsub12_s_net : std_logic_vector( 9-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret_output_port_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 9-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 8-1 downto 0 );
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
  eighth : entity xil_defaultlib.n3_te0722_eighth 
  port map (
    in1 => addsub_s_net,
    out1 => reinterpret_output_port_net_x3
  );
  half : entity xil_defaultlib.n3_te0722_half 
  port map (
    in1 => addsub3_s_net,
    out1 => reinterpret_output_port_net_x2
  );
  half1 : entity xil_defaultlib.n3_te0722_half1 
  port map (
    in1 => addsub6_s_net,
    out1 => reinterpret_output_port_net_x1
  );
  quarter : entity xil_defaultlib.n3_te0722_quarter 
  port map (
    in1 => addsub1_s_net,
    out1 => reinterpret_output_port_net_x4
  );
  quarter2 : entity xil_defaultlib.n3_te0722_quarter2 
  port map (
    in1 => addsub2_s_net,
    out1 => reinterpret_output_port_net_x0
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_11",
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
    a => reinterpret_output_port_net,
    b => delay15_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_11",
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
  addsub10 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_12",
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
  addsub11 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_13",
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
  addsub12 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_12",
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
  addsub2 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_14",
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
  addsub3 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_15",
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
  addsub4 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_15",
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
  addsub5 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_15",
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
  addsub6 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_15",
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
  addsub7 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_11",
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
    s => addsub7_s_net
  );
  addsub8 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_11",
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
    b => reinterpret_output_port_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addsub8_s_net
  );
  addsub9 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_12",
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay10 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay11 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay12 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay13 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay14 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay15 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay16 : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '1',
    d => reinterpret_output_port_net_x3,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay18 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay19 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay2 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay20 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay21 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay3 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay4 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay5 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay6 : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    rst => '1',
    d => reinterpret_output_port_net,
    en => delay1_q_net(0),
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay8 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay9 : entity xil_defaultlib.n3_te0722_xldelay 
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
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_c2ab346358 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/LoranPulsedetect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_loranpulsedetect is
  port (
    signal_x0 : in std_logic_vector( 16-1 downto 0 );
    strobe : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    trig : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_loranpulsedetect;
architecture structural of n3_te0722_loranpulsedetect is 
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
  fastlevelmonitor : entity xil_defaultlib.n3_te0722_fastlevelmonitor 
  port map (
    in1 => addsub12_s_net,
    en => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    signallevel => register1_q_net
  );
  lorantrigger : entity xil_defaultlib.n3_te0722_lorantrigger 
  port map (
    loransignal => addsub12_s_net,
    thresh => register1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    trig => relational_op_net
  );
  lranpass : entity xil_defaultlib.n3_te0722_lranpass 
  port map (
    signal_x0 => mux1_y_net,
    strobe => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub12_s_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x9 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x9;
architecture structural of n3_te0722_monostable_x9 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert3_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x7 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x7;
architecture structural of n3_te0722_monostable1_x7 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2_x4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2_x4;
architecture structural of n3_te0722_monostable2_x4 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Monostable3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable3 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable3;
architecture structural of n3_te0722_monostable3 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert3_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Monostable4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable4 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable4;
architecture structural of n3_te0722_monostable4 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert4_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/SSBmodulator /Latch
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_latch_x0 is
  port (
    set : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    state : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_latch_x0;
architecture structural of n3_te0722_latch_x0 is 
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
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
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
  set1 : entity xil_defaultlib.sysgen_constant_da80fc534e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => set1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/SSBmodulator /Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x8 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x8;
architecture structural of n3_te0722_monostable1_x8 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/SSBmodulator /Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2_x5 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2_x5;
architecture structural of n3_te0722_monostable2_x5 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/SSBmodulator /Monostable3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable3_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable3_x0;
architecture structural of n3_te0722_monostable3_x0 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice2_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/SSBmodulator /RampGen
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_rampgen is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 17-1 downto 0 )
  );
end n3_te0722_rampgen;
architecture structural of n3_te0722_rampgen is 
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
  accumulator : entity xil_defaultlib.sysgen_accum_b9bb47e07c 
  port map (
    clr => '0',
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/SSBmodulator /Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem_x1 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    in3 : in std_logic_vector( 17-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 );
    polarity : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem_x1;
architecture structural of n3_te0722_subsystem_x1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net_x0 : std_logic_vector( 17-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 18-1 downto 0 );
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
  addsub_s_net_x0 <= in3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_18",
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
    s => addsub_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_5f6e219f96 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => inverter_op_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_284a1cf5ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_87597985ef 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat_y_net,
    output_port => reinterpret_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_718b2d2f04 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_f4391739c5 
  port map (
    clr => '0',
    a => reinterpret_output_port_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 14,
    x_width => 17,
    y_width => 15
  )
  port map (
    x => addsub_s_net_x0,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 17,
    y_width => 1
  )
  port map (
    x => addsub_s_net_x0,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 16,
    x_width => 17,
    y_width => 1
  )
  port map (
    x => addsub_s_net_x0,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/SSBmodulator 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_ssbmodulator is
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
end n3_te0722_ssbmodulator;
architecture structural of n3_te0722_ssbmodulator is 
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 17-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
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
  signal delay_q_net : std_logic_vector( 8-1 downto 0 );
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
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
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
  register1_q_net <= audioamp;
  addsub_s_net_x0 <= carrierfreq;
  slice11_y_net <= tx_enable;
  concat7_y_net <= txphase;
  register1_q_net_x0 <= phaseincrement;
  logical_y_net <= newphasevalue;
  clk_net <= clk_1;
  ce_net <= ce_1;
  latch : entity xil_defaultlib.n3_te0722_latch_x0 
  port map (
    set => convert2_dout_net,
    rst => logical_y_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    state => register2_q_net
  );
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x8 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2_x5 
  port map (
    in1 => slice_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  monostable3 : entity xil_defaultlib.n3_te0722_monostable3_x0 
  port map (
    in1 => slice2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x3
  );
  rampgen : entity xil_defaultlib.n3_te0722_rampgen 
  port map (
    in1 => addsub_s_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => slice_y_net
  );
  subsystem : entity xil_defaultlib.n3_te0722_subsystem_x1 
  port map (
    in1 => reinterpret1_output_port_net,
    in3 => addsub_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x4,
    polarity => slice2_y_net_x0
  );
  accumulator : entity xil_defaultlib.sysgen_accum_dc7e6332c8 
  port map (
    clr => '0',
    b => register1_q_net_x0,
    rst => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  addsub : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_16",
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
  addsub1 : entity xil_defaultlib.n3_te0722_xladdsub 
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
    core_name0 => "n3_te0722_c_addsub_v12_0_17",
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
  concat : entity xil_defaultlib.sysgen_concat_f6188519a5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register_q_net,
    in1 => constant2_op_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_09c4b7246e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant4_op_net,
    in1 => delay_q_net,
    in2 => constant1_op_net,
    y => concat1_y_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_7a01d6c188 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_b1d07fd5fd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    din => logical_y_net_x3,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  counter1 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_10",
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay2 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a4a7451edf 
  port map (
    clr => '0',
    d0 => logical_y_net_x4,
    d1 => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x0
  );
  logical1 : entity xil_defaultlib.sysgen_logical_a4a7451edf 
  port map (
    clr => '0',
    d0 => logical_y_net_x4,
    d1 => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical10 : entity xil_defaultlib.sysgen_logical_87597985ef 
  port map (
    clr => '0',
    d0 => register2_q_net,
    d1 => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical10_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_87597985ef 
  port map (
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_87597985ef 
  port map (
    clr => '0',
    d0 => logical1_y_net,
    d1 => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  logical4 : entity xil_defaultlib.sysgen_logical_31b6547e60 
  port map (
    clr => '0',
    d0 => logical_y_net_x4,
    d1 => convert4_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => logical4_y_net
  );
  logical5 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical4_y_net,
    d1 => delay1_q_net,
    y => logical5_y_net
  );
  logical6 : entity xil_defaultlib.sysgen_logical_87597985ef 
  port map (
    clr => '0',
    d0 => logical5_y_net,
    d1 => logical10_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical6_y_net
  );
  logical7 : entity xil_defaultlib.sysgen_logical_87597985ef 
  port map (
    clr => '0',
    d0 => logical9_y_net,
    d1 => logical10_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical7_y_net
  );
  logical8 : entity xil_defaultlib.sysgen_logical_31b6547e60 
  port map (
    clr => '0',
    d0 => logical_y_net_x4,
    d1 => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical8_y_net
  );
  logical9 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical8_y_net,
    d1 => delay2_q_net,
    y => logical9_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_598a0d8429 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => register2_q_net,
    d0 => logical3_y_net,
    d1 => logical6_y_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_598a0d8429 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => register2_q_net,
    d0 => logical2_y_net,
    d1 => logical7_y_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_44a84f2019 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => register2_q_net,
    d0 => constant3_op_net,
    d1 => register1_q_net,
    y => mux2_y_net
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => concat7_y_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_e7e407517d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat1_y_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/Signed_Unsigned_offset
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_signed_unsigned_offset is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 14-1 downto 0 )
  );
end n3_te0722_signed_unsigned_offset;
architecture structural of n3_te0722_signed_unsigned_offset is 
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
  concat : entity xil_defaultlib.sysgen_concat_2f5a2e3688 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => inverter_op_net,
    in1 => slice2_y_net,
    y => concat_y_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/Subsystem1/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2_x6 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2_x6;
architecture structural of n3_te0722_monostable2_x6 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem1/Subsystem1/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x9 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x9;
architecture structural of n3_te0722_monostable1_x9 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => register2_q_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem1/Subsystem1/Monostable2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable2_x7 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable2_x7;
architecture structural of n3_te0722_monostable2_x7 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= logical_y_net;
  inverter_op_net_x0 <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net_x0,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem1/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1_x6 is
  port (
    sdoa : in std_logic_vector( 1-1 downto 0 );
    sck : in std_logic_vector( 1-1 downto 0 );
    conv : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    adcvaluea : out std_logic_vector( 16-1 downto 0 )
  );
end n3_te0722_subsystem1_x6;
architecture structural of n3_te0722_subsystem1_x6 is 
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal std_bt_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
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
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x9 
  port map (
    in1 => register2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2_x7 
  port map (
    in1 => inverter_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  concat : entity xil_defaultlib.sysgen_concat_f5ece1a0ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice_y_net,
    in1 => std_bt_net,
    y => concat_y_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    d => concat_y_net,
    rst => logical_y_net_x0,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => concat_y_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => register1_q_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1_x5 is
  port (
    pcmin : in std_logic_vector( 1-1 downto 0 );
    x128khz : in std_logic_vector( 1-1 downto 0 );
    sfs : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    audioout : out std_logic_vector( 16-1 downto 0 )
  );
end n3_te0722_subsystem1_x5;
architecture structural of n3_te0722_subsystem1_x5 is 
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
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2_x6 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1_x6 
  port map (
    sdoa => std_bt_net,
    sck => convert1_dout_net,
    conv => register2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    adcvaluea => reinterpret_output_port_net
  );
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
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
-- Generated from Simulink block N3_TE0722/Subsystem2/Divide2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_divide2 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end n3_te0722_divide2;
architecture structural of n3_te0722_divide2 is 
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 15-1 downto 0 );
begin
  out1 <= reinterpret_output_port_net;
  delay_q_net <= in1;
  concat1 : entity xil_defaultlib.sysgen_concat_5f6e219f96 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice4_y_net,
    in1 => slice1_y_net,
    y => concat1_y_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => concat1_y_net,
    output_port => reinterpret_output_port_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/Subsystem2/Latch
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_latch_x1 is
  port (
    set : in std_logic_vector( 1-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    state : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_latch_x1;
architecture structural of n3_te0722_latch_x1 is 
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
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
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
  set1 : entity xil_defaultlib.sysgen_constant_da80fc534e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => set1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem2/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x10 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x10;
architecture structural of n3_te0722_monostable_x10 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical1_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem2_x2 is
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
end n3_te0722_subsystem2_x2;
architecture structural of n3_te0722_subsystem2_x2 is 
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal adcvalue_q_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal concat_y_net : std_logic_vector( 2-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 7-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 7-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 7-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  archive <= delay_q_net;
  cleanedup <= adcvalue_q_net;
  mux1_y_net <= signal_x0;
  delay1_q_net <= strbe;
  relational_op_net <= loranpulsetrig;
  logical1_y_net <= enablegating;
  lorantrig <= logical_y_net_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  divide2 : entity xil_defaultlib.n3_te0722_divide2 
  port map (
    in1 => delay_q_net,
    out1 => reinterpret_output_port_net
  );
  latch : entity xil_defaultlib.n3_te0722_latch_x1 
  port map (
    set => logical_y_net_x0,
    rst => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    state => register2_q_net
  );
  monostable : entity xil_defaultlib.n3_te0722_monostable_x10 
  port map (
    in1 => logical1_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  adcvalue : entity xil_defaultlib.n3_te0722_xlregister 
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
  concat : entity xil_defaultlib.sysgen_concat_128e6a17f9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => convert1_dout_net,
    in1 => convert_dout_net,
    y => concat_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_e29b8011c8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_54ae2d75e0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_dbd1a789a9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    din => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    dout => convert3_dout_net
  );
  counter1 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_10",
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net_x0,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational_op_net,
    d1 => convert3_dout_net,
    y => logical1_y_net_x0
  );
  mux : entity xil_defaultlib.sysgen_mux_36a6d1a259 
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
  relational : entity xil_defaultlib.sysgen_relational_f94830e39c 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net_x0
  );
  relational1 : entity xil_defaultlib.sysgen_relational_4b434ce55a 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/Subsystem4/Monostable
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable_x11 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable_x11;
architecture structural of n3_te0722_monostable_x11 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem4/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x10 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x10;
architecture structural of n3_te0722_monostable1_x10 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem4/PCMclock/Monostable1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_monostable1_x11 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_monostable1_x11;
architecture structural of n3_te0722_monostable1_x11 is 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => slice3_y_net,
    d1 => inverter_op_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem4/PCMclock
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_pcmclock is
  port (
    square128khz : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    x128khz : out std_logic_vector( 1-1 downto 0 );
    clk8khz : out std_logic_vector( 1-1 downto 0 );
    stfs : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_pcmclock;
architecture structural of n3_te0722_pcmclock is 
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
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x11 
  port map (
    in1 => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_db2296db5b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ed67ba67e8 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_4",
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  relational : entity xil_defaultlib.sysgen_relational_f3ee461a5b 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem4_x2 is
  port (
    audioin : in std_logic_vector( 16-1 downto 0 );
    square128khz : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    pcmout : out std_logic_vector( 1-1 downto 0 );
    x128khz : out std_logic_vector( 1-1 downto 0 );
    sfs : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem4_x2;
architecture structural of n3_te0722_subsystem4_x2 is 
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 15-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
begin
  pcmout <= slice2_y_net;
  x128khz <= convert1_dout_net;
  sfs <= relational1_op_net;
  reinterpret_output_port_net_x0 <= audioin;
  slice3_y_net <= square128khz;
  clk_net <= clk_1;
  ce_net <= ce_1;
  monostable : entity xil_defaultlib.n3_te0722_monostable_x11 
  port map (
    in1 => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x10 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  pcmclock : entity xil_defaultlib.n3_te0722_pcmclock 
  port map (
    square128khz => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    x128khz => delay_q_net,
    clk8khz => relational_op_net,
    stfs => relational1_op_net
  );
  concat : entity xil_defaultlib.sysgen_concat_f5ece1a0ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice_y_net,
    in1 => slice2_y_net,
    y => concat_y_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  mux : entity xil_defaultlib.sysgen_mux_3fa109f462 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => logical_y_net,
    d0 => concat_y_net,
    d1 => register_q_net,
    y => mux_y_net
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_bcbbbe49b9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => reinterpret_output_port_net_x0,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/User_Interface/16baudrate /pulse1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_pulse1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_pulse1;
architecture structural of n3_te0722_pulse1 is 
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
  inverter : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => slice1_y_net,
    y => logical_y_net
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
-- Generated from Simulink block N3_TE0722/User_Interface/16baudrate 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_16baudrate is
  port (
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_16baudrate;
architecture structural of n3_te0722_16baudrate is 
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
  pulse1 : entity xil_defaultlib.n3_te0722_pulse1 
  port map (
    in1 => slice1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_b8e36ff65b 
  port map (
    clr => '0',
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_1da9b63aa9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/User_Interface/Buffer
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_buffer_x2 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    dsp2userfifofull : out std_logic
  );
end n3_te0722_buffer_x2;
architecture structural of n3_te0722_buffer_x2 is 
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
  concat : entity xil_defaultlib.sysgen_concat_b8076a50b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  fifo : entity xil_defaultlib.n3_te0722_xlfifogen 
  generic map (
    core_name0 => "n3_te0722_fifo_generator_v12_0_0",
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/User_Interface/Buffer1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_buffer1 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    bt2userfifofull : out std_logic
  );
end n3_te0722_buffer1;
architecture structural of n3_te0722_buffer1 is 
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
  bt2userfifofull <= fifo_full_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_b8076a50b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  fifo : entity xil_defaultlib.n3_te0722_xlfifogen 
  generic map (
    core_name0 => "n3_te0722_fifo_generator_v12_0_0",
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/User_Interface/Buffer2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_buffer2 is
  port (
    cmd : in std_logic_vector( 8-1 downto 0 );
    newcmd : in std_logic_vector( 1-1 downto 0 );
    ackfifo : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    cmdout : out std_logic_vector( 8-1 downto 0 );
    kp2userfifofull : out std_logic
  );
end n3_te0722_buffer2;
architecture structural of n3_te0722_buffer2 is 
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
  concat : entity xil_defaultlib.sysgen_concat_b8076a50b0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => fifo_empty_net,
    in1 => slice_y_net,
    y => concat_y_net
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  fifo : entity xil_defaultlib.n3_te0722_xlfifogen 
  generic map (
    core_name0 => "n3_te0722_fifo_generator_v12_0_0",
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem_x2;
architecture structural of n3_te0722_subsystem_x2 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_284a1cf5ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem1/pulse2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_pulse2 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_pulse2;
architecture structural of n3_te0722_pulse2 is 
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
  inverter : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter_op_net,
    d1 => register2_q_net,
    y => logical_y_net
  );
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1_x7 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    memwrite : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem1_x7;
architecture structural of n3_te0722_subsystem1_x7 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 8-1 downto 0 );
  signal register3_q_net : std_logic_vector( 1-1 downto 0 );
begin
  latcheddata <= register1_q_net;
  memwrite <= logical_y_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net <= write;
  clk_net <= clk_1;
  ce_net <= ce_1;
  pulse2 : entity xil_defaultlib.n3_te0722_pulse2 
  port map (
    in1 => register2_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net_x0
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b44737ca6b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.n3_te0722_xlregister 
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
  register3 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem13_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem13_x1;
architecture structural of n3_te0722_subsystem13_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_d380f401ce 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 8,
    init_value => b"01111110"
  )
  port map (
    rst => "0",
    d => picoblaze1_out_port_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem14
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem14_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    ackfifo : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem14_x0;
architecture structural of n3_te0722_subsystem14_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b1357674aa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem15
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem15_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem15_x0;
architecture structural of n3_te0722_subsystem15_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b7c17be5b3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem16
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem16_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem16_x0;
architecture structural of n3_te0722_subsystem16_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_dcef63a006 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem17
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem17_x0 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem17_x0;
architecture structural of n3_te0722_subsystem17_x0 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_26d2802334 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem19
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem19 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem19;
architecture structural of n3_te0722_subsystem19 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_04835204e5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem2_x3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem2_x3;
architecture structural of n3_te0722_subsystem2_x3 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_fb04f6f258 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem20
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem20 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem20;
architecture structural of n3_te0722_subsystem20 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_8d60b9672f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem21
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem21 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem21;
architecture structural of n3_te0722_subsystem21 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_217665c372 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem22
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem22 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 );
    strobe : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem22;
architecture structural of n3_te0722_subsystem22 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_55df25ca34 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem3_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem3_x2;
architecture structural of n3_te0722_subsystem3_x2 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_dfb629d4c6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem4_x3 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem4_x3;
architecture structural of n3_te0722_subsystem4_x3 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_6cfd1da807 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem5_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem5_x1;
architecture structural of n3_te0722_subsystem5_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_b6692eb42f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem6_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem6_x1;
architecture structural of n3_te0722_subsystem6_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_4c0c741fc3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem7_x2 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem7_x2;
architecture structural of n3_te0722_subsystem7_x2 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_1f3d88de9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister/Subsystem8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem8_x1 is
  port (
    data : in std_logic_vector( 8-1 downto 0 );
    portid : in std_logic_vector( 8-1 downto 0 );
    write : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    latcheddata : out std_logic_vector( 8-1 downto 0 )
  );
end n3_te0722_subsystem8_x1;
architecture structural of n3_te0722_subsystem8_x1 is 
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
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => relational1_op_net,
    d1 => convert1_dout_net,
    y => logical_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_26d12316e1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  register1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  relational1 : entity xil_defaultlib.sysgen_relational_ab80b7051b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => picoblaze1_port_id_net,
    b => portaddress_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/OutputRegister
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_outputregister_x2 is
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
    adcselect : out std_logic_vector( 1-1 downto 0 );
    ackfifobt : out std_logic_vector( 1-1 downto 0 );
    ackfifodsp : out std_logic_vector( 1-1 downto 0 );
    ackfifokp : out std_logic_vector( 1-1 downto 0 );
    attenuator : out std_logic_vector( 8-1 downto 0 );
    btcmd : out std_logic_vector( 8-1 downto 0 );
    keypadcmd : out std_logic_vector( 8-1 downto 0 );
    loranblankselect : out std_logic_vector( 1-1 downto 0 );
    newbtcmd : out std_logic_vector( 1-1 downto 0 );
    newkeypadcmd : out std_logic_vector( 1-1 downto 0 );
    ramdata : out std_logic_vector( 16-1 downto 0 );
    writebt_ram : out std_logic_vector( 1-1 downto 0 );
    writedsp_ram : out std_logic_vector( 1-1 downto 0 );
    writekp_ram : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_outputregister_x2;
architecture structural of n3_te0722_outputregister_x2 is 
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 4-1 downto 0 );
  signal concat_y_net : std_logic_vector( 18-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x20 : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal slice18_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice20_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x14 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x8 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x9 : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x10 : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x16 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x17 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x18 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x19 : std_logic_vector( 8-1 downto 0 );
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
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal portaddress_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress1_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress2_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress3_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress4_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress5_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress6_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress7_op_net : std_logic_vector( 4-1 downto 0 );
  signal portaddress8_op_net : std_logic_vector( 4-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 4-1 downto 0 );
  signal relational9_op_net : std_logic_vector( 1-1 downto 0 );
begin
  picocmd <= register1_q_net;
  newcmd <= logical_y_net_x0;
  uarttx <= register1_q_net_x0;
  uartwrite <= logical_y_net_x1;
  gain_adc <= slice_y_net;
  instruction <= concat_y_net;
  address <= concat1_y_net;
  write_inst_1 <= relational1_op_net;
  write_inst_2 <= relational3_op_net;
  enable_archive <= convert3_dout_net;
  select_source <= register1_q_net_x20;
  tx_high <= slice11_y_net;
  rstpico2 <= relational5_op_net;
  txtone <= register1_q_net_x4;
  cal <= slice18_y_net;
  write_inst_3 <= relational2_op_net;
  write_inst_4 <= relational4_op_net;
  picoblaze1_out_port_net <= data;
  picoblaze1_port_id_net <= portid;
  convert1_dout_net_x0 <= write;
  adcselect <= slice20_y_net;
  ackfifobt <= logical_y_net;
  ackfifodsp <= logical1_y_net;
  ackfifokp <= logical2_y_net;
  attenuator <= register1_q_net_x14;
  btcmd <= register1_q_net_x12;
  keypadcmd <= register1_q_net_x13;
  loranblankselect <= slice9_y_net;
  newbtcmd <= logical_y_net_x8;
  newkeypadcmd <= logical_y_net_x9;
  ramdata <= concat4_y_net;
  writebt_ram <= relational7_op_net;
  writedsp_ram <= relational6_op_net;
  writekp_ram <= relational8_op_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.n3_te0722_subsystem_x2 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net,
    strobe => logical_y_net_x0
  );
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1_x7 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x0,
    memwrite => logical_y_net_x1
  );
  subsystem13 : entity xil_defaultlib.n3_te0722_subsystem13_x1 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x4
  );
  subsystem14_x0 : entity xil_defaultlib.n3_te0722_subsystem14_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x5,
    ackfifo => logical_y_net_x2
  );
  subsystem15 : entity xil_defaultlib.n3_te0722_subsystem15_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x6,
    strobe => logical_y_net_x3
  );
  subsystem16 : entity xil_defaultlib.n3_te0722_subsystem16_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x7,
    strobe => logical_y_net_x4
  );
  subsystem17 : entity xil_defaultlib.n3_te0722_subsystem17_x0 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    strobe => logical_y_net_x5
  );
  subsystem19_x0 : entity xil_defaultlib.n3_te0722_subsystem19 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x10,
    strobe => logical_y_net_x7
  );
  subsystem2 : entity xil_defaultlib.n3_te0722_subsystem2_x3 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x11
  );
  subsystem20_x0 : entity xil_defaultlib.n3_te0722_subsystem20 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x12,
    strobe => logical_y_net_x8
  );
  subsystem21_x0 : entity xil_defaultlib.n3_te0722_subsystem21 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x13,
    strobe => logical_y_net_x9
  );
  subsystem22_x0 : entity xil_defaultlib.n3_te0722_subsystem22 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x14,
    strobe => logical_y_net_x10
  );
  subsystem3 : entity xil_defaultlib.n3_te0722_subsystem3_x2 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x15
  );
  subsystem4 : entity xil_defaultlib.n3_te0722_subsystem4_x3 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x16
  );
  subsystem5_x0 : entity xil_defaultlib.n3_te0722_subsystem5_x1 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x17
  );
  subsystem6 : entity xil_defaultlib.n3_te0722_subsystem6_x1 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x18
  );
  subsystem7 : entity xil_defaultlib.n3_te0722_subsystem7_x2 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x19
  );
  subsystem8 : entity xil_defaultlib.n3_te0722_subsystem8_x1 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    latcheddata => register1_q_net_x20
  );
  concat : entity xil_defaultlib.sysgen_concat_6a19236d0c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice2_y_net,
    in1 => slice3_y_net,
    in2 => slice4_y_net,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_48633d4d94 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => slice5_y_net,
    in1 => register1_q_net_x17,
    y => concat1_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_764c65145d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => register1_q_net_x6,
    in1 => register1_q_net_x7,
    y => concat4_y_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  delay : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  delay2 : entity xil_defaultlib.n3_te0722_xldelay 
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
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.n3_te0722_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '1',
    d => logical_y_net_x5,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  logical : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert4_dout_net,
    d1 => delay_q_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert1_dout_net,
    d1 => delay1_q_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_6d614def79 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => convert2_dout_net,
    d1 => delay2_q_net,
    y => logical2_y_net
  );
  portaddress : entity xil_defaultlib.sysgen_constant_0ac1e6d01e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress_op_net
  );
  portaddress1 : entity xil_defaultlib.sysgen_constant_d9093f476b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress1_op_net
  );
  portaddress2 : entity xil_defaultlib.sysgen_constant_0e8102c501 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress2_op_net
  );
  portaddress3 : entity xil_defaultlib.sysgen_constant_db2296db5b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress3_op_net
  );
  portaddress4 : entity xil_defaultlib.sysgen_constant_20b840cb46 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress4_op_net
  );
  portaddress5 : entity xil_defaultlib.sysgen_constant_477d026c3f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress5_op_net
  );
  portaddress6 : entity xil_defaultlib.sysgen_constant_55a554e0d2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress6_op_net
  );
  portaddress7 : entity xil_defaultlib.sysgen_constant_ad3f681494 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress7_op_net
  );
  portaddress8 : entity xil_defaultlib.sysgen_constant_da15b03a5d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => portaddress8_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress1_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress2_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  relational4 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress3_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational4_op_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress4_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational5_op_net
  );
  relational6 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress5_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational6_op_net
  );
  relational7 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress6_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational7_op_net
  );
  relational8 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress7_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational8_op_net
  );
  relational9 : entity xil_defaultlib.sysgen_relational_153b58fa8c 
  port map (
    clr => '0',
    a => portaddress8_op_net,
    b => slice7_y_net,
    clk => clk_net,
    ce => ce_net,
    op => relational9_op_net
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x19,
    y => slice_y_net
  );
  slice10 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x18,
    y => slice10_y_net
  );
  slice11 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 7,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x18,
    y => slice11_y_net
  );
  slice16 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 5,
    new_msb => 5,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x5,
    y => slice16_y_net
  );
  slice18 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 7,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x19,
    y => slice18_y_net
  );
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 5,
    x_width => 8,
    y_width => 6
  )
  port map (
    x => register1_q_net_x11,
    y => slice2_y_net
  );
  slice20 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x10,
    y => slice20_y_net
  );
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 5,
    x_width => 8,
    y_width => 6
  )
  port map (
    x => register1_q_net_x15,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 5,
    x_width => 8,
    y_width => 6
  )
  port map (
    x => register1_q_net_x16,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x18,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 4,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x5,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 5,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => register1_q_net_x18,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 6,
    new_msb => 6,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x5,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 4,
    new_msb => 4,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x10,
    y => slice9_y_net
  );
end structural;
-- Generated from Simulink block N3_TE0722/User_Interface/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_subsystem1_x3 is
  port (
    portid : in std_logic_vector( 8-1 downto 0 );
    rs : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    read_buffer : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_subsystem1_x3;
architecture structural of n3_te0722_subsystem1_x3 is 
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
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  logical : entity xil_defaultlib.sysgen_logical_5efc86122c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => logical1_y_net,
    d1 => convert_dout_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_e9343b5519 
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
  register_x0 : entity xil_defaultlib.n3_te0722_xlregister 
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
-- Generated from Simulink block N3_TE0722/User_Interface
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_user_interface is
  port (
    archiveddata : in std_logic_vector( 16-1 downto 0 );
    rs232_rx : in std_logic_vector( 1-1 downto 0 );
    cmdfromdsp : in std_logic_vector( 8-1 downto 0 );
    newcmdfromdsp : in std_logic_vector( 1-1 downto 0 );
    adcsignallevel : in std_logic_vector( 8-1 downto 0 );
    btramrdbk : in std_logic_vector( 16-1 downto 0 );
    btcmd2user : in std_logic_vector( 8-1 downto 0 );
    dspramrdbk : in std_logic_vector( 16-1 downto 0 );
    kpramrdbk : in std_logic_vector( 16-1 downto 0 );
    kpcmd2user : in std_logic_vector( 8-1 downto 0 );
    newbtcmd2user : in std_logic_vector( 1-1 downto 0 );
    newkpcmd2user : in std_logic_vector( 1-1 downto 0 );
    ratelorantrips : in std_logic_vector( 8-1 downto 0 );
    user2btfifofull : in std_logic;
    user2dspfifofull : in std_logic;
    user2kpfifofull : in std_logic;
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
    rs232datapresent : out std_logic;
    writebt_ram : out std_logic_vector( 1-1 downto 0 );
    writedsp_ram : out std_logic_vector( 1-1 downto 0 );
    writekp_ram : out std_logic_vector( 1-1 downto 0 );
    writeprogbtpico : out std_logic_vector( 1-1 downto 0 );
    writeprogkeypadpico : out std_logic_vector( 1-1 downto 0 )
  );
end n3_te0722_user_interface;
architecture structural of n3_te0722_user_interface is 
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal concat_y_net : std_logic_vector( 18-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal black_box_serial_out_net : std_logic;
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 4-1 downto 0 );
  signal slice18_y_net : std_logic_vector( 1-1 downto 0 );
  signal archiveram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal adcvalue1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal slice20_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal dual_port_ram1_doutb_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net_x1 : std_logic;
  signal dual_port_ram1_doutb_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x8 : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal uart_rx_buffer_data_present_net : std_logic;
  signal notrips_q_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net_x4 : std_logic;
  signal fifo_full_net_x3 : std_logic;
  signal fifo_full_net_x2 : std_logic;
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_out_port_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_port_id_net : std_logic_vector( 8-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal assert4_dout_net : std_logic_vector( 8-1 downto 0 );
  signal assert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_read_strobe_net : std_logic_vector( 1-1 downto 0 );
  signal assert7_dout_net : std_logic_vector( 1-1 downto 0 );
  signal picoblaze1_bram_enable_net : std_logic_vector( 1-1 downto 0 );
  signal black_box_buffer_data_present_net : std_logic;
  signal black_box_buffer_half_full_net : std_logic;
  signal black_box_buffer_full_net : std_logic;
  signal constant2_op_net : std_logic;
  signal concat_y_net_x0 : std_logic_vector( 8-1 downto 0 );
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
  signal slice_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal uart_rx_data_out_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 8-1 downto 0 );
  signal picoblaze1_k_write_strobe_net : std_logic;
  signal picoblaze1_interrupt_ack_net : std_logic;
  signal uart_rx_buffer_half_full_net : std_logic;
  signal uart_rx_buffer_full_net : std_logic;
begin
  w_bram2 <= relational3_op_net;
  addressb <= concat1_y_net;
  instruction <= concat_y_net;
  picocmd <= register1_q_net_x2;
  newcmd <= logical_y_net_x5;
  enable_archive <= convert3_dout_net;
  select_source <= register1_q_net_x9;
  tx_high <= slice11_y_net;
  rs232tx <= black_box_serial_out_net;
  rstout <= relational5_op_net;
  txtone <= register1_q_net_x4;
  adcgain <= slice_y_net;
  cal <= slice18_y_net;
  archiveram_doutb_net <= archiveddata;
  adcvalue1_q_net <= rs232_rx;
  register1_q_net_x0 <= cmdfromdsp;
  logical_y_net_x3 <= newcmdfromdsp;
  concat_y_net_x4 <= adcsignallevel;
  adcselect <= slice20_y_net;
  attenuator <= register1_q_net_x8;
  bt2userfifofull <= fifo_full_net_x0;
  btcmd <= register1_q_net_x6;
  dual_port_ram1_doutb_net_x1 <= btramrdbk;
  register1_q_net_x1 <= btcmd2user;
  baudrate16 <= logical_y_net_x1;
  dsp2userfifofull <= fifo_full_net_x1;
  dual_port_ram1_doutb_net_x0 <= dspramrdbk;
  kp2userfifofull <= fifo_full_net;
  dual_port_ram1_doutb_net <= kpramrdbk;
  register1_q_net <= kpcmd2user;
  keypadcmd <= register1_q_net_x7;
  loranblankselect <= slice9_y_net;
  newbtcmd <= logical_y_net_x7;
  logical_y_net_x4 <= newbtcmd2user;
  logical_y_net_x2 <= newkpcmd2user;
  newkeypadcmd <= logical_y_net_x8;
  ramdata <= concat4_y_net;
  rs232datapresent <= uart_rx_buffer_data_present_net;
  notrips_q_net <= ratelorantrips;
  fifo_full_net_x4 <= user2btfifofull;
  fifo_full_net_x3 <= user2dspfifofull;
  fifo_full_net_x2 <= user2kpfifofull;
  writebt_ram <= relational7_op_net;
  writedsp_ram <= relational6_op_net;
  writekp_ram <= relational8_op_net;
  writeprogbtpico <= relational2_op_net;
  writeprogkeypadpico <= relational4_op_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  x16baudrate : entity xil_defaultlib.n3_te0722_16baudrate 
  port map (
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  buffer_x0 : entity xil_defaultlib.n3_te0722_buffer_x2 
  port map (
    cmd => register1_q_net_x0,
    newcmd => logical_y_net_x3,
    ackfifo => logical1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x3,
    dsp2userfifofull => fifo_full_net_x1
  );
  buffer1 : entity xil_defaultlib.n3_te0722_buffer1 
  port map (
    cmd => register1_q_net_x1,
    newcmd => logical_y_net_x4,
    ackfifo => logical_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x2,
    bt2userfifofull => fifo_full_net_x0
  );
  buffer2 : entity xil_defaultlib.n3_te0722_buffer2 
  port map (
    cmd => register1_q_net,
    newcmd => logical_y_net_x2,
    ackfifo => logical2_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    cmdout => concat_y_net_x1,
    kp2userfifofull => fifo_full_net
  );
  outputregister : entity xil_defaultlib.n3_te0722_outputregister_x2 
  port map (
    data => picoblaze1_out_port_net,
    portid => picoblaze1_port_id_net,
    write => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    picocmd => register1_q_net_x2,
    newcmd => logical_y_net_x5,
    uarttx => register1_q_net_x3,
    uartwrite => logical_y_net_x6,
    gain_adc => slice_y_net,
    instruction => concat_y_net,
    address => concat1_y_net,
    write_inst_1 => relational1_op_net,
    write_inst_2 => relational3_op_net,
    enable_archive => convert3_dout_net,
    select_source => register1_q_net_x9,
    tx_high => slice11_y_net,
    rstpico2 => relational5_op_net,
    txtone => register1_q_net_x4,
    cal => slice18_y_net,
    write_inst_3 => relational2_op_net,
    write_inst_4 => relational4_op_net,
    adcselect => slice20_y_net,
    ackfifobt => logical_y_net_x0,
    ackfifodsp => logical1_y_net,
    ackfifokp => logical2_y_net,
    attenuator => register1_q_net_x8,
    btcmd => register1_q_net_x6,
    keypadcmd => register1_q_net_x7,
    loranblankselect => slice9_y_net,
    newbtcmd => logical_y_net_x7,
    newkeypadcmd => logical_y_net_x8,
    ramdata => concat4_y_net,
    writebt_ram => relational7_op_net,
    writedsp_ram => relational6_op_net,
    writekp_ram => relational8_op_net
  );
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1_x3 
  port map (
    portid => assert4_dout_net,
    rs => assert6_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    read_buffer => logical_y_net
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
    data_in => register1_q_net_x3,
    en_16_x_baud => logical_y_net_x1(0),
    buffer_write => logical_y_net_x6(0),
    buffer_reset => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    serial_out => black_box_serial_out_net,
    buffer_data_present => black_box_buffer_data_present_net,
    buffer_half_full => black_box_buffer_half_full_net,
    buffer_full => black_box_buffer_full_net
  );
  concat : entity xil_defaultlib.sysgen_concat_fea2c5b826 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0(0) => fifo_full_net_x2,
    in1(0) => fifo_full_net_x4,
    in2(0) => fifo_full_net_x3,
    in3 => constant1_op_net,
    in4(0) => black_box_buffer_full_net,
    in5(0) => uart_rx_buffer_data_present_net,
    y => concat_y_net_x0
  );
  constant1 : entity xil_defaultlib.sysgen_constant_ae79382d65 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_054b4cabac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert8 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  dual_port_ram : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 18,
    c_width_b => 18,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_9",
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
    dinb => concat_y_net,
    web => relational1_op_net,
    ena => convert8_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_ec0447c6f3 
  port map (
    clr => '0',
    sel => slice_y_net_x0,
    d0 => uart_rx_data_out_net,
    d1 => concat_y_net_x0,
    d2 => slice1_y_net_x0,
    d3 => slice2_y_net,
    d4 => concat_y_net_x3,
    d5 => concat_y_net_x2,
    d6 => concat_y_net_x1,
    d7 => notrips_q_net,
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
  slice : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 3,
    x_width => 8,
    y_width => 4
  )
  port map (
    x => assert4_dout_net,
    y => slice_y_net_x0
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => archiveram_doutb_net,
    y => slice1_y_net_x0
  );
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice5 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net_x1,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net_x1,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => dual_port_ram1_doutb_net,
    y => slice8_y_net
  );
  uart_rx : entity xil_defaultlib.uart_rx6 
  port map (
    serial_in => adcvalue1_q_net(0),
    en_16_x_baud => logical_y_net_x1(0),
    buffer_read => logical_y_net(0),
    buffer_reset => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => uart_rx_data_out_net,
    buffer_data_present => uart_rx_buffer_data_present_net,
    buffer_half_full => uart_rx_buffer_half_full_net,
    buffer_full => uart_rx_buffer_full_net
  );
end structural;
-- Generated from Simulink block N3_TE0722_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_struct is
  port (
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
    rs232datapresent : out std_logic;
    signallevel : out std_logic_vector( 8-1 downto 0 );
    adc_cal : out std_logic_vector( 1-1 downto 0 );
    adc_gain : out std_logic_vector( 4-1 downto 0 );
    attenuatoron : out std_logic_vector( 1-1 downto 0 );
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
end n3_te0722_struct;
architecture structural of n3_te0722_struct is 
  signal uart_rx_buffer_data_present_net : std_logic;
  signal concat_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal slice18_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x1 : std_logic_vector( 4-1 downto 0 );
  signal inverter3_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 3-1 downto 0 );
  signal register1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal logical4_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal ptt_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x19 : std_logic_vector( 1-1 downto 0 );
  signal rs232_from_bt_net : std_logic_vector( 1-1 downto 0 );
  signal black_box2_serial_out_net : std_logic_vector( 1-1 downto 0 );
  signal rs232rx_net : std_logic_vector( 1-1 downto 0 );
  signal black_box_serial_out_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal sdoa_net : std_logic_vector( 1-1 downto 0 );
  signal sdob_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 1-1 downto 0 );
  signal std_bt_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal inverter4_op_net : std_logic_vector( 1-1 downto 0 );
  signal touchdown_net : std_logic_vector( 1-1 downto 0 );
  signal touchon_net : std_logic_vector( 1-1 downto 0 );
  signal touchselect_net : std_logic_vector( 1-1 downto 0 );
  signal touchup_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net_x20 : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal register3_q_net : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x11 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x10 : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 12-1 downto 0 );
  signal fifo_full_net_x0 : std_logic;
  signal register1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 18-1 downto 0 );
  signal logical_y_net_x14 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x9 : std_logic_vector( 1-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 16-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net_x2 : std_logic;
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal reinterpret_output_port_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net_x0 : std_logic_vector( 14-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x17 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal concat4_y_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x13 : std_logic_vector( 1-1 downto 0 );
  signal concat7_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x15 : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 18-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x16 : std_logic_vector( 8-1 downto 0 );
  signal logical_y_net_x17 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 4-1 downto 0 );
  signal fifo_full_net_x1 : std_logic;
  signal dual_port_ram1_doutb_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x18 : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo_full_net_x4 : std_logic;
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal adcvalue_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal concat2_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal concat4_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x8 : std_logic_vector( 1-1 downto 0 );
  signal slice6_y_net_x0 : std_logic_vector( 4-1 downto 0 );
  signal register1_q_net : std_logic_vector( 8-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal concat2_y_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register2_q_net : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net : std_logic;
  signal dual_port_ram1_doutb_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal register1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal slice17_y_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net_x7 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x12 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x16 : std_logic_vector( 1-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal fifo_full_net_x3 : std_logic;
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x4 : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x5 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert3_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal archiveram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal adcvalue1_q_net : std_logic_vector( 1-1 downto 0 );
  signal slice20_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal notrips_q_net : std_logic_vector( 8-1 downto 0 );
  signal archiveram_douta_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net_x0 : std_logic_vector( 12-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 7-1 downto 0 );
  signal couta1_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 4-1 downto 0 );
  signal touch1_q_net : std_logic_vector( 1-1 downto 0 );
  signal touch2_q_net : std_logic_vector( 1-1 downto 0 );
  signal touch3_q_net : std_logic_vector( 1-1 downto 0 );
  signal touch4_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x6 : std_logic_vector( 1-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 13-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 8-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 2-1 downto 0 );
  signal counter4_op_net : std_logic_vector( 4-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 2-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
begin
  rs232datapresent <= uart_rx_buffer_data_present_net;
  signallevel <= concat_y_net_x1;
  adc_cal <= slice18_y_net;
  adc_gain <= slice_y_net_x1;
  attenuatoron <= inverter3_op_net;
  conv <= delay3_q_net_x0;
  classd_hina <= logical2_y_net;
  classd_hinb <= logical3_y_net;
  classd_lina <= mux_y_net;
  classd_linb <= mux1_y_net;
  keepon <= slice2_y_net_x0;
  lcdcontrast <= relational1_op_net_x0;
  lcdctrl <= slice1_y_net;
  lcddata <= register1_q_net_x0;
  ledb <= logical4_y_net;
  ledg <= logical3_y_net_x0;
  ledr <= logical2_y_net_x0;
  ptt_net <= ptt;
  pwmaudio <= register1_q_net_x19;
  rs232_from_bt_net <= rs232_from_bt;
  rs232_to_bt <= black_box2_serial_out_net;
  rs232rx_net <= rs232rx;
  rs232tx <= black_box_serial_out_net;
  rst_bb <= slice1_y_net_x0;
  sck <= delay4_q_net;
  sclk_bt <= convert1_dout_net;
  sdoa_net <= sdoa;
  sdob_net <= sdob;
  sfs_bt <= relational1_op_net;
  srd_bt <= slice2_y_net;
  std_bt_net <= std_bt;
  strobe <= slice_y_net_x0;
  tx_low <= inverter4_op_net;
  touchdown_net <= touchdown;
  touchon_net <= touchon;
  touchselect_net <= touchselect;
  touchup_net <= touchup;
  clk_net <= clk_1;
  ce_net <= ce_1;
  adcread : entity xil_defaultlib.n3_te0722_adcread 
  port map (
    sdoa => sdoa_net,
    sdob => sdob_net,
    trig => convert1_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    sck => delay4_q_net,
    conv => delay3_q_net_x0,
    adc_data_a => register1_q_net_x20,
    data_ready => delay1_q_net,
    adc_data_b => register3_q_net
  );
  adctrigger : entity xil_defaultlib.n3_te0722_adctrigger 
  port map (
    clk_1 => clk_net,
    ce_1 => ce_net,
    trig512 => logical_y_net_x11,
    dim => relational_op_net_x0
  );
  btinterface : entity xil_defaultlib.n3_te0722_btinterface 
  port map (
    serialrx_fmbt => rs232_from_bt_net,
    rts => constant6_op_net,
    address => concat1_y_net,
    bt2userfifofull => fifo_full_net_x0,
    btcmd => register1_q_net_x7,
    baudrate16 => logical_y_net,
    instruction => concat_y_net,
    newbtcmd => logical_y_net_x14,
    ramdata => concat4_y_net,
    rstpico => relational5_op_net,
    writebt_ram => relational7_op_net,
    writeprogbtpico => relational2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data2archive => concat3_y_net,
    data2archive_w => logical_y_net_x10,
    serialtx_2btchip => black_box2_serial_out_net(0),
    rst_bt => slice1_y_net_x0,
    btramrdbk => dual_port_ram1_doutb_net,
    btcmd2user => register1_q_net_x2,
    newbtcmd2user => logical_y_net_x9,
    user2btfifofull => fifo_full_net_x2
  );
  bit_corrector : entity xil_defaultlib.n3_te0722_bit_corrector 
  port map (
    in1 => register1_q_net_x20,
    out1 => reinterpret_output_port_net_x2
  );
  bit_corrector1 : entity xil_defaultlib.n3_te0722_bit_corrector1 
  port map (
    in1 => register3_q_net,
    out1 => reinterpret_output_port_net_x1
  );
  constantdetect : entity xil_defaultlib.n3_te0722_constantdetect 
  port map (
    signal_x0 => slice7_y_net,
    strobe => logical_y_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    isconstant => relational1_op_net_x1
  );
  dac_xapp154 : entity xil_defaultlib.n3_te0722_dac_xapp154 
  port map (
    dac_in => concat_y_net_x0,
    disable_audio => inverter2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dac_out => register1_q_net_x19
  );
  dsprocessor1 : entity xil_defaultlib.n3_te0722_dsprocessor1 
  port map (
    filterredsignal => register_q_net,
    addrram => concat1_y_net,
    dataram => concat_y_net,
    writeram => relational3_op_net,
    cmd => register1_q_net_x16,
    newcmd => logical_y_net_x17,
    rst => relational5_op_net,
    strobe => slice_y_net_x0,
    btauidioin => reinterpret_output_port_net,
    address => concat1_y_net,
    dsp2userfifofull => fifo_full_net_x1,
    nobtsignal => relational1_op_net_x1,
    ramdata => concat4_y_net,
    square8khz => convert2_dout_net,
    tx_high => slice11_y_net,
    writedsp_ram => relational6_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    audioout => register1_q_net_x17,
    amp => register1_q_net_x6,
    cmdtouser => register1_q_net_x11,
    data2archive => concat4_y_net_x1,
    phaseincrement_8bits => register1_q_net_x13,
    newcmdtouser => logical_y_net_x13,
    tx_phase => concat7_y_net,
    newvalue => logical_y_net_x15,
    agcvalue => slice8_y_net,
    dspramrdbk => dual_port_ram1_doutb_net_x1,
    starttonea => slice10_y_net,
    starttonealong => slice9_y_net,
    starttoneb => slice12_y_net,
    starttoneblong => slice13_y_net,
    stoptonea => register1_q_net_x10,
    stoptonealong => register1_q_net_x9,
    stoptoneb => register1_q_net_x8,
    stoptoneblong => register1_q_net_x18,
    user2dspfifofull => fifo_full_net_x4
  );
  demodulationssb1 : entity xil_defaultlib.n3_te0722_demodulationssb1 
  port map (
    signalin => adcvalue_q_net,
    trig => delay1_q_net_x0,
    agcvalue => slice8_y_net,
    btaudio => reinterpret_output_port_net,
    nobtsignal => relational1_op_net_x1,
    rxfreq => concat2_y_net_x0,
    tx_high => slice11_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    demodsignal => register_q_net,
    demodsqstrobe => slice_y_net_x0,
    counter6khz => counter_op_net
  );
  keypadinterface : entity xil_defaultlib.n3_te0722_keypadinterface 
  port map (
    touchsignal => concat1_y_net_x0,
    touchsignal1 => concat2_y_net_x1,
    adcpeak => register2_q_net_x0,
    address => concat1_y_net,
    demodpeak => register2_q_net,
    instruction => concat_y_net,
    kp2userfifofull => fifo_full_net,
    keypadcmd => register1_q_net_x5,
    newkeypadcmd => logical_y_net_x12,
    ramdata => concat4_y_net,
    rstpico => relational5_op_net,
    starttonea => slice10_y_net,
    starttonealong => slice9_y_net,
    starttoneb => slice12_y_net,
    starttoneblong => slice13_y_net,
    stoptonea => register1_q_net_x10,
    stoptonealong => register1_q_net_x9,
    stoptoneb => register1_q_net_x8,
    stoptoneblong => register1_q_net_x18,
    txtone => register1_q_net_x15,
    writekp_ram => relational8_op_net,
    writeprogkeypadpico => relational4_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data2archive => concat4_y_net_x0,
    data2archive_w => logical_y_net_x8,
    lcddata => register1_q_net_x0,
    lcdctrl => slice6_y_net_x0,
    latchon => register1_q_net,
    kpramrdbk => dual_port_ram1_doutb_net_x0,
    kpcmd2user => register1_q_net_x1,
    lcdcontrast => slice17_y_net,
    newkpcmd2user => logical_y_net_x7,
    rxfreq => concat2_y_net_x0,
    resetpeak => logical_y_net_x16,
    txfreq => addsub_s_net,
    user2kpfifofull => fifo_full_net_x3
  );
  levelmonitor : entity xil_defaultlib.n3_te0722_levelmonitor_x0 
  port map (
    in1 => mux1_y_net_x0,
    en => delay1_q_net_x0,
    rstpeak => logical_y_net_x16,
    clk_1 => clk_net,
    ce_1 => ce_net,
    signallevel => concat_y_net_x1,
    pksignal => register2_q_net_x0
  );
  levelmonitor1 : entity xil_defaultlib.n3_te0722_levelmonitor1_x0 
  port map (
    in1 => concat4_y_net_x1,
    en => logical_y_net_x4,
    rstpeak => logical_y_net_x16,
    clk_1 => clk_net,
    ce_1 => ce_net,
    pksignal => register2_q_net
  );
  loranpulsedetect : entity xil_defaultlib.n3_te0722_loranpulsedetect 
  port map (
    signal_x0 => mux1_y_net_x0,
    strobe => delay1_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    trig => relational_op_net
  );
  monostable : entity xil_defaultlib.n3_te0722_monostable_x9 
  port map (
    in1 => convert3_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x5
  );
  monostable1_x0 : entity xil_defaultlib.n3_te0722_monostable1_x7 
  port map (
    in1 => convert2_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x4
  );
  monostable2 : entity xil_defaultlib.n3_te0722_monostable2_x4 
  port map (
    in1 => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x3
  );
  monostable3 : entity xil_defaultlib.n3_te0722_monostable3 
  port map (
    in1 => convert3_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  monostable4 : entity xil_defaultlib.n3_te0722_monostable4 
  port map (
    in1 => convert4_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  ssbmodulator : entity xil_defaultlib.n3_te0722_ssbmodulator 
  port map (
    audioamp => register1_q_net_x6,
    carrierfreq => addsub_s_net,
    tx_enable => slice11_y_net,
    txphase => concat7_y_net,
    phaseincrement => register1_q_net_x13,
    newphasevalue => logical_y_net_x15,
    clk_1 => clk_net,
    ce_1 => ce_net,
    hina => logical2_y_net,
    hinb => logical3_y_net,
    lina => mux_y_net,
    linb => mux1_y_net
  );
  signed_unsigned_offset : entity xil_defaultlib.n3_te0722_signed_unsigned_offset 
  port map (
    in1 => reinterpret_output_port_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => concat_y_net_x0
  );
  subsystem1 : entity xil_defaultlib.n3_te0722_subsystem1_x5 
  port map (
    pcmin => std_bt_net,
    x128khz => convert1_dout_net,
    sfs => relational1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    audioout => reinterpret_output_port_net
  );
  subsystem2 : entity xil_defaultlib.n3_te0722_subsystem2_x2 
  port map (
    signal_x0 => mux1_y_net_x0,
    strbe => delay1_q_net_x0,
    loranpulsetrig => relational_op_net,
    enablegating => logical1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    archive => delay_q_net,
    cleanedup => adcvalue_q_net,
    lorantrig => logical_y_net_x0
  );
  subsystem4 : entity xil_defaultlib.n3_te0722_subsystem4_x2 
  port map (
    audioin => reinterpret_output_port_net_x0,
    square128khz => slice3_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    pcmout => slice2_y_net,
    x128khz => convert1_dout_net,
    sfs => relational1_op_net
  );
  user_interface : entity xil_defaultlib.n3_te0722_user_interface 
  port map (
    archiveddata => archiveram_doutb_net,
    rs232_rx => adcvalue1_q_net,
    cmdfromdsp => register1_q_net_x11,
    newcmdfromdsp => logical_y_net_x13,
    adcsignallevel => concat_y_net_x1,
    btramrdbk => dual_port_ram1_doutb_net,
    btcmd2user => register1_q_net_x2,
    dspramrdbk => dual_port_ram1_doutb_net_x1,
    kpramrdbk => dual_port_ram1_doutb_net_x0,
    kpcmd2user => register1_q_net_x1,
    newbtcmd2user => logical_y_net_x9,
    newkpcmd2user => logical_y_net_x7,
    ratelorantrips => notrips_q_net,
    user2btfifofull => fifo_full_net_x2,
    user2dspfifofull => fifo_full_net_x4,
    user2kpfifofull => fifo_full_net_x3,
    clk_1 => clk_net,
    ce_1 => ce_net,
    w_bram2 => relational3_op_net,
    addressb => concat1_y_net,
    instruction => concat_y_net,
    picocmd => register1_q_net_x16,
    newcmd => logical_y_net_x17,
    enable_archive => convert3_dout_net,
    select_source => register1_q_net_x3,
    tx_high => slice11_y_net,
    rs232tx => black_box_serial_out_net(0),
    rstout => relational5_op_net,
    txtone => register1_q_net_x15,
    adcgain => slice_y_net_x1,
    cal => slice18_y_net,
    adcselect => slice20_y_net,
    attenuator => register1_q_net_x4,
    bt2userfifofull => fifo_full_net_x0,
    btcmd => register1_q_net_x7,
    baudrate16 => logical_y_net,
    dsp2userfifofull => fifo_full_net_x1,
    kp2userfifofull => fifo_full_net,
    keypadcmd => register1_q_net_x5,
    loranblankselect => slice9_y_net_x0,
    newbtcmd => logical_y_net_x14,
    newkeypadcmd => logical_y_net_x12,
    ramdata => concat4_y_net,
    rs232datapresent => uart_rx_buffer_data_present_net,
    writebt_ram => relational7_op_net,
    writedsp_ram => relational6_op_net,
    writekp_ram => relational8_op_net,
    writeprogbtpico => relational2_op_net,
    writeprogkeypadpico => relational4_op_net
  );
  adcvalue1 : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => rs232rx_net,
    clk => clk_net,
    ce => ce_net,
    q => adcvalue1_q_net
  );
  archiveram : entity xil_defaultlib.n3_te0722_xldpram 
  generic map (
    c_address_width_a => 12,
    c_address_width_b => 12,
    c_width_a => 16,
    c_width_b => 16,
    core_name0 => "n3_te0722_blk_mem_gen_v8_2_0",
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
  concat1 : entity xil_defaultlib.sysgen_concat_23ea7d6f25 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => constant1_op_net,
    in1 => couta1_q_net,
    y => concat1_y_net_x0
  );
  concat2 : entity xil_defaultlib.sysgen_concat_dc9301c88e 
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
  constant1 : entity xil_defaultlib.sysgen_constant_7a01d6c188 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_f01db21bff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_4213f9e42a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_dbd1a789a9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_da80fc534e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  convert : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert1 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    din => logical_y_net_x11,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net_x0
  );
  convert2 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    din => slice_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert4 : entity xil_defaultlib.n3_te0722_xlconvert 
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
  convert5 : entity xil_defaultlib.n3_te0722_xlconvert 
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
    din => logical_y_net_x6,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  counter : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_0",
    op_arith => xlUnsigned,
    op_width => 12
  )
  port map (
    clr => '0',
    rst => logical_y_net_x5,
    en => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net_x0
  );
  counter1 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_1",
    op_arith => xlUnsigned,
    op_width => 13
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net_x4,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  counter2 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_2",
    op_arith => xlUnsigned,
    op_width => 8
  )
  port map (
    clr => '0',
    rst => logical_y_net_x2,
    en => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_3",
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
  counter4 : entity xil_defaultlib.n3_te0722_xlcounter_free 
  generic map (
    core_name0 => "n3_te0722_c_counter_binary_v12_0_4",
    op_arith => xlUnsigned,
    op_width => 4
  )
  port map (
    rst => "0",
    clr => '0',
    en => logical_y_net_x3,
    clk => clk_net,
    ce => ce_net,
    op => counter4_op_net
  );
  couta1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  delay1 : entity xil_defaultlib.n3_te0722_xldelay 
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
  inverter1 : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice11_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_f0db54e765 
  port map (
    clr => '0',
    ip => relational1_op_net_x1,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  inverter3 : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter3_op_net
  );
  inverter4 : entity xil_defaultlib.sysgen_inverter_46fa804b43 
  port map (
    clr => '0',
    ip => slice11_y_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter4_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a4a7451edf 
  port map (
    clr => '0',
    d0 => convert3_dout_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net_x6
  );
  logical1 : entity xil_defaultlib.sysgen_logical_17c4a50935 
  port map (
    clr => '0',
    d0 => slice9_y_net_x0,
    d1 => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_d770550eaa 
  port map (
    clr => '0',
    d0 => convert_dout_net,
    d1 => relational_op_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net_x0
  );
  logical3 : entity xil_defaultlib.sysgen_logical_d770550eaa 
  port map (
    clr => '0',
    d0 => convert6_dout_net,
    d1 => relational_op_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net_x0
  );
  logical4 : entity xil_defaultlib.sysgen_logical_d770550eaa 
  port map (
    clr => '0',
    d0 => relational_op_net_x0,
    d1 => relational1_op_net_x1,
    clk => clk_net,
    ce => ce_net,
    y => logical4_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_34e60fdd7a 
  port map (
    clr => '0',
    sel => slice20_y_net,
    d0 => reinterpret_output_port_net_x2,
    d1 => reinterpret_output_port_net_x1,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net_x0
  );
  mux2 : entity xil_defaultlib.sysgen_mux_8e3320ed05 
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
  mux3 : entity xil_defaultlib.sysgen_mux_496f462411 
  port map (
    clr => '0',
    sel => slice6_y_net,
    d0 => delay1_q_net_x0,
    d1 => logical_y_net_x4,
    d2 => logical_y_net_x10,
    d3 => logical_y_net_x8,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  notrips : entity xil_defaultlib.n3_te0722_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => counter2_op_net,
    en => logical_y_net_x2,
    clk => clk_net,
    ce => ce_net,
    q => notrips_q_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6b595eda9a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => register1_q_net_x17,
    output_port => reinterpret_output_port_net_x0
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_bcbbbe49b9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => adcvalue_q_net,
    output_port => reinterpret1_output_port_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_411f504019 
  port map (
    clr => '0',
    a => slice17_y_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net_x0
  );
  slice : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net_x4,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice2 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => register1_q_net,
    y => slice2_y_net_x0
  );
  slice3 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice4 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice5 : entity xil_defaultlib.n3_te0722_xlslice 
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
  slice6 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 8,
    y_width => 2
  )
  port map (
    x => register1_q_net_x3,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.n3_te0722_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 16,
    y_width => 8
  )
  port map (
    x => reinterpret_output_port_net,
    y => slice7_y_net
  );
  touch1 : entity xil_defaultlib.n3_te0722_xlregister 
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
  touch2 : entity xil_defaultlib.n3_te0722_xlregister 
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
  touch3 : entity xil_defaultlib.n3_te0722_xlregister 
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
  touch4 : entity xil_defaultlib.n3_te0722_xlregister 
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
  convert6 : entity xil_defaultlib.n3_te0722_xlconvert 
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
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722_default_clock_driver is
  port (
    n3_te0722_sysclk : in std_logic;
    n3_te0722_sysce : in std_logic;
    n3_te0722_sysclr : in std_logic;
    n3_te0722_clk1 : out std_logic;
    n3_te0722_ce1 : out std_logic
  );
end n3_te0722_default_clock_driver;
architecture structural of n3_te0722_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => n3_te0722_sysclk,
    sysce => n3_te0722_sysce,
    sysclr => n3_te0722_sysclr,
    clk => n3_te0722_clk1,
    ce => n3_te0722_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity n3_te0722 is
  port (
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
    rs232datapresent : out std_logic;
    signallevel : out std_logic_vector( 8-1 downto 0 );
    adc_cal : out std_logic_vector( 1-1 downto 0 );
    adc_gain : out std_logic_vector( 4-1 downto 0 );
    attenuatoron : out std_logic_vector( 1-1 downto 0 );
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
end n3_te0722;
architecture structural of n3_te0722 is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "n3_te0722,sysgen_core_2014_4,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z010,speed=-1,package=clg225,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,clock_loc=,testbench=0,interface_doc=1,ce_clr=0,clock_period=30,system_simulink_period=3.05176e-008,simulation_time=0.0001,accum=14,addsub=31,assert=10,bitbasher=9,blackbox2=8,cmult=1,concat=58,constant=143,convert=109,counter=23,delay=104,dpram=9,fifo=6,inv=61,logical=165,mult=3,mux=19,register=126,reinterpret=22,relational=98,slice=171,sprom=4,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  n3_te0722_default_clock_driver : entity xil_defaultlib.n3_te0722_default_clock_driver 
  port map (
    n3_te0722_sysclk => clk,
    n3_te0722_sysce => '1',
    n3_te0722_sysclr => '0',
    n3_te0722_clk1 => clk_1_net,
    n3_te0722_ce1 => ce_1_net
  );
  n3_te0722_struct : entity xil_defaultlib.n3_te0722_struct 
  port map (
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
end structural;
