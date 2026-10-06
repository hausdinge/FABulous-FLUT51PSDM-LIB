module FLUT51PSDM
    #(
`ifdef EMULATION
        parameter [1503:0] Emulate_Bitstream=1504'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=1112
    )
    (
 //N
        output  [3:0] N1BEG,        //TilePort({N} OUTPUT N1BEG[3:0])
        output  [7:0] N2BEG,        //TilePort({N} OUTPUT N2BEG[7:0])
        output  [7:0] N2BEGb,        //TilePort({N} OUTPUT N2BEGb[7:0])
        output  [15:0] N4BEG,        //TilePort({N} OUTPUT N4BEG[3:0])
        output  [15:0] NN4BEG,        //TilePort({N} OUTPUT NN4BEG[3:0])
        input  [3:0] S1END,        //TilePort({N} INPUT S1END[3:0])
        input  [7:0] S2MID,        //TilePort({N} INPUT S2MID[7:0])
        input  [7:0] S2END,        //TilePort({N} INPUT S2END[7:0])
        input  [15:0] S4END,        //TilePort({N} INPUT S4END[3:0])
        input  [15:0] SS4END,        //TilePort({N} INPUT SS4END[3:0])
        output  [0:0] Co,        //TilePort({N} OUTPUT Co[0:0])
 //E
        output  [3:0] E1BEG,        //TilePort({E} OUTPUT E1BEG[3:0])
        output  [7:0] E2BEG,        //TilePort({E} OUTPUT E2BEG[7:0])
        output  [7:0] E2BEGb,        //TilePort({E} OUTPUT E2BEGb[7:0])
        output  [15:0] EE4BEG,        //TilePort({E} OUTPUT EE4BEG[3:0])
        output  [11:0] E6BEG,        //TilePort({E} OUTPUT E6BEG[1:0])
        input  [3:0] W1END,        //TilePort({E} INPUT W1END[3:0])
        input  [7:0] W2MID,        //TilePort({E} INPUT W2MID[7:0])
        input  [7:0] W2END,        //TilePort({E} INPUT W2END[7:0])
        input  [15:0] WW4END,        //TilePort({E} INPUT WW4END[3:0])
        input  [11:0] W6END,        //TilePort({E} INPUT W6END[1:0])
 //W
        input  [3:0] E1END,        //TilePort({W} INPUT E1END[3:0])
        input  [7:0] E2MID,        //TilePort({W} INPUT E2MID[7:0])
        input  [7:0] E2END,        //TilePort({W} INPUT E2END[7:0])
        input  [15:0] EE4END,        //TilePort({W} INPUT EE4END[3:0])
        input  [11:0] E6END,        //TilePort({W} INPUT E6END[1:0])
        output  [3:0] W1BEG,        //TilePort({W} OUTPUT W1BEG[3:0])
        output  [7:0] W2BEG,        //TilePort({W} OUTPUT W2BEG[7:0])
        output  [7:0] W2BEGb,        //TilePort({W} OUTPUT W2BEGb[7:0])
        output  [15:0] WW4BEG,        //TilePort({W} OUTPUT WW4BEG[3:0])
        output  [11:0] W6BEG,        //TilePort({W} OUTPUT W6BEG[1:0])
 //S
        input  [3:0] N1END,        //TilePort({S} INPUT N1END[3:0])
        input  [7:0] N2MID,        //TilePort({S} INPUT N2MID[7:0])
        input  [7:0] N2END,        //TilePort({S} INPUT N2END[7:0])
        input  [15:0] N4END,        //TilePort({S} INPUT N4END[3:0])
        input  [15:0] NN4END,        //TilePort({S} INPUT NN4END[3:0])
        output  [3:0] S1BEG,        //TilePort({S} OUTPUT S1BEG[3:0])
        output  [7:0] S2BEG,        //TilePort({S} OUTPUT S2BEG[7:0])
        output  [7:0] S2BEGb,        //TilePort({S} OUTPUT S2BEGb[7:0])
        output  [15:0] S4BEG,        //TilePort({S} OUTPUT S4BEG[3:0])
        output  [15:0] SS4BEG,        //TilePort({S} OUTPUT SS4BEG[3:0])
        input  [0:0] Ci,        //TilePort({S} INPUT Ci[0:0])
    //Tile IO ports from BELs
        input  UserCLK,
        output  UserCLKo,
        input  [FrameBitsPerRow-1:0] FrameData, //CONFIG_PORT
        output  [FrameBitsPerRow-1:0] FrameData_O,
        input  [MaxFramesPerCol-1:0] FrameStrobe, //CONFIG_PORT
        output  [MaxFramesPerCol-1:0] FrameStrobe_O
    //global
);
 //signal declarations
 //BEL ports (e.g., slices)
wire LA_A0;
wire LA_A1;
wire LA_A2;
wire LA_A3;
wire LA_A4;
wire LA_AX;
wire LA_Ci;
wire LA_SR;
wire LA_EN;
wire LA_AY4;
wire LA_AQ4;
wire LA_AY5;
wire LA_AQ5;
wire LA_Co;
wire LB_A0;
wire LB_A1;
wire LB_A2;
wire LB_A3;
wire LB_A4;
wire LB_AX;
wire LB_Ci;
wire LB_SR;
wire LB_EN;
wire LB_AY4;
wire LB_AQ4;
wire LB_AY5;
wire LB_AQ5;
wire LB_Co;
wire LC_A0;
wire LC_A1;
wire LC_A2;
wire LC_A3;
wire LC_A4;
wire LC_AX;
wire LC_Ci;
wire LC_SR;
wire LC_EN;
wire LC_AY4;
wire LC_AQ4;
wire LC_AY5;
wire LC_AQ5;
wire LC_Co;
wire LD_A0;
wire LD_A1;
wire LD_A2;
wire LD_A3;
wire LD_A4;
wire LD_AX;
wire LD_Ci;
wire LD_SR;
wire LD_EN;
wire LD_AY4;
wire LD_AQ4;
wire LD_AY5;
wire LD_AQ5;
wire LD_Co;
wire LE_A0;
wire LE_A1;
wire LE_A2;
wire LE_A3;
wire LE_A4;
wire LE_AX;
wire LE_Ci;
wire LE_SR;
wire LE_EN;
wire LE_AY4;
wire LE_AQ4;
wire LE_AY5;
wire LE_AQ5;
wire LE_Co;
wire LF_A0;
wire LF_A1;
wire LF_A2;
wire LF_A3;
wire LF_A4;
wire LF_AX;
wire LF_Ci;
wire LF_SR;
wire LF_EN;
wire LF_AY4;
wire LF_AQ4;
wire LF_AY5;
wire LF_AQ5;
wire LF_Co;
wire LG_A0;
wire LG_A1;
wire LG_A2;
wire LG_A3;
wire LG_A4;
wire LG_AX;
wire LG_Ci;
wire LG_SR;
wire LG_EN;
wire LG_AY4;
wire LG_AQ4;
wire LG_AY5;
wire LG_AQ5;
wire LG_Co;
wire LH_A0;
wire LH_A1;
wire LH_A2;
wire LH_A3;
wire LH_A4;
wire LH_AX;
wire LH_Ci;
wire LH_SR;
wire LH_EN;
wire LH_AY4;
wire LH_AQ4;
wire LH_AY5;
wire LH_AQ5;
wire LH_Co;
wire A;
wire B;
wire C;
wire D;
wire E;
wire F;
wire G;
wire H;
wire S0;
wire S1;
wire S2;
wire S3;
wire M_AB;
wire M_AD;
wire M_AH;
wire M_EF;
 //Jump wires
wire[8-1:0] JN2BEG;
wire[8-1:0] JE2BEG;
wire[8-1:0] JS2BEG;
wire[8-1:0] JW2BEG;
wire[1-1:0] J_SR_BEG;
wire[1-1:0] J_EN_BEG;
wire[64-1:0] HBEG;
wire[16-1:0] OSELBEG;
 //internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
wire[NoConfigBits-1:0] ConfigBits;
wire[NoConfigBits-1:0] ConfigBits_N;

 //Connection for outgoing wires
wire[FrameBitsPerRow-1:0] FrameData_i;
wire[FrameBitsPerRow-1:0] FrameData_O_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_O_i;
wire[15:0] N4END_i;
wire[11:0] N4BEG_i;
wire[15:0] NN4END_i;
wire[11:0] NN4BEG_i;
wire[15:0] EE4END_i;
wire[11:0] EE4BEG_i;
wire[11:0] E6END_i;
wire[9:0] E6BEG_i;
wire[15:0] S4END_i;
wire[11:0] S4BEG_i;
wire[15:0] SS4END_i;
wire[11:0] SS4BEG_i;
wire[15:0] WW4END_i;
wire[11:0] WW4BEG_i;
wire[11:0] W6END_i;
wire[9:0] W6BEG_i;

assign FrameData_O_i = FrameData_i;

my_buf data_inbuf_0 (
    .A(FrameData[0]),
    .X(FrameData_i[0])
);

my_buf data_inbuf_1 (
    .A(FrameData[1]),
    .X(FrameData_i[1])
);

my_buf data_inbuf_2 (
    .A(FrameData[2]),
    .X(FrameData_i[2])
);

my_buf data_inbuf_3 (
    .A(FrameData[3]),
    .X(FrameData_i[3])
);

my_buf data_inbuf_4 (
    .A(FrameData[4]),
    .X(FrameData_i[4])
);

my_buf data_inbuf_5 (
    .A(FrameData[5]),
    .X(FrameData_i[5])
);

my_buf data_inbuf_6 (
    .A(FrameData[6]),
    .X(FrameData_i[6])
);

my_buf data_inbuf_7 (
    .A(FrameData[7]),
    .X(FrameData_i[7])
);

my_buf data_inbuf_8 (
    .A(FrameData[8]),
    .X(FrameData_i[8])
);

my_buf data_inbuf_9 (
    .A(FrameData[9]),
    .X(FrameData_i[9])
);

my_buf data_inbuf_10 (
    .A(FrameData[10]),
    .X(FrameData_i[10])
);

my_buf data_inbuf_11 (
    .A(FrameData[11]),
    .X(FrameData_i[11])
);

my_buf data_inbuf_12 (
    .A(FrameData[12]),
    .X(FrameData_i[12])
);

my_buf data_inbuf_13 (
    .A(FrameData[13]),
    .X(FrameData_i[13])
);

my_buf data_inbuf_14 (
    .A(FrameData[14]),
    .X(FrameData_i[14])
);

my_buf data_inbuf_15 (
    .A(FrameData[15]),
    .X(FrameData_i[15])
);

my_buf data_inbuf_16 (
    .A(FrameData[16]),
    .X(FrameData_i[16])
);

my_buf data_inbuf_17 (
    .A(FrameData[17]),
    .X(FrameData_i[17])
);

my_buf data_inbuf_18 (
    .A(FrameData[18]),
    .X(FrameData_i[18])
);

my_buf data_inbuf_19 (
    .A(FrameData[19]),
    .X(FrameData_i[19])
);

my_buf data_inbuf_20 (
    .A(FrameData[20]),
    .X(FrameData_i[20])
);

my_buf data_inbuf_21 (
    .A(FrameData[21]),
    .X(FrameData_i[21])
);

my_buf data_inbuf_22 (
    .A(FrameData[22]),
    .X(FrameData_i[22])
);

my_buf data_inbuf_23 (
    .A(FrameData[23]),
    .X(FrameData_i[23])
);

my_buf data_inbuf_24 (
    .A(FrameData[24]),
    .X(FrameData_i[24])
);

my_buf data_inbuf_25 (
    .A(FrameData[25]),
    .X(FrameData_i[25])
);

my_buf data_inbuf_26 (
    .A(FrameData[26]),
    .X(FrameData_i[26])
);

my_buf data_inbuf_27 (
    .A(FrameData[27]),
    .X(FrameData_i[27])
);

my_buf data_inbuf_28 (
    .A(FrameData[28]),
    .X(FrameData_i[28])
);

my_buf data_inbuf_29 (
    .A(FrameData[29]),
    .X(FrameData_i[29])
);

my_buf data_inbuf_30 (
    .A(FrameData[30]),
    .X(FrameData_i[30])
);

my_buf data_inbuf_31 (
    .A(FrameData[31]),
    .X(FrameData_i[31])
);

my_buf data_outbuf_0 (
    .A(FrameData_O_i[0]),
    .X(FrameData_O[0])
);

my_buf data_outbuf_1 (
    .A(FrameData_O_i[1]),
    .X(FrameData_O[1])
);

my_buf data_outbuf_2 (
    .A(FrameData_O_i[2]),
    .X(FrameData_O[2])
);

my_buf data_outbuf_3 (
    .A(FrameData_O_i[3]),
    .X(FrameData_O[3])
);

my_buf data_outbuf_4 (
    .A(FrameData_O_i[4]),
    .X(FrameData_O[4])
);

my_buf data_outbuf_5 (
    .A(FrameData_O_i[5]),
    .X(FrameData_O[5])
);

my_buf data_outbuf_6 (
    .A(FrameData_O_i[6]),
    .X(FrameData_O[6])
);

my_buf data_outbuf_7 (
    .A(FrameData_O_i[7]),
    .X(FrameData_O[7])
);

my_buf data_outbuf_8 (
    .A(FrameData_O_i[8]),
    .X(FrameData_O[8])
);

my_buf data_outbuf_9 (
    .A(FrameData_O_i[9]),
    .X(FrameData_O[9])
);

my_buf data_outbuf_10 (
    .A(FrameData_O_i[10]),
    .X(FrameData_O[10])
);

my_buf data_outbuf_11 (
    .A(FrameData_O_i[11]),
    .X(FrameData_O[11])
);

my_buf data_outbuf_12 (
    .A(FrameData_O_i[12]),
    .X(FrameData_O[12])
);

my_buf data_outbuf_13 (
    .A(FrameData_O_i[13]),
    .X(FrameData_O[13])
);

my_buf data_outbuf_14 (
    .A(FrameData_O_i[14]),
    .X(FrameData_O[14])
);

my_buf data_outbuf_15 (
    .A(FrameData_O_i[15]),
    .X(FrameData_O[15])
);

my_buf data_outbuf_16 (
    .A(FrameData_O_i[16]),
    .X(FrameData_O[16])
);

my_buf data_outbuf_17 (
    .A(FrameData_O_i[17]),
    .X(FrameData_O[17])
);

my_buf data_outbuf_18 (
    .A(FrameData_O_i[18]),
    .X(FrameData_O[18])
);

my_buf data_outbuf_19 (
    .A(FrameData_O_i[19]),
    .X(FrameData_O[19])
);

my_buf data_outbuf_20 (
    .A(FrameData_O_i[20]),
    .X(FrameData_O[20])
);

my_buf data_outbuf_21 (
    .A(FrameData_O_i[21]),
    .X(FrameData_O[21])
);

my_buf data_outbuf_22 (
    .A(FrameData_O_i[22]),
    .X(FrameData_O[22])
);

my_buf data_outbuf_23 (
    .A(FrameData_O_i[23]),
    .X(FrameData_O[23])
);

my_buf data_outbuf_24 (
    .A(FrameData_O_i[24]),
    .X(FrameData_O[24])
);

my_buf data_outbuf_25 (
    .A(FrameData_O_i[25]),
    .X(FrameData_O[25])
);

my_buf data_outbuf_26 (
    .A(FrameData_O_i[26]),
    .X(FrameData_O[26])
);

my_buf data_outbuf_27 (
    .A(FrameData_O_i[27]),
    .X(FrameData_O[27])
);

my_buf data_outbuf_28 (
    .A(FrameData_O_i[28]),
    .X(FrameData_O[28])
);

my_buf data_outbuf_29 (
    .A(FrameData_O_i[29]),
    .X(FrameData_O[29])
);

my_buf data_outbuf_30 (
    .A(FrameData_O_i[30]),
    .X(FrameData_O[30])
);

my_buf data_outbuf_31 (
    .A(FrameData_O_i[31]),
    .X(FrameData_O[31])
);

assign FrameStrobe_O_i = FrameStrobe_i;

my_buf strobe_inbuf_0 (
    .A(FrameStrobe[0]),
    .X(FrameStrobe_i[0])
);

my_buf strobe_inbuf_1 (
    .A(FrameStrobe[1]),
    .X(FrameStrobe_i[1])
);

my_buf strobe_inbuf_2 (
    .A(FrameStrobe[2]),
    .X(FrameStrobe_i[2])
);

my_buf strobe_inbuf_3 (
    .A(FrameStrobe[3]),
    .X(FrameStrobe_i[3])
);

my_buf strobe_inbuf_4 (
    .A(FrameStrobe[4]),
    .X(FrameStrobe_i[4])
);

my_buf strobe_inbuf_5 (
    .A(FrameStrobe[5]),
    .X(FrameStrobe_i[5])
);

my_buf strobe_inbuf_6 (
    .A(FrameStrobe[6]),
    .X(FrameStrobe_i[6])
);

my_buf strobe_inbuf_7 (
    .A(FrameStrobe[7]),
    .X(FrameStrobe_i[7])
);

my_buf strobe_inbuf_8 (
    .A(FrameStrobe[8]),
    .X(FrameStrobe_i[8])
);

my_buf strobe_inbuf_9 (
    .A(FrameStrobe[9]),
    .X(FrameStrobe_i[9])
);

my_buf strobe_inbuf_10 (
    .A(FrameStrobe[10]),
    .X(FrameStrobe_i[10])
);

my_buf strobe_inbuf_11 (
    .A(FrameStrobe[11]),
    .X(FrameStrobe_i[11])
);

my_buf strobe_inbuf_12 (
    .A(FrameStrobe[12]),
    .X(FrameStrobe_i[12])
);

my_buf strobe_inbuf_13 (
    .A(FrameStrobe[13]),
    .X(FrameStrobe_i[13])
);

my_buf strobe_inbuf_14 (
    .A(FrameStrobe[14]),
    .X(FrameStrobe_i[14])
);

my_buf strobe_inbuf_15 (
    .A(FrameStrobe[15]),
    .X(FrameStrobe_i[15])
);

my_buf strobe_inbuf_16 (
    .A(FrameStrobe[16]),
    .X(FrameStrobe_i[16])
);

my_buf strobe_inbuf_17 (
    .A(FrameStrobe[17]),
    .X(FrameStrobe_i[17])
);

my_buf strobe_inbuf_18 (
    .A(FrameStrobe[18]),
    .X(FrameStrobe_i[18])
);

my_buf strobe_inbuf_19 (
    .A(FrameStrobe[19]),
    .X(FrameStrobe_i[19])
);

my_buf strobe_outbuf_0 (
    .A(FrameStrobe_O_i[0]),
    .X(FrameStrobe_O[0])
);

my_buf strobe_outbuf_1 (
    .A(FrameStrobe_O_i[1]),
    .X(FrameStrobe_O[1])
);

my_buf strobe_outbuf_2 (
    .A(FrameStrobe_O_i[2]),
    .X(FrameStrobe_O[2])
);

my_buf strobe_outbuf_3 (
    .A(FrameStrobe_O_i[3]),
    .X(FrameStrobe_O[3])
);

my_buf strobe_outbuf_4 (
    .A(FrameStrobe_O_i[4]),
    .X(FrameStrobe_O[4])
);

my_buf strobe_outbuf_5 (
    .A(FrameStrobe_O_i[5]),
    .X(FrameStrobe_O[5])
);

my_buf strobe_outbuf_6 (
    .A(FrameStrobe_O_i[6]),
    .X(FrameStrobe_O[6])
);

my_buf strobe_outbuf_7 (
    .A(FrameStrobe_O_i[7]),
    .X(FrameStrobe_O[7])
);

my_buf strobe_outbuf_8 (
    .A(FrameStrobe_O_i[8]),
    .X(FrameStrobe_O[8])
);

my_buf strobe_outbuf_9 (
    .A(FrameStrobe_O_i[9]),
    .X(FrameStrobe_O[9])
);

my_buf strobe_outbuf_10 (
    .A(FrameStrobe_O_i[10]),
    .X(FrameStrobe_O[10])
);

my_buf strobe_outbuf_11 (
    .A(FrameStrobe_O_i[11]),
    .X(FrameStrobe_O[11])
);

my_buf strobe_outbuf_12 (
    .A(FrameStrobe_O_i[12]),
    .X(FrameStrobe_O[12])
);

my_buf strobe_outbuf_13 (
    .A(FrameStrobe_O_i[13]),
    .X(FrameStrobe_O[13])
);

my_buf strobe_outbuf_14 (
    .A(FrameStrobe_O_i[14]),
    .X(FrameStrobe_O[14])
);

my_buf strobe_outbuf_15 (
    .A(FrameStrobe_O_i[15]),
    .X(FrameStrobe_O[15])
);

my_buf strobe_outbuf_16 (
    .A(FrameStrobe_O_i[16]),
    .X(FrameStrobe_O[16])
);

my_buf strobe_outbuf_17 (
    .A(FrameStrobe_O_i[17]),
    .X(FrameStrobe_O[17])
);

my_buf strobe_outbuf_18 (
    .A(FrameStrobe_O_i[18]),
    .X(FrameStrobe_O[18])
);

my_buf strobe_outbuf_19 (
    .A(FrameStrobe_O_i[19]),
    .X(FrameStrobe_O[19])
);

assign N4BEG_i[15-4:0] = N4END_i[15:4];

my_buf N4END_inbuf_0 (
    .A(N4END[4]),
    .X(N4END_i[4])
);

my_buf N4END_inbuf_1 (
    .A(N4END[5]),
    .X(N4END_i[5])
);

my_buf N4END_inbuf_2 (
    .A(N4END[6]),
    .X(N4END_i[6])
);

my_buf N4END_inbuf_3 (
    .A(N4END[7]),
    .X(N4END_i[7])
);

my_buf N4END_inbuf_4 (
    .A(N4END[8]),
    .X(N4END_i[8])
);

my_buf N4END_inbuf_5 (
    .A(N4END[9]),
    .X(N4END_i[9])
);

my_buf N4END_inbuf_6 (
    .A(N4END[10]),
    .X(N4END_i[10])
);

my_buf N4END_inbuf_7 (
    .A(N4END[11]),
    .X(N4END_i[11])
);

my_buf N4END_inbuf_8 (
    .A(N4END[12]),
    .X(N4END_i[12])
);

my_buf N4END_inbuf_9 (
    .A(N4END[13]),
    .X(N4END_i[13])
);

my_buf N4END_inbuf_10 (
    .A(N4END[14]),
    .X(N4END_i[14])
);

my_buf N4END_inbuf_11 (
    .A(N4END[15]),
    .X(N4END_i[15])
);

my_buf N4BEG_outbuf_0 (
    .A(N4BEG_i[0]),
    .X(N4BEG[0])
);

my_buf N4BEG_outbuf_1 (
    .A(N4BEG_i[1]),
    .X(N4BEG[1])
);

my_buf N4BEG_outbuf_2 (
    .A(N4BEG_i[2]),
    .X(N4BEG[2])
);

my_buf N4BEG_outbuf_3 (
    .A(N4BEG_i[3]),
    .X(N4BEG[3])
);

my_buf N4BEG_outbuf_4 (
    .A(N4BEG_i[4]),
    .X(N4BEG[4])
);

my_buf N4BEG_outbuf_5 (
    .A(N4BEG_i[5]),
    .X(N4BEG[5])
);

my_buf N4BEG_outbuf_6 (
    .A(N4BEG_i[6]),
    .X(N4BEG[6])
);

my_buf N4BEG_outbuf_7 (
    .A(N4BEG_i[7]),
    .X(N4BEG[7])
);

my_buf N4BEG_outbuf_8 (
    .A(N4BEG_i[8]),
    .X(N4BEG[8])
);

my_buf N4BEG_outbuf_9 (
    .A(N4BEG_i[9]),
    .X(N4BEG[9])
);

my_buf N4BEG_outbuf_10 (
    .A(N4BEG_i[10]),
    .X(N4BEG[10])
);

my_buf N4BEG_outbuf_11 (
    .A(N4BEG_i[11]),
    .X(N4BEG[11])
);

assign NN4BEG_i[15-4:0] = NN4END_i[15:4];

my_buf NN4END_inbuf_0 (
    .A(NN4END[4]),
    .X(NN4END_i[4])
);

my_buf NN4END_inbuf_1 (
    .A(NN4END[5]),
    .X(NN4END_i[5])
);

my_buf NN4END_inbuf_2 (
    .A(NN4END[6]),
    .X(NN4END_i[6])
);

my_buf NN4END_inbuf_3 (
    .A(NN4END[7]),
    .X(NN4END_i[7])
);

my_buf NN4END_inbuf_4 (
    .A(NN4END[8]),
    .X(NN4END_i[8])
);

my_buf NN4END_inbuf_5 (
    .A(NN4END[9]),
    .X(NN4END_i[9])
);

my_buf NN4END_inbuf_6 (
    .A(NN4END[10]),
    .X(NN4END_i[10])
);

my_buf NN4END_inbuf_7 (
    .A(NN4END[11]),
    .X(NN4END_i[11])
);

my_buf NN4END_inbuf_8 (
    .A(NN4END[12]),
    .X(NN4END_i[12])
);

my_buf NN4END_inbuf_9 (
    .A(NN4END[13]),
    .X(NN4END_i[13])
);

my_buf NN4END_inbuf_10 (
    .A(NN4END[14]),
    .X(NN4END_i[14])
);

my_buf NN4END_inbuf_11 (
    .A(NN4END[15]),
    .X(NN4END_i[15])
);

my_buf NN4BEG_outbuf_0 (
    .A(NN4BEG_i[0]),
    .X(NN4BEG[0])
);

my_buf NN4BEG_outbuf_1 (
    .A(NN4BEG_i[1]),
    .X(NN4BEG[1])
);

my_buf NN4BEG_outbuf_2 (
    .A(NN4BEG_i[2]),
    .X(NN4BEG[2])
);

my_buf NN4BEG_outbuf_3 (
    .A(NN4BEG_i[3]),
    .X(NN4BEG[3])
);

my_buf NN4BEG_outbuf_4 (
    .A(NN4BEG_i[4]),
    .X(NN4BEG[4])
);

my_buf NN4BEG_outbuf_5 (
    .A(NN4BEG_i[5]),
    .X(NN4BEG[5])
);

my_buf NN4BEG_outbuf_6 (
    .A(NN4BEG_i[6]),
    .X(NN4BEG[6])
);

my_buf NN4BEG_outbuf_7 (
    .A(NN4BEG_i[7]),
    .X(NN4BEG[7])
);

my_buf NN4BEG_outbuf_8 (
    .A(NN4BEG_i[8]),
    .X(NN4BEG[8])
);

my_buf NN4BEG_outbuf_9 (
    .A(NN4BEG_i[9]),
    .X(NN4BEG[9])
);

my_buf NN4BEG_outbuf_10 (
    .A(NN4BEG_i[10]),
    .X(NN4BEG[10])
);

my_buf NN4BEG_outbuf_11 (
    .A(NN4BEG_i[11]),
    .X(NN4BEG[11])
);

assign EE4BEG_i[15-4:0] = EE4END_i[15:4];

my_buf EE4END_inbuf_0 (
    .A(EE4END[4]),
    .X(EE4END_i[4])
);

my_buf EE4END_inbuf_1 (
    .A(EE4END[5]),
    .X(EE4END_i[5])
);

my_buf EE4END_inbuf_2 (
    .A(EE4END[6]),
    .X(EE4END_i[6])
);

my_buf EE4END_inbuf_3 (
    .A(EE4END[7]),
    .X(EE4END_i[7])
);

my_buf EE4END_inbuf_4 (
    .A(EE4END[8]),
    .X(EE4END_i[8])
);

my_buf EE4END_inbuf_5 (
    .A(EE4END[9]),
    .X(EE4END_i[9])
);

my_buf EE4END_inbuf_6 (
    .A(EE4END[10]),
    .X(EE4END_i[10])
);

my_buf EE4END_inbuf_7 (
    .A(EE4END[11]),
    .X(EE4END_i[11])
);

my_buf EE4END_inbuf_8 (
    .A(EE4END[12]),
    .X(EE4END_i[12])
);

my_buf EE4END_inbuf_9 (
    .A(EE4END[13]),
    .X(EE4END_i[13])
);

my_buf EE4END_inbuf_10 (
    .A(EE4END[14]),
    .X(EE4END_i[14])
);

my_buf EE4END_inbuf_11 (
    .A(EE4END[15]),
    .X(EE4END_i[15])
);

my_buf EE4BEG_outbuf_0 (
    .A(EE4BEG_i[0]),
    .X(EE4BEG[0])
);

my_buf EE4BEG_outbuf_1 (
    .A(EE4BEG_i[1]),
    .X(EE4BEG[1])
);

my_buf EE4BEG_outbuf_2 (
    .A(EE4BEG_i[2]),
    .X(EE4BEG[2])
);

my_buf EE4BEG_outbuf_3 (
    .A(EE4BEG_i[3]),
    .X(EE4BEG[3])
);

my_buf EE4BEG_outbuf_4 (
    .A(EE4BEG_i[4]),
    .X(EE4BEG[4])
);

my_buf EE4BEG_outbuf_5 (
    .A(EE4BEG_i[5]),
    .X(EE4BEG[5])
);

my_buf EE4BEG_outbuf_6 (
    .A(EE4BEG_i[6]),
    .X(EE4BEG[6])
);

my_buf EE4BEG_outbuf_7 (
    .A(EE4BEG_i[7]),
    .X(EE4BEG[7])
);

my_buf EE4BEG_outbuf_8 (
    .A(EE4BEG_i[8]),
    .X(EE4BEG[8])
);

my_buf EE4BEG_outbuf_9 (
    .A(EE4BEG_i[9]),
    .X(EE4BEG[9])
);

my_buf EE4BEG_outbuf_10 (
    .A(EE4BEG_i[10]),
    .X(EE4BEG[10])
);

my_buf EE4BEG_outbuf_11 (
    .A(EE4BEG_i[11]),
    .X(EE4BEG[11])
);

assign E6BEG_i[11-2:0] = E6END_i[11:2];

my_buf E6END_inbuf_0 (
    .A(E6END[2]),
    .X(E6END_i[2])
);

my_buf E6END_inbuf_1 (
    .A(E6END[3]),
    .X(E6END_i[3])
);

my_buf E6END_inbuf_2 (
    .A(E6END[4]),
    .X(E6END_i[4])
);

my_buf E6END_inbuf_3 (
    .A(E6END[5]),
    .X(E6END_i[5])
);

my_buf E6END_inbuf_4 (
    .A(E6END[6]),
    .X(E6END_i[6])
);

my_buf E6END_inbuf_5 (
    .A(E6END[7]),
    .X(E6END_i[7])
);

my_buf E6END_inbuf_6 (
    .A(E6END[8]),
    .X(E6END_i[8])
);

my_buf E6END_inbuf_7 (
    .A(E6END[9]),
    .X(E6END_i[9])
);

my_buf E6END_inbuf_8 (
    .A(E6END[10]),
    .X(E6END_i[10])
);

my_buf E6END_inbuf_9 (
    .A(E6END[11]),
    .X(E6END_i[11])
);

my_buf E6BEG_outbuf_0 (
    .A(E6BEG_i[0]),
    .X(E6BEG[0])
);

my_buf E6BEG_outbuf_1 (
    .A(E6BEG_i[1]),
    .X(E6BEG[1])
);

my_buf E6BEG_outbuf_2 (
    .A(E6BEG_i[2]),
    .X(E6BEG[2])
);

my_buf E6BEG_outbuf_3 (
    .A(E6BEG_i[3]),
    .X(E6BEG[3])
);

my_buf E6BEG_outbuf_4 (
    .A(E6BEG_i[4]),
    .X(E6BEG[4])
);

my_buf E6BEG_outbuf_5 (
    .A(E6BEG_i[5]),
    .X(E6BEG[5])
);

my_buf E6BEG_outbuf_6 (
    .A(E6BEG_i[6]),
    .X(E6BEG[6])
);

my_buf E6BEG_outbuf_7 (
    .A(E6BEG_i[7]),
    .X(E6BEG[7])
);

my_buf E6BEG_outbuf_8 (
    .A(E6BEG_i[8]),
    .X(E6BEG[8])
);

my_buf E6BEG_outbuf_9 (
    .A(E6BEG_i[9]),
    .X(E6BEG[9])
);

assign S4BEG_i[15-4:0] = S4END_i[15:4];

my_buf S4END_inbuf_0 (
    .A(S4END[4]),
    .X(S4END_i[4])
);

my_buf S4END_inbuf_1 (
    .A(S4END[5]),
    .X(S4END_i[5])
);

my_buf S4END_inbuf_2 (
    .A(S4END[6]),
    .X(S4END_i[6])
);

my_buf S4END_inbuf_3 (
    .A(S4END[7]),
    .X(S4END_i[7])
);

my_buf S4END_inbuf_4 (
    .A(S4END[8]),
    .X(S4END_i[8])
);

my_buf S4END_inbuf_5 (
    .A(S4END[9]),
    .X(S4END_i[9])
);

my_buf S4END_inbuf_6 (
    .A(S4END[10]),
    .X(S4END_i[10])
);

my_buf S4END_inbuf_7 (
    .A(S4END[11]),
    .X(S4END_i[11])
);

my_buf S4END_inbuf_8 (
    .A(S4END[12]),
    .X(S4END_i[12])
);

my_buf S4END_inbuf_9 (
    .A(S4END[13]),
    .X(S4END_i[13])
);

my_buf S4END_inbuf_10 (
    .A(S4END[14]),
    .X(S4END_i[14])
);

my_buf S4END_inbuf_11 (
    .A(S4END[15]),
    .X(S4END_i[15])
);

my_buf S4BEG_outbuf_0 (
    .A(S4BEG_i[0]),
    .X(S4BEG[0])
);

my_buf S4BEG_outbuf_1 (
    .A(S4BEG_i[1]),
    .X(S4BEG[1])
);

my_buf S4BEG_outbuf_2 (
    .A(S4BEG_i[2]),
    .X(S4BEG[2])
);

my_buf S4BEG_outbuf_3 (
    .A(S4BEG_i[3]),
    .X(S4BEG[3])
);

my_buf S4BEG_outbuf_4 (
    .A(S4BEG_i[4]),
    .X(S4BEG[4])
);

my_buf S4BEG_outbuf_5 (
    .A(S4BEG_i[5]),
    .X(S4BEG[5])
);

my_buf S4BEG_outbuf_6 (
    .A(S4BEG_i[6]),
    .X(S4BEG[6])
);

my_buf S4BEG_outbuf_7 (
    .A(S4BEG_i[7]),
    .X(S4BEG[7])
);

my_buf S4BEG_outbuf_8 (
    .A(S4BEG_i[8]),
    .X(S4BEG[8])
);

my_buf S4BEG_outbuf_9 (
    .A(S4BEG_i[9]),
    .X(S4BEG[9])
);

my_buf S4BEG_outbuf_10 (
    .A(S4BEG_i[10]),
    .X(S4BEG[10])
);

my_buf S4BEG_outbuf_11 (
    .A(S4BEG_i[11]),
    .X(S4BEG[11])
);

assign SS4BEG_i[15-4:0] = SS4END_i[15:4];

my_buf SS4END_inbuf_0 (
    .A(SS4END[4]),
    .X(SS4END_i[4])
);

my_buf SS4END_inbuf_1 (
    .A(SS4END[5]),
    .X(SS4END_i[5])
);

my_buf SS4END_inbuf_2 (
    .A(SS4END[6]),
    .X(SS4END_i[6])
);

my_buf SS4END_inbuf_3 (
    .A(SS4END[7]),
    .X(SS4END_i[7])
);

my_buf SS4END_inbuf_4 (
    .A(SS4END[8]),
    .X(SS4END_i[8])
);

my_buf SS4END_inbuf_5 (
    .A(SS4END[9]),
    .X(SS4END_i[9])
);

my_buf SS4END_inbuf_6 (
    .A(SS4END[10]),
    .X(SS4END_i[10])
);

my_buf SS4END_inbuf_7 (
    .A(SS4END[11]),
    .X(SS4END_i[11])
);

my_buf SS4END_inbuf_8 (
    .A(SS4END[12]),
    .X(SS4END_i[12])
);

my_buf SS4END_inbuf_9 (
    .A(SS4END[13]),
    .X(SS4END_i[13])
);

my_buf SS4END_inbuf_10 (
    .A(SS4END[14]),
    .X(SS4END_i[14])
);

my_buf SS4END_inbuf_11 (
    .A(SS4END[15]),
    .X(SS4END_i[15])
);

my_buf SS4BEG_outbuf_0 (
    .A(SS4BEG_i[0]),
    .X(SS4BEG[0])
);

my_buf SS4BEG_outbuf_1 (
    .A(SS4BEG_i[1]),
    .X(SS4BEG[1])
);

my_buf SS4BEG_outbuf_2 (
    .A(SS4BEG_i[2]),
    .X(SS4BEG[2])
);

my_buf SS4BEG_outbuf_3 (
    .A(SS4BEG_i[3]),
    .X(SS4BEG[3])
);

my_buf SS4BEG_outbuf_4 (
    .A(SS4BEG_i[4]),
    .X(SS4BEG[4])
);

my_buf SS4BEG_outbuf_5 (
    .A(SS4BEG_i[5]),
    .X(SS4BEG[5])
);

my_buf SS4BEG_outbuf_6 (
    .A(SS4BEG_i[6]),
    .X(SS4BEG[6])
);

my_buf SS4BEG_outbuf_7 (
    .A(SS4BEG_i[7]),
    .X(SS4BEG[7])
);

my_buf SS4BEG_outbuf_8 (
    .A(SS4BEG_i[8]),
    .X(SS4BEG[8])
);

my_buf SS4BEG_outbuf_9 (
    .A(SS4BEG_i[9]),
    .X(SS4BEG[9])
);

my_buf SS4BEG_outbuf_10 (
    .A(SS4BEG_i[10]),
    .X(SS4BEG[10])
);

my_buf SS4BEG_outbuf_11 (
    .A(SS4BEG_i[11]),
    .X(SS4BEG[11])
);

assign WW4BEG_i[15-4:0] = WW4END_i[15:4];

my_buf WW4END_inbuf_0 (
    .A(WW4END[4]),
    .X(WW4END_i[4])
);

my_buf WW4END_inbuf_1 (
    .A(WW4END[5]),
    .X(WW4END_i[5])
);

my_buf WW4END_inbuf_2 (
    .A(WW4END[6]),
    .X(WW4END_i[6])
);

my_buf WW4END_inbuf_3 (
    .A(WW4END[7]),
    .X(WW4END_i[7])
);

my_buf WW4END_inbuf_4 (
    .A(WW4END[8]),
    .X(WW4END_i[8])
);

my_buf WW4END_inbuf_5 (
    .A(WW4END[9]),
    .X(WW4END_i[9])
);

my_buf WW4END_inbuf_6 (
    .A(WW4END[10]),
    .X(WW4END_i[10])
);

my_buf WW4END_inbuf_7 (
    .A(WW4END[11]),
    .X(WW4END_i[11])
);

my_buf WW4END_inbuf_8 (
    .A(WW4END[12]),
    .X(WW4END_i[12])
);

my_buf WW4END_inbuf_9 (
    .A(WW4END[13]),
    .X(WW4END_i[13])
);

my_buf WW4END_inbuf_10 (
    .A(WW4END[14]),
    .X(WW4END_i[14])
);

my_buf WW4END_inbuf_11 (
    .A(WW4END[15]),
    .X(WW4END_i[15])
);

my_buf WW4BEG_outbuf_0 (
    .A(WW4BEG_i[0]),
    .X(WW4BEG[0])
);

my_buf WW4BEG_outbuf_1 (
    .A(WW4BEG_i[1]),
    .X(WW4BEG[1])
);

my_buf WW4BEG_outbuf_2 (
    .A(WW4BEG_i[2]),
    .X(WW4BEG[2])
);

my_buf WW4BEG_outbuf_3 (
    .A(WW4BEG_i[3]),
    .X(WW4BEG[3])
);

my_buf WW4BEG_outbuf_4 (
    .A(WW4BEG_i[4]),
    .X(WW4BEG[4])
);

my_buf WW4BEG_outbuf_5 (
    .A(WW4BEG_i[5]),
    .X(WW4BEG[5])
);

my_buf WW4BEG_outbuf_6 (
    .A(WW4BEG_i[6]),
    .X(WW4BEG[6])
);

my_buf WW4BEG_outbuf_7 (
    .A(WW4BEG_i[7]),
    .X(WW4BEG[7])
);

my_buf WW4BEG_outbuf_8 (
    .A(WW4BEG_i[8]),
    .X(WW4BEG[8])
);

my_buf WW4BEG_outbuf_9 (
    .A(WW4BEG_i[9]),
    .X(WW4BEG[9])
);

my_buf WW4BEG_outbuf_10 (
    .A(WW4BEG_i[10]),
    .X(WW4BEG[10])
);

my_buf WW4BEG_outbuf_11 (
    .A(WW4BEG_i[11]),
    .X(WW4BEG[11])
);

assign W6BEG_i[11-2:0] = W6END_i[11:2];

my_buf W6END_inbuf_0 (
    .A(W6END[2]),
    .X(W6END_i[2])
);

my_buf W6END_inbuf_1 (
    .A(W6END[3]),
    .X(W6END_i[3])
);

my_buf W6END_inbuf_2 (
    .A(W6END[4]),
    .X(W6END_i[4])
);

my_buf W6END_inbuf_3 (
    .A(W6END[5]),
    .X(W6END_i[5])
);

my_buf W6END_inbuf_4 (
    .A(W6END[6]),
    .X(W6END_i[6])
);

my_buf W6END_inbuf_5 (
    .A(W6END[7]),
    .X(W6END_i[7])
);

my_buf W6END_inbuf_6 (
    .A(W6END[8]),
    .X(W6END_i[8])
);

my_buf W6END_inbuf_7 (
    .A(W6END[9]),
    .X(W6END_i[9])
);

my_buf W6END_inbuf_8 (
    .A(W6END[10]),
    .X(W6END_i[10])
);

my_buf W6END_inbuf_9 (
    .A(W6END[11]),
    .X(W6END_i[11])
);

my_buf W6BEG_outbuf_0 (
    .A(W6BEG_i[0]),
    .X(W6BEG[0])
);

my_buf W6BEG_outbuf_1 (
    .A(W6BEG_i[1]),
    .X(W6BEG[1])
);

my_buf W6BEG_outbuf_2 (
    .A(W6BEG_i[2]),
    .X(W6BEG[2])
);

my_buf W6BEG_outbuf_3 (
    .A(W6BEG_i[3]),
    .X(W6BEG[3])
);

my_buf W6BEG_outbuf_4 (
    .A(W6BEG_i[4]),
    .X(W6BEG[4])
);

my_buf W6BEG_outbuf_5 (
    .A(W6BEG_i[5]),
    .X(W6BEG[5])
);

my_buf W6BEG_outbuf_6 (
    .A(W6BEG_i[6]),
    .X(W6BEG[6])
);

my_buf W6BEG_outbuf_7 (
    .A(W6BEG_i[7]),
    .X(W6BEG[7])
);

my_buf W6BEG_outbuf_8 (
    .A(W6BEG_i[8]),
    .X(W6BEG[8])
);

my_buf W6BEG_outbuf_9 (
    .A(W6BEG_i[9]),
    .X(W6BEG[9])
);

clk_buf inst_clk_buf (
    .A(UserCLK),
    .X(UserCLKo)
);


 //configuration storage latches
FLUT51PSDM_ConfigMem
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Emulate_Bitstream)
    )
`endif
    Inst_FLUT51PSDM_ConfigMem
    (
    .FrameData(FrameData),
    .FrameStrobe(FrameStrobe),
    .ConfigBits(ConfigBits),
    .ConfigBits_N(ConfigBits_N)
);


 //BEL component instantiations
