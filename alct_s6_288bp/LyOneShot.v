// This  Verilog HDL  source  file was  automatically generated
// by C++ model based on VPP library. Modification of this file
// is possible, but if you want to keep it in sync with the C++
// model,  please  modify  the model and re-generate this file.
// VPP library web-page: http://www.phys.ufl.edu/~madorsky/vpp/

// Author    : madorsky
// File name : LyOneShot.v
// Timestamp : Thu Jun 13 12:52:57 2013

module LyOneShot
(
    ly,
    lyr,
    trig_stop,
    clk
);

    input [47:0] ly;
    output [47:0] lyr;
    input trig_stop;
    input clk;

     //this module one-shots the whole layer
    OneShot sh0
    (
        ly[0],
        lyr[0],
        trig_stop,
        clk
    );
    OneShot sh1
    (
        ly[1],
        lyr[1],
        trig_stop,
        clk
    );
    OneShot sh2
    (
        ly[2],
        lyr[2],
        trig_stop,
        clk
    );
    OneShot sh3
    (
        ly[3],
        lyr[3],
        trig_stop,
        clk
    );
    OneShot sh4
    (
        ly[4],
        lyr[4],
        trig_stop,
        clk
    );
    OneShot sh5
    (
        ly[5],
        lyr[5],
        trig_stop,
        clk
    );
    OneShot sh6
    (
        ly[6],
        lyr[6],
        trig_stop,
        clk
    );
    OneShot sh7
    (
        ly[7],
        lyr[7],
        trig_stop,
        clk
    );
    OneShot sh8
    (
        ly[8],
        lyr[8],
        trig_stop,
        clk
    );
    OneShot sh9
    (
        ly[9],
        lyr[9],
        trig_stop,
        clk
    );
    OneShot sh10
    (
        ly[10],
        lyr[10],
        trig_stop,
        clk
    );
    OneShot sh11
    (
        ly[11],
        lyr[11],
        trig_stop,
        clk
    );
    OneShot sh12
    (
        ly[12],
        lyr[12],
        trig_stop,
        clk
    );
    OneShot sh13
    (
        ly[13],
        lyr[13],
        trig_stop,
        clk
    );
    OneShot sh14
    (
        ly[14],
        lyr[14],
        trig_stop,
        clk
    );
    OneShot sh15
    (
        ly[15],
        lyr[15],
        trig_stop,
        clk
    );
    OneShot sh16
    (
        ly[16],
        lyr[16],
        trig_stop,
        clk
    );
    OneShot sh17
    (
        ly[17],
        lyr[17],
        trig_stop,
        clk
    );
    OneShot sh18
    (
        ly[18],
        lyr[18],
        trig_stop,
        clk
    );
    OneShot sh19
    (
        ly[19],
        lyr[19],
        trig_stop,
        clk
    );
    OneShot sh20
    (
        ly[20],
        lyr[20],
        trig_stop,
        clk
    );
    OneShot sh21
    (
        ly[21],
        lyr[21],
        trig_stop,
        clk
    );
    OneShot sh22
    (
        ly[22],
        lyr[22],
        trig_stop,
        clk
    );
    OneShot sh23
    (
        ly[23],
        lyr[23],
        trig_stop,
        clk
    );
    OneShot sh24
    (
        ly[24],
        lyr[24],
        trig_stop,
        clk
    );
    OneShot sh25
    (
        ly[25],
        lyr[25],
        trig_stop,
        clk
    );
    OneShot sh26
    (
        ly[26],
        lyr[26],
        trig_stop,
        clk
    );
    OneShot sh27
    (
        ly[27],
        lyr[27],
        trig_stop,
        clk
    );
    OneShot sh28
    (
        ly[28],
        lyr[28],
        trig_stop,
        clk
    );
    OneShot sh29
    (
        ly[29],
        lyr[29],
        trig_stop,
        clk
    );
    OneShot sh30
    (
        ly[30],
        lyr[30],
        trig_stop,
        clk
    );
    OneShot sh31
    (
        ly[31],
        lyr[31],
        trig_stop,
        clk
    );
    OneShot sh32
    (
        ly[32],
        lyr[32],
        trig_stop,
        clk
    );
    OneShot sh33
    (
        ly[33],
        lyr[33],
        trig_stop,
        clk
    );
    OneShot sh34
    (
        ly[34],
        lyr[34],
        trig_stop,
        clk
    );
    OneShot sh35
    (
        ly[35],
        lyr[35],
        trig_stop,
        clk
    );
    OneShot sh36
    (
        ly[36],
        lyr[36],
        trig_stop,
        clk
    );
    OneShot sh37
    (
        ly[37],
        lyr[37],
        trig_stop,
        clk
    );
    OneShot sh38
    (
        ly[38],
        lyr[38],
        trig_stop,
        clk
    );
    OneShot sh39
    (
        ly[39],
        lyr[39],
        trig_stop,
        clk
    );
    OneShot sh40
    (
        ly[40],
        lyr[40],
        trig_stop,
        clk
    );
    OneShot sh41
    (
        ly[41],
        lyr[41],
        trig_stop,
        clk
    );
    OneShot sh42
    (
        ly[42],
        lyr[42],
        trig_stop,
        clk
    );
    OneShot sh43
    (
        ly[43],
        lyr[43],
        trig_stop,
        clk
    );
    OneShot sh44
    (
        ly[44],
        lyr[44],
        trig_stop,
        clk
    );
    OneShot sh45
    (
        ly[45],
        lyr[45],
        trig_stop,
        clk
    );
    OneShot sh46
    (
        ly[46],
        lyr[46],
        trig_stop,
        clk
    );
    OneShot sh47
    (
        ly[47],
        lyr[47],
        trig_stop,
        clk
    );
endmodule
