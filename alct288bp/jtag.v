// This  Verilog HDL  source  file was  automatically generated
// by C++ model based on VPP library. Modification of this file
// is possible, but if you want to keep it in sync with the C++
// model,  please  modify  the model and re-generate this file.
// VPP library web-page: http://www.phys.ufl.edu/~madorsky/vpp/

// Author    : madorsky
// File name : jtag.v
// Timestamp : Mon Aug  6 09:12:55 2012

module jtag
(
    tck,
    tms,
    tdi,
    tdo,
    HCmask,
    collmask,
    ParamReg,
    ConfgReg,
    tst_pls,
    din_dly,
    dout_dly,
    clk_dly,
    input_dis,
    YR,
    OS,
    OSre,
    hard_rst,
    jstate,
    ID,
    TrigReg,
    SNout,
    SNin,
    hcounters,
    clk
);

    input tck;
    input tms;
    input tdi;
    output tdo;
    reg    tdo;
    output [287:0] HCmask;
    reg    [287:0] HCmask;
    output [167:0] collmask;
    reg    [167:0] collmask;
    output [4:0] ParamReg;
    reg    [4:0] ParamReg;
    output [68:0] ConfgReg;
    reg    [68:0] ConfgReg;
    output tst_pls;
    reg    tst_pls;
    output din_dly;
    reg    din_dly;
    input [2:0] dout_dly;
    output clk_dly;
    output input_dis;
    reg    input_dis;
    output [30:0] YR;
    reg    [30:0] YR;
    input [48:0] OS;
    output OSre;
    reg    OSre;
    input hard_rst;
    output [3:0] jstate;
    input [39:0] ID;
    output [4:0] TrigReg;
    reg    [4:0] TrigReg;
    output SNout;
    reg    SNout;
    input SNin;
    input [31:0] hcounters;
    input clk;

    parameter IRsize = 4;
    parameter SRsize = 4;
    parameter HCsize = 287;
    parameter cmsize = 167;
    parameter PRsize = 4;
    parameter CRsize = 68;
    parameter YRsize = 30;
    parameter OSsize = 48;
    parameter TRsize = 4;
    parameter IDsize = 39;
    parameter CNsize = 31;
    parameter RunTestIdle = 1;
    parameter TestLogicReset = 0;
    parameter SelDRScan = 2;
    parameter CaptureDR = 3;
    parameter ShiftDR = 4;
    parameter Exit1DR = 5;
    parameter PauseDR = 6;
    parameter Exit2DR = 7;
    parameter UpdateDR = 8;
    parameter SelIRScan = 9;
    parameter CaptureIR = 10;
    parameter ShiftIR = 11;
    parameter Exit1IR = 12;
    parameter PauseIR = 13;
    parameter Exit2IR = 14;
    parameter UpdateIR = 15;
    parameter IDRead = 0;
    parameter HCMaskRead = 1;
    parameter HCMaskWrite = 2;
    parameter RdTrig = 3;
    parameter WrTrig = 4;
    parameter RdCfg = 6;
    parameter WrCfg = 7;
    parameter Wdly = 13;
    parameter Rdly = 14;
    parameter YRwrite = 25;
    parameter YRread = 16;
    parameter CNread = 17;
    parameter CollMaskRead = 19;
    parameter CollMaskWrite = 20;
    parameter ParamRegRead = 21;
    parameter ParamRegWrite = 22;
    parameter InputEnable = 23;
    parameter InputDisable = 24;
    parameter OSread = 26;
    parameter SNread = 27;
    parameter SNwrite0 = 28;
    parameter SNwrite1 = 29;
    parameter SNreset = 30;
    parameter Bypass = 31;
    parameter SNidleST = 0;
    parameter SNwriteST = 1;
    parameter SNreadST = 2;
    parameter SNsampleST = 3;
    reg [4:0] ParamRegs;
    reg [68:0] ConfgRegs;
    reg dly_clk_en;
    reg [3:0] TAPstate;
    reg [4:0] IR;
    reg bpass;
    reg [4:0] sr;
    reg [12:0] tdomux;
    reg dly_tdo;
    reg [30:0] YRs;
    reg [48:0] OSs;
    reg [4:0] TrigRegs;
    reg [39:0] IDs;
    reg [11:0] SNcnt;
    reg SNrd;
    reg SNresetRQ;
    reg SNwrite0RQ;
    reg SNwrite1RQ;
    reg SNreadRQ;
    reg SNresetRQ1;
    reg SNwrite0RQ1;
    reg SNwrite1RQ1;
    reg SNreadRQ1;
    reg SNresetRQ2;
    reg SNwrite0RQ2;
    reg SNwrite1RQ2;
    reg SNreadRQ2;
    reg [1:0] SNstate;
    reg [31:0] hcounterss;