FLUT51PSDM_architecture Inst_LA_FLUT51PSDM_architecture (
    .A0(LA_A0),
    .A1(LA_A1),
    .A2(LA_A2),
    .A3(LA_A3),
    .A4(LA_A4),
    .AX(LA_AX),
    .Ci(LA_Ci),
    .SR(LA_SR),
    .EN(LA_EN),
    .AY4(LA_AY4),
    .AQ4(LA_AQ4),
    .AY5(LA_AY5),
    .AQ5(LA_AQ5),
    .Co(LA_Co),
    .UserCLK(UserCLK),
    .ConfigBits(ConfigBits[42-1:0])
);

FLUT51PSDM_architecture Inst_LB_FLUT51PSDM_architecture (
    .A0(LB_A0),
    .A1(LB_A1),
    .A2(LB_A2),
    .A3(LB_A3),
    .A4(LB_A4),
    .AX(LB_AX),
    .Ci(LB_Ci),
    .SR(LB_SR),
    .EN(LB_EN),
    .AY4(LB_AY4),
    .AQ4(LB_AQ4),
    .AY5(LB_AY5),
    .AQ5(LB_AQ5),
    .Co(LB_Co),
    .UserCLK(UserCLK),
    .ConfigBits(ConfigBits[84-1:42])
);

