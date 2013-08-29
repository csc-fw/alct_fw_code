// This  Verilog HDL  source  file was  automatically generated
// by C++ model based on VPP library. Modification of this file
// is possible, but if you want to keep it in sync with the C++
// model,  please  modify  the model and re-generate this file.
// VPP library web-page: http://www.phys.ufl.edu/~madorsky/vpp/

// Author    : madorsky
// File name : collider.v
// Timestamp : Mon Aug  6 09:12:31 2012

module collider
(
    qp0,
    qp1,
    qp2,
    qp3,
    w1,
    w2,
    q1,
    q2,
    v1,
    v2,
    clk
);

    input [47:0] qp0;
    input [47:0] qp1;
    input [47:0] qp2;
    input [47:0] qp3;
    output [6:0] w1;
    reg    [6:0] w1;
    output [6:0] w2;
    reg    [6:0] w2;
    output [1:0] q1;
    reg    [1:0] q1;
    output [1:0] q2;
    reg    [1:0] q2;
    output v1;
    reg    v1;
    output v2;
    reg    v2;
    input clk;

    reg [6:0] n3_1;
    reg [6:0] n3_2;
    reg [6:0] n2_1;
    reg [6:0] n2_2;
    reg [6:0] n1_1;
    reg [6:0] n1_2;
    reg [6:0] n0_1;
    reg [6:0] n0_2;
    always @(qp0 or qp1 or qp2 or qp3) 
    begin
        n3_1 = 7'h7f;
        n2_1 = 7'h7f;
        n1_1 = 7'h7f;
        n0_1 = 7'h7f;
        if (qp3[0]) n3_1 = 0;
        if (qp2[0]) n2_1 = 0;
        if (qp1[0]) n1_1 = 0;
        if (qp0[0]) n0_1 = 0;
        if (qp3[1]) n3_1 = 1;
        if (qp2[1]) n2_1 = 1;
        if (qp1[1]) n1_1 = 1;
        if (qp0[1]) n0_1 = 1;
        if (qp3[2]) n3_1 = 2;
        if (qp2[2]) n2_1 = 2;
        if (qp1[2]) n1_1 = 2;
        if (qp0[2]) n0_1 = 2;
        if (qp3[3]) n3_1 = 3;
        if (qp2[3]) n2_1 = 3;
        if (qp1[3]) n1_1 = 3;
        if (qp0[3]) n0_1 = 3;
        if (qp3[4]) n3_1 = 4;
        if (qp2[4]) n2_1 = 4;
        if (qp1[4]) n1_1 = 4;
        if (qp0[4]) n0_1 = 4;
        if (qp3[5]) n3_1 = 5;
        if (qp2[5]) n2_1 = 5;
        if (qp1[5]) n1_1 = 5;
        if (qp0[5]) n0_1 = 5;
        if (qp3[6]) n3_1 = 6;
        if (qp2[6]) n2_1 = 6;
        if (qp1[6]) n1_1 = 6;
        if (qp0[6]) n0_1 = 6;
        if (qp3[7]) n3_1 = 7;
        if (qp2[7]) n2_1 = 7;
        if (qp1[7]) n1_1 = 7;
        if (qp0[7]) n0_1 = 7;
        if (qp3[8]) n3_1 = 8;
        if (qp2[8]) n2_1 = 8;
        if (qp1[8]) n1_1 = 8;
        if (qp0[8]) n0_1 = 8;
        if (qp3[9]) n3_1 = 9;
        if (qp2[9]) n2_1 = 9;
        if (qp1[9]) n1_1 = 9;
        if (qp0[9]) n0_1 = 9;
        if (qp3[10]) n3_1 = 10;
        if (qp2[10]) n2_1 = 10;
        if (qp1[10]) n1_1 = 10;
        if (qp0[10]) n0_1 = 10;
        if (qp3[11]) n3_1 = 11;
        if (qp2[11]) n2_1 = 11;
        if (qp1[11]) n1_1 = 11;
        if (qp0[11]) n0_1 = 11;
        if (qp3[12]) n3_1 = 12;
        if (qp2[12]) n2_1 = 12;
        if (qp1[12]) n1_1 = 12;
        if (qp0[12]) n0_1 = 12;
        if (qp3[13]) n3_1 = 13;
        if (qp2[13]) n2_1 = 13;
        if (qp1[13]) n1_1 = 13;
        if (qp0[13]) n0_1 = 13;
        if (qp3[14]) n3_1 = 14;
        if (qp2[14]) n2_1 = 14;
        if (qp1[14]) n1_1 = 14;
        if (qp0[14]) n0_1 = 14;
        if (qp3[15]) n3_1 = 15;
        if (qp2[15]) n2_1 = 15;
        if (qp1[15]) n1_1 = 15;
        if (qp0[15]) n0_1 = 15;
        if (qp3[16]) n3_1 = 16;
        if (qp2[16]) n2_1 = 16;
        if (qp1[16]) n1_1 = 16;
        if (qp0[16]) n0_1 = 16;
        if (qp3[17]) n3_1 = 17;
        if (qp2[17]) n2_1 = 17;
        if (qp1[17]) n1_1 = 17;
        if (qp0[17]) n0_1 = 17;
        if (qp3[18]) n3_1 = 18;
        if (qp2[18]) n2_1 = 18;
        if (qp1[18]) n1_1 = 18;
        if (qp0[18]) n0_1 = 18;
        if (qp3[19]) n3_1 = 19;
        if (qp2[19]) n2_1 = 19;
        if (qp1[19]) n1_1 = 19;
        if (qp0[19]) n0_1 = 19;
        if (qp3[20]) n3_1 = 20;
        if (qp2[20]) n2_1 = 20;
        if (qp1[20]) n1_1 = 20;
        if (qp0[20]) n0_1 = 20;
        if (qp3[21]) n3_1 = 21;
        if (qp2[21]) n2_1 = 21;
        if (qp1[21]) n1_1 = 21;
        if (qp0[21]) n0_1 = 21;
        if (qp3[22]) n3_1 = 22;
        if (qp2[22]) n2_1 = 22;
        if (qp1[22]) n1_1 = 22;
        if (qp0[22]) n0_1 = 22;
        if (qp3[23]) n3_1 = 23;
        if (qp2[23]) n2_1 = 23;
        if (qp1[23]) n1_1 = 23;
        if (qp0[23]) n0_1 = 23;
        if (qp3[24]) n3_1 = 24;
        if (qp2[24]) n2_1 = 24;
        if (qp1[24]) n1_1 = 24;
        if (qp0[24]) n0_1 = 24;
        if (qp3[25]) n3_1 = 25;
        if (qp2[25]) n2_1 = 25;
        if (qp1[25]) n1_1 = 25;
        if (qp0[25]) n0_1 = 25;
        if (qp3[26]) n3_1 = 26;
        if (qp2[26]) n2_1 = 26;
        if (qp1[26]) n1_1 = 26;
        if (qp0[26]) n0_1 = 26;
        if (qp3[27]) n3_1 = 27;
        if (qp2[27]) n2_1 = 27;
        if (qp1[27]) n1_1 = 27;
        if (qp0[27]) n0_1 = 27;
        if (qp3[28]) n3_1 = 28;
        if (qp2[28]) n2_1 = 28;
        if (qp1[28]) n1_1 = 28;
        if (qp0[28]) n0_1 = 28;
        if (qp3[29]) n3_1 = 29;
        if (qp2[29]) n2_1 = 29;
        if (qp1[29]) n1_1 = 29;
        if (qp0[29]) n0_1 = 29;
        if (qp3[30]) n3_1 = 30;
        if (qp2[30]) n2_1 = 30;
        if (qp1[30]) n1_1 = 30;
        if (qp0[30]) n0_1 = 30;
        if (qp3[31]) n3_1 = 31;
        if (qp2[31]) n2_1 = 31;
        if (qp1[31]) n1_1 = 31;
        if (qp0[31]) n0_1 = 31;
        if (qp3[32]) n3_1 = 32;
        if (qp2[32]) n2_1 = 32;
        if (qp1[32]) n1_1 = 32;
        if (qp0[32]) n0_1 = 32;
        if (qp3[33]) n3_1 = 33;
        if (qp2[33]) n2_1 = 33;
        if (qp1[33]) n1_1 = 33;
        if (qp0[33]) n0_1 = 33;
        if (qp3[34]) n3_1 = 34;
        if (qp2[34]) n2_1 = 34;
        if (qp1[34]) n1_1 = 34;
        if (qp0[34]) n0_1 = 34;
        if (qp3[35]) n3_1 = 35;
        if (qp2[35]) n2_1 = 35;
        if (qp1[35]) n1_1 = 35;
        if (qp0[35]) n0_1 = 35;
        if (qp3[36]) n3_1 = 36;
        if (qp2[36]) n2_1 = 36;
        if (qp1[36]) n1_1 = 36;
        if (qp0[36]) n0_1 = 36;
        if (qp3[37]) n3_1 = 37;
        if (qp2[37]) n2_1 = 37;
        if (qp1[37]) n1_1 = 37;
        if (qp0[37]) n0_1 = 37;
        if (qp3[38]) n3_1 = 38;
        if (qp2[38]) n2_1 = 38;
        if (qp1[38]) n1_1 = 38;
        if (qp0[38]) n0_1 = 38;
        if (qp3[39]) n3_1 = 39;
        if (qp2[39]) n2_1 = 39;
        if (qp1[39]) n1_1 = 39;
        if (qp0[39]) n0_1 = 39;
        if (qp3[40]) n3_1 = 40;
        if (qp2[40]) n2_1 = 40;
        if (qp1[40]) n1_1 = 40;
        if (qp0[40]) n0_1 = 40;
        if (qp3[41]) n3_1 = 41;
        if (qp2[41]) n2_1 = 41;
        if (qp1[41]) n1_1 = 41;
        if (qp0[41]) n0_1 = 41;
        if (qp3[42]) n3_1 = 42;
        if (qp2[42]) n2_1 = 42;
        if (qp1[42]) n1_1 = 42;
        if (qp0[42]) n0_1 = 42;
        if (qp3[43]) n3_1 = 43;
        if (qp2[43]) n2_1 = 43;
        if (qp1[43]) n1_1 = 43;
        if (qp0[43]) n0_1 = 43;
        if (qp3[44]) n3_1 = 44;
        if (qp2[44]) n2_1 = 44;
        if (qp1[44]) n1_1 = 44;
        if (qp0[44]) n0_1 = 44;
        if (qp3[45]) n3_1 = 45;
        if (qp2[45]) n2_1 = 45;
        if (qp1[45]) n1_1 = 45;
        if (qp0[45]) n0_1 = 45;
        if (qp3[46]) n3_1 = 46;
        if (qp2[46]) n2_1 = 46;
        if (qp1[46]) n1_1 = 46;
        if (qp0[46]) n0_1 = 46;
        if (qp3[47]) n3_1 = 47;
        if (qp2[47]) n2_1 = 47;
        if (qp1[47]) n1_1 = 47;
        if (qp0[47]) n0_1 = 47;
        n3_2 = 7'h7f;
        n2_2 = 7'h7f;
        n1_2 = 7'h7f;
        n0_2 = 7'h7f;
        if (qp3[47]) n3_2 = 47;
        if (qp2[47]) n2_2 = 47;
        if (qp1[47]) n1_2 = 47;
        if (qp0[47]) n0_2 = 47;
        if (qp3[46]) n3_2 = 46;
        if (qp2[46]) n2_2 = 46;
        if (qp1[46]) n1_2 = 46;
        if (qp0[46]) n0_2 = 46;
        if (qp3[45]) n3_2 = 45;
        if (qp2[45]) n2_2 = 45;
        if (qp1[45]) n1_2 = 45;
        if (qp0[45]) n0_2 = 45;
        if (qp3[44]) n3_2 = 44;
        if (qp2[44]) n2_2 = 44;
        if (qp1[44]) n1_2 = 44;
        if (qp0[44]) n0_2 = 44;
        if (qp3[43]) n3_2 = 43;
        if (qp2[43]) n2_2 = 43;
        if (qp1[43]) n1_2 = 43;
        if (qp0[43]) n0_2 = 43;
        if (qp3[42]) n3_2 = 42;
        if (qp2[42]) n2_2 = 42;
        if (qp1[42]) n1_2 = 42;
        if (qp0[42]) n0_2 = 42;
        if (qp3[41]) n3_2 = 41;
        if (qp2[41]) n2_2 = 41;
        if (qp1[41]) n1_2 = 41;
        if (qp0[41]) n0_2 = 41;
        if (qp3[40]) n3_2 = 40;
        if (qp2[40]) n2_2 = 40;
        if (qp1[40]) n1_2 = 40;
        if (qp0[40]) n0_2 = 40;
        if (qp3[39]) n3_2 = 39;
        if (qp2[39]) n2_2 = 39;
        if (qp1[39]) n1_2 = 39;
        if (qp0[39]) n0_2 = 39;
        if (qp3[38]) n3_2 = 38;
        if (qp2[38]) n2_2 = 38;
        if (qp1[38]) n1_2 = 38;
        if (qp0[38]) n0_2 = 38;
        if (qp3[37]) n3_2 = 37;
        if (qp2[37]) n2_2 = 37;
        if (qp1[37]) n1_2 = 37;
        if (qp0[37]) n0_2 = 37;
        if (qp3[36]) n3_2 = 36;
        if (qp2[36]) n2_2 = 36;
        if (qp1[36]) n1_2 = 36;
        if (qp0[36]) n0_2 = 36;
        if (qp3[35]) n3_2 = 35;
        if (qp2[35]) n2_2 = 35;
        if (qp1[35]) n1_2 = 35;
        if (qp0[35]) n0_2 = 35;
        if (qp3[34]) n3_2 = 34;
        if (qp2[34]) n2_2 = 34;
        if (qp1[34]) n1_2 = 34;
        if (qp0[34]) n0_2 = 34;
        if (qp3[33]) n3_2 = 33;
        if (qp2[33]) n2_2 = 33;
        if (qp1[33]) n1_2 = 33;
        if (qp0[33]) n0_2 = 33;
        if (qp3[32]) n3_2 = 32;
        if (qp2[32]) n2_2 = 32;
        if (qp1[32]) n1_2 = 32;
        if (qp0[32]) n0_2 = 32;
        if (qp3[31]) n3_2 = 31;
        if (qp2[31]) n2_2 = 31;
        if (qp1[31]) n1_2 = 31;
        if (qp0[31]) n0_2 = 31;
        if (qp3[30]) n3_2 = 30;
        if (qp2[30]) n2_2 = 30;
        if (qp1[30]) n1_2 = 30;
        if (qp0[30]) n0_2 = 30;
        if (qp3[29]) n3_2 = 29;
        if (qp2[29]) n2_2 = 29;
        if (qp1[29]) n1_2 = 29;
        if (qp0[29]) n0_2 = 29;
        if (qp3[28]) n3_2 = 28;
        if (qp2[28]) n2_2 = 28;
        if (qp1[28]) n1_2 = 28;
        if (qp0[28]) n0_2 = 28;
        if (qp3[27]) n3_2 = 27;
        if (qp2[27]) n2_2 = 27;
        if (qp1[27]) n1_2 = 27;
        if (qp0[27]) n0_2 = 27;
        if (qp3[26]) n3_2 = 26;
        if (qp2[26]) n2_2 = 26;
        if (qp1[26]) n1_2 = 26;
        if (qp0[26]) n0_2 = 26;
        if (qp3[25]) n3_2 = 25;
        if (qp2[25]) n2_2 = 25;
        if (qp1[25]) n1_2 = 25;
        if (qp0[25]) n0_2 = 25;
        if (qp3[24]) n3_2 = 24;
        if (qp2[24]) n2_2 = 24;
        if (qp1[24]) n1_2 = 24;
        if (qp0[24]) n0_2 = 24;
        if (qp3[23]) n3_2 = 23;
        if (qp2[23]) n2_2 = 23;
        if (qp1[23]) n1_2 = 23;
        if (qp0[23]) n0_2 = 23;
        if (qp3[22]) n3_2 = 22;
        if (qp2[22]) n2_2 = 22;
        if (qp1[22]) n1_2 = 22;
        if (qp0[22]) n0_2 = 22;
        if (qp3[21]) n3_2 = 21;
        if (qp2[21]) n2_2 = 21;
        if (qp1[21]) n1_2 = 21;
        if (qp0[21]) n0_2 = 21;
        if (qp3[20]) n3_2 = 20;
        if (qp2[20]) n2_2 = 20;
        if (qp1[20]) n1_2 = 20;
        if (qp0[20]) n0_2 = 20;
        if (qp3[19]) n3_2 = 19;
        if (qp2[19]) n2_2 = 19;
        if (qp1[19]) n1_2 = 19;
        if (qp0[19]) n0_2 = 19;
        if (qp3[18]) n3_2 = 18;
        if (qp2[18]) n2_2 = 18;
        if (qp1[18]) n1_2 = 18;
        if (qp0[18]) n0_2 = 18;
        if (qp3[17]) n3_2 = 17;
        if (qp2[17]) n2_2 = 17;
        if (qp1[17]) n1_2 = 17;
        if (qp0[17]) n0_2 = 17;
        if (qp3[16]) n3_2 = 16;
        if (qp2[16]) n2_2 = 16;
        if (qp1[16]) n1_2 = 16;
        if (qp0[16]) n0_2 = 16;
        if (qp3[15]) n3_2 = 15;
        if (qp2[15]) n2_2 = 15;
        if (qp1[15]) n1_2 = 15;
        if (qp0[15]) n0_2 = 15;
        if (qp3[14]) n3_2 = 14;
        if (qp2[14]) n2_2 = 14;
        if (qp1[14]) n1_2 = 14;
        if (qp0[14]) n0_2 = 14;
        if (qp3[13]) n3_2 = 13;
        if (qp2[13]) n2_2 = 13;
        if (qp1[13]) n1_2 = 13;
        if (qp0[13]) n0_2 = 13;
        if (qp3[12]) n3_2 = 12;
        if (qp2[12]) n2_2 = 12;
        if (qp1[12]) n1_2 = 12;
        if (qp0[12]) n0_2 = 12;
        if (qp3[11]) n3_2 = 11;
        if (qp2[11]) n2_2 = 11;
        if (qp1[11]) n1_2 = 11;
        if (qp0[11]) n0_2 = 11;
        if (qp3[10]) n3_2 = 10;
        if (qp2[10]) n2_2 = 10;
        if (qp1[10]) n1_2 = 10;
        if (qp0[10]) n0_2 = 10;
        if (qp3[9]) n3_2 = 9;
        if (qp2[9]) n2_2 = 9;
        if (qp1[9]) n1_2 = 9;
        if (qp0[9]) n0_2 = 9;
        if (qp3[8]) n3_2 = 8;
        if (qp2[8]) n2_2 = 8;
        if (qp1[8]) n1_2 = 8;
        if (qp0[8]) n0_2 = 8;
        if (qp3[7]) n3_2 = 7;
        if (qp2[7]) n2_2 = 7;
        if (qp1[7]) n1_2 = 7;
        if (qp0[7]) n0_2 = 7;
        if (qp3[6]) n3_2 = 6;
        if (qp2[6]) n2_2 = 6;
        if (qp1[6]) n1_2 = 6;
        if (qp0[6]) n0_2 = 6;
        if (qp3[5]) n3_2 = 5;
        if (qp2[5]) n2_2 = 5;
        if (qp1[5]) n1_2 = 5;
        if (qp0[5]) n0_2 = 5;
        if (qp3[4]) n3_2 = 4;
        if (qp2[4]) n2_2 = 4;
        if (qp1[4]) n1_2 = 4;
        if (qp0[4]) n0_2 = 4;
        if (qp3[3]) n3_2 = 3;
        if (qp2[3]) n2_2 = 3;
        if (qp1[3]) n1_2 = 3;
        if (qp0[3]) n0_2 = 3;
        if (qp3[2]) n3_2 = 2;
        if (qp2[2]) n2_2 = 2;
        if (qp1[2]) n1_2 = 2;
        if (qp0[2]) n0_2 = 2;
        if (qp3[1]) n3_2 = 1;
        if (qp2[1]) n2_2 = 1;
        if (qp1[1]) n1_2 = 1;
        if (qp0[1]) n0_2 = 1;
        if (qp3[0]) n3_2 = 0;
        if (qp2[0]) n2_2 = 0;
        if (qp1[0]) n1_2 = 0;
        if (qp0[0]) n0_2 = 0;
        q1 = 0;
        q2 = 0;
        w1 = 0;
        w2 = 0;
        v1 = 0;
        v2 = 0;
        if (n3_1 != 7'h7f) 
        begin
            w1 = n3_1;
            q1 = 3;
            v1 = 1;
            if (n3_1 != n3_2) 
            begin
                w2 = n3_2;
                q2 = 3;
                v2 = 1;
            end
            else if (n2_1 != 7'h7f) 
            begin
                w2 = n2_1;
                q2 = 2;
                v2 = 1;
            end
            else if (n1_1 != 7'h7f) 
            begin
                w2 = n1_1;
                q2 = 1;
                v2 = 1;
            end
            else if (n0_1 != 7'h7f) 
            begin
                w2 = n0_1;
                q2 = 0;
                v2 = 1;
            end
        end
        else 
        begin
            if (n2_1 != 7'h7f) 
            begin
                w1 = n2_1;
                q1 = 2;
                v1 = 1;
                if (n2_1 != n2_2) 
                begin
                    w2 = n2_2;
                    q2 = 2;
                    v2 = 1;
                end
                else if (n1_1 != 7'h7f) 
                begin
                    w2 = n1_1;
                    q2 = 1;
                    v2 = 1;
                end
                else if (n0_1 != 7'h7f) 
                begin
                    w2 = n0_1;
                    q2 = 0;
                    v2 = 1;
                end
            end
            else 
            begin
                if (n1_1 != 7'h7f) 
                begin
                    w1 = n1_1;
                    q1 = 1;
                    v1 = 1;
                    if (n1_1 != n1_2) 
                    begin
                        w2 = n1_2;
                        q2 = 1;
                        v2 = 1;
                    end
                    else if (n0_1 != 7'h7f) 
                    begin
                        w2 = n0_1;
                        q2 = 0;
                        v2 = 1;
                    end
                end
                else 
                begin
                    if (n0_1 != 7'h7f) 
                    begin
                        w1 = n0_1;
                        q1 = 0;
                        v1 = 1;
                        if (n0_1 != n0_2) 
                        begin
                            w2 = n0_2;
                            q2 = 0;
                            v2 = 1;
                        end
                    end
                end
            end
        end
    end
endmodule
