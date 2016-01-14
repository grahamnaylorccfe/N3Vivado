----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;

Library UNISIM;
    use UNISIM.vcomponents.all;

entity jtag_mon is 
    Generic (
        C_JTAG_CHAIN : integer range 1 to 4 := 4
    );
    Port ( 
        TCK : out std_logic;
        TDI : out std_logic;
        TMS : out std_logic
	);
end jtag_mon;

architecture Behavioral of jtag_mon is

begin

   BSCANE2_inst : BSCANE2
   generic map (
      JTAG_CHAIN => C_JTAG_CHAIN  -- Value for USER command.
   )
   port map (
      CAPTURE   => open, -- 1-bit output: CAPTURE output from TAP controller.
      DRCK      => open,       -- 1-bit output: Gated TCK output. When SEL is asserted, DRCK toggles when CAPTURE or
                          -- SHIFT are asserted.

      RESET     => open,     -- 1-bit output: Reset output for TAP controller.
      RUNTEST   => open, -- 1-bit output: Output asserted when TAP controller is in Run Test/Idle state.
      SEL       => open,         -- 1-bit output: USER instruction active output.
      SHIFT     => open,     -- 1-bit output: SHIFT output from TAP controller.
      TCK       => TCK,         -- 1-bit output: Test Clock output. Fabric connection to TAP Clock pin.
      TDI       => TDI,         -- 1-bit output: Test Data Input (TDI) output from TAP controller.
      TMS       => TMS,         -- 1-bit output: Test Mode Select output. Fabric connection to TAP.
      UPDATE    => open,   -- 1-bit output: UPDATE output from TAP controller
      TDO       => '0'         -- 1-bit input: Test Data Output (TDO) input for USER function.
   );




      
end Behavioral;