FLUT51PSDM_architecture Inst_LC_FLUT51PSDM_architecture (
    .A0(LC_A0),
    .A1(LC_A1),
    .A2(LC_A2),
    .A3(LC_A3),
    .A4(LC_A4),
    .AX(LC_AX),
    .Ci(LC_Ci),
    .SR(LC_SR),
    .EN(LC_EN),
    .AY4(LC_AY4),
    .AQ4(LC_AQ4),
    .AY5(LC_AY5),
    .AQ5(LC_AQ5),
    .Co(LC_Co),
    .UserCLK(UserCLK),
    .ConfigBits(ConfigBits[126-1:84])
);

FLUT51PSDM_architecture Inst_LD_FLUT51PSDM_architecture (
    .A0(LD_A0),
    .A1(LD_A1),
    .A2(LD_A2),
    .A3(LD_A3),
    .A4(LD_A4),
    .AX(LD_AX),
    .Ci(LD_Ci),
    .SR(LD_SR),
    .EN(LD_EN),
    .AY4(LD_AY4),
    .AQ4(LD_AQ4),
    .AY5(LD_AY5),
    .AQ5(LD_AQ5),
    .Co(LD_Co),
    .UserCLK(UserCLK),
    .ConfigBits(ConfigBits[168-1:126])
);

