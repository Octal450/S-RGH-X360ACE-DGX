<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="POST" />
        <signal name="DBG" />
        <signal name="RST" />
        <signal name="XLXN_74" />
        <signal name="XLXN_76" />
        <signal name="XLXN_82" />
        <signal name="XLXN_86" />
        <signal name="CLK" />
        <signal name="XLXN_70" />
        <signal name="XLXN_88" />
        <signal name="XLXN_95" />
        <signal name="XLXN_97" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="XLXN_116" />
        <signal name="XLXN_119" />
        <port polarity="Input" name="POST" />
        <port polarity="Output" name="DBG" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="SDA" />
        <port polarity="Output" name="SCL" />
        <blockdef name="post_proc">
            <timestamp>2021-5-26T3:46:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2021-5-26T4:4:14</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divider_slow">
            <timestamp>2021-5-12T15:0:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="delayer">
            <timestamp>2021-5-12T15:1:47</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_7">
            <blockpin signalname="POST" name="POST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="DBG" name="DBG" />
            <blockpin signalname="RST" name="RST" />
        </block>
        <block symbolname="delayer" name="XLXI_13">
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="XLXN_74" name="CLK" />
            <blockpin signalname="XLXN_76" name="de_slow" />
        </block>
        <block symbolname="slower" name="XLXI_9">
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="XLXN_116" name="CLK" />
            <blockpin signalname="XLXN_76" name="in_slow" />
        </block>
        <block symbolname="divider_slow" name="XLXI_10">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_116" name="CLK_S" />
        </block>
        <block symbolname="divider_slow" name="XLXI_14">
            <blockpin signalname="XLXN_116" name="CLK" />
            <blockpin signalname="XLXN_74" name="CLK_S" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <branch name="POST">
            <wire x2="1024" y1="1088" y2="1088" x1="1008" />
        </branch>
        <branch name="DBG">
            <wire x2="1424" y1="1152" y2="1152" x1="1408" />
        </branch>
        <branch name="RST">
            <wire x2="1424" y1="1216" y2="1216" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1088" name="POST" orien="R180" />
        <iomarker fontsize="28" x="1424" y="1152" name="DBG" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1216" name="RST" orien="R0" />
        <branch name="XLXN_76">
            <wire x2="2000" y1="1088" y2="1088" x1="1968" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="1584" y1="1088" y2="1088" x1="1408" />
        </branch>
        <instance x="1584" y="1184" name="XLXI_13" orien="R0">
        </instance>
        <branch name="SDA">
            <wire x2="2400" y1="1152" y2="1152" x1="2384" />
        </branch>
        <branch name="SCL">
            <wire x2="2400" y1="1088" y2="1088" x1="2384" />
        </branch>
        <instance x="2000" y="1184" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2400" y="1088" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1152" name="SDA" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="1568" y1="960" y2="1152" x1="1568" />
            <wire x2="1584" y1="1152" y2="1152" x1="1568" />
            <wire x2="2528" y1="960" y2="960" x1="1568" />
            <wire x2="2528" y1="960" y2="1312" x1="2528" />
            <wire x2="2528" y1="1312" y2="1312" x1="2384" />
        </branch>
        <branch name="XLXN_116">
            <wire x2="1984" y1="1312" y2="1312" x1="1968" />
            <wire x2="2000" y1="1312" y2="1312" x1="1984" />
            <wire x2="2000" y1="1152" y2="1152" x1="1984" />
            <wire x2="1984" y1="1152" y2="1312" x1="1984" />
        </branch>
        <instance x="1584" y="1344" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2000" y="1344" name="XLXI_14" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1008" y1="1216" y2="1216" x1="992" />
            <wire x2="1024" y1="1216" y2="1216" x1="1008" />
            <wire x2="1008" y1="1216" y2="1312" x1="1008" />
            <wire x2="1584" y1="1312" y2="1312" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="992" y="1216" name="CLK" orien="R180" />
    </sheet>
</drawing>