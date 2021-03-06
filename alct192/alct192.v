// This  Verilog HDL  source  file was  automatically generated
// by C++ model based on VPP library. Modification of this file
// is possible, but if you want to keep it in sync with the C++
// model,  please  modify  the model and re-generate this file.
// VPP library web-page: http://www.phys.ufl.edu/~madorsky/vpp/

// Author    : madorsky
// File name : alct192.v
// Timestamp : Mon Aug  6 09:12:03 2012

module alct192
(
    lct0_,
    lct1_,
    valid,
    amu,
    lctSpec_FirstFr,
    dduSpec_LastFr,
    quality,
    keyp,
    bxn_wrFifo,
    daqData,
    seq_seu,
    cs_dly,
    settst_dlyp,
    rs_dly,
    din_dly,
    dout_dly,
    clk_dly,
    tck2,
    tms2,
    tdi2,
    tdo2,
    clk40sh,
    clk80,
    mx_oe,
    L1A_SyncAdb,
    ext_inject_trig,
    rsrvd_out,
    activeFeb_cfgDone,
    jstate,
    tst_pls,
    TP0,
    TP1,
    AsyncAdb,
    tp_strt_ext,
    alct_sn,
    mc_sn,
    ccb_brcstm,
    bstr1_subaddr,
    dout_bx0,
    seq_cmd02,
    seq_cmd13,
    rsv_in02,
    rsv_in13,
    clkp
);

    // input buses
    input [47:0] lct0_;
    input [47:0] lct1_;
    output valid;
    reg    valid;
    output amu;
    reg    amu;
    output lctSpec_FirstFr;
    reg    lctSpec_FirstFr;
    output dduSpec_LastFr;
    reg    dduSpec_LastFr;
    output [1:0] quality;
    reg    [1:0] quality;
    output [6:0] keyp;
    reg    [6:0] keyp;
    output [2:0] bxn_wrFifo;
    reg    [2:0] bxn_wrFifo;
    output [6:0] daqData;
    reg    [6:0] daqData;
    output [1:0] seq_seu;
    reg    [1:0] seq_seu;
    output [2:0] cs_dly;
    // settst_dly == 0 means take inputs from AFEBS, ==1 takes inputs from internal shift registers of delay lines
    output settst_dlyp;
    output rs_dly;
    output din_dly;
    input [2:0] dout_dly;
    output clk_dly;
    input tck2;
    // for TCK2 set the attribute DONT USE in the Global Buffers section of the synthesis constraints
    input tms2;
    input tdi2;
    output tdo2;
    output [1:0] clk40sh;
    output [1:0] clk80;
    output mx_oe;
    input L1A_SyncAdb;
    input ext_inject_trig;
    output [1:0] rsrvd_out;
    reg    [1:0] rsrvd_out;
    output activeFeb_cfgDone;
    reg    activeFeb_cfgDone;
    output [3:0] jstate;
    output tst_pls;
    // test pulse output
    output [15:0] TP0;
    // test point header 0
    output [31:0] TP1;
    // test point header 1
    input AsyncAdb;
    input tp_strt_ext;
    inout alct_sn;
    inout mc_sn;
    input [3:0] ccb_brcstm;
    input bstr1_subaddr;
    input dout_bx0;
    input seq_cmd02;
    input seq_cmd13;
    input rsv_in02;
    input rsv_in13;
    input clkp;