FLUT51PSDM_architecture Inst_LE_FLUT51PSDM_architecture (
    .A0(LE_A0),
    .A1(LE_A1),
    .A2(LE_A2),
    .A3(LE_A3),
    .A4(LE_A4),
    .AX(LE_AX),
    .Ci(LE_Ci),
    .SR(LE_SR),
    .EN(LE_EN),
    .AY4(LE_AY4),
    .AQ4(LE_AQ4),
    .AY5(LE_AY5),
    .AQ5(LE_AQ5),
    .Co(LE_Co),
    .UserCLK(UserCLK),
    .ConfigBits(ConfigBits[210-1:168])
);

FLUT51PSDM_architecture Inst_LF_FLUT51PSDM_architecture (
    .A0(LF_A0),
    .A1(LF_A1),
    .A2(LF_A2),
    .A3(LF_A3),
    .A4(LF_A4),
    .AX(LF_AX),
    .Ci(LF_Ci),
    .SR(LF_SR),
    .EN(LF_EN),
    .AY4(LF_AY4),
    .AQ4(LF_AQ4),
    .AY5(LF_AY5),
    .AQ5(LF_AQ5),
    .Co(LF_Co),
    .UserCLK(UserCLK),
    .ConfigBits(ConfigBits[252-1:210])
);

