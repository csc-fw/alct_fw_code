// This  Verilog HDL  source  file was  automatically generated
// by C++ model based on VPP library. Modification of this file
// is possible, but if you want to keep it in sync with the C++
// model,  please  modify  the model and re-generate this file.
// VPP library web-page: http://www.phys.ufl.edu/~madorsky/vpp/

// Author    : madorsky
// File name : Stage1_rl.v
// Timestamp : Mon Sep 10 09:02:06 2012

module Stage1_rl
(
    ly0,
    ly1,
    ly2,
    ly3,
    ly4,
    ly5,
    collmask,
    drifttime,
    pretrig,
    trig,
    trig_mode,
    acc_pretrig,
    acc_trig,
    qca0,
    qca1,
    qca2,
    qca3,
    qa0,
    qa1,
    qa2,
    qa3,
    trig_stop,
    clk
);

    input [63:0] ly0;
    input [63:0] ly1;
    input [63:0] ly2;
    input [63:0] ly3;
    input [63:0] ly4;
    input [63:0] ly5;
    input [223:0] collmask;
    input [2:0] drifttime;
    input [2:0] pretrig;
    input [2:0] trig;
    input [1:0] trig_mode;
    input [2:0] acc_pretrig;
    input [2:0] acc_trig;
    output [63:0] qca0;
    reg    [63:0] qca0;
    output [63:0] qca1;
    reg    [63:0] qca1;
    output [63:0] qca2;
    reg    [63:0] qca2;
    output [63:0] qca3;
    reg    [63:0] qca3;
    output [63:0] qa0;
    reg    [63:0] qa0;
    output [63:0] qa1;
    reg    [63:0] qa1;
    output [63:0] qa2;
    reg    [63:0] qa2;
    output [63:0] qa3;
    reg    [63:0] qa3;
    input trig_stop;
    input clk;

    wire [127:0] hitca;
    wire [127:0] hita;
    wire [63:0] vac;
    wire [63:0] vaci;
    wire [63:0] va;
    wire [63:0] vai;
    Patterner_rl pt0
    (
        ly0[2:0],
        ly1[1:0],
        ly2[0],
        {ly3[0], 1'h0},
        {ly4[0], 2'h0},
        {ly5[0], 2'h0},
        collmask[27:0],
        hitca[1:0],
        vac[0],
        hita[1:0],
        va[0],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt1
    (
        ly0[3:1],
        ly1[2:1],
        ly2[1],
        ly3[1:0],
        {ly4[1:0], 1'h0},
        {ly5[1:0], 1'h0},
        collmask[27:0],
        hitca[3:2],
        vac[1],
        hita[3:2],
        va[1],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt2
    (
        ly0[4:2],
        ly1[3:2],
        ly2[2],
        ly3[2:1],
        ly4[2:0],
        ly5[2:0],
        collmask[27:0],
        hitca[5:4],
        vac[2],
        hita[5:4],
        va[2],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt3
    (
        ly0[5:3],
        ly1[4:3],
        ly2[3],
        ly3[3:2],
        ly4[3:1],
        ly5[3:1],
        collmask[27:0],
        hitca[7:6],
        vac[3],
        hita[7:6],
        va[3],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt4
    (
        ly0[6:4],
        ly1[5:4],
        ly2[4],
        ly3[4:3],
        ly4[4:2],
        ly5[4:2],
        collmask[27:0],
        hitca[9:8],
        vac[4],
        hita[9:8],
        va[4],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt5
    (
        ly0[7:5],
        ly1[6:5],
        ly2[5],
        ly3[5:4],
        ly4[5:3],
        ly5[5:3],
        collmask[27:0],
        hitca[11:10],
        vac[5],
        hita[11:10],
        va[5],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt6
    (
        ly0[8:6],
        ly1[7:6],
        ly2[6],
        ly3[6:5],
        ly4[6:4],
        ly5[6:4],
        collmask[27:0],
        hitca[13:12],
        vac[6],
        hita[13:12],
        va[6],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt7
    (
        ly0[9:7],
        ly1[8:7],
        ly2[7],
        ly3[7:6],
        ly4[7:5],
        ly5[7:5],
        collmask[27:0],
        hitca[15:14],
        vac[7],
        hita[15:14],
        va[7],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt8
    (
        ly0[10:8],
        ly1[9:8],
        ly2[8],
        ly3[8:7],
        ly4[8:6],
        ly5[8:6],
        collmask[55:28],
        hitca[17:16],
        vac[8],
        hita[17:16],
        va[8],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt9
    (
        ly0[11:9],
        ly1[10:9],
        ly2[9],
        ly3[9:8],
        ly4[9:7],
        ly5[9:7],
        collmask[55:28],
        hitca[19:18],
        vac[9],
        hita[19:18],
        va[9],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt10
    (
        ly0[12:10],
        ly1[11:10],
        ly2[10],
        ly3[10:9],
        ly4[10:8],
        ly5[10:8],
        collmask[55:28],
        hitca[21:20],
        vac[10],
        hita[21:20],
        va[10],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt11
    (
        ly0[13:11],
        ly1[12:11],
        ly2[11],
        ly3[11:10],
        ly4[11:9],
        ly5[11:9],
        collmask[55:28],
        hitca[23:22],
        vac[11],
        hita[23:22],
        va[11],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt12
    (
        ly0[14:12],
        ly1[13:12],
        ly2[12],
        ly3[12:11],
        ly4[12:10],
        ly5[12:10],
        collmask[55:28],
        hitca[25:24],
        vac[12],
        hita[25:24],
        va[12],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt13
    (
        ly0[15:13],
        ly1[14:13],
        ly2[13],
        ly3[13:12],
        ly4[13:11],
        ly5[13:11],
        collmask[55:28],
        hitca[27:26],
        vac[13],
        hita[27:26],
        va[13],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt14
    (
        ly0[16:14],
        ly1[15:14],
        ly2[14],
        ly3[14:13],
        ly4[14:12],
        ly5[14:12],
        collmask[55:28],
        hitca[29:28],
        vac[14],
        hita[29:28],
        va[14],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt15
    (
        ly0[17:15],
        ly1[16:15],
        ly2[15],
        ly3[15:14],
        ly4[15:13],
        ly5[15:13],
        collmask[55:28],
        hitca[31:30],
        vac[15],
        hita[31:30],
        va[15],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt16
    (
        ly0[18:16],
        ly1[17:16],
        ly2[16],
        ly3[16:15],
        ly4[16:14],
        ly5[16:14],
        collmask[83:56],
        hitca[33:32],
        vac[16],
        hita[33:32],
        va[16],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt17
    (
        ly0[19:17],
        ly1[18:17],
        ly2[17],
        ly3[17:16],
        ly4[17:15],
        ly5[17:15],
        collmask[83:56],
        hitca[35:34],
        vac[17],
        hita[35:34],
        va[17],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt18
    (
        ly0[20:18],
        ly1[19:18],
        ly2[18],
        ly3[18:17],
        ly4[18:16],
        ly5[18:16],
        collmask[83:56],
        hitca[37:36],
        vac[18],
        hita[37:36],
        va[18],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt19
    (
        ly0[21:19],
        ly1[20:19],
        ly2[19],
        ly3[19:18],
        ly4[19:17],
        ly5[19:17],
        collmask[83:56],
        hitca[39:38],
        vac[19],
        hita[39:38],
        va[19],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt20
    (
        ly0[22:20],
        ly1[21:20],
        ly2[20],
        ly3[20:19],
        ly4[20:18],
        ly5[20:18],
        collmask[83:56],
        hitca[41:40],
        vac[20],
        hita[41:40],
        va[20],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt21
    (
        ly0[23:21],
        ly1[22:21],
        ly2[21],
        ly3[21:20],
        ly4[21:19],
        ly5[21:19],
        collmask[83:56],
        hitca[43:42],
        vac[21],
        hita[43:42],
        va[21],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt22
    (
        ly0[24:22],
        ly1[23:22],
        ly2[22],
        ly3[22:21],
        ly4[22:20],
        ly5[22:20],
        collmask[83:56],
        hitca[45:44],
        vac[22],
        hita[45:44],
        va[22],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt23
    (
        ly0[25:23],
        ly1[24:23],
        ly2[23],
        ly3[23:22],
        ly4[23:21],
        ly5[23:21],
        collmask[83:56],
        hitca[47:46],
        vac[23],
        hita[47:46],
        va[23],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt24
    (
        ly0[26:24],
        ly1[25:24],
        ly2[24],
        ly3[24:23],
        ly4[24:22],
        ly5[24:22],
        collmask[111:84],
        hitca[49:48],
        vac[24],
        hita[49:48],
        va[24],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt25
    (
        ly0[27:25],
        ly1[26:25],
        ly2[25],
        ly3[25:24],
        ly4[25:23],
        ly5[25:23],
        collmask[111:84],
        hitca[51:50],
        vac[25],
        hita[51:50],
        va[25],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt26
    (
        ly0[28:26],
        ly1[27:26],
        ly2[26],
        ly3[26:25],
        ly4[26:24],
        ly5[26:24],
        collmask[111:84],
        hitca[53:52],
        vac[26],
        hita[53:52],
        va[26],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt27
    (
        ly0[29:27],
        ly1[28:27],
        ly2[27],
        ly3[27:26],
        ly4[27:25],
        ly5[27:25],
        collmask[111:84],
        hitca[55:54],
        vac[27],
        hita[55:54],
        va[27],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt28
    (
        ly0[30:28],
        ly1[29:28],
        ly2[28],
        ly3[28:27],
        ly4[28:26],
        ly5[28:26],
        collmask[111:84],
        hitca[57:56],
        vac[28],
        hita[57:56],
        va[28],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt29
    (
        ly0[31:29],
        ly1[30:29],
        ly2[29],
        ly3[29:28],
        ly4[29:27],
        ly5[29:27],
        collmask[111:84],
        hitca[59:58],
        vac[29],
        hita[59:58],
        va[29],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt30
    (
        ly0[32:30],
        ly1[31:30],
        ly2[30],
        ly3[30:29],
        ly4[30:28],
        ly5[30:28],
        collmask[111:84],
        hitca[61:60],
        vac[30],
        hita[61:60],
        va[30],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt31
    (
        ly0[33:31],
        ly1[32:31],
        ly2[31],
        ly3[31:30],
        ly4[31:29],
        ly5[31:29],
        collmask[111:84],
        hitca[63:62],
        vac[31],
        hita[63:62],
        va[31],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt32
    (
        ly0[34:32],
        ly1[33:32],
        ly2[32],
        ly3[32:31],
        ly4[32:30],
        ly5[32:30],
        collmask[139:112],
        hitca[65:64],
        vac[32],
        hita[65:64],
        va[32],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt33
    (
        ly0[35:33],
        ly1[34:33],
        ly2[33],
        ly3[33:32],
        ly4[33:31],
        ly5[33:31],
        collmask[139:112],
        hitca[67:66],
        vac[33],
        hita[67:66],
        va[33],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt34
    (
        ly0[36:34],
        ly1[35:34],
        ly2[34],
        ly3[34:33],
        ly4[34:32],
        ly5[34:32],
        collmask[139:112],
        hitca[69:68],
        vac[34],
        hita[69:68],
        va[34],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt35
    (
        ly0[37:35],
        ly1[36:35],
        ly2[35],
        ly3[35:34],
        ly4[35:33],
        ly5[35:33],
        collmask[139:112],
        hitca[71:70],
        vac[35],
        hita[71:70],
        va[35],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt36
    (
        ly0[38:36],
        ly1[37:36],
        ly2[36],
        ly3[36:35],
        ly4[36:34],
        ly5[36:34],
        collmask[139:112],
        hitca[73:72],
        vac[36],
        hita[73:72],
        va[36],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt37
    (
        ly0[39:37],
        ly1[38:37],
        ly2[37],
        ly3[37:36],
        ly4[37:35],
        ly5[37:35],
        collmask[139:112],
        hitca[75:74],
        vac[37],
        hita[75:74],
        va[37],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt38
    (
        ly0[40:38],
        ly1[39:38],
        ly2[38],
        ly3[38:37],
        ly4[38:36],
        ly5[38:36],
        collmask[139:112],
        hitca[77:76],
        vac[38],
        hita[77:76],
        va[38],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt39
    (
        ly0[41:39],
        ly1[40:39],
        ly2[39],
        ly3[39:38],
        ly4[39:37],
        ly5[39:37],
        collmask[139:112],
        hitca[79:78],
        vac[39],
        hita[79:78],
        va[39],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt40
    (
        ly0[42:40],
        ly1[41:40],
        ly2[40],
        ly3[40:39],
        ly4[40:38],
        ly5[40:38],
        collmask[167:140],
        hitca[81:80],
        vac[40],
        hita[81:80],
        va[40],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt41
    (
        ly0[43:41],
        ly1[42:41],
        ly2[41],
        ly3[41:40],
        ly4[41:39],
        ly5[41:39],
        collmask[167:140],
        hitca[83:82],
        vac[41],
        hita[83:82],
        va[41],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt42
    (
        ly0[44:42],
        ly1[43:42],
        ly2[42],
        ly3[42:41],
        ly4[42:40],
        ly5[42:40],
        collmask[167:140],
        hitca[85:84],
        vac[42],
        hita[85:84],
        va[42],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt43
    (
        ly0[45:43],
        ly1[44:43],
        ly2[43],
        ly3[43:42],
        ly4[43:41],
        ly5[43:41],
        collmask[167:140],
        hitca[87:86],
        vac[43],
        hita[87:86],
        va[43],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt44
    (
        ly0[46:44],
        ly1[45:44],
        ly2[44],
        ly3[44:43],
        ly4[44:42],
        ly5[44:42],
        collmask[167:140],
        hitca[89:88],
        vac[44],
        hita[89:88],
        va[44],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt45
    (
        ly0[47:45],
        ly1[46:45],
        ly2[45],
        ly3[45:44],
        ly4[45:43],
        ly5[45:43],
        collmask[167:140],
        hitca[91:90],
        vac[45],
        hita[91:90],
        va[45],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt46
    (
        ly0[48:46],
        ly1[47:46],
        ly2[46],
        ly3[46:45],
        ly4[46:44],
        ly5[46:44],
        collmask[167:140],
        hitca[93:92],
        vac[46],
        hita[93:92],
        va[46],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt47
    (
        ly0[49:47],
        ly1[48:47],
        ly2[47],
        ly3[47:46],
        ly4[47:45],
        ly5[47:45],
        collmask[167:140],
        hitca[95:94],
        vac[47],
        hita[95:94],
        va[47],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt48
    (
        ly0[50:48],
        ly1[49:48],
        ly2[48],
        ly3[48:47],
        ly4[48:46],
        ly5[48:46],
        collmask[195:168],
        hitca[97:96],
        vac[48],
        hita[97:96],
        va[48],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt49
    (
        ly0[51:49],
        ly1[50:49],
        ly2[49],
        ly3[49:48],
        ly4[49:47],
        ly5[49:47],
        collmask[195:168],
        hitca[99:98],
        vac[49],
        hita[99:98],
        va[49],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt50
    (
        ly0[52:50],
        ly1[51:50],
        ly2[50],
        ly3[50:49],
        ly4[50:48],
        ly5[50:48],
        collmask[195:168],
        hitca[101:100],
        vac[50],
        hita[101:100],
        va[50],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt51
    (
        ly0[53:51],
        ly1[52:51],
        ly2[51],
        ly3[51:50],
        ly4[51:49],
        ly5[51:49],
        collmask[195:168],
        hitca[103:102],
        vac[51],
        hita[103:102],
        va[51],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt52
    (
        ly0[54:52],
        ly1[53:52],
        ly2[52],
        ly3[52:51],
        ly4[52:50],
        ly5[52:50],
        collmask[195:168],
        hitca[105:104],
        vac[52],
        hita[105:104],
        va[52],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt53
    (
        ly0[55:53],
        ly1[54:53],
        ly2[53],
        ly3[53:52],
        ly4[53:51],
        ly5[53:51],
        collmask[195:168],
        hitca[107:106],
        vac[53],
        hita[107:106],
        va[53],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt54
    (
        ly0[56:54],
        ly1[55:54],
        ly2[54],
        ly3[54:53],
        ly4[54:52],
        ly5[54:52],
        collmask[195:168],
        hitca[109:108],
        vac[54],
        hita[109:108],
        va[54],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt55
    (
        ly0[57:55],
        ly1[56:55],
        ly2[55],
        ly3[55:54],
        ly4[55:53],
        ly5[55:53],
        collmask[195:168],
        hitca[111:110],
        vac[55],
        hita[111:110],
        va[55],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt56
    (
        ly0[58:56],
        ly1[57:56],
        ly2[56],
        ly3[56:55],
        ly4[56:54],
        ly5[56:54],
        collmask[223:196],
        hitca[113:112],
        vac[56],
        hita[113:112],
        va[56],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt57
    (
        ly0[59:57],
        ly1[58:57],
        ly2[57],
        ly3[57:56],
        ly4[57:55],
        ly5[57:55],
        collmask[223:196],
        hitca[115:114],
        vac[57],
        hita[115:114],
        va[57],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt58
    (
        ly0[60:58],
        ly1[59:58],
        ly2[58],
        ly3[58:57],
        ly4[58:56],
        ly5[58:56],
        collmask[223:196],
        hitca[117:116],
        vac[58],
        hita[117:116],
        va[58],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt59
    (
        ly0[61:59],
        ly1[60:59],
        ly2[59],
        ly3[59:58],
        ly4[59:57],
        ly5[59:57],
        collmask[223:196],
        hitca[119:118],
        vac[59],
        hita[119:118],
        va[59],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt60
    (
        ly0[62:60],
        ly1[61:60],
        ly2[60],
        ly3[60:59],
        ly4[60:58],
        ly5[60:58],
        collmask[223:196],
        hitca[121:120],
        vac[60],
        hita[121:120],
        va[60],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt61
    (
        ly0[63:61],
        ly1[62:61],
        ly2[61],
        ly3[61:60],
        ly4[61:59],
        ly5[61:59],
        collmask[223:196],
        hitca[123:122],
        vac[61],
        hita[123:122],
        va[61],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt62
    (
        {1'h0, ly0[63:62]},
        ly1[63:62],
        ly2[62],
        ly3[62:61],
        ly4[62:60],
        ly5[62:60],
        collmask[223:196],
        hitca[125:124],
        vac[62],
        hita[125:124],
        va[62],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    Patterner_rl pt63
    (
        {2'h0, ly0[63]},
        {1'h0, ly1[63]},
        ly2[63],
        ly3[63:62],
        ly4[63:61],
        ly5[63:61],
        collmask[223:196],
        hitca[127:126],
        vac[63],
        hita[127:126],
        va[63],
        drifttime,
        pretrig,
        trig,
        acc_pretrig,
        acc_trig,
        trig_mode,
        clk
    );
    CheckNeighbors_rl chn0
    (
        vac[0],
        hitca[1:0],
        vaci[0],
        1'b0,
        2'h0,
        vac[1],
        hitca[3:2],
        va[0],
        hita[1:0],
        vai[0],
        1'b0,
        2'h0,
        va[1],
        hita[3:2],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn1
    (
        vac[1],
        hitca[3:2],
        vaci[1],
        vac[0],
        hitca[1:0],
        vac[2],
        hitca[5:4],
        va[1],
        hita[3:2],
        vai[1],
        va[0],
        hita[1:0],
        va[2],
        hita[5:4],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn2
    (
        vac[2],
        hitca[5:4],
        vaci[2],
        vac[1],
        hitca[3:2],
        vac[3],
        hitca[7:6],
        va[2],
        hita[5:4],
        vai[2],
        va[1],
        hita[3:2],
        va[3],
        hita[7:6],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn3
    (
        vac[3],
        hitca[7:6],
        vaci[3],
        vac[2],
        hitca[5:4],
        vac[4],
        hitca[9:8],
        va[3],
        hita[7:6],
        vai[3],
        va[2],
        hita[5:4],
        va[4],
        hita[9:8],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn4
    (
        vac[4],
        hitca[9:8],
        vaci[4],
        vac[3],
        hitca[7:6],
        vac[5],
        hitca[11:10],
        va[4],
        hita[9:8],
        vai[4],
        va[3],
        hita[7:6],
        va[5],
        hita[11:10],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn5
    (
        vac[5],
        hitca[11:10],
        vaci[5],
        vac[4],
        hitca[9:8],
        vac[6],
        hitca[13:12],
        va[5],
        hita[11:10],
        vai[5],
        va[4],
        hita[9:8],
        va[6],
        hita[13:12],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn6
    (
        vac[6],
        hitca[13:12],
        vaci[6],
        vac[5],
        hitca[11:10],
        vac[7],
        hitca[15:14],
        va[6],
        hita[13:12],
        vai[6],
        va[5],
        hita[11:10],
        va[7],
        hita[15:14],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn7
    (
        vac[7],
        hitca[15:14],
        vaci[7],
        vac[6],
        hitca[13:12],
        vac[8],
        hitca[17:16],
        va[7],
        hita[15:14],
        vai[7],
        va[6],
        hita[13:12],
        va[8],
        hita[17:16],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn8
    (
        vac[8],
        hitca[17:16],
        vaci[8],
        vac[7],
        hitca[15:14],
        vac[9],
        hitca[19:18],
        va[8],
        hita[17:16],
        vai[8],
        va[7],
        hita[15:14],
        va[9],
        hita[19:18],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn9
    (
        vac[9],
        hitca[19:18],
        vaci[9],
        vac[8],
        hitca[17:16],
        vac[10],
        hitca[21:20],
        va[9],
        hita[19:18],
        vai[9],
        va[8],
        hita[17:16],
        va[10],
        hita[21:20],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn10
    (
        vac[10],
        hitca[21:20],
        vaci[10],
        vac[9],
        hitca[19:18],
        vac[11],
        hitca[23:22],
        va[10],
        hita[21:20],
        vai[10],
        va[9],
        hita[19:18],
        va[11],
        hita[23:22],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn11
    (
        vac[11],
        hitca[23:22],
        vaci[11],
        vac[10],
        hitca[21:20],
        vac[12],
        hitca[25:24],
        va[11],
        hita[23:22],
        vai[11],
        va[10],
        hita[21:20],
        va[12],
        hita[25:24],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn12
    (
        vac[12],
        hitca[25:24],
        vaci[12],
        vac[11],
        hitca[23:22],
        vac[13],
        hitca[27:26],
        va[12],
        hita[25:24],
        vai[12],
        va[11],
        hita[23:22],
        va[13],
        hita[27:26],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn13
    (
        vac[13],
        hitca[27:26],
        vaci[13],
        vac[12],
        hitca[25:24],
        vac[14],
        hitca[29:28],
        va[13],
        hita[27:26],
        vai[13],
        va[12],
        hita[25:24],
        va[14],
        hita[29:28],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn14
    (
        vac[14],
        hitca[29:28],
        vaci[14],
        vac[13],
        hitca[27:26],
        vac[15],
        hitca[31:30],
        va[14],
        hita[29:28],
        vai[14],
        va[13],
        hita[27:26],
        va[15],
        hita[31:30],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn15
    (
        vac[15],
        hitca[31:30],
        vaci[15],
        vac[14],
        hitca[29:28],
        vac[16],
        hitca[33:32],
        va[15],
        hita[31:30],
        vai[15],
        va[14],
        hita[29:28],
        va[16],
        hita[33:32],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn16
    (
        vac[16],
        hitca[33:32],
        vaci[16],
        vac[15],
        hitca[31:30],
        vac[17],
        hitca[35:34],
        va[16],
        hita[33:32],
        vai[16],
        va[15],
        hita[31:30],
        va[17],
        hita[35:34],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn17
    (
        vac[17],
        hitca[35:34],
        vaci[17],
        vac[16],
        hitca[33:32],
        vac[18],
        hitca[37:36],
        va[17],
        hita[35:34],
        vai[17],
        va[16],
        hita[33:32],
        va[18],
        hita[37:36],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn18
    (
        vac[18],
        hitca[37:36],
        vaci[18],
        vac[17],
        hitca[35:34],
        vac[19],
        hitca[39:38],
        va[18],
        hita[37:36],
        vai[18],
        va[17],
        hita[35:34],
        va[19],
        hita[39:38],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn19
    (
        vac[19],
        hitca[39:38],
        vaci[19],
        vac[18],
        hitca[37:36],
        vac[20],
        hitca[41:40],
        va[19],
        hita[39:38],
        vai[19],
        va[18],
        hita[37:36],
        va[20],
        hita[41:40],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn20
    (
        vac[20],
        hitca[41:40],
        vaci[20],
        vac[19],
        hitca[39:38],
        vac[21],
        hitca[43:42],
        va[20],
        hita[41:40],
        vai[20],
        va[19],
        hita[39:38],
        va[21],
        hita[43:42],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn21
    (
        vac[21],
        hitca[43:42],
        vaci[21],
        vac[20],
        hitca[41:40],
        vac[22],
        hitca[45:44],
        va[21],
        hita[43:42],
        vai[21],
        va[20],
        hita[41:40],
        va[22],
        hita[45:44],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn22
    (
        vac[22],
        hitca[45:44],
        vaci[22],
        vac[21],
        hitca[43:42],
        vac[23],
        hitca[47:46],
        va[22],
        hita[45:44],
        vai[22],
        va[21],
        hita[43:42],
        va[23],
        hita[47:46],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn23
    (
        vac[23],
        hitca[47:46],
        vaci[23],
        vac[22],
        hitca[45:44],
        vac[24],
        hitca[49:48],
        va[23],
        hita[47:46],
        vai[23],
        va[22],
        hita[45:44],
        va[24],
        hita[49:48],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn24
    (
        vac[24],
        hitca[49:48],
        vaci[24],
        vac[23],
        hitca[47:46],
        vac[25],
        hitca[51:50],
        va[24],
        hita[49:48],
        vai[24],
        va[23],
        hita[47:46],
        va[25],
        hita[51:50],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn25
    (
        vac[25],
        hitca[51:50],
        vaci[25],
        vac[24],
        hitca[49:48],
        vac[26],
        hitca[53:52],
        va[25],
        hita[51:50],
        vai[25],
        va[24],
        hita[49:48],
        va[26],
        hita[53:52],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn26
    (
        vac[26],
        hitca[53:52],
        vaci[26],
        vac[25],
        hitca[51:50],
        vac[27],
        hitca[55:54],
        va[26],
        hita[53:52],
        vai[26],
        va[25],
        hita[51:50],
        va[27],
        hita[55:54],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn27
    (
        vac[27],
        hitca[55:54],
        vaci[27],
        vac[26],
        hitca[53:52],
        vac[28],
        hitca[57:56],
        va[27],
        hita[55:54],
        vai[27],
        va[26],
        hita[53:52],
        va[28],
        hita[57:56],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn28
    (
        vac[28],
        hitca[57:56],
        vaci[28],
        vac[27],
        hitca[55:54],
        vac[29],
        hitca[59:58],
        va[28],
        hita[57:56],
        vai[28],
        va[27],
        hita[55:54],
        va[29],
        hita[59:58],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn29
    (
        vac[29],
        hitca[59:58],
        vaci[29],
        vac[28],
        hitca[57:56],
        vac[30],
        hitca[61:60],
        va[29],
        hita[59:58],
        vai[29],
        va[28],
        hita[57:56],
        va[30],
        hita[61:60],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn30
    (
        vac[30],
        hitca[61:60],
        vaci[30],
        vac[29],
        hitca[59:58],
        vac[31],
        hitca[63:62],
        va[30],
        hita[61:60],
        vai[30],
        va[29],
        hita[59:58],
        va[31],
        hita[63:62],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn31
    (
        vac[31],
        hitca[63:62],
        vaci[31],
        vac[30],
        hitca[61:60],
        vac[32],
        hitca[65:64],
        va[31],
        hita[63:62],
        vai[31],
        va[30],
        hita[61:60],
        va[32],
        hita[65:64],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn32
    (
        vac[32],
        hitca[65:64],
        vaci[32],
        vac[31],
        hitca[63:62],
        vac[33],
        hitca[67:66],
        va[32],
        hita[65:64],
        vai[32],
        va[31],
        hita[63:62],
        va[33],
        hita[67:66],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn33
    (
        vac[33],
        hitca[67:66],
        vaci[33],
        vac[32],
        hitca[65:64],
        vac[34],
        hitca[69:68],
        va[33],
        hita[67:66],
        vai[33],
        va[32],
        hita[65:64],
        va[34],
        hita[69:68],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn34
    (
        vac[34],
        hitca[69:68],
        vaci[34],
        vac[33],
        hitca[67:66],
        vac[35],
        hitca[71:70],
        va[34],
        hita[69:68],
        vai[34],
        va[33],
        hita[67:66],
        va[35],
        hita[71:70],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn35
    (
        vac[35],
        hitca[71:70],
        vaci[35],
        vac[34],
        hitca[69:68],
        vac[36],
        hitca[73:72],
        va[35],
        hita[71:70],
        vai[35],
        va[34],
        hita[69:68],
        va[36],
        hita[73:72],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn36
    (
        vac[36],
        hitca[73:72],
        vaci[36],
        vac[35],
        hitca[71:70],
        vac[37],
        hitca[75:74],
        va[36],
        hita[73:72],
        vai[36],
        va[35],
        hita[71:70],
        va[37],
        hita[75:74],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn37
    (
        vac[37],
        hitca[75:74],
        vaci[37],
        vac[36],
        hitca[73:72],
        vac[38],
        hitca[77:76],
        va[37],
        hita[75:74],
        vai[37],
        va[36],
        hita[73:72],
        va[38],
        hita[77:76],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn38
    (
        vac[38],
        hitca[77:76],
        vaci[38],
        vac[37],
        hitca[75:74],
        vac[39],
        hitca[79:78],
        va[38],
        hita[77:76],
        vai[38],
        va[37],
        hita[75:74],
        va[39],
        hita[79:78],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn39
    (
        vac[39],
        hitca[79:78],
        vaci[39],
        vac[38],
        hitca[77:76],
        vac[40],
        hitca[81:80],
        va[39],
        hita[79:78],
        vai[39],
        va[38],
        hita[77:76],
        va[40],
        hita[81:80],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn40
    (
        vac[40],
        hitca[81:80],
        vaci[40],
        vac[39],
        hitca[79:78],
        vac[41],
        hitca[83:82],
        va[40],
        hita[81:80],
        vai[40],
        va[39],
        hita[79:78],
        va[41],
        hita[83:82],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn41
    (
        vac[41],
        hitca[83:82],
        vaci[41],
        vac[40],
        hitca[81:80],
        vac[42],
        hitca[85:84],
        va[41],
        hita[83:82],
        vai[41],
        va[40],
        hita[81:80],
        va[42],
        hita[85:84],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn42
    (
        vac[42],
        hitca[85:84],
        vaci[42],
        vac[41],
        hitca[83:82],
        vac[43],
        hitca[87:86],
        va[42],
        hita[85:84],
        vai[42],
        va[41],
        hita[83:82],
        va[43],
        hita[87:86],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn43
    (
        vac[43],
        hitca[87:86],
        vaci[43],
        vac[42],
        hitca[85:84],
        vac[44],
        hitca[89:88],
        va[43],
        hita[87:86],
        vai[43],
        va[42],
        hita[85:84],
        va[44],
        hita[89:88],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn44
    (
        vac[44],
        hitca[89:88],
        vaci[44],
        vac[43],
        hitca[87:86],
        vac[45],
        hitca[91:90],
        va[44],
        hita[89:88],
        vai[44],
        va[43],
        hita[87:86],
        va[45],
        hita[91:90],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn45
    (
        vac[45],
        hitca[91:90],
        vaci[45],
        vac[44],
        hitca[89:88],
        vac[46],
        hitca[93:92],
        va[45],
        hita[91:90],
        vai[45],
        va[44],
        hita[89:88],
        va[46],
        hita[93:92],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn46
    (
        vac[46],
        hitca[93:92],
        vaci[46],
        vac[45],
        hitca[91:90],
        vac[47],
        hitca[95:94],
        va[46],
        hita[93:92],
        vai[46],
        va[45],
        hita[91:90],
        va[47],
        hita[95:94],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn47
    (
        vac[47],
        hitca[95:94],
        vaci[47],
        vac[46],
        hitca[93:92],
        vac[48],
        hitca[97:96],
        va[47],
        hita[95:94],
        vai[47],
        va[46],
        hita[93:92],
        va[48],
        hita[97:96],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn48
    (
        vac[48],
        hitca[97:96],
        vaci[48],
        vac[47],
        hitca[95:94],
        vac[49],
        hitca[99:98],
        va[48],
        hita[97:96],
        vai[48],
        va[47],
        hita[95:94],
        va[49],
        hita[99:98],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn49
    (
        vac[49],
        hitca[99:98],
        vaci[49],
        vac[48],
        hitca[97:96],
        vac[50],
        hitca[101:100],
        va[49],
        hita[99:98],
        vai[49],
        va[48],
        hita[97:96],
        va[50],
        hita[101:100],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn50
    (
        vac[50],
        hitca[101:100],
        vaci[50],
        vac[49],
        hitca[99:98],
        vac[51],
        hitca[103:102],
        va[50],
        hita[101:100],
        vai[50],
        va[49],
        hita[99:98],
        va[51],
        hita[103:102],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn51
    (
        vac[51],
        hitca[103:102],
        vaci[51],
        vac[50],
        hitca[101:100],
        vac[52],
        hitca[105:104],
        va[51],
        hita[103:102],
        vai[51],
        va[50],
        hita[101:100],
        va[52],
        hita[105:104],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn52
    (
        vac[52],
        hitca[105:104],
        vaci[52],
        vac[51],
        hitca[103:102],
        vac[53],
        hitca[107:106],
        va[52],
        hita[105:104],
        vai[52],
        va[51],
        hita[103:102],
        va[53],
        hita[107:106],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn53
    (
        vac[53],
        hitca[107:106],
        vaci[53],
        vac[52],
        hitca[105:104],
        vac[54],
        hitca[109:108],
        va[53],
        hita[107:106],
        vai[53],
        va[52],
        hita[105:104],
        va[54],
        hita[109:108],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn54
    (
        vac[54],
        hitca[109:108],
        vaci[54],
        vac[53],
        hitca[107:106],
        vac[55],
        hitca[111:110],
        va[54],
        hita[109:108],
        vai[54],
        va[53],
        hita[107:106],
        va[55],
        hita[111:110],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn55
    (
        vac[55],
        hitca[111:110],
        vaci[55],
        vac[54],
        hitca[109:108],
        vac[56],
        hitca[113:112],
        va[55],
        hita[111:110],
        vai[55],
        va[54],
        hita[109:108],
        va[56],
        hita[113:112],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn56
    (
        vac[56],
        hitca[113:112],
        vaci[56],
        vac[55],
        hitca[111:110],
        vac[57],
        hitca[115:114],
        va[56],
        hita[113:112],
        vai[56],
        va[55],
        hita[111:110],
        va[57],
        hita[115:114],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn57
    (
        vac[57],
        hitca[115:114],
        vaci[57],
        vac[56],
        hitca[113:112],
        vac[58],
        hitca[117:116],
        va[57],
        hita[115:114],
        vai[57],
        va[56],
        hita[113:112],
        va[58],
        hita[117:116],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn58
    (
        vac[58],
        hitca[117:116],
        vaci[58],
        vac[57],
        hitca[115:114],
        vac[59],
        hitca[119:118],
        va[58],
        hita[117:116],
        vai[58],
        va[57],
        hita[115:114],
        va[59],
        hita[119:118],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn59
    (
        vac[59],
        hitca[119:118],
        vaci[59],
        vac[58],
        hitca[117:116],
        vac[60],
        hitca[121:120],
        va[59],
        hita[119:118],
        vai[59],
        va[58],
        hita[117:116],
        va[60],
        hita[121:120],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn60
    (
        vac[60],
        hitca[121:120],
        vaci[60],
        vac[59],
        hitca[119:118],
        vac[61],
        hitca[123:122],
        va[60],
        hita[121:120],
        vai[60],
        va[59],
        hita[119:118],
        va[61],
        hita[123:122],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn61
    (
        vac[61],
        hitca[123:122],
        vaci[61],
        vac[60],
        hitca[121:120],
        vac[62],
        hitca[125:124],
        va[61],
        hita[123:122],
        vai[61],
        va[60],
        hita[121:120],
        va[62],
        hita[125:124],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn62
    (
        vac[62],
        hitca[125:124],
        vaci[62],
        vac[61],
        hitca[123:122],
        vac[63],
        hitca[127:126],
        va[62],
        hita[125:124],
        vai[62],
        va[61],
        hita[123:122],
        va[63],
        hita[127:126],
        trig_stop,
        clk
    );
    CheckNeighbors_rl chn63
    (
        vac[63],
        hitca[127:126],
        vaci[63],
        vac[62],
        hitca[125:124],
        1'b0,
        2'h0,
        va[63],
        hita[127:126],
        vai[63],
        va[62],
        hita[125:124],
        1'b0,
        2'h0,
        trig_stop,
        clk
    );
    always @(posedge clk) 
    begin
        qca3[0] = (hitca[1:0] == 3) && vaci[0];
        qca2[0] = (hitca[1:0] == 2) && vaci[0];
        qca1[0] = (hitca[1:0] == 1) && vaci[0];
        qca0[0] = (hitca[1:0] == 0) && vaci[0];
        qa3[0] = (hita[1:0] == 3) && vai[0];
        qa2[0] = (hita[1:0] == 2) && vai[0];
        qa1[0] = (hita[1:0] == 1) && vai[0];
        qa0[0] = (hita[1:0] == 0) && vai[0];
        qca3[1] = (hitca[3:2] == 3) && vaci[1];
        qca2[1] = (hitca[3:2] == 2) && vaci[1];
        qca1[1] = (hitca[3:2] == 1) && vaci[1];
        qca0[1] = (hitca[3:2] == 0) && vaci[1];
        qa3[1] = (hita[3:2] == 3) && vai[1];
        qa2[1] = (hita[3:2] == 2) && vai[1];
        qa1[1] = (hita[3:2] == 1) && vai[1];
        qa0[1] = (hita[3:2] == 0) && vai[1];
        qca3[2] = (hitca[5:4] == 3) && vaci[2];
        qca2[2] = (hitca[5:4] == 2) && vaci[2];
        qca1[2] = (hitca[5:4] == 1) && vaci[2];
        qca0[2] = (hitca[5:4] == 0) && vaci[2];
        qa3[2] = (hita[5:4] == 3) && vai[2];
        qa2[2] = (hita[5:4] == 2) && vai[2];
        qa1[2] = (hita[5:4] == 1) && vai[2];
        qa0[2] = (hita[5:4] == 0) && vai[2];
        qca3[3] = (hitca[7:6] == 3) && vaci[3];
        qca2[3] = (hitca[7:6] == 2) && vaci[3];
        qca1[3] = (hitca[7:6] == 1) && vaci[3];
        qca0[3] = (hitca[7:6] == 0) && vaci[3];
        qa3[3] = (hita[7:6] == 3) && vai[3];
        qa2[3] = (hita[7:6] == 2) && vai[3];
        qa1[3] = (hita[7:6] == 1) && vai[3];
        qa0[3] = (hita[7:6] == 0) && vai[3];
        qca3[4] = (hitca[9:8] == 3) && vaci[4];
        qca2[4] = (hitca[9:8] == 2) && vaci[4];
        qca1[4] = (hitca[9:8] == 1) && vaci[4];
        qca0[4] = (hitca[9:8] == 0) && vaci[4];
        qa3[4] = (hita[9:8] == 3) && vai[4];
        qa2[4] = (hita[9:8] == 2) && vai[4];
        qa1[4] = (hita[9:8] == 1) && vai[4];
        qa0[4] = (hita[9:8] == 0) && vai[4];
        qca3[5] = (hitca[11:10] == 3) && vaci[5];
        qca2[5] = (hitca[11:10] == 2) && vaci[5];
        qca1[5] = (hitca[11:10] == 1) && vaci[5];
        qca0[5] = (hitca[11:10] == 0) && vaci[5];
        qa3[5] = (hita[11:10] == 3) && vai[5];
        qa2[5] = (hita[11:10] == 2) && vai[5];
        qa1[5] = (hita[11:10] == 1) && vai[5];
        qa0[5] = (hita[11:10] == 0) && vai[5];
        qca3[6] = (hitca[13:12] == 3) && vaci[6];
        qca2[6] = (hitca[13:12] == 2) && vaci[6];
        qca1[6] = (hitca[13:12] == 1) && vaci[6];
        qca0[6] = (hitca[13:12] == 0) && vaci[6];
        qa3[6] = (hita[13:12] == 3) && vai[6];
        qa2[6] = (hita[13:12] == 2) && vai[6];
        qa1[6] = (hita[13:12] == 1) && vai[6];
        qa0[6] = (hita[13:12] == 0) && vai[6];
        qca3[7] = (hitca[15:14] == 3) && vaci[7];
        qca2[7] = (hitca[15:14] == 2) && vaci[7];
        qca1[7] = (hitca[15:14] == 1) && vaci[7];
        qca0[7] = (hitca[15:14] == 0) && vaci[7];
        qa3[7] = (hita[15:14] == 3) && vai[7];
        qa2[7] = (hita[15:14] == 2) && vai[7];
        qa1[7] = (hita[15:14] == 1) && vai[7];
        qa0[7] = (hita[15:14] == 0) && vai[7];
        qca3[8] = (hitca[17:16] == 3) && vaci[8];
        qca2[8] = (hitca[17:16] == 2) && vaci[8];
        qca1[8] = (hitca[17:16] == 1) && vaci[8];
        qca0[8] = (hitca[17:16] == 0) && vaci[8];
        qa3[8] = (hita[17:16] == 3) && vai[8];
        qa2[8] = (hita[17:16] == 2) && vai[8];
        qa1[8] = (hita[17:16] == 1) && vai[8];
        qa0[8] = (hita[17:16] == 0) && vai[8];
        qca3[9] = (hitca[19:18] == 3) && vaci[9];
        qca2[9] = (hitca[19:18] == 2) && vaci[9];
        qca1[9] = (hitca[19:18] == 1) && vaci[9];
        qca0[9] = (hitca[19:18] == 0) && vaci[9];
        qa3[9] = (hita[19:18] == 3) && vai[9];
        qa2[9] = (hita[19:18] == 2) && vai[9];
        qa1[9] = (hita[19:18] == 1) && vai[9];
        qa0[9] = (hita[19:18] == 0) && vai[9];
        qca3[10] = (hitca[21:20] == 3) && vaci[10];
        qca2[10] = (hitca[21:20] == 2) && vaci[10];
        qca1[10] = (hitca[21:20] == 1) && vaci[10];
        qca0[10] = (hitca[21:20] == 0) && vaci[10];
        qa3[10] = (hita[21:20] == 3) && vai[10];
        qa2[10] = (hita[21:20] == 2) && vai[10];
        qa1[10] = (hita[21:20] == 1) && vai[10];
        qa0[10] = (hita[21:20] == 0) && vai[10];
        qca3[11] = (hitca[23:22] == 3) && vaci[11];
        qca2[11] = (hitca[23:22] == 2) && vaci[11];
        qca1[11] = (hitca[23:22] == 1) && vaci[11];
        qca0[11] = (hitca[23:22] == 0) && vaci[11];
        qa3[11] = (hita[23:22] == 3) && vai[11];
        qa2[11] = (hita[23:22] == 2) && vai[11];
        qa1[11] = (hita[23:22] == 1) && vai[11];
        qa0[11] = (hita[23:22] == 0) && vai[11];
        qca3[12] = (hitca[25:24] == 3) && vaci[12];
        qca2[12] = (hitca[25:24] == 2) && vaci[12];
        qca1[12] = (hitca[25:24] == 1) && vaci[12];
        qca0[12] = (hitca[25:24] == 0) && vaci[12];
        qa3[12] = (hita[25:24] == 3) && vai[12];
        qa2[12] = (hita[25:24] == 2) && vai[12];
        qa1[12] = (hita[25:24] == 1) && vai[12];
        qa0[12] = (hita[25:24] == 0) && vai[12];
        qca3[13] = (hitca[27:26] == 3) && vaci[13];
        qca2[13] = (hitca[27:26] == 2) && vaci[13];
        qca1[13] = (hitca[27:26] == 1) && vaci[13];
        qca0[13] = (hitca[27:26] == 0) && vaci[13];
        qa3[13] = (hita[27:26] == 3) && vai[13];
        qa2[13] = (hita[27:26] == 2) && vai[13];
        qa1[13] = (hita[27:26] == 1) && vai[13];
        qa0[13] = (hita[27:26] == 0) && vai[13];
        qca3[14] = (hitca[29:28] == 3) && vaci[14];
        qca2[14] = (hitca[29:28] == 2) && vaci[14];
        qca1[14] = (hitca[29:28] == 1) && vaci[14];
        qca0[14] = (hitca[29:28] == 0) && vaci[14];
        qa3[14] = (hita[29:28] == 3) && vai[14];
        qa2[14] = (hita[29:28] == 2) && vai[14];
        qa1[14] = (hita[29:28] == 1) && vai[14];
        qa0[14] = (hita[29:28] == 0) && vai[14];
        qca3[15] = (hitca[31:30] == 3) && vaci[15];
        qca2[15] = (hitca[31:30] == 2) && vaci[15];
        qca1[15] = (hitca[31:30] == 1) && vaci[15];
        qca0[15] = (hitca[31:30] == 0) && vaci[15];
        qa3[15] = (hita[31:30] == 3) && vai[15];
        qa2[15] = (hita[31:30] == 2) && vai[15];
        qa1[15] = (hita[31:30] == 1) && vai[15];
        qa0[15] = (hita[31:30] == 0) && vai[15];
        qca3[16] = (hitca[33:32] == 3) && vaci[16];
        qca2[16] = (hitca[33:32] == 2) && vaci[16];
        qca1[16] = (hitca[33:32] == 1) && vaci[16];
        qca0[16] = (hitca[33:32] == 0) && vaci[16];
        qa3[16] = (hita[33:32] == 3) && vai[16];
        qa2[16] = (hita[33:32] == 2) && vai[16];
        qa1[16] = (hita[33:32] == 1) && vai[16];
        qa0[16] = (hita[33:32] == 0) && vai[16];
        qca3[17] = (hitca[35:34] == 3) && vaci[17];
        qca2[17] = (hitca[35:34] == 2) && vaci[17];
        qca1[17] = (hitca[35:34] == 1) && vaci[17];
        qca0[17] = (hitca[35:34] == 0) && vaci[17];
        qa3[17] = (hita[35:34] == 3) && vai[17];
        qa2[17] = (hita[35:34] == 2) && vai[17];
        qa1[17] = (hita[35:34] == 1) && vai[17];
        qa0[17] = (hita[35:34] == 0) && vai[17];
        qca3[18] = (hitca[37:36] == 3) && vaci[18];
        qca2[18] = (hitca[37:36] == 2) && vaci[18];
        qca1[18] = (hitca[37:36] == 1) && vaci[18];
        qca0[18] = (hitca[37:36] == 0) && vaci[18];
        qa3[18] = (hita[37:36] == 3) && vai[18];
        qa2[18] = (hita[37:36] == 2) && vai[18];
        qa1[18] = (hita[37:36] == 1) && vai[18];
        qa0[18] = (hita[37:36] == 0) && vai[18];
        qca3[19] = (hitca[39:38] == 3) && vaci[19];
        qca2[19] = (hitca[39:38] == 2) && vaci[19];
        qca1[19] = (hitca[39:38] == 1) && vaci[19];
        qca0[19] = (hitca[39:38] == 0) && vaci[19];
        qa3[19] = (hita[39:38] == 3) && vai[19];
        qa2[19] = (hita[39:38] == 2) && vai[19];
        qa1[19] = (hita[39:38] == 1) && vai[19];
        qa0[19] = (hita[39:38] == 0) && vai[19];
        qca3[20] = (hitca[41:40] == 3) && vaci[20];
        qca2[20] = (hitca[41:40] == 2) && vaci[20];
        qca1[20] = (hitca[41:40] == 1) && vaci[20];
        qca0[20] = (hitca[41:40] == 0) && vaci[20];
        qa3[20] = (hita[41:40] == 3) && vai[20];
        qa2[20] = (hita[41:40] == 2) && vai[20];
        qa1[20] = (hita[41:40] == 1) && vai[20];
        qa0[20] = (hita[41:40] == 0) && vai[20];
        qca3[21] = (hitca[43:42] == 3) && vaci[21];
        qca2[21] = (hitca[43:42] == 2) && vaci[21];
        qca1[21] = (hitca[43:42] == 1) && vaci[21];
        qca0[21] = (hitca[43:42] == 0) && vaci[21];
        qa3[21] = (hita[43:42] == 3) && vai[21];
        qa2[21] = (hita[43:42] == 2) && vai[21];
        qa1[21] = (hita[43:42] == 1) && vai[21];
        qa0[21] = (hita[43:42] == 0) && vai[21];
        qca3[22] = (hitca[45:44] == 3) && vaci[22];
        qca2[22] = (hitca[45:44] == 2) && vaci[22];
        qca1[22] = (hitca[45:44] == 1) && vaci[22];
        qca0[22] = (hitca[45:44] == 0) && vaci[22];
        qa3[22] = (hita[45:44] == 3) && vai[22];
        qa2[22] = (hita[45:44] == 2) && vai[22];
        qa1[22] = (hita[45:44] == 1) && vai[22];
        qa0[22] = (hita[45:44] == 0) && vai[22];
        qca3[23] = (hitca[47:46] == 3) && vaci[23];
        qca2[23] = (hitca[47:46] == 2) && vaci[23];
        qca1[23] = (hitca[47:46] == 1) && vaci[23];
        qca0[23] = (hitca[47:46] == 0) && vaci[23];
        qa3[23] = (hita[47:46] == 3) && vai[23];
        qa2[23] = (hita[47:46] == 2) && vai[23];
        qa1[23] = (hita[47:46] == 1) && vai[23];
        qa0[23] = (hita[47:46] == 0) && vai[23];
        qca3[24] = (hitca[49:48] == 3) && vaci[24];
        qca2[24] = (hitca[49:48] == 2) && vaci[24];
        qca1[24] = (hitca[49:48] == 1) && vaci[24];
        qca0[24] = (hitca[49:48] == 0) && vaci[24];
        qa3[24] = (hita[49:48] == 3) && vai[24];
        qa2[24] = (hita[49:48] == 2) && vai[24];
        qa1[24] = (hita[49:48] == 1) && vai[24];
        qa0[24] = (hita[49:48] == 0) && vai[24];
        qca3[25] = (hitca[51:50] == 3) && vaci[25];
        qca2[25] = (hitca[51:50] == 2) && vaci[25];
        qca1[25] = (hitca[51:50] == 1) && vaci[25];
        qca0[25] = (hitca[51:50] == 0) && vaci[25];
        qa3[25] = (hita[51:50] == 3) && vai[25];
        qa2[25] = (hita[51:50] == 2) && vai[25];
        qa1[25] = (hita[51:50] == 1) && vai[25];
        qa0[25] = (hita[51:50] == 0) && vai[25];
        qca3[26] = (hitca[53:52] == 3) && vaci[26];
        qca2[26] = (hitca[53:52] == 2) && vaci[26];
        qca1[26] = (hitca[53:52] == 1) && vaci[26];
        qca0[26] = (hitca[53:52] == 0) && vaci[26];
        qa3[26] = (hita[53:52] == 3) && vai[26];
        qa2[26] = (hita[53:52] == 2) && vai[26];
        qa1[26] = (hita[53:52] == 1) && vai[26];
        qa0[26] = (hita[53:52] == 0) && vai[26];
        qca3[27] = (hitca[55:54] == 3) && vaci[27];
        qca2[27] = (hitca[55:54] == 2) && vaci[27];
        qca1[27] = (hitca[55:54] == 1) && vaci[27];
        qca0[27] = (hitca[55:54] == 0) && vaci[27];
        qa3[27] = (hita[55:54] == 3) && vai[27];
        qa2[27] = (hita[55:54] == 2) && vai[27];
        qa1[27] = (hita[55:54] == 1) && vai[27];
        qa0[27] = (hita[55:54] == 0) && vai[27];
        qca3[28] = (hitca[57:56] == 3) && vaci[28];
        qca2[28] = (hitca[57:56] == 2) && vaci[28];
        qca1[28] = (hitca[57:56] == 1) && vaci[28];
        qca0[28] = (hitca[57:56] == 0) && vaci[28];
        qa3[28] = (hita[57:56] == 3) && vai[28];
        qa2[28] = (hita[57:56] == 2) && vai[28];
        qa1[28] = (hita[57:56] == 1) && vai[28];
        qa0[28] = (hita[57:56] == 0) && vai[28];
        qca3[29] = (hitca[59:58] == 3) && vaci[29];
        qca2[29] = (hitca[59:58] == 2) && vaci[29];
        qca1[29] = (hitca[59:58] == 1) && vaci[29];
        qca0[29] = (hitca[59:58] == 0) && vaci[29];
        qa3[29] = (hita[59:58] == 3) && vai[29];
        qa2[29] = (hita[59:58] == 2) && vai[29];
        qa1[29] = (hita[59:58] == 1) && vai[29];
        qa0[29] = (hita[59:58] == 0) && vai[29];
        qca3[30] = (hitca[61:60] == 3) && vaci[30];
        qca2[30] = (hitca[61:60] == 2) && vaci[30];
        qca1[30] = (hitca[61:60] == 1) && vaci[30];
        qca0[30] = (hitca[61:60] == 0) && vaci[30];
        qa3[30] = (hita[61:60] == 3) && vai[30];
        qa2[30] = (hita[61:60] == 2) && vai[30];
        qa1[30] = (hita[61:60] == 1) && vai[30];
        qa0[30] = (hita[61:60] == 0) && vai[30];
        qca3[31] = (hitca[63:62] == 3) && vaci[31];
        qca2[31] = (hitca[63:62] == 2) && vaci[31];
        qca1[31] = (hitca[63:62] == 1) && vaci[31];
        qca0[31] = (hitca[63:62] == 0) && vaci[31];
        qa3[31] = (hita[63:62] == 3) && vai[31];
        qa2[31] = (hita[63:62] == 2) && vai[31];
        qa1[31] = (hita[63:62] == 1) && vai[31];
        qa0[31] = (hita[63:62] == 0) && vai[31];
        qca3[32] = (hitca[65:64] == 3) && vaci[32];
        qca2[32] = (hitca[65:64] == 2) && vaci[32];
        qca1[32] = (hitca[65:64] == 1) && vaci[32];
        qca0[32] = (hitca[65:64] == 0) && vaci[32];
        qa3[32] = (hita[65:64] == 3) && vai[32];
        qa2[32] = (hita[65:64] == 2) && vai[32];
        qa1[32] = (hita[65:64] == 1) && vai[32];
        qa0[32] = (hita[65:64] == 0) && vai[32];
        qca3[33] = (hitca[67:66] == 3) && vaci[33];
        qca2[33] = (hitca[67:66] == 2) && vaci[33];
        qca1[33] = (hitca[67:66] == 1) && vaci[33];
        qca0[33] = (hitca[67:66] == 0) && vaci[33];
        qa3[33] = (hita[67:66] == 3) && vai[33];
        qa2[33] = (hita[67:66] == 2) && vai[33];
        qa1[33] = (hita[67:66] == 1) && vai[33];
        qa0[33] = (hita[67:66] == 0) && vai[33];
        qca3[34] = (hitca[69:68] == 3) && vaci[34];
        qca2[34] = (hitca[69:68] == 2) && vaci[34];
        qca1[34] = (hitca[69:68] == 1) && vaci[34];
        qca0[34] = (hitca[69:68] == 0) && vaci[34];
        qa3[34] = (hita[69:68] == 3) && vai[34];
        qa2[34] = (hita[69:68] == 2) && vai[34];
        qa1[34] = (hita[69:68] == 1) && vai[34];
        qa0[34] = (hita[69:68] == 0) && vai[34];
        qca3[35] = (hitca[71:70] == 3) && vaci[35];
        qca2[35] = (hitca[71:70] == 2) && vaci[35];
        qca1[35] = (hitca[71:70] == 1) && vaci[35];
        qca0[35] = (hitca[71:70] == 0) && vaci[35];
        qa3[35] = (hita[71:70] == 3) && vai[35];
        qa2[35] = (hita[71:70] == 2) && vai[35];
        qa1[35] = (hita[71:70] == 1) && vai[35];
        qa0[35] = (hita[71:70] == 0) && vai[35];
        qca3[36] = (hitca[73:72] == 3) && vaci[36];
        qca2[36] = (hitca[73:72] == 2) && vaci[36];
        qca1[36] = (hitca[73:72] == 1) && vaci[36];
        qca0[36] = (hitca[73:72] == 0) && vaci[36];
        qa3[36] = (hita[73:72] == 3) && vai[36];
        qa2[36] = (hita[73:72] == 2) && vai[36];
        qa1[36] = (hita[73:72] == 1) && vai[36];
        qa0[36] = (hita[73:72] == 0) && vai[36];
        qca3[37] = (hitca[75:74] == 3) && vaci[37];
        qca2[37] = (hitca[75:74] == 2) && vaci[37];
        qca1[37] = (hitca[75:74] == 1) && vaci[37];
        qca0[37] = (hitca[75:74] == 0) && vaci[37];
        qa3[37] = (hita[75:74] == 3) && vai[37];
        qa2[37] = (hita[75:74] == 2) && vai[37];
        qa1[37] = (hita[75:74] == 1) && vai[37];
        qa0[37] = (hita[75:74] == 0) && vai[37];
        qca3[38] = (hitca[77:76] == 3) && vaci[38];
        qca2[38] = (hitca[77:76] == 2) && vaci[38];
        qca1[38] = (hitca[77:76] == 1) && vaci[38];
        qca0[38] = (hitca[77:76] == 0) && vaci[38];
        qa3[38] = (hita[77:76] == 3) && vai[38];
        qa2[38] = (hita[77:76] == 2) && vai[38];
        qa1[38] = (hita[77:76] == 1) && vai[38];
        qa0[38] = (hita[77:76] == 0) && vai[38];
        qca3[39] = (hitca[79:78] == 3) && vaci[39];
        qca2[39] = (hitca[79:78] == 2) && vaci[39];
        qca1[39] = (hitca[79:78] == 1) && vaci[39];
        qca0[39] = (hitca[79:78] == 0) && vaci[39];
        qa3[39] = (hita[79:78] == 3) && vai[39];
        qa2[39] = (hita[79:78] == 2) && vai[39];
        qa1[39] = (hita[79:78] == 1) && vai[39];
        qa0[39] = (hita[79:78] == 0) && vai[39];
        qca3[40] = (hitca[81:80] == 3) && vaci[40];
        qca2[40] = (hitca[81:80] == 2) && vaci[40];
        qca1[40] = (hitca[81:80] == 1) && vaci[40];
        qca0[40] = (hitca[81:80] == 0) && vaci[40];
        qa3[40] = (hita[81:80] == 3) && vai[40];
        qa2[40] = (hita[81:80] == 2) && vai[40];
        qa1[40] = (hita[81:80] == 1) && vai[40];
        qa0[40] = (hita[81:80] == 0) && vai[40];
        qca3[41] = (hitca[83:82] == 3) && vaci[41];
        qca2[41] = (hitca[83:82] == 2) && vaci[41];
        qca1[41] = (hitca[83:82] == 1) && vaci[41];
        qca0[41] = (hitca[83:82] == 0) && vaci[41];
        qa3[41] = (hita[83:82] == 3) && vai[41];
        qa2[41] = (hita[83:82] == 2) && vai[41];
        qa1[41] = (hita[83:82] == 1) && vai[41];
        qa0[41] = (hita[83:82] == 0) && vai[41];
        qca3[42] = (hitca[85:84] == 3) && vaci[42];
        qca2[42] = (hitca[85:84] == 2) && vaci[42];
        qca1[42] = (hitca[85:84] == 1) && vaci[42];
        qca0[42] = (hitca[85:84] == 0) && vaci[42];
        qa3[42] = (hita[85:84] == 3) && vai[42];
        qa2[42] = (hita[85:84] == 2) && vai[42];
        qa1[42] = (hita[85:84] == 1) && vai[42];
        qa0[42] = (hita[85:84] == 0) && vai[42];
        qca3[43] = (hitca[87:86] == 3) && vaci[43];
        qca2[43] = (hitca[87:86] == 2) && vaci[43];
        qca1[43] = (hitca[87:86] == 1) && vaci[43];
        qca0[43] = (hitca[87:86] == 0) && vaci[43];
        qa3[43] = (hita[87:86] == 3) && vai[43];
        qa2[43] = (hita[87:86] == 2) && vai[43];
        qa1[43] = (hita[87:86] == 1) && vai[43];
        qa0[43] = (hita[87:86] == 0) && vai[43];
        qca3[44] = (hitca[89:88] == 3) && vaci[44];
        qca2[44] = (hitca[89:88] == 2) && vaci[44];
        qca1[44] = (hitca[89:88] == 1) && vaci[44];
        qca0[44] = (hitca[89:88] == 0) && vaci[44];
        qa3[44] = (hita[89:88] == 3) && vai[44];
        qa2[44] = (hita[89:88] == 2) && vai[44];
        qa1[44] = (hita[89:88] == 1) && vai[44];
        qa0[44] = (hita[89:88] == 0) && vai[44];
        qca3[45] = (hitca[91:90] == 3) && vaci[45];
        qca2[45] = (hitca[91:90] == 2) && vaci[45];
        qca1[45] = (hitca[91:90] == 1) && vaci[45];
        qca0[45] = (hitca[91:90] == 0) && vaci[45];
        qa3[45] = (hita[91:90] == 3) && vai[45];
        qa2[45] = (hita[91:90] == 2) && vai[45];
        qa1[45] = (hita[91:90] == 1) && vai[45];
        qa0[45] = (hita[91:90] == 0) && vai[45];
        qca3[46] = (hitca[93:92] == 3) && vaci[46];
        qca2[46] = (hitca[93:92] == 2) && vaci[46];
        qca1[46] = (hitca[93:92] == 1) && vaci[46];
        qca0[46] = (hitca[93:92] == 0) && vaci[46];
        qa3[46] = (hita[93:92] == 3) && vai[46];
        qa2[46] = (hita[93:92] == 2) && vai[46];
        qa1[46] = (hita[93:92] == 1) && vai[46];
        qa0[46] = (hita[93:92] == 0) && vai[46];
        qca3[47] = (hitca[95:94] == 3) && vaci[47];
        qca2[47] = (hitca[95:94] == 2) && vaci[47];
        qca1[47] = (hitca[95:94] == 1) && vaci[47];
        qca0[47] = (hitca[95:94] == 0) && vaci[47];
        qa3[47] = (hita[95:94] == 3) && vai[47];
        qa2[47] = (hita[95:94] == 2) && vai[47];
        qa1[47] = (hita[95:94] == 1) && vai[47];
        qa0[47] = (hita[95:94] == 0) && vai[47];
        qca3[48] = (hitca[97:96] == 3) && vaci[48];
        qca2[48] = (hitca[97:96] == 2) && vaci[48];
        qca1[48] = (hitca[97:96] == 1) && vaci[48];
        qca0[48] = (hitca[97:96] == 0) && vaci[48];
        qa3[48] = (hita[97:96] == 3) && vai[48];
        qa2[48] = (hita[97:96] == 2) && vai[48];
        qa1[48] = (hita[97:96] == 1) && vai[48];
        qa0[48] = (hita[97:96] == 0) && vai[48];
        qca3[49] = (hitca[99:98] == 3) && vaci[49];
        qca2[49] = (hitca[99:98] == 2) && vaci[49];
        qca1[49] = (hitca[99:98] == 1) && vaci[49];
        qca0[49] = (hitca[99:98] == 0) && vaci[49];
        qa3[49] = (hita[99:98] == 3) && vai[49];
        qa2[49] = (hita[99:98] == 2) && vai[49];
        qa1[49] = (hita[99:98] == 1) && vai[49];
        qa0[49] = (hita[99:98] == 0) && vai[49];
        qca3[50] = (hitca[101:100] == 3) && vaci[50];
        qca2[50] = (hitca[101:100] == 2) && vaci[50];
        qca1[50] = (hitca[101:100] == 1) && vaci[50];
        qca0[50] = (hitca[101:100] == 0) && vaci[50];
        qa3[50] = (hita[101:100] == 3) && vai[50];
        qa2[50] = (hita[101:100] == 2) && vai[50];
        qa1[50] = (hita[101:100] == 1) && vai[50];
        qa0[50] = (hita[101:100] == 0) && vai[50];
        qca3[51] = (hitca[103:102] == 3) && vaci[51];
        qca2[51] = (hitca[103:102] == 2) && vaci[51];
        qca1[51] = (hitca[103:102] == 1) && vaci[51];
        qca0[51] = (hitca[103:102] == 0) && vaci[51];
        qa3[51] = (hita[103:102] == 3) && vai[51];
        qa2[51] = (hita[103:102] == 2) && vai[51];
        qa1[51] = (hita[103:102] == 1) && vai[51];
        qa0[51] = (hita[103:102] == 0) && vai[51];
        qca3[52] = (hitca[105:104] == 3) && vaci[52];
        qca2[52] = (hitca[105:104] == 2) && vaci[52];
        qca1[52] = (hitca[105:104] == 1) && vaci[52];
        qca0[52] = (hitca[105:104] == 0) && vaci[52];
        qa3[52] = (hita[105:104] == 3) && vai[52];
        qa2[52] = (hita[105:104] == 2) && vai[52];
        qa1[52] = (hita[105:104] == 1) && vai[52];
        qa0[52] = (hita[105:104] == 0) && vai[52];
        qca3[53] = (hitca[107:106] == 3) && vaci[53];
        qca2[53] = (hitca[107:106] == 2) && vaci[53];
        qca1[53] = (hitca[107:106] == 1) && vaci[53];
        qca0[53] = (hitca[107:106] == 0) && vaci[53];
        qa3[53] = (hita[107:106] == 3) && vai[53];
        qa2[53] = (hita[107:106] == 2) && vai[53];
        qa1[53] = (hita[107:106] == 1) && vai[53];
        qa0[53] = (hita[107:106] == 0) && vai[53];
        qca3[54] = (hitca[109:108] == 3) && vaci[54];
        qca2[54] = (hitca[109:108] == 2) && vaci[54];
        qca1[54] = (hitca[109:108] == 1) && vaci[54];
        qca0[54] = (hitca[109:108] == 0) && vaci[54];
        qa3[54] = (hita[109:108] == 3) && vai[54];
        qa2[54] = (hita[109:108] == 2) && vai[54];
        qa1[54] = (hita[109:108] == 1) && vai[54];
        qa0[54] = (hita[109:108] == 0) && vai[54];
        qca3[55] = (hitca[111:110] == 3) && vaci[55];
        qca2[55] = (hitca[111:110] == 2) && vaci[55];
        qca1[55] = (hitca[111:110] == 1) && vaci[55];
        qca0[55] = (hitca[111:110] == 0) && vaci[55];
        qa3[55] = (hita[111:110] == 3) && vai[55];
        qa2[55] = (hita[111:110] == 2) && vai[55];
        qa1[55] = (hita[111:110] == 1) && vai[55];
        qa0[55] = (hita[111:110] == 0) && vai[55];
        qca3[56] = (hitca[113:112] == 3) && vaci[56];
        qca2[56] = (hitca[113:112] == 2) && vaci[56];
        qca1[56] = (hitca[113:112] == 1) && vaci[56];
        qca0[56] = (hitca[113:112] == 0) && vaci[56];
        qa3[56] = (hita[113:112] == 3) && vai[56];
        qa2[56] = (hita[113:112] == 2) && vai[56];
        qa1[56] = (hita[113:112] == 1) && vai[56];
        qa0[56] = (hita[113:112] == 0) && vai[56];
        qca3[57] = (hitca[115:114] == 3) && vaci[57];
        qca2[57] = (hitca[115:114] == 2) && vaci[57];
        qca1[57] = (hitca[115:114] == 1) && vaci[57];
        qca0[57] = (hitca[115:114] == 0) && vaci[57];
        qa3[57] = (hita[115:114] == 3) && vai[57];
        qa2[57] = (hita[115:114] == 2) && vai[57];
        qa1[57] = (hita[115:114] == 1) && vai[57];
        qa0[57] = (hita[115:114] == 0) && vai[57];
        qca3[58] = (hitca[117:116] == 3) && vaci[58];
        qca2[58] = (hitca[117:116] == 2) && vaci[58];
        qca1[58] = (hitca[117:116] == 1) && vaci[58];
        qca0[58] = (hitca[117:116] == 0) && vaci[58];
        qa3[58] = (hita[117:116] == 3) && vai[58];
        qa2[58] = (hita[117:116] == 2) && vai[58];
        qa1[58] = (hita[117:116] == 1) && vai[58];
        qa0[58] = (hita[117:116] == 0) && vai[58];
        qca3[59] = (hitca[119:118] == 3) && vaci[59];
        qca2[59] = (hitca[119:118] == 2) && vaci[59];
        qca1[59] = (hitca[119:118] == 1) && vaci[59];
        qca0[59] = (hitca[119:118] == 0) && vaci[59];
        qa3[59] = (hita[119:118] == 3) && vai[59];
        qa2[59] = (hita[119:118] == 2) && vai[59];
        qa1[59] = (hita[119:118] == 1) && vai[59];
        qa0[59] = (hita[119:118] == 0) && vai[59];
        qca3[60] = (hitca[121:120] == 3) && vaci[60];
        qca2[60] = (hitca[121:120] == 2) && vaci[60];
        qca1[60] = (hitca[121:120] == 1) && vaci[60];
        qca0[60] = (hitca[121:120] == 0) && vaci[60];
        qa3[60] = (hita[121:120] == 3) && vai[60];
        qa2[60] = (hita[121:120] == 2) && vai[60];
        qa1[60] = (hita[121:120] == 1) && vai[60];
        qa0[60] = (hita[121:120] == 0) && vai[60];
        qca3[61] = (hitca[123:122] == 3) && vaci[61];
        qca2[61] = (hitca[123:122] == 2) && vaci[61];
        qca1[61] = (hitca[123:122] == 1) && vaci[61];
        qca0[61] = (hitca[123:122] == 0) && vaci[61];
        qa3[61] = (hita[123:122] == 3) && vai[61];
        qa2[61] = (hita[123:122] == 2) && vai[61];
        qa1[61] = (hita[123:122] == 1) && vai[61];
        qa0[61] = (hita[123:122] == 0) && vai[61];
        qca3[62] = (hitca[125:124] == 3) && vaci[62];
        qca2[62] = (hitca[125:124] == 2) && vaci[62];
        qca1[62] = (hitca[125:124] == 1) && vaci[62];
        qca0[62] = (hitca[125:124] == 0) && vaci[62];
        qa3[62] = (hita[125:124] == 3) && vai[62];
        qa2[62] = (hita[125:124] == 2) && vai[62];
        qa1[62] = (hita[125:124] == 1) && vai[62];
        qa0[62] = (hita[125:124] == 0) && vai[62];
        qca3[63] = (hitca[127:126] == 3) && vaci[63];
        qca2[63] = (hitca[127:126] == 2) && vaci[63];
        qca1[63] = (hitca[127:126] == 1) && vaci[63];
        qca0[63] = (hitca[127:126] == 0) && vaci[63];
        qa3[63] = (hita[127:126] == 3) && vai[63];
        qa2[63] = (hita[127:126] == 2) && vai[63];
        qa1[63] = (hita[127:126] == 1) && vai[63];
        qa0[63] = (hita[127:126] == 0) && vai[63];
    end
endmodule
