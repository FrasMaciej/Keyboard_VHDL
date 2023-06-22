--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Test_WAVreader.vhf
-- /___/   /\     Timestamp : 04/17/2023 10:50:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/XilinxPrj/Organki_PJ_MF/Test_WAVreader.vhf -w C:/Users/lab/Downloads/Test_WAVreader/Test_WAVreader.sch
--Design Name: Test_WAVreader
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Test_WAVreader is
   port ( Clk_50MHz   : in    std_logic; 
          PS2_CLK     : in    std_logic; 
          PS2_DATA    : in    std_logic; 
          SDC_MISO    : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          LED         : out   std_logic_vector (2 downto 0); 
          LED3        : out   std_logic; 
          LED4        : out   std_logic; 
          LED5        : out   std_logic; 
          LED6        : out   std_logic; 
          LED7        : out   std_logic; 
          SDC_MOSI    : out   std_logic; 
          SDC_SCK     : out   std_logic; 
          SDC_SS      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic);
end Test_WAVreader;

architecture BEHAVIORAL of Test_WAVreader is
   signal XLXN_377                 : std_logic;
   signal XLXN_378                 : std_logic_vector (15 downto 0);
   signal XLXN_379                 : std_logic_vector (15 downto 0);
   signal XLXN_383                 : std_logic;
   signal XLXN_388                 : std_logic;
   signal XLXN_389                 : std_logic_vector (3 downto 0);
   signal XLXN_390                 : std_logic_vector (3 downto 0);
   signal XLXN_391                 : std_logic_vector (11 downto 0);
   signal XLXN_395                 : std_logic;
   signal XLXN_396                 : std_logic;
   signal XLXN_598                 : std_logic_vector (7 downto 0);
   signal XLXN_622                 : std_logic_vector (7 downto 0);
   signal XLXN_623                 : std_logic;
   signal XLXN_624                 : std_logic;
   signal LED3_DUMMY               : std_logic;
   signal LED4_DUMMY               : std_logic;
   signal XLXI_30_Reset_openSignal : std_logic;
   signal XLXI_31_Reset_openSignal : std_logic;
   signal XLXI_74_Reset_openSignal : std_logic;
   component FSM_SendSamples
      port ( DWr_Busy   : in    std_logic; 
             SampRdy    : in    std_logic; 
             SampL      : in    std_logic_vector (15 downto 0); 
             SampR      : in    std_logic_vector (15 downto 0); 
             SRate_Tick : in    std_logic; 
             Reset      : in    std_logic; 
             Clk        : in    std_logic; 
             DWr_Start  : out   std_logic; 
             DWr_Cmd    : out   std_logic_vector (3 downto 0); 
             DWr_Adr    : out   std_logic_vector (3 downto 0); 
             DWr_Data   : out   std_logic_vector (11 downto 0); 
             Samp_Pop   : out   std_logic);
   end component;
   
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
   component WAVreader
      port ( FName      : in    std_logic_vector (7 downto 0); 
             Start      : in    std_logic; 
             Abort      : in    std_logic; 
             SDC_MOSI   : out   std_logic; 
             SDC_SCK    : out   std_logic; 
             SDC_SS     : out   std_logic; 
             SDC_MISO   : in    std_logic; 
             DO_Pop     : in    std_logic; 
             FmtMnS     : out   std_logic; 
             Fmt8n16    : out   std_logic; 
             FmtSRate   : out   std_logic_vector (15 downto 0); 
             SRate_Tick : out   std_logic; 
             Error      : out   std_logic_vector (2 downto 0); 
             Reset      : in    std_logic; 
             Clk_50MHz  : in    std_logic; 
             Clk_Sys    : in    std_logic; 
             DO_Rdy     : out   std_logic; 
             DO_L       : out   std_logic_vector (15 downto 0); 
             DO_R       : out   std_logic_vector (15 downto 0); 
             Busy       : out   std_logic);
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component converter
      port ( DO_RDY : in    std_logic; 
             F0     : in    std_logic; 
             DO     : in    std_logic_vector (7 downto 0); 
             Start  : out   std_logic; 
             Stop   : out   std_logic; 
             FName  : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   LED3 <= LED3_DUMMY;
   LED4 <= LED4_DUMMY;
   XLXI_30 : FSM_SendSamples
      port map (Clk=>Clk_50MHz,
                DWr_Busy=>XLXN_396,
                Reset=>XLXI_30_Reset_openSignal,
                SampL(15 downto 0)=>XLXN_378(15 downto 0),
                SampR(15 downto 0)=>XLXN_379(15 downto 0),
                SampRdy=>XLXN_377,
                SRate_Tick=>XLXN_383,
                DWr_Adr(3 downto 0)=>XLXN_390(3 downto 0),
                DWr_Cmd(3 downto 0)=>XLXN_389(3 downto 0),
                DWr_Data(11 downto 0)=>XLXN_391(11 downto 0),
                DWr_Start=>XLXN_388,
                Samp_Pop=>XLXN_395);
   
   XLXI_31 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_390(3 downto 0),
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Cmd(3 downto 0)=>XLXN_389(3 downto 0),
                DATA(11 downto 0)=>XLXN_391(11 downto 0),
                Reset=>XLXI_31_Reset_openSignal,
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_388,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>XLXN_396,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>open,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_74 : WAVreader
      port map (Abort=>LED4_DUMMY,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                DO_Pop=>XLXN_395,
                FName(7 downto 0)=>XLXN_598(7 downto 0),
                Reset=>XLXI_74_Reset_openSignal,
                SDC_MISO=>SDC_MISO,
                Start=>LED3_DUMMY,
                Busy=>LED7,
                DO_L(15 downto 0)=>XLXN_378(15 downto 0),
                DO_R(15 downto 0)=>XLXN_379(15 downto 0),
                DO_Rdy=>XLXN_377,
                Error(2 downto 0)=>LED(2 downto 0),
                FmtMnS=>LED6,
                FmtSRate=>open,
                Fmt8n16=>LED5,
                SDC_MOSI=>SDC_MOSI,
                SDC_SCK=>SDC_SCK,
                SDC_SS=>SDC_SS,
                SRate_Tick=>XLXN_383);
   
   XLXI_78 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_CLK,
                PS2_Data=>PS2_DATA,
                DO(7 downto 0)=>XLXN_622(7 downto 0),
                DO_Rdy=>XLXN_623,
                E0=>open,
                F0=>XLXN_624);
   
   XLXI_79 : converter
      port map (DO(7 downto 0)=>XLXN_622(7 downto 0),
                DO_RDY=>XLXN_623,
                F0=>XLXN_624,
                FName(7 downto 0)=>XLXN_598(7 downto 0),
                Start=>LED3_DUMMY,
                Stop=>LED4_DUMMY);
   
end BEHAVIORAL;