FLUT51PSDM_architecture Inst_LG_FLUT51PSDM_architecture (
    .A0(LG_A0),
    .A1(LG_A1),
    .A2(LG_A2),
    .A3(LG_A3),
    .A4(LG_A4),
    .AX(LG_AX),
    .Ci(LG_Ci),
    .SR(LG_SR),
    .EN(LG_EN),
    .AY4(LG_AY4),
    .AQ4(LG_AQ4),
    .AY5(LG_AY5),
    .AQ5(LG_AQ5),
    .Co(LG_Co),
    .UserCLK(UserCLK),
    .ConfigBits(ConfigBits[294-1:252])
);

FLUT51PSDM_architecture Inst_LH_FLUT51PSDM_architecture (
    .A0(LH_A0),
    .A1(LH_A1),
    .A2(LH_A2),
    .A3(LH_A3),
    .A4(LH_A4),
    .AX(LH_AX),
    .Ci(LH_Ci),
    .SR(LH_SR),
    .EN(LH_EN),
    .AY4(LH_AY4),
    .AQ4(LH_AQ4),
    .AY5(LH_AY5),
    .AQ5(LH_AQ5),
    .Co(LH_Co),
    .UserCLK(UserCLK),
    .ConfigBits(ConfigBits[336-1:294])
);