initial input_dis = 0;
initial TAPstate = RunTestIdle;
    always @(posedge tck or negedge hard_rst) 
    begin
        if (hard_rst == 0) 
        begin
            collmask = 0;
            collmask = ~collmask;
            HCmask = 0;
            HCmask = ~HCmask;
            ParamReg = 9'b1111111_01;
            ConfgReg = 69'b01_0_00_00_1_0_0_000_101_0_0001_0011_01111000_000_01_00001_00111_11_100_010_00000001_0_0_0_00;
            input_dis = 0;
            TAPstate = RunTestIdle;
        end
        else 
        begin
            dly_tdo = |(dout_dly & (~ParamReg[4:2]));
            dly_clk_en = 0;
            OSre = 0;
            case (TAPstate)
                RunTestIdle : TAPstate = (tms == 0) ? RunTestIdle : SelDRScan;
                TestLogicReset : TAPstate = (tms == 0) ? RunTestIdle : TestLogicReset;
                CaptureDR : 
                begin
                    TAPstate = (tms == 0) ? ShiftDR : Exit1DR;
                    case (IR)
                        HCMaskWrite, HCMaskRead : tdomux = 1;
                        CollMaskWrite, CollMaskRead : tdomux = 2;
                        ParamRegWrite : tdomux = 4;
                        ParamRegRead : 
                        begin
                            tdomux = 4;
                            ParamRegs = ParamReg;
                        end
                        WrCfg : tdomux = 8;
                        RdCfg : 
                        begin
                            tdomux = 8;
                            ConfgRegs = ConfgReg;
                        end
                        Wdly, Rdly : tdomux = 16;
                        Bypass : 
                        begin
                            tdomux = 32;
                            bpass = 0;
                        end
                        OSread : 
                        begin
                            tdomux = 128;
                            OSs = OS;
                            OSre = 1;
                        end
                        WrTrig : tdomux = 256;
                        RdTrig : 
                        begin
                            tdomux = 256;
                            TrigRegs = TrigReg;
                        end
                        IDRead : 
                        begin
                            tdomux = 512;
                            IDs = ID;
                        end
                        SNread : tdomux = 1024;
                        YRwrite : tdomux = 2048;
                        YRread : 
                        begin
                            tdomux = 2048;
                            YRs = YR;
                        end
                        CNread : 
                        begin
                            tdomux = 4096;
                            hcounterss = hcounters;
                        end
                        default : tdomux = 0;
                    endcase
                end
                ShiftDR : 
                begin
                    TAPstate = (tms == 0) ? ShiftDR : Exit1DR;
                    case (IR)
                        HCMaskWrite, HCMaskRead : HCmask = {tdi, HCmask[HCsize:1]};
                        CollMaskWrite, CollMaskRead : collmask = {tdi, collmask[cmsize:1]};
                        ParamRegWrite, ParamRegRead : ParamRegs = {tdi, ParamRegs[PRsize:1]};
                        RdCfg, WrCfg : ConfgRegs = {tdi, ConfgRegs[CRsize:1]};
                        Bypass : bpass = tdi;
                        Wdly, Rdly : 
                        begin
                            din_dly = tdi;
                            dly_clk_en = 1;
                        end
                        YRwrite, YRread : YRs = {tdi, YRs[YRsize:1]};
                        CNread : hcounterss = {tdi, hcounterss[CNsize:1]};
                        OSread : OSs = {tdi, OSs[OSsize:1]};
                        RdTrig, WrTrig : TrigRegs = {tdi, TrigRegs[TRsize:1]};
                        IDRead : IDs = {tdi, IDs[IDsize:1]};
                    endcase
                end
                UpdateDR : 
                begin
                    TAPstate = (tms == 0) ? RunTestIdle : SelDRScan;
                    case (IR)
                        ParamRegWrite : ParamReg = ParamRegs;
                        WrTrig : 
                        begin
                            TrigReg = TrigRegs;
                            tst_pls = (TrigRegs[3:0] == 3) ? 1 : 0;
                        end
                        YRwrite : YR = YRs;
                        WrCfg : ConfgReg = ConfgRegs;
                    endcase
                end
                SelDRScan : TAPstate = (tms == 0) ? CaptureDR : SelIRScan;
                Exit1DR : TAPstate = (tms == 0) ? PauseDR : UpdateDR;
                PauseDR : TAPstate = (tms == 0) ? PauseDR : Exit2DR;
                Exit2DR : TAPstate = (tms == 0) ? ShiftDR : UpdateDR;
                CaptureIR : 
                begin
                    TAPstate = (tms == 0) ? ShiftIR : Exit1IR;
                    sr = IR;
                    tdomux = 64;
                end
                ShiftIR : 
                begin
                    TAPstate = (tms == 0) ? ShiftIR : Exit1IR;
                    sr = {tdi, sr[SRsize:1]};
                end
                UpdateIR : 
                begin
                    TAPstate = (tms == 0) ? RunTestIdle : SelDRScan;
                    IR = sr;
                    case (IR)
                        InputEnable : input_dis = 0;
                        InputDisable : input_dis = 1;
                        SNreset : SNresetRQ = ~SNresetRQ;
                        SNwrite0 : SNwrite0RQ = ~SNwrite0RQ;
                        SNwrite1 : SNwrite1RQ = ~SNwrite1RQ;
                        SNread : SNreadRQ = ~SNreadRQ;
                    endcase
                end
                SelIRScan : TAPstate = (tms == 0) ? CaptureIR : TestLogicReset;
                Exit1IR : TAPstate = (tms == 0) ? PauseIR : UpdateIR;
                PauseIR : TAPstate = (tms == 0) ? PauseIR : Exit2IR;
                Exit2IR : TAPstate = (tms == 0) ? ShiftIR : UpdateIR;
            endcase
        end
    end
    assign clk_dly = (dly_clk_en) ? !tck : 0;
    always @(negedge tck) 
    begin
        tdo = ((((((((((((tdomux[0] & HCmask[0]) | (tdomux[1] & collmask[0])) | (tdomux[2] & ParamRegs[0])) | (tdomux[3] & ConfgRegs[0])) | (tdomux[4] & dly_tdo)) | (tdomux[5] & bpass)) | (tdomux[6] & sr[0])) | (tdomux[7] & OSs[0])) | (tdomux[8] & TrigRegs[0])) | (tdomux[9] & IDs[0])) | (tdomux[10] & SNrd)) | (tdomux[11] & YRs[0])) | (tdomux[12] & hcounterss[0]);
    end
    assign jstate = ~TAPstate;
    always @(posedge clk) 
    begin
        case (SNstate)
            SNidleST : 
            begin
                if (SNresetRQ2 ^ SNresetRQ1) 
                begin
                    SNout = 0;
                end
                if (SNwrite0RQ2 ^ SNwrite0RQ1) 
                begin
                    SNstate = SNwriteST;
                    SNout = 0;
                    SNcnt = 2400;
                end
                if (SNwrite1RQ2 ^ SNwrite1RQ1) 
                begin
                    SNstate = SNwriteST;
                    SNout = 0;
                    SNcnt = 240;
                end
                if (SNreadRQ2 ^ SNreadRQ1) 
                begin
                    SNstate = SNreadST;
                    SNout = 0;
                    SNcnt = 240;
                end
            end
            SNwriteST : 
            begin
                if (SNcnt == 0) 
                begin
                    SNstate = SNidleST;
                    SNout = 1;
                end
                else SNcnt = SNcnt - 1;
            end
            SNreadST : 
            begin
                if (SNcnt == 0) 
                begin
                    SNstate = SNsampleST;
                    SNcnt = 360;
                    SNout = 1;
                end
                else SNcnt = SNcnt - 1;
            end
            SNsampleST : 
            begin
                if (SNcnt == 0) 
                begin
                    SNstate = SNidleST;
                    SNrd = SNin;
                end
                else SNcnt = SNcnt - 1;
            end
        endcase
        SNresetRQ2 = SNresetRQ1;
        SNwrite0RQ2 = SNwrite0RQ1;
        SNwrite1RQ2 = SNwrite1RQ1;
        SNreadRQ2 = SNreadRQ1;
        SNresetRQ1 = SNresetRQ;
        SNwrite0RQ1 = SNwrite0RQ;
        SNwrite1RQ1 = SNwrite1RQ;
        SNreadRQ1 = SNreadRQ;
    end
endmodule
