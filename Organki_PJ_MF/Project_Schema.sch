<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CLK_SYS" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="CLK_50MHz" />
        <signal name="RST" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_36(7:0)" />
        <signal name="XLXN_37(7:0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_35(7:0)" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="SDC_MISO" />
        <signal name="SDC_MOSI" />
        <signal name="SDC_SCK" />
        <signal name="SDC_SS" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <port polarity="Input" name="CLK_SYS" />
        <port polarity="Input" name="CLK_50MHz" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="SDC_MISO" />
        <port polarity="Output" name="SDC_MOSI" />
        <port polarity="Output" name="SDC_SCK" />
        <port polarity="Output" name="SDC_SS" />
        <blockdef name="PS2_Rx">
            <timestamp>2009-5-15T10:32:14</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="WAVreader">
            <timestamp>2021-11-12T9:31:2</timestamp>
            <rect width="304" x="64" y="-768" height="896" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="368" y1="-736" y2="-736" x1="432" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <rect width="64" x="368" y="84" height="24" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="432" y1="-448" y2="-448" x1="368" />
            <rect width="64" x="368" y="-396" height="24" />
            <line x2="432" y1="-384" y2="-384" x1="368" />
            <rect width="64" x="368" y="-332" height="24" />
            <line x2="432" y1="-320" y2="-320" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
        </blockdef>
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <block symbolname="WAVreader" name="XLXI_3">
            <blockpin signalname="XLXN_35(7:0)" name="FName(7:0)" />
            <blockpin name="Start" />
            <blockpin name="Abort" />
            <blockpin signalname="SDC_MOSI" name="SDC_MOSI" />
            <blockpin signalname="SDC_SCK" name="SDC_SCK" />
            <blockpin signalname="SDC_SS" name="SDC_SS" />
            <blockpin signalname="SDC_MISO" name="SDC_MISO" />
            <blockpin name="DO_Pop" />
            <blockpin name="FmtMnS" />
            <blockpin name="Fmt8n16" />
            <blockpin name="FmtSRate(15:0)" />
            <blockpin name="SRate_Tick" />
            <blockpin name="Error(2:0)" />
            <blockpin signalname="RST" name="Reset" />
            <blockpin signalname="CLK_50MHz" name="Clk_50MHz" />
            <blockpin signalname="CLK_SYS" name="Clk_Sys" />
            <blockpin name="DO_Rdy" />
            <blockpin name="DO_L(15:0)" />
            <blockpin name="DO_R(15:0)" />
            <blockpin name="Busy" />
        </block>
        <block symbolname="PS2_Rx" name="XLXI_1">
            <blockpin signalname="XLXN_51" name="PS2_Clk" />
            <blockpin signalname="XLXN_52" name="PS2_Data" />
            <blockpin signalname="CLK_50MHz" name="Clk_50MHz" />
            <blockpin signalname="CLK_SYS" name="Clk_Sys" />
            <blockpin name="DO_Rdy" />
            <blockpin signalname="XLXN_35(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="DACWrite" name="XLXI_6">
            <blockpin name="Reset" />
            <blockpin name="Start" />
            <blockpin name="SPI_MISO" />
            <blockpin name="Cmd(3:0)" />
            <blockpin name="Addr(3:0)" />
            <blockpin name="DATA(11:0)" />
            <blockpin name="DAC_CLR" />
            <blockpin name="DAC_CS" />
            <blockpin name="SPI_MOSI" />
            <blockpin name="SPI_SCK" />
            <blockpin name="SPI_SS_B" />
            <blockpin name="AMP_CS" />
            <blockpin name="AD_CONV" />
            <blockpin name="SF_CE0" />
            <blockpin name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin name="Clk_50MHz" />
            <blockpin name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RST">
            <wire x2="416" y1="1504" y2="1504" x1="400" />
            <wire x2="416" y1="1504" y2="1856" x1="416" />
            <wire x2="1312" y1="1856" y2="1856" x1="416" />
        </branch>
        <branch name="CLK_SYS">
            <wire x2="624" y1="1632" y2="1632" x1="400" />
            <wire x2="624" y1="1632" y2="1984" x1="624" />
            <wire x2="1312" y1="1984" y2="1984" x1="624" />
            <wire x2="656" y1="1344" y2="1344" x1="624" />
            <wire x2="624" y1="1344" y2="1632" x1="624" />
        </branch>
        <branch name="CLK_50MHz">
            <wire x2="560" y1="1568" y2="1568" x1="400" />
            <wire x2="560" y1="1568" y2="1920" x1="560" />
            <wire x2="1312" y1="1920" y2="1920" x1="560" />
            <wire x2="656" y1="1280" y2="1280" x1="560" />
            <wire x2="560" y1="1280" y2="1568" x1="560" />
        </branch>
        <branch name="XLXN_35(7:0)">
            <wire x2="1312" y1="1152" y2="1152" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="400" y="1632" name="CLK_SYS" orien="R180" />
        <iomarker fontsize="28" x="400" y="1568" name="CLK_50MHz" orien="R180" />
        <iomarker fontsize="28" x="400" y="1504" name="RST" orien="R180" />
        <instance x="656" y="1376" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_51">
            <wire x2="656" y1="1152" y2="1152" x1="336" />
            <wire x2="336" y1="1152" y2="1168" x1="336" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="656" y1="1216" y2="1216" x1="336" />
            <wire x2="336" y1="1216" y2="1232" x1="336" />
        </branch>
        <instance x="1312" y="1888" name="XLXI_3" orien="R0">
        </instance>
        <branch name="SDC_MISO">
            <wire x2="2048" y1="1152" y2="1152" x1="1744" />
            <wire x2="2080" y1="1152" y2="1152" x1="2048" />
        </branch>
        <branch name="SDC_MOSI">
            <wire x2="2048" y1="1216" y2="1216" x1="1744" />
            <wire x2="2080" y1="1216" y2="1216" x1="2048" />
        </branch>
        <branch name="SDC_SCK">
            <wire x2="2048" y1="1280" y2="1280" x1="1744" />
            <wire x2="2080" y1="1280" y2="1280" x1="2048" />
        </branch>
        <branch name="SDC_SS">
            <wire x2="2048" y1="1344" y2="1344" x1="1744" />
            <wire x2="2080" y1="1344" y2="1344" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1152" name="SDC_MISO" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1216" name="SDC_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1280" name="SDC_SCK" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1344" name="SDC_SS" orien="R0" />
        <instance x="2048" y="2240" name="XLXI_6" orien="R0">
        </instance>
    </sheet>
</drawing>