MUX8LUT_frame_config_mux Inst_MUX8LUT_frame_config_mux (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .G(G),
    .H(H),
    .S({S3, S2, S1, S0}),
    .M_AB(M_AB),
    .M_AD(M_AD),
    .M_AH(M_AH),
    .M_EF(M_EF),
    .ConfigBits(ConfigBits[338-1:336])
);

FLUT51PSDM_switch_matrix Inst_FLUT51PSDM_switch_matrix (
    .N1END0(N1END[0]),
    .N1END1(N1END[1]),
    .N1END2(N1END[2]),
    .N1END3(N1END[3]),
    .N2MID0(N2MID[0]),
    .N2MID1(N2MID[1]),
    .N2MID2(N2MID[2]),
    .N2MID3(N2MID[3]),
    .N2MID4(N2MID[4]),
    .N2MID5(N2MID[5]),
    .N2MID6(N2MID[6]),
    .N2MID7(N2MID[7]),
    .N2END0(N2END[0]),
    .N2END1(N2END[1]),
    .N2END2(N2END[2]),
    .N2END3(N2END[3]),
    .N2END4(N2END[4]),
    .N2END5(N2END[5]),
    .N2END6(N2END[6]),
    .N2END7(N2END[7]),
    .N4END0(N4END[0]),
    .N4END1(N4END[1]),
    .N4END2(N4END[2]),
    .N4END3(N4END[3]),
    .NN4END0(NN4END[0]),
    .NN4END1(NN4END[1]),
    .NN4END2(NN4END[2]),
    .NN4END3(NN4END[3]),
    .E1END0(E1END[0]),
    .E1END1(E1END[1]),
    .E1END2(E1END[2]),
    .E1END3(E1END[3]),
    .E2MID0(E2MID[0]),
    .E2MID1(E2MID[1]),
    .E2MID2(E2MID[2]),
    .E2MID3(E2MID[3]),
    .E2MID4(E2MID[4]),
    .E2MID5(E2MID[5]),
    .E2MID6(E2MID[6]),
    .E2MID7(E2MID[7]),
    .E2END0(E2END[0]),
    .E2END1(E2END[1]),
    .E2END2(E2END[2]),
    .E2END3(E2END[3]),
    .E2END4(E2END[4]),
    .E2END5(E2END[5]),
    .E2END6(E2END[6]),
    .E2END7(E2END[7]),
    .EE4END0(EE4END[0]),
    .EE4END1(EE4END[1]),
    .EE4END2(EE4END[2]),
    .EE4END3(EE4END[3]),
    .E6END0(E6END[0]),
    .E6END1(E6END[1]),
    .S1END0(S1END[0]),
    .S1END1(S1END[1]),
    .S1END2(S1END[2]),
    .S1END3(S1END[3]),
    .S2MID0(S2MID[0]),
    .S2MID1(S2MID[1]),
    .S2MID2(S2MID[2]),
    .S2MID3(S2MID[3]),
    .S2MID4(S2MID[4]),
    .S2MID5(S2MID[5]),
    .S2MID6(S2MID[6]),
    .S2MID7(S2MID[7]),
    .S2END0(S2END[0]),
    .S2END1(S2END[1]),
    .S2END2(S2END[2]),
    .S2END3(S2END[3]),
    .S2END4(S2END[4]),
    .S2END5(S2END[5]),
    .S2END6(S2END[6]),
    .S2END7(S2END[7]),
    .S4END0(S4END[0]),
    .S4END1(S4END[1]),
    .S4END2(S4END[2]),
    .S4END3(S4END[3]),
    .SS4END0(SS4END[0]),
    .SS4END1(SS4END[1]),
    .SS4END2(SS4END[2]),
    .SS4END3(SS4END[3]),
    .W1END0(W1END[0]),
    .W1END1(W1END[1]),
    .W1END2(W1END[2]),
    .W1END3(W1END[3]),
    .W2MID0(W2MID[0]),
    .W2MID1(W2MID[1]),
    .W2MID2(W2MID[2]),
    .W2MID3(W2MID[3]),
    .W2MID4(W2MID[4]),
    .W2MID5(W2MID[5]),
    .W2MID6(W2MID[6]),
    .W2MID7(W2MID[7]),
    .W2END0(W2END[0]),
    .W2END1(W2END[1]),
    .W2END2(W2END[2]),
    .W2END3(W2END[3]),
    .W2END4(W2END[4]),
    .W2END5(W2END[5]),
    .W2END6(W2END[6]),
    .W2END7(W2END[7]),
    .WW4END0(WW4END[0]),
    .WW4END1(WW4END[1]),
    .WW4END2(WW4END[2]),
    .WW4END3(WW4END[3]),
    .W6END0(W6END[0]),
    .W6END1(W6END[1]),
    .Ci0(Ci[0]),
    .LA_AY4(LA_AY4),
    .LA_AQ4(LA_AQ4),
    .LA_AY5(LA_AY5),
    .LA_AQ5(LA_AQ5),
    .LA_Co(LA_Co),
    .LB_AY4(LB_AY4),
    .LB_AQ4(LB_AQ4),
    .LB_AY5(LB_AY5),
    .LB_AQ5(LB_AQ5),
    .LB_Co(LB_Co),
    .LC_AY4(LC_AY4),
    .LC_AQ4(LC_AQ4),
    .LC_AY5(LC_AY5),
    .LC_AQ5(LC_AQ5),
    .LC_Co(LC_Co),
    .LD_AY4(LD_AY4),
    .LD_AQ4(LD_AQ4),
    .LD_AY5(LD_AY5),
    .LD_AQ5(LD_AQ5),
    .LD_Co(LD_Co),
    .LE_AY4(LE_AY4),
    .LE_AQ4(LE_AQ4),
    .LE_AY5(LE_AY5),
    .LE_AQ5(LE_AQ5),
    .LE_Co(LE_Co),
    .LF_AY4(LF_AY4),
    .LF_AQ4(LF_AQ4),
    .LF_AY5(LF_AY5),
    .LF_AQ5(LF_AQ5),
    .LF_Co(LF_Co),
    .LG_AY4(LG_AY4),
    .LG_AQ4(LG_AQ4),
    .LG_AY5(LG_AY5),
    .LG_AQ5(LG_AQ5),
    .LG_Co(LG_Co),
    .LH_AY4(LH_AY4),
    .LH_AQ4(LH_AQ4),
    .LH_AY5(LH_AY5),
    .LH_AQ5(LH_AQ5),
    .LH_Co(LH_Co),
    .M_AB(M_AB),
    .M_AD(M_AD),
    .M_AH(M_AH),
    .M_EF(M_EF),
    .JN2END0(JN2BEG[0]),
    .JN2END1(JN2BEG[1]),
    .JN2END2(JN2BEG[2]),
    .JN2END3(JN2BEG[3]),
    .JN2END4(JN2BEG[4]),
    .JN2END5(JN2BEG[5]),
    .JN2END6(JN2BEG[6]),
    .JN2END7(JN2BEG[7]),
    .JE2END0(JE2BEG[0]),
    .JE2END1(JE2BEG[1]),
    .JE2END2(JE2BEG[2]),
    .JE2END3(JE2BEG[3]),
    .JE2END4(JE2BEG[4]),
    .JE2END5(JE2BEG[5]),
    .JE2END6(JE2BEG[6]),
    .JE2END7(JE2BEG[7]),
    .JS2END0(JS2BEG[0]),
    .JS2END1(JS2BEG[1]),
    .JS2END2(JS2BEG[2]),
    .JS2END3(JS2BEG[3]),
    .JS2END4(JS2BEG[4]),
    .JS2END5(JS2BEG[5]),
    .JS2END6(JS2BEG[6]),
    .JS2END7(JS2BEG[7]),
    .JW2END0(JW2BEG[0]),
    .JW2END1(JW2BEG[1]),
    .JW2END2(JW2BEG[2]),
    .JW2END3(JW2BEG[3]),
    .JW2END4(JW2BEG[4]),
    .JW2END5(JW2BEG[5]),
    .JW2END6(JW2BEG[6]),
    .JW2END7(JW2BEG[7]),
    .J_SR_END0(J_SR_BEG[0]),
    .J_EN_END0(J_EN_BEG[0]),
    .HEND0(HBEG[0]),
    .HEND1(HBEG[1]),
    .HEND2(HBEG[2]),
    .HEND3(HBEG[3]),
    .HEND4(HBEG[4]),
    .HEND5(HBEG[5]),
    .HEND6(HBEG[6]),
    .HEND7(HBEG[7]),
    .HEND8(HBEG[8]),
    .HEND9(HBEG[9]),
    .HEND10(HBEG[10]),
    .HEND11(HBEG[11]),
    .HEND12(HBEG[12]),
    .HEND13(HBEG[13]),
    .HEND14(HBEG[14]),
    .HEND15(HBEG[15]),
    .HEND16(HBEG[16]),
    .HEND17(HBEG[17]),
    .HEND18(HBEG[18]),
    .HEND19(HBEG[19]),
    .HEND20(HBEG[20]),
    .HEND21(HBEG[21]),
    .HEND22(HBEG[22]),
    .HEND23(HBEG[23]),
    .HEND24(HBEG[24]),
    .HEND25(HBEG[25]),
    .HEND26(HBEG[26]),
    .HEND27(HBEG[27]),
    .HEND28(HBEG[28]),
    .HEND29(HBEG[29]),
    .HEND30(HBEG[30]),
    .HEND31(HBEG[31]),
    .HEND32(HBEG[32]),
    .HEND33(HBEG[33]),
    .HEND34(HBEG[34]),
    .HEND35(HBEG[35]),
    .HEND36(HBEG[36]),
    .HEND37(HBEG[37]),
    .HEND38(HBEG[38]),
    .HEND39(HBEG[39]),
    .HEND40(HBEG[40]),
    .HEND41(HBEG[41]),
    .HEND42(HBEG[42]),
    .HEND43(HBEG[43]),
    .HEND44(HBEG[44]),
    .HEND45(HBEG[45]),
    .HEND46(HBEG[46]),
    .HEND47(HBEG[47]),
    .HEND48(HBEG[48]),
    .HEND49(HBEG[49]),
    .HEND50(HBEG[50]),
    .HEND51(HBEG[51]),
    .HEND52(HBEG[52]),
    .HEND53(HBEG[53]),
    .HEND54(HBEG[54]),
    .HEND55(HBEG[55]),
    .HEND56(HBEG[56]),
    .HEND57(HBEG[57]),
    .HEND58(HBEG[58]),
    .HEND59(HBEG[59]),
    .HEND60(HBEG[60]),
    .HEND61(HBEG[61]),
    .HEND62(HBEG[62]),
    .HEND63(HBEG[63]),
    .OSELEND0(OSELBEG[0]),
    .OSELEND1(OSELBEG[1]),
    .OSELEND2(OSELBEG[2]),
    .OSELEND3(OSELBEG[3]),
    .OSELEND4(OSELBEG[4]),
    .OSELEND5(OSELBEG[5]),
    .OSELEND6(OSELBEG[6]),
    .OSELEND7(OSELBEG[7]),
    .OSELEND8(OSELBEG[8]),
    .OSELEND9(OSELBEG[9]),
    .OSELEND10(OSELBEG[10]),
    .OSELEND11(OSELBEG[11]),
    .OSELEND12(OSELBEG[12]),
    .OSELEND13(OSELBEG[13]),
    .OSELEND14(OSELBEG[14]),
    .OSELEND15(OSELBEG[15]),
    .N1BEG0(N1BEG[0]),
    .N1BEG1(N1BEG[1]),
    .N1BEG2(N1BEG[2]),
    .N1BEG3(N1BEG[3]),
    .N2BEG0(N2BEG[0]),
    .N2BEG1(N2BEG[1]),
    .N2BEG2(N2BEG[2]),
    .N2BEG3(N2BEG[3]),
    .N2BEG4(N2BEG[4]),
    .N2BEG5(N2BEG[5]),
    .N2BEG6(N2BEG[6]),
    .N2BEG7(N2BEG[7]),
    .N2BEGb0(N2BEGb[0]),
    .N2BEGb1(N2BEGb[1]),
    .N2BEGb2(N2BEGb[2]),
    .N2BEGb3(N2BEGb[3]),
    .N2BEGb4(N2BEGb[4]),
    .N2BEGb5(N2BEGb[5]),
    .N2BEGb6(N2BEGb[6]),
    .N2BEGb7(N2BEGb[7]),
    .N4BEG0(N4BEG[12]),
    .N4BEG1(N4BEG[13]),
    .N4BEG2(N4BEG[14]),
    .N4BEG3(N4BEG[15]),
    .NN4BEG0(NN4BEG[12]),
    .NN4BEG1(NN4BEG[13]),
    .NN4BEG2(NN4BEG[14]),
    .NN4BEG3(NN4BEG[15]),
    .E1BEG0(E1BEG[0]),
    .E1BEG1(E1BEG[1]),
    .E1BEG2(E1BEG[2]),
    .E1BEG3(E1BEG[3]),
    .E2BEG0(E2BEG[0]),
    .E2BEG1(E2BEG[1]),
    .E2BEG2(E2BEG[2]),
    .E2BEG3(E2BEG[3]),
    .E2BEG4(E2BEG[4]),
    .E2BEG5(E2BEG[5]),
    .E2BEG6(E2BEG[6]),
    .E2BEG7(E2BEG[7]),
    .E2BEGb0(E2BEGb[0]),
    .E2BEGb1(E2BEGb[1]),
    .E2BEGb2(E2BEGb[2]),
    .E2BEGb3(E2BEGb[3]),
    .E2BEGb4(E2BEGb[4]),
    .E2BEGb5(E2BEGb[5]),
    .E2BEGb6(E2BEGb[6]),
    .E2BEGb7(E2BEGb[7]),
    .EE4BEG0(EE4BEG[12]),
    .EE4BEG1(EE4BEG[13]),
    .EE4BEG2(EE4BEG[14]),
    .EE4BEG3(EE4BEG[15]),
    .E6BEG0(E6BEG[10]),
    .E6BEG1(E6BEG[11]),
    .S1BEG0(S1BEG[0]),
    .S1BEG1(S1BEG[1]),
    .S1BEG2(S1BEG[2]),
    .S1BEG3(S1BEG[3]),
    .S2BEG0(S2BEG[0]),
    .S2BEG1(S2BEG[1]),
    .S2BEG2(S2BEG[2]),
    .S2BEG3(S2BEG[3]),
    .S2BEG4(S2BEG[4]),
    .S2BEG5(S2BEG[5]),
    .S2BEG6(S2BEG[6]),
    .S2BEG7(S2BEG[7]),
    .S2BEGb0(S2BEGb[0]),
    .S2BEGb1(S2BEGb[1]),
    .S2BEGb2(S2BEGb[2]),
    .S2BEGb3(S2BEGb[3]),
    .S2BEGb4(S2BEGb[4]),
    .S2BEGb5(S2BEGb[5]),
    .S2BEGb6(S2BEGb[6]),
    .S2BEGb7(S2BEGb[7]),
    .S4BEG0(S4BEG[12]),
    .S4BEG1(S4BEG[13]),
    .S4BEG2(S4BEG[14]),
    .S4BEG3(S4BEG[15]),
    .SS4BEG0(SS4BEG[12]),
    .SS4BEG1(SS4BEG[13]),
    .SS4BEG2(SS4BEG[14]),
    .SS4BEG3(SS4BEG[15]),
    .W1BEG0(W1BEG[0]),
    .W1BEG1(W1BEG[1]),
    .W1BEG2(W1BEG[2]),
    .W1BEG3(W1BEG[3]),
    .W2BEG0(W2BEG[0]),
    .W2BEG1(W2BEG[1]),
    .W2BEG2(W2BEG[2]),
    .W2BEG3(W2BEG[3]),
    .W2BEG4(W2BEG[4]),
    .W2BEG5(W2BEG[5]),
    .W2BEG6(W2BEG[6]),
    .W2BEG7(W2BEG[7]),
    .W2BEGb0(W2BEGb[0]),
    .W2BEGb1(W2BEGb[1]),
    .W2BEGb2(W2BEGb[2]),
    .W2BEGb3(W2BEGb[3]),
    .W2BEGb4(W2BEGb[4]),
    .W2BEGb5(W2BEGb[5]),
    .W2BEGb6(W2BEGb[6]),
    .W2BEGb7(W2BEGb[7]),
    .WW4BEG0(WW4BEG[12]),
    .WW4BEG1(WW4BEG[13]),
    .WW4BEG2(WW4BEG[14]),
    .WW4BEG3(WW4BEG[15]),
    .W6BEG0(W6BEG[10]),
    .W6BEG1(W6BEG[11]),
    .Co0(Co[0]),
    .LA_A0(LA_A0),
    .LA_A1(LA_A1),
    .LA_A2(LA_A2),
    .LA_A3(LA_A3),
    .LA_A4(LA_A4),
    .LA_AX(LA_AX),
    .LA_Ci(LA_Ci),
    .LA_SR(LA_SR),
    .LA_EN(LA_EN),
    .LB_A0(LB_A0),
    .LB_A1(LB_A1),
    .LB_A2(LB_A2),
    .LB_A3(LB_A3),
    .LB_A4(LB_A4),
    .LB_AX(LB_AX),
    .LB_Ci(LB_Ci),
    .LB_SR(LB_SR),
    .LB_EN(LB_EN),
    .LC_A0(LC_A0),
    .LC_A1(LC_A1),
    .LC_A2(LC_A2),
    .LC_A3(LC_A3),
    .LC_A4(LC_A4),
    .LC_AX(LC_AX),
    .LC_Ci(LC_Ci),
    .LC_SR(LC_SR),
    .LC_EN(LC_EN),
    .LD_A0(LD_A0),
    .LD_A1(LD_A1),
    .LD_A2(LD_A2),
    .LD_A3(LD_A3),
    .LD_A4(LD_A4),
    .LD_AX(LD_AX),
    .LD_Ci(LD_Ci),
    .LD_SR(LD_SR),
    .LD_EN(LD_EN),
    .LE_A0(LE_A0),
    .LE_A1(LE_A1),
    .LE_A2(LE_A2),
    .LE_A3(LE_A3),
    .LE_A4(LE_A4),
    .LE_AX(LE_AX),
    .LE_Ci(LE_Ci),
    .LE_SR(LE_SR),
    .LE_EN(LE_EN),
    .LF_A0(LF_A0),
    .LF_A1(LF_A1),
    .LF_A2(LF_A2),
    .LF_A3(LF_A3),
    .LF_A4(LF_A4),
    .LF_AX(LF_AX),
    .LF_Ci(LF_Ci),
    .LF_SR(LF_SR),
    .LF_EN(LF_EN),
    .LG_A0(LG_A0),
    .LG_A1(LG_A1),
    .LG_A2(LG_A2),
    .LG_A3(LG_A3),
    .LG_A4(LG_A4),
    .LG_AX(LG_AX),
    .LG_Ci(LG_Ci),
    .LG_SR(LG_SR),
    .LG_EN(LG_EN),
    .LH_A0(LH_A0),
    .LH_A1(LH_A1),
    .LH_A2(LH_A2),
    .LH_A3(LH_A3),
    .LH_A4(LH_A4),
    .LH_AX(LH_AX),
    .LH_Ci(LH_Ci),
    .LH_SR(LH_SR),
    .LH_EN(LH_EN),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .G(G),
    .H(H),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .S3(S3),
    .JN2BEG0(JN2BEG[0]),
    .JN2BEG1(JN2BEG[1]),
    .JN2BEG2(JN2BEG[2]),
    .JN2BEG3(JN2BEG[3]),
    .JN2BEG4(JN2BEG[4]),
    .JN2BEG5(JN2BEG[5]),
    .JN2BEG6(JN2BEG[6]),
    .JN2BEG7(JN2BEG[7]),
    .JE2BEG0(JE2BEG[0]),
    .JE2BEG1(JE2BEG[1]),
    .JE2BEG2(JE2BEG[2]),
    .JE2BEG3(JE2BEG[3]),
    .JE2BEG4(JE2BEG[4]),
    .JE2BEG5(JE2BEG[5]),
    .JE2BEG6(JE2BEG[6]),
    .JE2BEG7(JE2BEG[7]),
    .JS2BEG0(JS2BEG[0]),
    .JS2BEG1(JS2BEG[1]),
    .JS2BEG2(JS2BEG[2]),
    .JS2BEG3(JS2BEG[3]),
    .JS2BEG4(JS2BEG[4]),
    .JS2BEG5(JS2BEG[5]),
    .JS2BEG6(JS2BEG[6]),
    .JS2BEG7(JS2BEG[7]),
    .JW2BEG0(JW2BEG[0]),
    .JW2BEG1(JW2BEG[1]),
    .JW2BEG2(JW2BEG[2]),
    .JW2BEG3(JW2BEG[3]),
    .JW2BEG4(JW2BEG[4]),
    .JW2BEG5(JW2BEG[5]),
    .JW2BEG6(JW2BEG[6]),
    .JW2BEG7(JW2BEG[7]),
    .J_SR_BEG0(J_SR_BEG[0]),
    .J_EN_BEG0(J_EN_BEG[0]),
    .HBEG0(HBEG[0]),
    .HBEG1(HBEG[1]),
    .HBEG2(HBEG[2]),
    .HBEG3(HBEG[3]),
    .HBEG4(HBEG[4]),
    .HBEG5(HBEG[5]),
    .HBEG6(HBEG[6]),
    .HBEG7(HBEG[7]),
    .HBEG8(HBEG[8]),
    .HBEG9(HBEG[9]),
    .HBEG10(HBEG[10]),
    .HBEG11(HBEG[11]),
    .HBEG12(HBEG[12]),
    .HBEG13(HBEG[13]),
    .HBEG14(HBEG[14]),
    .HBEG15(HBEG[15]),
    .HBEG16(HBEG[16]),
    .HBEG17(HBEG[17]),
    .HBEG18(HBEG[18]),
    .HBEG19(HBEG[19]),
    .HBEG20(HBEG[20]),
    .HBEG21(HBEG[21]),
    .HBEG22(HBEG[22]),
    .HBEG23(HBEG[23]),
    .HBEG24(HBEG[24]),
    .HBEG25(HBEG[25]),
    .HBEG26(HBEG[26]),
    .HBEG27(HBEG[27]),
    .HBEG28(HBEG[28]),
    .HBEG29(HBEG[29]),
    .HBEG30(HBEG[30]),
    .HBEG31(HBEG[31]),
    .HBEG32(HBEG[32]),
    .HBEG33(HBEG[33]),
    .HBEG34(HBEG[34]),
    .HBEG35(HBEG[35]),
    .HBEG36(HBEG[36]),
    .HBEG37(HBEG[37]),
    .HBEG38(HBEG[38]),
    .HBEG39(HBEG[39]),
    .HBEG40(HBEG[40]),
    .HBEG41(HBEG[41]),
    .HBEG42(HBEG[42]),
    .HBEG43(HBEG[43]),
    .HBEG44(HBEG[44]),
    .HBEG45(HBEG[45]),
    .HBEG46(HBEG[46]),
    .HBEG47(HBEG[47]),
    .HBEG48(HBEG[48]),
    .HBEG49(HBEG[49]),
    .HBEG50(HBEG[50]),
    .HBEG51(HBEG[51]),
    .HBEG52(HBEG[52]),
    .HBEG53(HBEG[53]),
    .HBEG54(HBEG[54]),
    .HBEG55(HBEG[55]),
    .HBEG56(HBEG[56]),
    .HBEG57(HBEG[57]),
    .HBEG58(HBEG[58]),
    .HBEG59(HBEG[59]),
    .HBEG60(HBEG[60]),
    .HBEG61(HBEG[61]),
    .HBEG62(HBEG[62]),
    .HBEG63(HBEG[63]),
    .OSELBEG0(OSELBEG[0]),
    .OSELBEG1(OSELBEG[1]),
    .OSELBEG2(OSELBEG[2]),
    .OSELBEG3(OSELBEG[3]),
    .OSELBEG4(OSELBEG[4]),
    .OSELBEG5(OSELBEG[5]),
    .OSELBEG6(OSELBEG[6]),
    .OSELBEG7(OSELBEG[7]),
    .OSELBEG8(OSELBEG[8]),
    .OSELBEG9(OSELBEG[9]),
    .OSELBEG10(OSELBEG[10]),
    .OSELBEG11(OSELBEG[11]),
    .OSELBEG12(OSELBEG[12]),
    .OSELBEG13(OSELBEG[13]),
    .OSELBEG14(OSELBEG[14]),
    .OSELBEG15(OSELBEG[15]),
    .ConfigBits(ConfigBits[1112-1:338]),
    .ConfigBits_N(ConfigBits_N[1112-1:338])
);

endmodule