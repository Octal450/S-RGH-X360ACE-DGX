<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="POST" />
        <signal name="XLXN_76" />
        <signal name="XLXN_70" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="RST" />
        <signal name="XLXN_139" />
        <signal name="CED" />
        <signal name="CES" />
        <signal name="CLK" />
        <signal name="XLXN_188" />
        <signal name="XLXN_189" />
        <signal name="DBG" />
        <signal name="XLXN_130" />
        <signal name="SMC" />
        <signal name="CET" />
        <signal name="BUT" />
        <port polarity="Input" name="POST" />
        <port polarity="Output" name="SDA" />
        <port polarity="Output" name="SCL" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Output" name="CED" />
        <port polarity="Output" name="CES" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="DBG" />
        <port polarity="Output" name="SMC" />
        <port polarity="Output" name="CET" />
        <port polarity="Input" name="BUT" />
        <blockdef name="post_proc">
            <timestamp>2021-5-26T3:46:35</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="192" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2021-5-26T4:4:14</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="128" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="divider_dual">
            <timestamp>2021-5-14T23:12:37</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="dualnand">
            <timestamp>2021-5-27T3:35:53</timestamp>
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-256" height="316" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="320" y1="-96" y2="-96" x1="384" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_7">
            <blockpin signalname="POST" name="POST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="XLXN_139" name="DBG" />
        </block>
        <block symbolname="delayer" name="XLXI_13">
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="XLXN_188" name="CLK" />
            <blockpin signalname="XLXN_76" name="de_slow" />
        </block>
        <block symbolname="slower" name="XLXI_9">
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="XLXN_76" name="in_slow" />
            <blockpin signalname="XLXN_189" name="CLK" />
        </block>
        <block symbolname="divider_slow" name="XLXI_10">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_189" name="CLK_S" />
        </block>
        <block symbolname="divider_dual" name="XLXI_18">
            <blockpin signalname="XLXN_189" name="CLK" />
            <blockpin signalname="XLXN_188" name="CLK_D" />
        </block>
        <block symbolname="or2" name="XLXI_17">
            <blockpin signalname="XLXN_139" name="I0" />
            <blockpin signalname="XLXN_130" name="I1" />
            <blockpin signalname="DBG" name="O" />
        </block>
        <block symbolname="dualnand" name="XLXI_19">
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="CES" name="CES" />
            <blockpin signalname="CED" name="CED" />
            <blockpin signalname="XLXN_130" name="DBG" />
            <blockpin signalname="SMC" name="SMC" />
            <blockpin signalname="CET" name="CET" />
            <blockpin signalname="XLXN_188" name="CLK" />
            <blockpin signalname="BUT" name="BUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <branch name="POST">
            <wire x2="1024" y1="1088" y2="1088" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1088" name="POST" orien="R180" />
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
        <instance x="1584" y="1344" name="XLXI_10" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1472" y="1216" name="RST" orien="R0" />
        <branch name="RST">
            <wire x2="1456" y1="1216" y2="1216" x1="1408" />
            <wire x2="1472" y1="1216" y2="1216" x1="1456" />
            <wire x2="1456" y1="1216" y2="1472" x1="1456" />
            <wire x2="1584" y1="1472" y2="1472" x1="1456" />
        </branch>
        <branch name="CED">
            <wire x2="1984" y1="1536" y2="1536" x1="1968" />
        </branch>
        <branch name="CES">
            <wire x2="1984" y1="1472" y2="1472" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1536" name="CED" orien="R0" />
        <iomarker fontsize="28" x="1984" y="1472" name="CES" orien="R0" />
        <branch name="CLK">
            <wire x2="1008" y1="1216" y2="1216" x1="992" />
            <wire x2="1008" y1="1216" y2="1312" x1="1008" />
            <wire x2="1584" y1="1312" y2="1312" x1="1008" />
            <wire x2="1024" y1="1216" y2="1216" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="992" y="1216" name="CLK" orien="R180" />
        <branch name="XLXN_188">
            <wire x2="1568" y1="1152" y2="1152" x1="1440" />
            <wire x2="1584" y1="1152" y2="1152" x1="1568" />
            <wire x2="1440" y1="1152" y2="1728" x1="1440" />
            <wire x2="1584" y1="1728" y2="1728" x1="1440" />
            <wire x2="1568" y1="960" y2="1152" x1="1568" />
            <wire x2="2528" y1="960" y2="960" x1="1568" />
            <wire x2="2528" y1="960" y2="1312" x1="2528" />
            <wire x2="2528" y1="1312" y2="1312" x1="2384" />
        </branch>
        <branch name="XLXN_189">
            <wire x2="1984" y1="1312" y2="1312" x1="1968" />
            <wire x2="2000" y1="1312" y2="1312" x1="1984" />
            <wire x2="1984" y1="1152" y2="1312" x1="1984" />
            <wire x2="2000" y1="1152" y2="1152" x1="1984" />
        </branch>
        <instance x="2000" y="1344" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_139">
            <wire x2="1424" y1="1152" y2="1152" x1="1408" />
            <wire x2="1424" y1="1152" y2="1792" x1="1424" />
            <wire x2="1984" y1="1792" y2="1792" x1="1424" />
        </branch>
        <branch name="DBG">
            <wire x2="2256" y1="1760" y2="1760" x1="2240" />
        </branch>
        <branch name="XLXN_130">
            <wire x2="1984" y1="1728" y2="1728" x1="1968" />
        </branch>
        <branch name="SMC">
            <wire x2="1984" y1="1664" y2="1664" x1="1968" />
        </branch>
        <instance x="1984" y="1856" name="XLXI_17" orien="R0" />
        <iomarker fontsize="28" x="2256" y="1760" name="DBG" orien="R0" />
        <iomarker fontsize="28" x="1984" y="1664" name="SMC" orien="R0" />
        <branch name="CET">
            <wire x2="1984" y1="1600" y2="1600" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1600" name="CET" orien="R0" />
        <branch name="BUT">
            <wire x2="1584" y1="1600" y2="1600" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1568" y="1600" name="BUT" orien="R180" />
        <instance x="1584" y="1696" name="XLXI_19" orien="R0">
        </instance>
    </sheet>
</drawing>