`include "Flip.v"
    wire [111:0] collmask;
    wire [191:0] HCmask;
    wire PromoteColl;
    wire [2:0] drifttime;
    wire [2:0] pretrig;
    wire [2:0] trig;
    wire [2:0] acc_pretrig;
    wire [2:0] acc_trig;
    wire [1:0] trig_mode;
    wire [4:0] fifo_tbins;
    wire [1:0] h;
    wire [6:0] hn;
    wire hfa;
    wire hpatb;
    wire [1:0] l;
    wire [6:0] ln;
    wire lfa;
    wire lpatb;
    wire [68:0] ConfgReg;
    wire [30:0] ConfgRegx;
    wire [18:0] daqo;
    // the L1A fifo input, including control bits
    wire [1:0] fifo_mode;
    wire [2:0] BoardID;
    wire [7:0] l1a_delay;
    // time from trigger to L1A
    reg L1A;
    reg SyncAdb;
    // demuxed SyncAdb input at 80 MHz
    reg SyncAdb1;
    // demuxed SyncAdb at 40 MHz
    reg SyncAdb2;
    // demuxed SyncAdb at 40 MHz after ecc
    wire clk;
    wire clk2x;
    wire input_dis;
    wire tck2b;
    wire [48:0] OSdata;
    // size of this wire is one bit more than needed. This bit is used for fifo_empty flag 
    wire OSre;
    wire [19:0] z20;
    // dummy
    wire locked;
    // first dll locked
    wire clk2xsh;
    wire TstPlsEn;
    // test pulse enable from JTAG interface
    reg [1:0] tst_pls_en;
    // registers for TstPlsEn rising edge detection
    wire l1a_internal;
    // if ==1 then the board will generate L1A for itself on each trigger.
    wire [3:0] l1a_window;
    // window in which to look for valid tracks in case of L1A
    wire [3:0] l1a_offset;
    // initial value for l1a counter
    wire [4:0] fifo_pretrig;
    // time bins before pretrigger (included in fifo_tbins)
    wire NoSpaceForDAQ;
    // tells DAQ state machine, that there is no space in buffer.output(buffer) for the next DAQ readout. Used only when FIFO.output(FIFO) is enabled.
    wire [23:0] Counters;
    // used for raw hit fifo debugging
    reg hard_rst;
initial hard_rst = 0;
    reg [14:0] hrstcnt;
    reg [31:0] ly0;
    reg [31:0] ly1;
    reg [31:0] ly2;
    reg [31:0] ly3;
    reg [31:0] ly4;
    reg [31:0] ly5;
    reg [31:0] lyp0;
    reg [31:0] lyp1;
    reg [31:0] lyp2;
    reg [31:0] lyp3;
    reg [31:0] lyp4;
    reg [31:0] lyp5;
    reg input_disr;
    wire clkb;
    wire settst_dly;
    wire inject;
    // enables injecting patterns using ext_inject input
    reg ext_inject;
    reg ext_trig;
    wire ext_trig_en;
    // external trigger enable
    wire trig_info_en;
    // if it is == 0, the detected track info will not be written to the FIFO.output(FIFO), only DAQ readout will be written
    reg tst_plss;
    wire [4:0] TrigReg;
    wire SNout;
    wire [1:0] SNin;
    wire sn_select;
    wire actv_feb_fg;
    // this is set to 1 as soon as some pattern is found by pattern detectors
    // ccb control signals
    reg [7:0] ccb_brcstd;
    reg [7:0] ccb_brcst;
    reg [7:0] ccb_brcst2;
    reg subaddr_str;
    reg brcst_str1d;
    reg brcst_str1;
    reg brcst_str2;
    reg bx0d;
    reg bx0;
    reg bx0_2;
    reg dout_str;
    wire [11:0] bxn;
    // global bx number
    wire l1a_cnt_reset;
    wire lhc_cycle_sel;
    wire ttc_l1reset;
    wire ttc_bx0;
    wire ttc_start_trigger;
    wire ttc_stop_trigger;
    wire l1aTP;
    wire l1awindowTP;
    wire validh;
    wire validl;
    wire validhd;
    wire fmm_trig_stop;
    wire send_empty;
    wire [11:0] bxc_offset;
    wire [11:0] bxn_before_reset;
    wire clk2x_buff;
    wire [39:0] virtex_id;
    wire clksh;
    wire os_enable;
    wire [95:0] hcounters;
    reg [3:0] seq_cmd;
    reg [3:0] seq_cmd_r;
    reg [3:0] rsv_in;
    wire [28:1] alct_tx_1st_tpat;
    wire [28:1] alct_tx_2nd_tpat;
    wire alct_sync_mode;
    reg [28:1] alct_tx_1st_tpat_r;
    reg [28:1] alct_tx_2nd_tpat_r;
    wire config_report;
    reg seq_cmd02_r;
    reg seq_cmd13_r;
    reg L1A_SyncAdb_r;
    reg ext_inject_trig_r;
    reg [3:0] ccb_brcstm_r;
    reg bstr1_subaddr_r;
    reg dout_bx0_r;
    reg rsv_in02_r;
    reg rsv_in13_r;
    reg L1A1;
    reg ext_inject1;
    reg ext_trig1;
    reg subaddr_str1;
    reg dout_str1;
    reg [3:0] rsv_in1;
    reg L1A2;
    reg ext_inject2;
    reg ext_trig2;
    reg subaddr_str2;
    reg dout_str2;
    wire [15:0] dec_out;
    wire [1:0] ecc_error;
    wire send_bxn;
    wire [4:0] bxn_mux;
    reg [4:0] ecc_err_5;
    wire [6:0] parity_out;
    wire ttc_bx0_e;
    wire actv_feb_fg_e;
    wire [4:0] bxn_mux_e;
    wire [6:0] ln_e;
    wire [1:0] l_e;
    wire lfa_e;
    wire validl_e;
    wire [6:0] hn_e;
    wire [1:0] h_e;
    wire hfa_e;
    wire validh_e;
    wire [2:0] dummy3;
    wire zero_suppress;
    wire clock_lac;

	IBUFG ibufclk (.I(clkp), .O(clkb));
	OBUF_F_24 ob800 (.O(clk80[0]), .I(clk2xsh));
	OBUF_F_24 ob801 (.O(clk80[1]), .I(clk2xsh));
	OBUF_S_8 ob400 (.O(clk40sh[0]), .I(clksh));
	OBUF_S_8 ob401 (.O(clk40sh[1]), .I(clksh));
	IBUF buftck (.I(tck2), .O(tck2b)); // synthesis attribute buffer_type tck2 ibuf
    // tck global buffer
	IOBUF iobsn0 (.IO(alct_sn), .I(1'b0), .O(SNin[0]), .T(SNout));
	IOBUF iobsn1 (.IO(mc_sn),   .I(1'b0), .O(SNin[1]), .T(SNout));
    dll dll2x
    (
        clkb,
        clk,
        clk2x_buff,
        clksh,
        clock_lac,
        locked
    );
    // DLL for doubling the clock
    dll2 dllsh
    (
        clk2x_buff,
        clk2x,
        clk2xsh,
        !locked
    );
    // DLL for the double clock phase adjustment
    // output clocks to Muxes
    assign mx_oe = 0;
    // Mux OE
    // JTAG port instantiation
    assign virtex_id = {4'd8, 5'd6, 12'd2012, 4'h0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 3'h1, 6'h5};
    jtag TAP
    (
        tck2b,
        tms2,
        tdi2,
        tdo2,
        HCmask,
        collmask,
        {cs_dly, settst_dly, rs_dly},
        ConfgReg,
        TstPlsEn,
        din_dly,
        dout_dly,
        clk_dly,
        input_dis,
        ConfgRegx,
        OSdata,
        OSre,
        hard_rst,
        jstate,
        virtex_id,
        TrigReg,
        SNout,
        SNin[sn_select],
        hcounters,
        clk
    );
    // disassemble the ConfigReg into parameters
    assign drifttime = {1'b0, ConfgReg[20:19]};
    assign pretrig = ConfgReg[15:13];
    assign trig = ConfgReg[18:16];
    assign PromoteColl = !ConfgReg[65];
    assign trig_mode = ConfgReg[1:0];
    assign fifo_tbins = ConfgReg[25:21];
    assign l1a_delay = ConfgReg[43:36];
    assign fifo_mode = ConfgReg[32:31];
    assign BoardID = ConfgReg[55:53];
    assign l1a_internal = ConfgReg[52];
    assign l1a_window = ConfgReg[47:44] | 4'b1;
    assign l1a_offset = ConfgReg[51:48];
    assign fifo_pretrig = ConfgReg[30:26];
    assign ext_trig_en = ConfgReg[2];
    assign trig_info_en = ConfgReg[67];
    assign inject = ConfgReg[4];
    assign sn_select = ConfgReg[68];
    assign lhc_cycle_sel = ConfgReg[60];
    assign send_empty = ConfgReg[3];
    // set this to 1 to enable sending DAQ for empty events
    assign bxc_offset = {4'b0, ConfgReg[12:5]};
    // bunch crossing counter offset (8 LSBs)
    assign config_report = ConfgReg[64];
    assign acc_pretrig = (ConfgReg[35:33] == 0) ? pretrig : ConfgReg[35:33];
    assign acc_trig = (ConfgReg[58:56] == 0) ? trig : ConfgReg[58:56];
    assign zero_suppress = ConfgReg[66];
    assign os_enable = ConfgRegx[0];
    // demux the inputs
    always @(posedge clk2x) 
    begin
        lyp1[7:0] = Flip(lyp3[7:0]);
        lyp3[7:0] = lct0_[7:0];
        lyp0[7:0] = Flip(lyp2[7:0]);
        lyp2[7:0] = lct0_[15:8];
        lyp5[7:0] = Flip(lyp1[15:8]);
        lyp1[15:8] = lct0_[23:16];
        lyp4[7:0] = Flip(lyp0[15:8]);
        lyp0[15:8] = lct0_[31:24];
        lyp3[15:8] = Flip(lyp5[15:8]);
        lyp5[15:8] = lct0_[39:32];
        lyp2[15:8] = Flip(lyp4[15:8]);
        lyp4[15:8] = lct0_[47:40];
        lyp1[23:16] = Flip(lyp3[23:16]);
        lyp3[23:16] = lct1_[7:0];
        lyp0[23:16] = Flip(lyp2[23:16]);
        lyp2[23:16] = lct1_[15:8];
        lyp5[23:16] = Flip(lyp1[31:24]);
        lyp1[31:24] = lct1_[23:16];
        lyp4[23:16] = Flip(lyp0[31:24]);
        lyp0[31:24] = lct1_[31:24];
        lyp3[31:24] = Flip(lyp5[31:24]);
        lyp5[31:24] = lct1_[39:32];
        lyp2[31:24] = Flip(lyp4[31:24]);
        lyp4[31:24] = lct1_[47:40];
        L1A = SyncAdb;
        SyncAdb = L1A_SyncAdb_r;
        ext_inject = ext_trig;
        ext_trig = ext_inject_trig_r;
        ccb_brcstd[3:0] = ccb_brcstd[7:4];
        ccb_brcstd[7:4] = ccb_brcstm_r;
        brcst_str1d = subaddr_str;
        subaddr_str = bstr1_subaddr_r;
        dout_str = bx0d;
        bx0d = dout_bx0_r;
        seq_cmd[0] = seq_cmd[2];
        seq_cmd[2] = seq_cmd02_r;
        seq_cmd[1] = seq_cmd[3];
        seq_cmd[3] = seq_cmd13_r;
        rsv_in[0] = rsv_in[2];
        rsv_in[2] = rsv_in02_r;
        rsv_in[1] = rsv_in[3];
        rsv_in[3] = rsv_in13_r;
        L1A_SyncAdb_r = L1A_SyncAdb;
        ext_inject_trig_r = ext_inject_trig;
        ccb_brcstm_r = ccb_brcstm;
        bstr1_subaddr_r = bstr1_subaddr;
        dout_bx0_r = dout_bx0;
        rsv_in02_r = rsv_in02;
        rsv_in13_r = rsv_in13;
        seq_cmd02_r = seq_cmd02;
        seq_cmd13_r = seq_cmd13;
    end
    // apply hot channel mask
    always @(posedge clk) 
    begin
        if (!input_disr) 
        begin
            if ((ext_trig_en && (!ext_trig2)) || (inject && (!ext_inject2))) 
            begin
                ly0 = 0;
                ly1 = 0;
                ly2 = 0;
                ly3 = 0;
                ly4 = 0;
                ly5 = 0;
            end
            else 
            begin
                ly0 = lyp0 & HCmask[31:0];
                ly1 = lyp1 & HCmask[63:32];
                ly2 = lyp2 & HCmask[95:64];
                ly3 = lyp3 & HCmask[127:96];
                ly4 = lyp4 & HCmask[159:128];
                ly5 = lyp5 & HCmask[191:160];
            end
        end
        {SyncAdb2, L1A2, ext_trig2, ext_inject2, bx0_2, dout_str2, subaddr_str2, brcst_str2, ccb_brcst2} = dec_out;
        ecc_err_5 = {ecc_error, 3'd0};
        L1A1 = L1A;
        SyncAdb1 = SyncAdb;
        ext_inject1 = ext_inject;
        ext_trig1 = ext_trig;
        subaddr_str1 = subaddr_str;
        dout_str1 = dout_str;
        rsv_in1 = rsv_in;
        ccb_brcst = ccb_brcstd;
        brcst_str1 = brcst_str1d;
        bx0 = bx0d;
        seq_cmd_r = seq_cmd;
    end
    ecc16_decoder ecc16_dec
    (
        {SyncAdb1, L1A1, ext_trig1, ext_inject1, bx0, dout_str1, subaddr_str1, brcst_str1, ccb_brcst},
        {seq_cmd_r[3], seq_cmd_r[1], rsv_in1},
        1'd1,
        dec_out,
        ecc_error
    );
    ecc32_encode ecc32_en
    (
        {3'd1, ttc_bx0, actv_feb_fg, bxn_mux, ln, l[1:0], lfa, validl, hn, h[1:0], hfa, validh},
        {dummy3, ttc_bx0_e, actv_feb_fg_e, bxn_mux_e, ln_e, l_e, lfa_e, validl_e, hn_e, h_e, hfa_e, validh_e},
        parity_out,
        clk
    );
    assign settst_dlyp = settst_dly;
    // process the data
    trigger_rl core
    (
        ly0,
        ly1,
        ly2,
        ly3,
        ly4,
        ly5,
        collmask,
        PromoteColl,
        h,
        hn,
        hfa,
        hpatb,
        validh,
        l,
        ln,
        lfa,
        lpatb,
        validl,
        drifttime,
        (fmm_trig_stop && (!os_enable)) ? 3'h7 : pretrig,
        trig,
        trig_mode,
        (fmm_trig_stop && (!os_enable)) ? 3'h7 : acc_pretrig,
        acc_trig,
        actv_feb_fg,
        fmm_trig_stop,
        clk
    );
    synchro sync
    (
        hard_rst,
        ccb_brcst2[5:0],
        brcst_str2,
        bx0_2,
        bxc_offset,
        lhc_cycle_sel,
        bxn,
        l1a_cnt_reset,
        fmm_trig_stop,
        ttc_l1reset,
        ttc_bx0,
        ttc_start_trigger,
        ttc_stop_trigger,
        bxn_before_reset,
        clk
    );
    always @(posedge clk) 
    begin
        // next two lines are responsible for the reset of the logic on power-up.
        hard_rst = hrstcnt[0];
        hrstcnt = {1'b1, hrstcnt[14:1]};
        input_disr = input_dis;
        // synchronize input_dis signal with the clock
        tst_plss = tst_pls_en[0] && (!tst_pls_en[1]);
        //  pulse tst_pls output only on rising edge of TstPlsEn
        tst_pls_en[1] = tst_pls_en[0];
        tst_pls_en[0] = TstPlsEn;
    end
    assign tst_pls = (TrigReg[4:2] == 0) ? tst_plss : (TrigReg[4:2] == 1) ? SyncAdb2 : (TrigReg[4:2] == 2) ? AsyncAdb : (TrigReg[4:2] == 3) ? tp_strt_ext : (TrigReg[4:2] == 4) ? !tst_plss : (TrigReg[4:2] == 5) ? !SyncAdb2 : (TrigReg[4:2] == 6) ? !AsyncAdb : (TrigReg[4:2] == 7) ? !tp_strt_ext : 0;
    daq_06 daq_06
    (
        ly0,
        ly1,
        ly2,
        ly3,
        ly4,
        ly5,
        {hn, validh, hfa, h},
        {ln, validl, lfa, l},
        bxn,
        fifo_tbins,
        daqo,
        l1a_delay,
        fifo_pretrig,
        fifo_mode,
        L1A2,
        hard_rst && (!l1a_cnt_reset),
        l1a_internal,
        l1a_window,
        l1a_offset,
        l1awindowTP,
        l1aTP,
        validhd,
        send_empty,
        config_report,
        bxn_before_reset,
        virtex_id,
        TrigReg[4:2],
        ConfgReg,
        HCmask,
        collmask,
        zero_suppress,
        fmm_trig_stop,
        clk
    );
    loopback lpback
    (
        seq_cmd_r,
        {rsv_in1[1:0], seq_cmd_r[1:0], L1A1, ext_inject1, dout_str1, brcst_str1, ccb_brcst[3:0]},
        {rsv_in1[3:2], seq_cmd_r[3:2], SyncAdb1, ext_trig1, bx0, subaddr_str1, ccb_brcst[7:4]},
        alct_tx_1st_tpat,
        alct_tx_2nd_tpat,
        alct_sync_mode,
        clk
    );
    assign send_bxn = ((validh || validl) || actv_feb_fg) && (!alct_sync_mode);
    assign bxn_mux = (send_bxn) ? bxn : ecc_err_5;
    always @(posedge clk2x) 
    begin
        if (clock_lac == 0) 
        begin
            valid = alct_tx_1st_tpat_r[4];
            amu = alct_tx_1st_tpat_r[5];
            quality = alct_tx_1st_tpat_r[7:6];
            keyp = alct_tx_1st_tpat_r[14:8];
            lctSpec_FirstFr = alct_tx_1st_tpat_r[25];
            dduSpec_LastFr = alct_tx_1st_tpat_r[28];
            bxn_wrFifo = alct_tx_1st_tpat_r[17:15];
            daqData = alct_tx_1st_tpat_r[24:18];
            seq_seu = alct_tx_1st_tpat_r[27:26];
            activeFeb_cfgDone = alct_tx_1st_tpat_r[3];
            rsrvd_out[0] = alct_tx_1st_tpat_r[1];
            rsrvd_out[1] = alct_tx_1st_tpat_r[2];
        end
        else 
        begin
            valid = alct_tx_2nd_tpat_r[4];
            amu = alct_tx_2nd_tpat_r[5];
            quality = alct_tx_2nd_tpat_r[7:6];
            keyp = alct_tx_2nd_tpat_r[14:8];
            lctSpec_FirstFr = alct_tx_2nd_tpat_r[25];
            dduSpec_LastFr = alct_tx_2nd_tpat_r[28];
            bxn_wrFifo = alct_tx_2nd_tpat_r[17:15];
            daqData = alct_tx_2nd_tpat_r[24:18];
            seq_seu = alct_tx_2nd_tpat_r[27:26];
            activeFeb_cfgDone = alct_tx_2nd_tpat_r[3];
            rsrvd_out[0] = alct_tx_2nd_tpat_r[1];
            rsrvd_out[1] = alct_tx_2nd_tpat_r[2];
        end
        if (alct_sync_mode) 
        begin
            alct_tx_1st_tpat_r = alct_tx_1st_tpat;
            alct_tx_2nd_tpat_r = alct_tx_2nd_tpat;
        end
        else 
        begin
            alct_tx_1st_tpat_r = {daqo[15], parity_out[1:0], daqo[14], daqo[6:0], bxn_mux_e[2:0], hn_e, h_e, hfa_e, validh_e, actv_feb_fg_e, parity_out[5], parity_out[4]};
            alct_tx_2nd_tpat_r = {daqo[16], parity_out[3:2], daqo[17], daqo[13:7], daqo[18], bxn_mux_e[4:3], ln_e, l_e, lfa_e, validl_e, 1'd1, ttc_bx0_e, parity_out[6]};
        end
    end
    // output data storage
    outfifo of
    (
        {hfa, h, hn[5:0], validh, lfa, l, ln[5:0], validl, daqo, bxn[8:0]},
        os_enable && (!input_disr),
        clk,
        OSre,
        tck2b,
        OSdata[47:0],
        OSdata[48],
        trig_info_en,
        NoSpaceForDAQ
    );
    // Test point outputs
    assign TP0 = {seq_cmd_r, daqo[18], validhd, validh, validl, ttc_l1reset, fmm_trig_stop, ttc_bx0, ttc_start_trigger, ttc_stop_trigger, l1awindowTP, l1aTP, ~input_disr};
    assign TP1 = {alct_tx_2nd_tpat_r[16:1], alct_tx_1st_tpat_r[16:1]};
endmodule
