 // NumberOfConfigBits: 774
module FLUT51PSDM_switch_matrix
    #(
        parameter NoConfigBits=774
    )
    (
        input  N1END0,
        input  N1END1,
        input  N1END2,
        input  N1END3,
        input  N2MID0,
        input  N2MID1,
        input  N2MID2,
        input  N2MID3,
        input  N2MID4,
        input  N2MID5,
        input  N2MID6,
        input  N2MID7,
        input  N2END0,
        input  N2END1,
        input  N2END2,
        input  N2END3,
        input  N2END4,
        input  N2END5,
        input  N2END6,
        input  N2END7,
        input  N4END0,
        input  N4END1,
        input  N4END2,
        input  N4END3,
        input  NN4END0,
        input  NN4END1,
        input  NN4END2,
        input  NN4END3,
        input  E1END0,
        input  E1END1,
        input  E1END2,
        input  E1END3,
        input  E2MID0,
        input  E2MID1,
        input  E2MID2,
        input  E2MID3,
        input  E2MID4,
        input  E2MID5,
        input  E2MID6,
        input  E2MID7,
        input  E2END0,
        input  E2END1,
        input  E2END2,
        input  E2END3,
        input  E2END4,
        input  E2END5,
        input  E2END6,
        input  E2END7,
        input  EE4END0,
        input  EE4END1,
        input  EE4END2,
        input  EE4END3,
        input  E6END0,
        input  E6END1,
        input  S1END0,
        input  S1END1,
        input  S1END2,
        input  S1END3,
        input  S2MID0,
        input  S2MID1,
        input  S2MID2,
        input  S2MID3,
        input  S2MID4,
        input  S2MID5,
        input  S2MID6,
        input  S2MID7,
        input  S2END0,
        input  S2END1,
        input  S2END2,
        input  S2END3,
        input  S2END4,
        input  S2END5,
        input  S2END6,
        input  S2END7,
        input  S4END0,
        input  S4END1,
        input  S4END2,
        input  S4END3,
        input  SS4END0,
        input  SS4END1,
        input  SS4END2,
        input  SS4END3,
        input  W1END0,
        input  W1END1,
        input  W1END2,
        input  W1END3,
        input  W2MID0,
        input  W2MID1,
        input  W2MID2,
        input  W2MID3,
        input  W2MID4,
        input  W2MID5,
        input  W2MID6,
        input  W2MID7,
        input  W2END0,
        input  W2END1,
        input  W2END2,
        input  W2END3,
        input  W2END4,
        input  W2END5,
        input  W2END6,
        input  W2END7,
        input  WW4END0,
        input  WW4END1,
        input  WW4END2,
        input  WW4END3,
        input  W6END0,
        input  W6END1,
        input  Ci0,
        input  LA_AY4,
        input  LA_AQ4,
        input  LA_AY5,
        input  LA_AQ5,
        input  LA_Co,
        input  LB_AY4,
        input  LB_AQ4,
        input  LB_AY5,
        input  LB_AQ5,
        input  LB_Co,
        input  LC_AY4,
        input  LC_AQ4,
        input  LC_AY5,
        input  LC_AQ5,
        input  LC_Co,
        input  LD_AY4,
        input  LD_AQ4,
        input  LD_AY5,
        input  LD_AQ5,
        input  LD_Co,
        input  LE_AY4,
        input  LE_AQ4,
        input  LE_AY5,
        input  LE_AQ5,
        input  LE_Co,
        input  LF_AY4,
        input  LF_AQ4,
        input  LF_AY5,
        input  LF_AQ5,
        input  LF_Co,
        input  LG_AY4,
        input  LG_AQ4,
        input  LG_AY5,
        input  LG_AQ5,
        input  LG_Co,
        input  LH_AY4,
        input  LH_AQ4,
        input  LH_AY5,
        input  LH_AQ5,
        input  LH_Co,
        input  M_AB,
        input  M_AD,
        input  M_AH,
        input  M_EF,
        input  JN2END0,
        input  JN2END1,
        input  JN2END2,
        input  JN2END3,
        input  JN2END4,
        input  JN2END5,
        input  JN2END6,
        input  JN2END7,
        input  JE2END0,
        input  JE2END1,
        input  JE2END2,
        input  JE2END3,
        input  JE2END4,
        input  JE2END5,
        input  JE2END6,
        input  JE2END7,
        input  JS2END0,
        input  JS2END1,
        input  JS2END2,
        input  JS2END3,
        input  JS2END4,
        input  JS2END5,
        input  JS2END6,
        input  JS2END7,
        input  JW2END0,
        input  JW2END1,
        input  JW2END2,
        input  JW2END3,
        input  JW2END4,
        input  JW2END5,
        input  JW2END6,
        input  JW2END7,
        input  J_SR_END0,
        input  J_EN_END0,
        input  HEND0,
        input  HEND1,
        input  HEND2,
        input  HEND3,
        input  HEND4,
        input  HEND5,
        input  HEND6,
        input  HEND7,
        input  HEND8,
        input  HEND9,
        input  HEND10,
        input  HEND11,
        input  HEND12,
        input  HEND13,
        input  HEND14,
        input  HEND15,
        input  HEND16,
        input  HEND17,
        input  HEND18,
        input  HEND19,
        input  HEND20,
        input  HEND21,
        input  HEND22,
        input  HEND23,
        input  HEND24,
        input  HEND25,
        input  HEND26,
        input  HEND27,
        input  HEND28,
        input  HEND29,
        input  HEND30,
        input  HEND31,
        input  HEND32,
        input  HEND33,
        input  HEND34,
        input  HEND35,
        input  HEND36,
        input  HEND37,
        input  HEND38,
        input  HEND39,
        input  HEND40,
        input  HEND41,
        input  HEND42,
        input  HEND43,
        input  HEND44,
        input  HEND45,
        input  HEND46,
        input  HEND47,
        input  HEND48,
        input  HEND49,
        input  HEND50,
        input  HEND51,
        input  HEND52,
        input  HEND53,
        input  HEND54,
        input  HEND55,
        input  HEND56,
        input  HEND57,
        input  HEND58,
        input  HEND59,
        input  HEND60,
        input  HEND61,
        input  HEND62,
        input  HEND63,
        input  OSELEND0,
        input  OSELEND1,
        input  OSELEND2,
        input  OSELEND3,
        input  OSELEND4,
        input  OSELEND5,
        input  OSELEND6,
        input  OSELEND7,
        input  OSELEND8,
        input  OSELEND9,
        input  OSELEND10,
        input  OSELEND11,
        input  OSELEND12,
        input  OSELEND13,
        input  OSELEND14,
        input  OSELEND15,
        output  N1BEG0,
        output  N1BEG1,
        output  N1BEG2,
        output  N1BEG3,
        output  N2BEG0,
        output  N2BEG1,
        output  N2BEG2,
        output  N2BEG3,
        output  N2BEG4,
        output  N2BEG5,
        output  N2BEG6,
        output  N2BEG7,
        output  N2BEGb0,
        output  N2BEGb1,
        output  N2BEGb2,
        output  N2BEGb3,
        output  N2BEGb4,
        output  N2BEGb5,
        output  N2BEGb6,
        output  N2BEGb7,
        output  N4BEG0,
        output  N4BEG1,
        output  N4BEG2,
        output  N4BEG3,
        output  NN4BEG0,
        output  NN4BEG1,
        output  NN4BEG2,
        output  NN4BEG3,
        output  E1BEG0,
        output  E1BEG1,
        output  E1BEG2,
        output  E1BEG3,
        output  E2BEG0,
        output  E2BEG1,
        output  E2BEG2,
        output  E2BEG3,
        output  E2BEG4,
        output  E2BEG5,
        output  E2BEG6,
        output  E2BEG7,
        output  E2BEGb0,
        output  E2BEGb1,
        output  E2BEGb2,
        output  E2BEGb3,
        output  E2BEGb4,
        output  E2BEGb5,
        output  E2BEGb6,
        output  E2BEGb7,
        output  EE4BEG0,
        output  EE4BEG1,
        output  EE4BEG2,
        output  EE4BEG3,
        output  E6BEG0,
        output  E6BEG1,
        output  S1BEG0,
        output  S1BEG1,
        output  S1BEG2,
        output  S1BEG3,
        output  S2BEG0,
        output  S2BEG1,
        output  S2BEG2,
        output  S2BEG3,
        output  S2BEG4,
        output  S2BEG5,
        output  S2BEG6,
        output  S2BEG7,
        output  S2BEGb0,
        output  S2BEGb1,
        output  S2BEGb2,
        output  S2BEGb3,
        output  S2BEGb4,
        output  S2BEGb5,
        output  S2BEGb6,
        output  S2BEGb7,
        output  S4BEG0,
        output  S4BEG1,
        output  S4BEG2,
        output  S4BEG3,
        output  SS4BEG0,
        output  SS4BEG1,
        output  SS4BEG2,
        output  SS4BEG3,
        output  W1BEG0,
        output  W1BEG1,
        output  W1BEG2,
        output  W1BEG3,
        output  W2BEG0,
        output  W2BEG1,
        output  W2BEG2,
        output  W2BEG3,
        output  W2BEG4,
        output  W2BEG5,
        output  W2BEG6,
        output  W2BEG7,
        output  W2BEGb0,
        output  W2BEGb1,
        output  W2BEGb2,
        output  W2BEGb3,
        output  W2BEGb4,
        output  W2BEGb5,
        output  W2BEGb6,
        output  W2BEGb7,
        output  WW4BEG0,
        output  WW4BEG1,
        output  WW4BEG2,
        output  WW4BEG3,
        output  W6BEG0,
        output  W6BEG1,
        output  Co0,
        output  LA_A0,
        output  LA_A1,
        output  LA_A2,
        output  LA_A3,
        output  LA_A4,
        output  LA_AX,
        output  LA_Ci,
        output  LA_SR,
        output  LA_EN,
        output  LB_A0,
        output  LB_A1,
        output  LB_A2,
        output  LB_A3,
        output  LB_A4,
        output  LB_AX,
        output  LB_Ci,
        output  LB_SR,
        output  LB_EN,
        output  LC_A0,
        output  LC_A1,
        output  LC_A2,
        output  LC_A3,
        output  LC_A4,
        output  LC_AX,
        output  LC_Ci,
        output  LC_SR,
        output  LC_EN,
        output  LD_A0,
        output  LD_A1,
        output  LD_A2,
        output  LD_A3,
        output  LD_A4,
        output  LD_AX,
        output  LD_Ci,
        output  LD_SR,
        output  LD_EN,
        output  LE_A0,
        output  LE_A1,
        output  LE_A2,
        output  LE_A3,
        output  LE_A4,
        output  LE_AX,
        output  LE_Ci,
        output  LE_SR,
        output  LE_EN,
        output  LF_A0,
        output  LF_A1,
        output  LF_A2,
        output  LF_A3,
        output  LF_A4,
        output  LF_AX,
        output  LF_Ci,
        output  LF_SR,
        output  LF_EN,
        output  LG_A0,
        output  LG_A1,
        output  LG_A2,
        output  LG_A3,
        output  LG_A4,
        output  LG_AX,
        output  LG_Ci,
        output  LG_SR,
        output  LG_EN,
        output  LH_A0,
        output  LH_A1,
        output  LH_A2,
        output  LH_A3,
        output  LH_A4,
        output  LH_AX,
        output  LH_Ci,
        output  LH_SR,
        output  LH_EN,
        output  A,
        output  B,
        output  C,
        output  D,
        output  E,
        output  F,
        output  G,
        output  H,
        output  S0,
        output  S1,
        output  S2,
        output  S3,
        output  JN2BEG0,
        output  JN2BEG1,
        output  JN2BEG2,
        output  JN2BEG3,
        output  JN2BEG4,
        output  JN2BEG5,
        output  JN2BEG6,
        output  JN2BEG7,
        output  JE2BEG0,
        output  JE2BEG1,
        output  JE2BEG2,
        output  JE2BEG3,
        output  JE2BEG4,
        output  JE2BEG5,
        output  JE2BEG6,
        output  JE2BEG7,
        output  JS2BEG0,
        output  JS2BEG1,
        output  JS2BEG2,
        output  JS2BEG3,
        output  JS2BEG4,
        output  JS2BEG5,
        output  JS2BEG6,
        output  JS2BEG7,
        output  JW2BEG0,
        output  JW2BEG1,
        output  JW2BEG2,
        output  JW2BEG3,
        output  JW2BEG4,
        output  JW2BEG5,
        output  JW2BEG6,
        output  JW2BEG7,
        output  J_SR_BEG0,
        output  J_EN_BEG0,
        output  HBEG0,
        output  HBEG1,
        output  HBEG2,
        output  HBEG3,
        output  HBEG4,
        output  HBEG5,
        output  HBEG6,
        output  HBEG7,
        output  HBEG8,
        output  HBEG9,
        output  HBEG10,
        output  HBEG11,
        output  HBEG12,
        output  HBEG13,
        output  HBEG14,
        output  HBEG15,
        output  HBEG16,
        output  HBEG17,
        output  HBEG18,
        output  HBEG19,
        output  HBEG20,
        output  HBEG21,
        output  HBEG22,
        output  HBEG23,
        output  HBEG24,
        output  HBEG25,
        output  HBEG26,
        output  HBEG27,
        output  HBEG28,
        output  HBEG29,
        output  HBEG30,
        output  HBEG31,
        output  HBEG32,
        output  HBEG33,
        output  HBEG34,
        output  HBEG35,
        output  HBEG36,
        output  HBEG37,
        output  HBEG38,
        output  HBEG39,
        output  HBEG40,
        output  HBEG41,
        output  HBEG42,
        output  HBEG43,
        output  HBEG44,
        output  HBEG45,
        output  HBEG46,
        output  HBEG47,
        output  HBEG48,
        output  HBEG49,
        output  HBEG50,
        output  HBEG51,
        output  HBEG52,
        output  HBEG53,
        output  HBEG54,
        output  HBEG55,
        output  HBEG56,
        output  HBEG57,
        output  HBEG58,
        output  HBEG59,
        output  HBEG60,
        output  HBEG61,
        output  HBEG62,
        output  HBEG63,
        output  OSELBEG0,
        output  OSELBEG1,
        output  OSELBEG2,
        output  OSELBEG3,
        output  OSELBEG4,
        output  OSELBEG5,
        output  OSELBEG6,
        output  OSELBEG7,
        output  OSELBEG8,
        output  OSELBEG9,
        output  OSELBEG10,
        output  OSELBEG11,
        output  OSELBEG12,
        output  OSELBEG13,
        output  OSELBEG14,
        output  OSELBEG15,
 //global
        input  [NoConfigBits-1:0] ConfigBits,
        input  [NoConfigBits-1:0] ConfigBits_N
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[8-1:0] N1BEG0_input;
wire[8-1:0] N1BEG1_input;
wire[8-1:0] N1BEG2_input;
wire[8-1:0] N1BEG3_input;
wire[8-1:0] N4BEG0_input;
wire[8-1:0] N4BEG1_input;
wire[8-1:0] N4BEG2_input;
wire[8-1:0] N4BEG3_input;
wire[8-1:0] NN4BEG0_input;
wire[8-1:0] NN4BEG1_input;
wire[8-1:0] NN4BEG2_input;
wire[8-1:0] NN4BEG3_input;
wire[8-1:0] E1BEG0_input;
wire[8-1:0] E1BEG1_input;
wire[8-1:0] E1BEG2_input;
wire[8-1:0] E1BEG3_input;
wire[8-1:0] EE4BEG0_input;
wire[8-1:0] EE4BEG1_input;
wire[8-1:0] EE4BEG2_input;
wire[8-1:0] EE4BEG3_input;
wire[8-1:0] E6BEG0_input;
wire[8-1:0] E6BEG1_input;
wire[8-1:0] S1BEG0_input;
wire[8-1:0] S1BEG1_input;
wire[8-1:0] S1BEG2_input;
wire[8-1:0] S1BEG3_input;
wire[8-1:0] S4BEG0_input;
wire[8-1:0] S4BEG1_input;
wire[8-1:0] S4BEG2_input;
wire[8-1:0] S4BEG3_input;
wire[8-1:0] SS4BEG0_input;
wire[8-1:0] SS4BEG1_input;
wire[8-1:0] SS4BEG2_input;
wire[8-1:0] SS4BEG3_input;
wire[8-1:0] W1BEG0_input;
wire[8-1:0] W1BEG1_input;
wire[8-1:0] W1BEG2_input;
wire[8-1:0] W1BEG3_input;
wire[8-1:0] WW4BEG0_input;
wire[8-1:0] WW4BEG1_input;
wire[8-1:0] WW4BEG2_input;
wire[8-1:0] WW4BEG3_input;
wire[8-1:0] W6BEG0_input;
wire[8-1:0] W6BEG1_input;
wire[16-1:0] LA_A0_input;
wire[16-1:0] LA_A1_input;
wire[16-1:0] LA_A2_input;
wire[16-1:0] LA_A3_input;
wire[16-1:0] LA_A4_input;
wire[16-1:0] LA_AX_input;
wire[4-1:0] LA_Ci_input;
wire[8-1:0] LA_SR_input;
wire[8-1:0] LA_EN_input;
wire[16-1:0] LB_A0_input;
wire[16-1:0] LB_A1_input;
wire[16-1:0] LB_A2_input;
wire[16-1:0] LB_A3_input;
wire[16-1:0] LB_A4_input;
wire[16-1:0] LB_AX_input;
wire[4-1:0] LB_Ci_input;
wire[8-1:0] LB_SR_input;
wire[8-1:0] LB_EN_input;
wire[16-1:0] LC_A0_input;
wire[16-1:0] LC_A1_input;
wire[16-1:0] LC_A2_input;
wire[16-1:0] LC_A3_input;
wire[16-1:0] LC_A4_input;
wire[16-1:0] LC_AX_input;
wire[4-1:0] LC_Ci_input;
wire[8-1:0] LC_SR_input;
wire[8-1:0] LC_EN_input;
wire[16-1:0] LD_A0_input;
wire[16-1:0] LD_A1_input;
wire[16-1:0] LD_A2_input;
wire[16-1:0] LD_A3_input;
wire[16-1:0] LD_A4_input;
wire[16-1:0] LD_AX_input;
wire[4-1:0] LD_Ci_input;
wire[8-1:0] LD_SR_input;
wire[8-1:0] LD_EN_input;
wire[16-1:0] LE_A0_input;
wire[16-1:0] LE_A1_input;
wire[16-1:0] LE_A2_input;
wire[16-1:0] LE_A3_input;
wire[16-1:0] LE_A4_input;
wire[16-1:0] LE_AX_input;
wire[4-1:0] LE_Ci_input;
wire[8-1:0] LE_SR_input;
wire[8-1:0] LE_EN_input;
wire[16-1:0] LF_A0_input;
wire[16-1:0] LF_A1_input;
wire[16-1:0] LF_A2_input;
wire[16-1:0] LF_A3_input;
wire[16-1:0] LF_A4_input;
wire[16-1:0] LF_AX_input;
wire[4-1:0] LF_Ci_input;
wire[8-1:0] LF_SR_input;
wire[8-1:0] LF_EN_input;
wire[16-1:0] LG_A0_input;
wire[16-1:0] LG_A1_input;
wire[16-1:0] LG_A2_input;
wire[16-1:0] LG_A3_input;
wire[16-1:0] LG_A4_input;
wire[16-1:0] LG_AX_input;
wire[4-1:0] LG_Ci_input;
wire[8-1:0] LG_SR_input;
wire[8-1:0] LG_EN_input;
wire[16-1:0] LH_A0_input;
wire[16-1:0] LH_A1_input;
wire[16-1:0] LH_A2_input;
wire[16-1:0] LH_A3_input;
wire[16-1:0] LH_A4_input;
wire[16-1:0] LH_AX_input;
wire[4-1:0] LH_Ci_input;
wire[8-1:0] LH_SR_input;
wire[8-1:0] LH_EN_input;
wire[4-1:0] S0_input;
wire[4-1:0] S1_input;
wire[4-1:0] S2_input;
wire[4-1:0] S3_input;
wire[8-1:0] JN2BEG0_input;
wire[8-1:0] JN2BEG1_input;
wire[8-1:0] JN2BEG2_input;
wire[8-1:0] JN2BEG3_input;
wire[8-1:0] JN2BEG4_input;
wire[8-1:0] JN2BEG5_input;
wire[8-1:0] JN2BEG6_input;
wire[16-1:0] JN2BEG7_input;
wire[8-1:0] JE2BEG0_input;
wire[8-1:0] JE2BEG1_input;
wire[8-1:0] JE2BEG2_input;
wire[8-1:0] JE2BEG3_input;
wire[16-1:0] JE2BEG4_input;
wire[8-1:0] JE2BEG5_input;
wire[8-1:0] JE2BEG6_input;
wire[8-1:0] JE2BEG7_input;
wire[16-1:0] JS2BEG0_input;
wire[8-1:0] JS2BEG1_input;
wire[8-1:0] JS2BEG2_input;
wire[8-1:0] JS2BEG3_input;
wire[8-1:0] JS2BEG4_input;
wire[8-1:0] JS2BEG5_input;
wire[8-1:0] JS2BEG6_input;
wire[8-1:0] JS2BEG7_input;
wire[8-1:0] JW2BEG0_input;
wire[8-1:0] JW2BEG1_input;
wire[8-1:0] JW2BEG2_input;
wire[8-1:0] JW2BEG3_input;
wire[8-1:0] JW2BEG4_input;
wire[8-1:0] JW2BEG5_input;
wire[16-1:0] JW2BEG6_input;
wire[8-1:0] JW2BEG7_input;
wire[8-1:0] J_SR_BEG0_input;
wire[8-1:0] J_EN_BEG0_input;
wire[16-1:0] HBEG0_input;
wire[16-1:0] HBEG1_input;
wire[16-1:0] HBEG2_input;
wire[16-1:0] HBEG3_input;
wire[16-1:0] HBEG4_input;
wire[16-1:0] HBEG5_input;
wire[16-1:0] HBEG6_input;
wire[16-1:0] HBEG7_input;
wire[16-1:0] HBEG8_input;
wire[16-1:0] HBEG9_input;
wire[16-1:0] HBEG10_input;
wire[16-1:0] HBEG11_input;
wire[16-1:0] HBEG12_input;
wire[16-1:0] HBEG13_input;
wire[16-1:0] HBEG14_input;
wire[16-1:0] HBEG15_input;
wire[16-1:0] HBEG16_input;
wire[16-1:0] HBEG17_input;
wire[16-1:0] HBEG18_input;
wire[16-1:0] HBEG19_input;
wire[16-1:0] HBEG20_input;
wire[16-1:0] HBEG21_input;
wire[16-1:0] HBEG22_input;
wire[16-1:0] HBEG23_input;
wire[16-1:0] HBEG24_input;
wire[16-1:0] HBEG25_input;
wire[16-1:0] HBEG26_input;
wire[16-1:0] HBEG27_input;
wire[16-1:0] HBEG28_input;
wire[16-1:0] HBEG29_input;
wire[16-1:0] HBEG30_input;
wire[16-1:0] HBEG31_input;
wire[16-1:0] HBEG32_input;
wire[16-1:0] HBEG33_input;
wire[16-1:0] HBEG34_input;
wire[16-1:0] HBEG35_input;
wire[16-1:0] HBEG36_input;
wire[16-1:0] HBEG37_input;
wire[16-1:0] HBEG38_input;
wire[16-1:0] HBEG39_input;
wire[16-1:0] HBEG40_input;
wire[16-1:0] HBEG41_input;
wire[16-1:0] HBEG42_input;
wire[16-1:0] HBEG43_input;
wire[16-1:0] HBEG44_input;
wire[16-1:0] HBEG45_input;
wire[16-1:0] HBEG46_input;
wire[16-1:0] HBEG47_input;
wire[16-1:0] HBEG48_input;
wire[16-1:0] HBEG49_input;
wire[16-1:0] HBEG50_input;
wire[16-1:0] HBEG51_input;
wire[16-1:0] HBEG52_input;
wire[16-1:0] HBEG53_input;
wire[16-1:0] HBEG54_input;
wire[16-1:0] HBEG55_input;
wire[16-1:0] HBEG56_input;
wire[16-1:0] HBEG57_input;
wire[16-1:0] HBEG58_input;
wire[16-1:0] HBEG59_input;
wire[16-1:0] HBEG60_input;
wire[16-1:0] HBEG61_input;
wire[16-1:0] HBEG62_input;
wire[16-1:0] HBEG63_input;
wire[2-1:0] OSELBEG0_input;
wire[2-1:0] OSELBEG1_input;
wire[2-1:0] OSELBEG2_input;
wire[2-1:0] OSELBEG3_input;
wire[2-1:0] OSELBEG4_input;
wire[2-1:0] OSELBEG5_input;
wire[2-1:0] OSELBEG6_input;
wire[2-1:0] OSELBEG7_input;
wire[2-1:0] OSELBEG8_input;
wire[2-1:0] OSELBEG9_input;
wire[2-1:0] OSELBEG10_input;
wire[2-1:0] OSELBEG11_input;
wire[2-1:0] OSELBEG12_input;
wire[2-1:0] OSELBEG13_input;
wire[2-1:0] OSELBEG14_input;
wire[2-1:0] OSELBEG15_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer N1BEG0 MUX-8
assign N1BEG0_input = {OSELEND8,HEND54,HEND25,HEND11,HEND4,W2END5,E1END1,N4END3};
assign N1BEG0 = N1BEG0_input[ConfigBits[2:0]];
 //switch matrix multiplexer N1BEG1 MUX-8
assign N1BEG1_input = {OSELEND13,HEND57,HEND36,HEND22,HEND15,W2END6,E1END2,N2END1};
assign N1BEG1 = N1BEG1_input[ConfigBits[5:3]];
 //switch matrix multiplexer N1BEG2 MUX-8
assign N1BEG2_input = {OSELEND2,HEND47,HEND25,HEND18,HEND4,W2MID7,E2END3,N2MID2};
assign N1BEG2 = N1BEG2_input[ConfigBits[8:6]];
 //switch matrix multiplexer N1BEG3 MUX-8
assign N1BEG3_input = {OSELEND7,HEND50,HEND36,HEND29,HEND15,W2MID0,E2END4,N2END2};
assign N1BEG3 = N1BEG3_input[ConfigBits[11:9]];
 //switch matrix multiplexer N2BEG0 MUX-1
assign N2BEG0 = JN2END0;

 //switch matrix multiplexer N2BEG1 MUX-1
assign N2BEG1 = JN2END1;

 //switch matrix multiplexer N2BEG2 MUX-1
assign N2BEG2 = JN2END2;

 //switch matrix multiplexer N2BEG3 MUX-1
assign N2BEG3 = JN2END3;

 //switch matrix multiplexer N2BEG4 MUX-1
assign N2BEG4 = JN2END4;

 //switch matrix multiplexer N2BEG5 MUX-1
assign N2BEG5 = JN2END5;

 //switch matrix multiplexer N2BEG6 MUX-1
assign N2BEG6 = JN2END6;

 //switch matrix multiplexer N2BEG7 MUX-1
assign N2BEG7 = JN2END7;

 //switch matrix multiplexer N2BEGb0 MUX-1
assign N2BEGb0 = N2MID0;

 //switch matrix multiplexer N2BEGb1 MUX-1
assign N2BEGb1 = N2MID1;

 //switch matrix multiplexer N2BEGb2 MUX-1
assign N2BEGb2 = N2MID2;

 //switch matrix multiplexer N2BEGb3 MUX-1
assign N2BEGb3 = N2MID3;

 //switch matrix multiplexer N2BEGb4 MUX-1
assign N2BEGb4 = N2MID4;

 //switch matrix multiplexer N2BEGb5 MUX-1
assign N2BEGb5 = N2MID5;

 //switch matrix multiplexer N2BEGb6 MUX-1
assign N2BEGb6 = N2MID6;

 //switch matrix multiplexer N2BEGb7 MUX-1
assign N2BEGb7 = N2MID7;

 //switch matrix multiplexer N4BEG0 MUX-8
assign N4BEG0_input = {OSELEND12,HEND48,HEND27,HEND13,HEND6,W6END1,EE4END1,N2END0};
assign N4BEG0 = N4BEG0_input[ConfigBits[14:12]];
 //switch matrix multiplexer N4BEG1 MUX-8
assign N4BEG1_input = {OSELEND1,HEND59,HEND38,HEND16,HEND9,LB_AQ4,W6END0,EE4END2};
assign N4BEG1 = N4BEG1_input[ConfigBits[17:15]];
 //switch matrix multiplexer N4BEG2 MUX-8
assign N4BEG2_input = {OSELEND6,HEND41,HEND27,HEND20,HEND6,LF_AQ4,W1END3,E6END1};
assign N4BEG2 = N4BEG2_input[ConfigBits[20:18]];
 //switch matrix multiplexer N4BEG3 MUX-8
assign N4BEG3_input = {OSELEND11,HEND52,HEND38,HEND31,HEND9,LD_AQ4,W1END0,E6END0};
assign N4BEG3 = N4BEG3_input[ConfigBits[23:21]];
 //switch matrix multiplexer NN4BEG0 MUX-8
assign NN4BEG0_input = {OSELEND0,HEND63,HEND41,HEND34,HEND20,LH_AQ4,W6END1,EE4END1};
assign NN4BEG0 = NN4BEG0_input[ConfigBits[26:24]];
 //switch matrix multiplexer NN4BEG1 MUX-8
assign NN4BEG1_input = {OSELEND5,HEND52,HEND45,HEND31,HEND2,W6END0,EE4END2,N2MID3};
assign NN4BEG1 = NN4BEG1_input[ConfigBits[29:27]];
 //switch matrix multiplexer NN4BEG2 MUX-8
assign NN4BEG2_input = {OSELEND10,HEND63,HEND48,HEND34,HEND13,W1END3,E6END1,NN4END3};
assign NN4BEG2 = NN4BEG2_input[ConfigBits[32:30]];
 //switch matrix multiplexer NN4BEG3 MUX-8
assign NN4BEG3_input = {OSELEND15,HEND59,HEND45,HEND16,HEND2,W1END0,E6END0,N2MID4};
assign NN4BEG3 = NN4BEG3_input[ConfigBits[35:33]];
 //switch matrix multiplexer E1BEG0 MUX-8
assign E1BEG0_input = {OSELEND11,HEND61,HEND47,HEND32,HEND18,S1END1,E2END7,N2END5};
assign E1BEG0 = E1BEG0_input[ConfigBits[38:36]];
 //switch matrix multiplexer E1BEG1 MUX-8
assign E1BEG1_input = {OSELEND0,HEND50,HEND43,HEND29,HEND0,LE_AY5,S1END2,N2END6};
assign E1BEG1 = E1BEG1_input[ConfigBits[41:39]];
 //switch matrix multiplexer E1BEG2 MUX-8
assign E1BEG2_input = {OSELEND5,HEND61,HEND54,HEND32,HEND11,S2END3,EE4END3,N2MID7};
assign E1BEG2 = E1BEG2_input[ConfigBits[44:42]];
 //switch matrix multiplexer E1BEG3 MUX-8
assign E1BEG3_input = {OSELEND10,HEND57,HEND43,HEND22,HEND0,LG_AY5,S2END4,N2MID0};
assign E1BEG3 = E1BEG3_input[ConfigBits[47:45]];
 //switch matrix multiplexer E2BEG0 MUX-1
assign E2BEG0 = JE2END0;

 //switch matrix multiplexer E2BEG1 MUX-1
assign E2BEG1 = JE2END1;

 //switch matrix multiplexer E2BEG2 MUX-1
assign E2BEG2 = JE2END2;

 //switch matrix multiplexer E2BEG3 MUX-1
assign E2BEG3 = JE2END3;

 //switch matrix multiplexer E2BEG4 MUX-1
assign E2BEG4 = JE2END4;

 //switch matrix multiplexer E2BEG5 MUX-1
assign E2BEG5 = JE2END5;

 //switch matrix multiplexer E2BEG6 MUX-1
assign E2BEG6 = JE2END6;

 //switch matrix multiplexer E2BEG7 MUX-1
assign E2BEG7 = JE2END7;

 //switch matrix multiplexer E2BEGb0 MUX-1
assign E2BEGb0 = E2MID0;

 //switch matrix multiplexer E2BEGb1 MUX-1
assign E2BEGb1 = E2MID1;

 //switch matrix multiplexer E2BEGb2 MUX-1
assign E2BEGb2 = E2MID2;

 //switch matrix multiplexer E2BEGb3 MUX-1
assign E2BEGb3 = E2MID3;

 //switch matrix multiplexer E2BEGb4 MUX-1
assign E2BEGb4 = E2MID4;

 //switch matrix multiplexer E2BEGb5 MUX-1
assign E2BEGb5 = E2MID5;

 //switch matrix multiplexer E2BEGb6 MUX-1
assign E2BEGb6 = E2MID6;

 //switch matrix multiplexer E2BEGb7 MUX-1
assign E2BEGb7 = E2MID7;

 //switch matrix multiplexer EE4BEG0 MUX-8
assign EE4BEG0_input = {OSELEND15,HEND49,HEND28,HEND14,HEND7,S4END1,E2MID3,NN4END1};
assign EE4BEG0 = EE4BEG0_input[ConfigBits[50:48]];
 //switch matrix multiplexer EE4BEG1 MUX-8
assign EE4BEG1_input = {OSELEND4,HEND60,HEND39,HEND17,HEND10,S4END2,E2MID2,NN4END2};
assign EE4BEG1 = EE4BEG1_input[ConfigBits[53:51]];
 //switch matrix multiplexer EE4BEG2 MUX-8
assign EE4BEG2_input = {OSELEND9,HEND42,HEND28,HEND21,HEND7,SS4END3,EE4END0,N1END3};
assign EE4BEG2 = EE4BEG2_input[ConfigBits[56:54]];
 //switch matrix multiplexer EE4BEG3 MUX-8
assign EE4BEG3_input = {OSELEND14,HEND53,HEND39,HEND24,HEND10,SS4END0,E2MID4,N1END0};
assign EE4BEG3 = EE4BEG3_input[ConfigBits[59:57]];
 //switch matrix multiplexer E6BEG0 MUX-8
assign E6BEG0_input = {OSELEND3,HEND51,HEND30,HEND8,HEND1,S4END1,E2END0,NN4END1};
assign E6BEG0 = E6BEG0_input[ConfigBits[62:60]];
 //switch matrix multiplexer E6BEG1 MUX-8
assign E6BEG1_input = {OSELEND8,HEND62,HEND33,HEND19,HEND12,S4END2,E2END2,NN4END2};
assign E6BEG1 = E6BEG1_input[ConfigBits[65:63]];
 //switch matrix multiplexer S1BEG0 MUX-8
assign S1BEG0_input = {OSELEND14,HEND55,HEND26,HEND12,HEND5,W1END1,S2END7,E2END5};
assign S1BEG0 = S1BEG0_input[ConfigBits[68:66]];
 //switch matrix multiplexer S1BEG1 MUX-8
assign S1BEG1_input = {OSELEND3,HEND58,HEND37,HEND23,HEND8,W1END2,S2END2,E2END6};
assign S1BEG1 = S1BEG1_input[ConfigBits[71:69]];
 //switch matrix multiplexer S1BEG2 MUX-8
assign S1BEG2_input = {OSELEND8,HEND40,HEND26,HEND19,HEND5,LB_AY4,W2END3,E2MID7};
assign S1BEG2 = S1BEG2_input[ConfigBits[74:72]];
 //switch matrix multiplexer S1BEG3 MUX-8
assign S1BEG3_input = {OSELEND13,HEND51,HEND37,HEND30,HEND8,LD_AY4,W2END4,E2MID0};
assign S1BEG3 = S1BEG3_input[ConfigBits[77:75]];
 //switch matrix multiplexer S2BEG0 MUX-1
assign S2BEG0 = JS2END0;

 //switch matrix multiplexer S2BEG1 MUX-1
assign S2BEG1 = JS2END1;

 //switch matrix multiplexer S2BEG2 MUX-1
assign S2BEG2 = JS2END2;

 //switch matrix multiplexer S2BEG3 MUX-1
assign S2BEG3 = JS2END3;

 //switch matrix multiplexer S2BEG4 MUX-1
assign S2BEG4 = JS2END4;

 //switch matrix multiplexer S2BEG5 MUX-1
assign S2BEG5 = JS2END5;

 //switch matrix multiplexer S2BEG6 MUX-1
assign S2BEG6 = JS2END6;

 //switch matrix multiplexer S2BEG7 MUX-1
assign S2BEG7 = JS2END7;

 //switch matrix multiplexer S2BEGb0 MUX-1
assign S2BEGb0 = S2MID0;

 //switch matrix multiplexer S2BEGb1 MUX-1
assign S2BEGb1 = S2MID1;

 //switch matrix multiplexer S2BEGb2 MUX-1
assign S2BEGb2 = S2MID2;

 //switch matrix multiplexer S2BEGb3 MUX-1
assign S2BEGb3 = S2MID3;

 //switch matrix multiplexer S2BEGb4 MUX-1
assign S2BEGb4 = S2MID4;

 //switch matrix multiplexer S2BEGb5 MUX-1
assign S2BEGb5 = S2MID5;

 //switch matrix multiplexer S2BEGb6 MUX-1
assign S2BEGb6 = S2MID6;

 //switch matrix multiplexer S2BEGb7 MUX-1
assign S2BEGb7 = S2MID7;

 //switch matrix multiplexer S4BEG0 MUX-8
assign S4BEG0_input = {OSELEND2,HEND56,HEND42,HEND35,HEND21,LF_AY4,WW4END1,E6END1};
assign S4BEG0 = S4BEG0_input[ConfigBits[80:78]];
 //switch matrix multiplexer S4BEG1 MUX-8
assign S4BEG1_input = {OSELEND7,HEND53,HEND46,HEND24,HEND3,LH_AY4,WW4END2,E6END0};
assign S4BEG1 = S4BEG1_input[ConfigBits[83:81]];
 //switch matrix multiplexer S4BEG2 MUX-8
assign S4BEG2_input = {OSELEND12,HEND56,HEND49,HEND35,HEND14,W6END1,SS4END3,E1END3};
assign S4BEG2 = S4BEG2_input[ConfigBits[86:84]];
 //switch matrix multiplexer S4BEG3 MUX-8
assign S4BEG3_input = {OSELEND1,HEND60,HEND46,HEND17,HEND3,W6END0,S2MID3,E1END0};
assign S4BEG3 = S4BEG3_input[ConfigBits[89:87]];
 //switch matrix multiplexer SS4BEG0 MUX-8
assign SS4BEG0_input = {OSELEND6,HEND50,HEND29,HEND15,HEND0,WW4END1,S2END1,E6END1};
assign SS4BEG0 = SS4BEG0_input[ConfigBits[92:90]];
 //switch matrix multiplexer SS4BEG1 MUX-8
assign SS4BEG1_input = {OSELEND11,HEND61,HEND32,HEND18,HEND11,WW4END2,S4END0,E6END0};
assign SS4BEG1 = SS4BEG1_input[ConfigBits[95:93]];
 //switch matrix multiplexer SS4BEG2 MUX-8
assign SS4BEG2_input = {OSELEND0,HEND43,HEND29,HEND22,HEND0,W6END1,S2MID2,E1END3};
assign SS4BEG2 = SS4BEG2_input[ConfigBits[98:96]];
 //switch matrix multiplexer SS4BEG3 MUX-8
assign SS4BEG3_input = {OSELEND5,HEND54,HEND32,HEND25,HEND11,W6END0,S2MID4,E1END0};
assign SS4BEG3 = SS4BEG3_input[ConfigBits[101:99]];
 //switch matrix multiplexer W1BEG0 MUX-8
assign W1BEG0_input = {OSELEND1,HEND62,HEND40,HEND33,HEND19,W2MID2,S2END5,N1END1};
assign W1BEG0 = W1BEG0_input[ConfigBits[104:102]];
 //switch matrix multiplexer W1BEG1 MUX-8
assign W1BEG1_input = {OSELEND6,HEND51,HEND44,HEND30,HEND1,LA_AQ5,S2END6,N1END2};
assign W1BEG1 = W1BEG1_input[ConfigBits[107:105]];
 //switch matrix multiplexer W1BEG2 MUX-8
assign W1BEG2_input = {OSELEND11,HEND62,HEND55,HEND33,HEND12,LC_AQ5,S2MID7,N2END3};
assign W1BEG2 = W1BEG2_input[ConfigBits[110:108]];
 //switch matrix multiplexer W1BEG3 MUX-8
assign W1BEG3_input = {OSELEND0,HEND58,HEND44,HEND23,HEND1,W2MID4,S2MID0,N2END4};
assign W1BEG3 = W1BEG3_input[ConfigBits[113:111]];
 //switch matrix multiplexer W2BEG0 MUX-1
assign W2BEG0 = JW2END0;

 //switch matrix multiplexer W2BEG1 MUX-1
assign W2BEG1 = JW2END1;

 //switch matrix multiplexer W2BEG2 MUX-1
assign W2BEG2 = JW2END2;

 //switch matrix multiplexer W2BEG3 MUX-1
assign W2BEG3 = JW2END3;

 //switch matrix multiplexer W2BEG4 MUX-1
assign W2BEG4 = JW2END4;

 //switch matrix multiplexer W2BEG5 MUX-1
assign W2BEG5 = JW2END5;

 //switch matrix multiplexer W2BEG6 MUX-1
assign W2BEG6 = JW2END6;

 //switch matrix multiplexer W2BEG7 MUX-1
assign W2BEG7 = JW2END7;

 //switch matrix multiplexer W2BEGb0 MUX-1
assign W2BEGb0 = W2MID0;

 //switch matrix multiplexer W2BEGb1 MUX-1
assign W2BEGb1 = W2MID1;

 //switch matrix multiplexer W2BEGb2 MUX-1
assign W2BEGb2 = W2MID2;

 //switch matrix multiplexer W2BEGb3 MUX-1
assign W2BEGb3 = W2MID3;

 //switch matrix multiplexer W2BEGb4 MUX-1
assign W2BEGb4 = W2MID4;

 //switch matrix multiplexer W2BEGb5 MUX-1
assign W2BEGb5 = W2MID5;

 //switch matrix multiplexer W2BEGb6 MUX-1
assign W2BEGb6 = W2MID6;

 //switch matrix multiplexer W2BEGb7 MUX-1
assign W2BEGb7 = W2MID7;

 //switch matrix multiplexer WW4BEG0 MUX-8
assign WW4BEG0_input = {OSELEND5,HEND57,HEND43,HEND36,HEND22,LE_AQ5,SS4END1,N4END1};
assign WW4BEG0 = WW4BEG0_input[ConfigBits[116:114]];
 //switch matrix multiplexer WW4BEG1 MUX-8
assign WW4BEG1_input = {OSELEND10,HEND54,HEND47,HEND25,HEND4,W2MID3,SS4END2,N4END2};
assign WW4BEG1 = WW4BEG1_input[ConfigBits[119:117]];
 //switch matrix multiplexer WW4BEG2 MUX-8
assign WW4BEG2_input = {OSELEND15,HEND57,HEND50,HEND36,HEND15,LG_AQ5,S1END3,NN4END3};
assign WW4BEG2 = WW4BEG2_input[ConfigBits[122:120]];
 //switch matrix multiplexer WW4BEG3 MUX-8
assign WW4BEG3_input = {OSELEND4,HEND61,HEND47,HEND18,HEND4,LB_AY5,S1END0,NN4END0};
assign WW4BEG3 = WW4BEG3_input[ConfigBits[125:123]];
 //switch matrix multiplexer W6BEG0 MUX-8
assign W6BEG0_input = {OSELEND9,HEND44,HEND30,HEND23,HEND1,WW4END3,SS4END1,N4END1};
assign W6BEG0 = W6BEG0_input[ConfigBits[128:126]];
 //switch matrix multiplexer W6BEG1 MUX-8
assign W6BEG1_input = {OSELEND14,HEND55,HEND33,HEND26,HEND12,LD_AY5,SS4END2,N4END2};
assign W6BEG1 = W6BEG1_input[ConfigBits[131:129]];
 //switch matrix multiplexer Co0 MUX-1
assign Co0 = LH_Co;

 //switch matrix multiplexer LA_A0 MUX-16
assign LA_A0_input = {HEND58,HEND56,HEND50,HEND48,HEND43,HEND41,HEND35,HEND33,HEND27,HEND24,HEND23,HEND19,HEND11,HEND8,HEND2,HEND0};
assign LA_A0 = LA_A0_input[ConfigBits[135:132]];
 //switch matrix multiplexer LA_A1 MUX-16
assign LA_A1_input = {HEND59,HEND56,HEND51,HEND49,HEND46,HEND42,HEND34,HEND32,HEND30,HEND26,HEND21,HEND17,HEND15,HEND11,HEND2,HEND0};
assign LA_A1 = LA_A1_input[ConfigBits[139:136]];
 //switch matrix multiplexer LA_A2 MUX-16
assign LA_A2_input = {HEND60,HEND57,HEND51,HEND49,HEND47,HEND44,HEND36,HEND32,HEND27,HEND25,HEND18,HEND16,HEND12,HEND10,HEND4,HEND1};
assign LA_A2 = LA_A2_input[ConfigBits[143:140]];
 //switch matrix multiplexer LA_A3 MUX-16
assign LA_A3_input = {HEND63,HEND61,HEND52,HEND49,HEND42,HEND40,HEND37,HEND33,HEND27,HEND24,HEND18,HEND16,HEND13,HEND10,HEND3,HEND0};
assign LA_A3 = LA_A3_input[ConfigBits[147:144]];
 //switch matrix multiplexer LA_A4 MUX-16
assign LA_A4_input = {HEND59,HEND56,HEND53,HEND49,HEND45,HEND41,HEND36,HEND32,HEND28,HEND24,HEND22,HEND20,HEND10,HEND8,HEND6,HEND4};
assign LA_A4 = LA_A4_input[ConfigBits[151:148]];
 //switch matrix multiplexer LA_AX MUX-16
assign LA_AX_input = {HEND63,HEND59,HEND54,HEND50,HEND43,HEND41,HEND39,HEND37,HEND26,HEND24,HEND22,HEND20,HEND11,HEND9,HEND7,HEND4};
assign LA_AX = LA_AX_input[ConfigBits[155:152]];
 //switch matrix multiplexer LA_Ci MUX-4
assign LA_Ci_input = {VCC0,GND0,JN2END0,Ci0};
assign LA_Ci = LA_Ci_input[ConfigBits[157:156]];
 //switch matrix multiplexer LA_SR MUX-8
assign LA_SR_input = {OSELEND0,J_SR_END0,VCC0,GND0,JW2END0,JS2END2,JE2END1,JN2END6};
assign LA_SR = LA_SR_input[ConfigBits[160:158]];
 //switch matrix multiplexer LA_EN MUX-8
assign LA_EN_input = {OSELEND0,J_EN_END0,VCC0,GND0,JW2END1,JS2END3,JE2END2,JN2END7};
assign LA_EN = LA_EN_input[ConfigBits[163:161]];
 //switch matrix multiplexer LB_A0 MUX-16
assign LB_A0_input = {HEND63,HEND60,HEND54,HEND50,HEND43,HEND41,HEND38,HEND35,HEND29,HEND26,HEND21,HEND19,HEND11,HEND9,HEND4,HEND2};
assign LB_A0 = LB_A0_input[ConfigBits[167:164]];
 //switch matrix multiplexer LB_A1 MUX-16
assign LB_A1_input = {HEND62,HEND58,HEND50,HEND48,HEND47,HEND45,HEND39,HEND37,HEND27,HEND25,HEND18,HEND16,HEND14,HEND12,HEND5,HEND3};
assign LB_A1 = LB_A1_input[ConfigBits[171:168]];
 //switch matrix multiplexer LB_A2 MUX-16
assign LB_A2_input = {HEND61,HEND57,HEND54,HEND50,HEND44,HEND41,HEND38,HEND34,HEND31,HEND29,HEND18,HEND16,HEND14,HEND10,HEND2,HEND0};
assign LB_A2 = LB_A2_input[ConfigBits[175:172]];
 //switch matrix multiplexer LB_A3 MUX-16
assign LB_A3_input = {HEND63,HEND61,HEND54,HEND51,HEND47,HEND45,HEND35,HEND32,HEND28,HEND24,HEND19,HEND16,HEND15,HEND12,HEND6,HEND2};
assign LB_A3 = LB_A3_input[ConfigBits[179:176]];
 //switch matrix multiplexer LB_A4 MUX-16
assign LB_A4_input = {HEND62,HEND59,HEND52,HEND50,HEND46,HEND42,HEND38,HEND35,HEND31,HEND29,HEND20,HEND16,HEND12,HEND9,HEND3,HEND1};
assign LB_A4 = LB_A4_input[ConfigBits[183:180]];
 //switch matrix multiplexer LB_AX MUX-16
assign LB_AX_input = {HEND58,HEND56,HEND53,HEND49,HEND45,HEND41,HEND38,HEND36,HEND27,HEND25,HEND18,HEND16,HEND15,HEND13,HEND6,HEND3};
assign LB_AX = LB_AX_input[ConfigBits[187:184]];
 //switch matrix multiplexer LB_Ci MUX-4
assign LB_Ci_input = {VCC0,GND0,JN2END1,LA_Co};
assign LB_Ci = LB_Ci_input[ConfigBits[189:188]];
 //switch matrix multiplexer LB_SR MUX-8
assign LB_SR_input = {OSELEND2,J_SR_END0,VCC0,GND0,JW2END1,JS2END3,JE2END2,JN2END7};
assign LB_SR = LB_SR_input[ConfigBits[192:190]];
 //switch matrix multiplexer LB_EN MUX-8
assign LB_EN_input = {OSELEND2,J_EN_END0,VCC0,GND0,JW2END2,JS2END4,JE2END3,JN2END0};
assign LB_EN = LB_EN_input[ConfigBits[195:193]];
 //switch matrix multiplexer LC_A0 MUX-16
assign LC_A0_input = {HEND60,HEND57,HEND55,HEND53,HEND43,HEND41,HEND37,HEND33,HEND28,HEND25,HEND23,HEND21,HEND10,HEND8,HEND5,HEND3};
assign LC_A0 = LC_A0_input[ConfigBits[199:196]];
 //switch matrix multiplexer LC_A1 MUX-16
assign LC_A1_input = {HEND63,HEND61,HEND51,HEND49,HEND44,HEND40,HEND38,HEND34,HEND29,HEND25,HEND21,HEND17,HEND10,HEND8,HEND4,HEND0};
assign LC_A1 = LC_A1_input[ConfigBits[203:200]];
 //switch matrix multiplexer LC_A2 MUX-16
assign LC_A2_input = {HEND58,HEND56,HEND55,HEND53,HEND46,HEND42,HEND37,HEND33,HEND30,HEND26,HEND21,HEND17,HEND11,HEND9,HEND6,HEND2};
assign LC_A2 = LC_A2_input[ConfigBits[207:204]];
 //switch matrix multiplexer LC_A3 MUX-16
assign LC_A3_input = {HEND61,HEND57,HEND53,HEND49,HEND46,HEND44,HEND38,HEND35,HEND30,HEND28,HEND19,HEND17,HEND14,HEND12,HEND3,HEND0};
assign LC_A3 = LC_A3_input[ConfigBits[211:208]];
 //switch matrix multiplexer LC_A4 MUX-16
assign LC_A4_input = {HEND62,HEND60,HEND53,HEND50,HEND46,HEND42,HEND35,HEND33,HEND26,HEND24,HEND20,HEND17,HEND13,HEND9,HEND4,HEND1};
assign LC_A4 = LC_A4_input[ConfigBits[215:212]];
 //switch matrix multiplexer LC_AX MUX-16
assign LC_AX_input = {HEND58,HEND56,HEND54,HEND51,HEND46,HEND44,HEND39,HEND35,HEND28,HEND24,HEND22,HEND18,HEND15,HEND13,HEND6,HEND3};
assign LC_AX = LC_AX_input[ConfigBits[219:216]];
 //switch matrix multiplexer LC_Ci MUX-4
assign LC_Ci_input = {VCC0,GND0,JN2END2,LB_Co};
assign LC_Ci = LC_Ci_input[ConfigBits[221:220]];
 //switch matrix multiplexer LC_SR MUX-8
assign LC_SR_input = {OSELEND4,J_SR_END0,VCC0,GND0,JW2END2,JS2END4,JE2END3,JN2END0};
assign LC_SR = LC_SR_input[ConfigBits[224:222]];
 //switch matrix multiplexer LC_EN MUX-8
assign LC_EN_input = {OSELEND4,J_EN_END0,VCC0,GND0,JW2END3,JS2END5,JE2END4,JN2END1};
assign LC_EN = LC_EN_input[ConfigBits[227:225]];
 //switch matrix multiplexer LD_A0 MUX-16
assign LD_A0_input = {HEND60,HEND58,HEND52,HEND49,HEND42,HEND40,HEND36,HEND32,HEND31,HEND29,HEND22,HEND18,HEND14,HEND12,HEND2,HEND0};
assign LD_A0 = LD_A0_input[ConfigBits[231:228]];
 //switch matrix multiplexer LD_A1 MUX-16
assign LD_A1_input = {HEND59,HEND57,HEND54,HEND50,HEND47,HEND43,HEND35,HEND32,HEND30,HEND28,HEND23,HEND21,HEND13,HEND9,HEND7,HEND5};
assign LD_A1 = LD_A1_input[ConfigBits[235:232]];
 //switch matrix multiplexer LD_A2 MUX-16
assign LD_A2_input = {HEND61,HEND57,HEND50,HEND48,HEND46,HEND43,HEND37,HEND33,HEND31,HEND27,HEND18,HEND16,HEND11,HEND8,HEND4,HEND1};
assign LD_A2 = LD_A2_input[ConfigBits[239:236]];
 //switch matrix multiplexer LD_A3 MUX-16
assign LD_A3_input = {HEND61,HEND58,HEND51,HEND48,HEND47,HEND45,HEND38,HEND36,HEND31,HEND28,HEND19,HEND17,HEND15,HEND11,HEND5,HEND1};
assign LD_A3 = LD_A3_input[ConfigBits[243:240]];
 //switch matrix multiplexer LD_A4 MUX-16
assign LD_A4_input = {HEND62,HEND59,HEND51,HEND48,HEND45,HEND41,HEND39,HEND36,HEND31,HEND29,HEND22,HEND19,HEND11,HEND9,HEND6,HEND4};
assign LD_A4 = LD_A4_input[ConfigBits[247:244]];
 //switch matrix multiplexer LD_AX MUX-16
assign LD_AX_input = {HEND63,HEND59,HEND53,HEND50,HEND47,HEND45,HEND36,HEND32,HEND26,HEND24,HEND21,HEND17,HEND15,HEND12,HEND2,HEND0};
assign LD_AX = LD_AX_input[ConfigBits[251:248]];
 //switch matrix multiplexer LD_Ci MUX-4
assign LD_Ci_input = {VCC0,GND0,JN2END3,LC_Co};
assign LD_Ci = LD_Ci_input[ConfigBits[253:252]];
 //switch matrix multiplexer LD_SR MUX-8
assign LD_SR_input = {OSELEND6,J_SR_END0,VCC0,GND0,JW2END3,JS2END5,JE2END4,JN2END1};
assign LD_SR = LD_SR_input[ConfigBits[256:254]];
 //switch matrix multiplexer LD_EN MUX-8
assign LD_EN_input = {OSELEND6,J_EN_END0,VCC0,GND0,JW2END4,JS2END6,JE2END5,JN2END2};
assign LD_EN = LD_EN_input[ConfigBits[259:257]];
 //switch matrix multiplexer LE_A0 MUX-16
assign LE_A0_input = {HEND59,HEND57,HEND54,HEND51,HEND44,HEND40,HEND34,HEND32,HEND31,HEND27,HEND22,HEND20,HEND14,HEND10,HEND7,HEND3};
assign LE_A0 = LE_A0_input[ConfigBits[263:260]];
 //switch matrix multiplexer LE_A1 MUX-16
assign LE_A1_input = {HEND59,HEND56,HEND55,HEND52,HEND42,HEND40,HEND35,HEND32,HEND27,HEND25,HEND22,HEND19,HEND15,HEND13,HEND2,HEND0};
assign LE_A1 = LE_A1_input[ConfigBits[267:264]];
 //switch matrix multiplexer LE_A2 MUX-16
assign LE_A2_input = {HEND62,HEND58,HEND51,HEND48,HEND42,HEND40,HEND37,HEND34,HEND28,HEND25,HEND23,HEND19,HEND14,HEND10,HEND6,HEND4};
assign LE_A2 = LE_A2_input[ConfigBits[271:268]];
 //switch matrix multiplexer LE_A3 MUX-16
assign LE_A3_input = {HEND61,HEND57,HEND52,HEND49,HEND46,HEND43,HEND36,HEND34,HEND31,HEND29,HEND18,HEND16,HEND11,HEND8,HEND6,HEND2};
assign LE_A3 = LE_A3_input[ConfigBits[275:272]];
 //switch matrix multiplexer LE_A4 MUX-16
assign LE_A4_input = {HEND62,HEND60,HEND54,HEND52,HEND45,HEND41,HEND37,HEND34,HEND26,HEND24,HEND21,HEND17,HEND14,HEND12,HEND5,HEND1};
assign LE_A4 = LE_A4_input[ConfigBits[279:276]];
 //switch matrix multiplexer LE_AX MUX-16
assign LE_AX_input = {HEND62,HEND58,HEND55,HEND52,HEND47,HEND43,HEND35,HEND33,HEND30,HEND26,HEND21,HEND17,HEND12,HEND8,HEND3,HEND1};
assign LE_AX = LE_AX_input[ConfigBits[283:280]];
 //switch matrix multiplexer LE_Ci MUX-4
assign LE_Ci_input = {VCC0,GND0,JN2END4,LD_Co};
assign LE_Ci = LE_Ci_input[ConfigBits[285:284]];
 //switch matrix multiplexer LE_SR MUX-8
assign LE_SR_input = {OSELEND8,J_SR_END0,VCC0,GND0,JW2END4,JS2END6,JE2END5,JN2END2};
assign LE_SR = LE_SR_input[ConfigBits[288:286]];
 //switch matrix multiplexer LE_EN MUX-8
assign LE_EN_input = {OSELEND8,J_EN_END0,VCC0,GND0,JW2END5,JS2END7,JE2END6,JN2END3};
assign LE_EN = LE_EN_input[ConfigBits[291:289]];
 //switch matrix multiplexer LF_A0 MUX-16
assign LF_A0_input = {HEND62,HEND59,HEND55,HEND52,HEND45,HEND41,HEND35,HEND33,HEND29,HEND25,HEND22,HEND19,HEND15,HEND13,HEND4,HEND0};
assign LF_A0 = LF_A0_input[ConfigBits[295:292]];
 //switch matrix multiplexer LF_A1 MUX-16
assign LF_A1_input = {HEND61,HEND58,HEND54,HEND50,HEND42,HEND40,HEND39,HEND36,HEND27,HEND25,HEND22,HEND18,HEND10,HEND8,HEND7,HEND5};
assign LF_A1 = LF_A1_input[ConfigBits[299:296]];
 //switch matrix multiplexer LF_A2 MUX-16
assign LF_A2_input = {HEND63,HEND60,HEND53,HEND49,HEND44,HEND40,HEND38,HEND34,HEND30,HEND26,HEND23,HEND19,HEND11,HEND9,HEND3,HEND1};
assign LF_A2 = LF_A2_input[ConfigBits[303:300]];
 //switch matrix multiplexer LF_A3 MUX-16
assign LF_A3_input = {HEND62,HEND59,HEND54,HEND51,HEND46,HEND44,HEND34,HEND32,HEND30,HEND28,HEND23,HEND20,HEND14,HEND11,HEND5,HEND1};
assign LF_A3 = LF_A3_input[ConfigBits[307:304]];
 //switch matrix multiplexer LF_A4 MUX-16
assign LF_A4_input = {HEND63,HEND61,HEND55,HEND53,HEND42,HEND40,HEND39,HEND36,HEND31,HEND28,HEND23,HEND20,HEND14,HEND10,HEND6,HEND4};
assign LF_A4 = LF_A4_input[ConfigBits[311:308]];
 //switch matrix multiplexer LF_AX MUX-16
assign LF_AX_input = {HEND58,HEND56,HEND55,HEND52,HEND47,HEND44,HEND37,HEND33,HEND29,HEND25,HEND20,HEND16,HEND13,HEND9,HEND3,HEND1};
assign LF_AX = LF_AX_input[ConfigBits[315:312]];
 //switch matrix multiplexer LF_Ci MUX-4
assign LF_Ci_input = {VCC0,GND0,JN2END5,LE_Co};
assign LF_Ci = LF_Ci_input[ConfigBits[317:316]];
 //switch matrix multiplexer LF_SR MUX-8
assign LF_SR_input = {OSELEND10,J_SR_END0,VCC0,GND0,JW2END5,JS2END7,JE2END6,JN2END3};
assign LF_SR = LF_SR_input[ConfigBits[320:318]];
 //switch matrix multiplexer LF_EN MUX-8
assign LF_EN_input = {OSELEND10,J_EN_END0,VCC0,GND0,JW2END6,JS2END0,JE2END7,JN2END4};
assign LF_EN = LF_EN_input[ConfigBits[323:321]];
 //switch matrix multiplexer LG_A0 MUX-16
assign LG_A0_input = {HEND59,HEND57,HEND50,HEND48,HEND44,HEND40,HEND34,HEND32,HEND27,HEND24,HEND21,HEND17,HEND15,HEND13,HEND2,HEND0};
assign LG_A0 = LG_A0_input[ConfigBits[327:324]];
 //switch matrix multiplexer LG_A1 MUX-16
assign LG_A1_input = {HEND63,HEND60,HEND51,HEND48,HEND45,HEND41,HEND39,HEND35,HEND30,HEND26,HEND22,HEND18,HEND11,HEND9,HEND7,HEND5};
assign LG_A1 = LG_A1_input[ConfigBits[331:328]];
 //switch matrix multiplexer LG_A2 MUX-16
assign LG_A2_input = {HEND60,HEND56,HEND55,HEND53,HEND45,HEND42,HEND38,HEND34,HEND30,HEND27,HEND20,HEND17,HEND12,HEND8,HEND7,HEND4};
assign LG_A2 = LG_A2_input[ConfigBits[335:332]];
 //switch matrix multiplexer LG_A3 MUX-16
assign LG_A3_input = {HEND60,HEND57,HEND52,HEND48,HEND46,HEND44,HEND38,HEND36,HEND31,HEND29,HEND23,HEND19,HEND12,HEND8,HEND5,HEND1};
assign LG_A3 = LG_A3_input[ConfigBits[339:336]];
 //switch matrix multiplexer LG_A4 MUX-16
assign LG_A4_input = {HEND62,HEND58,HEND54,HEND51,HEND46,HEND43,HEND37,HEND33,HEND27,HEND24,HEND23,HEND20,HEND13,HEND9,HEND7,HEND5};
assign LG_A4 = LG_A4_input[ConfigBits[343:340]];
 //switch matrix multiplexer LG_AX MUX-16
assign LG_AX_input = {HEND63,HEND60,HEND55,HEND53,HEND47,HEND43,HEND38,HEND36,HEND30,HEND26,HEND23,HEND20,HEND15,HEND13,HEND5,HEND1};
assign LG_AX = LG_AX_input[ConfigBits[347:344]];
 //switch matrix multiplexer LG_Ci MUX-4
assign LG_Ci_input = {VCC0,GND0,JN2END6,LF_Co};
assign LG_Ci = LG_Ci_input[ConfigBits[349:348]];
 //switch matrix multiplexer LG_SR MUX-8
assign LG_SR_input = {OSELEND12,J_SR_END0,VCC0,GND0,JW2END6,JS2END0,JE2END7,JN2END4};
assign LG_SR = LG_SR_input[ConfigBits[352:350]];
 //switch matrix multiplexer LG_EN MUX-8
assign LG_EN_input = {OSELEND12,J_EN_END0,VCC0,GND0,JW2END7,JS2END1,JE2END0,JN2END5};
assign LG_EN = LG_EN_input[ConfigBits[355:353]];
 //switch matrix multiplexer LH_A0 MUX-16
assign LH_A0_input = {HEND63,HEND60,HEND52,HEND48,HEND47,HEND44,HEND39,HEND37,HEND29,HEND25,HEND19,HEND16,HEND14,HEND12,HEND7,HEND5};
assign LH_A0 = LH_A0_input[ConfigBits[359:356]];
 //switch matrix multiplexer LH_A1 MUX-16
assign LH_A1_input = {HEND61,HEND57,HEND50,HEND48,HEND42,HEND40,HEND37,HEND33,HEND26,HEND24,HEND21,HEND17,HEND14,HEND10,HEND6,HEND3};
assign LH_A1 = LH_A1_input[ConfigBits[363:360]];
 //switch matrix multiplexer LH_A2 MUX-16
assign LH_A2_input = {HEND61,HEND57,HEND53,HEND49,HEND43,HEND40,HEND34,HEND32,HEND31,HEND28,HEND22,HEND18,HEND11,HEND8,HEND7,HEND3};
assign LH_A2 = LH_A2_input[ConfigBits[367:364]];
 //switch matrix multiplexer LH_A3 MUX-16
assign LH_A3_input = {HEND62,HEND58,HEND52,HEND48,HEND43,HEND41,HEND39,HEND35,HEND30,HEND27,HEND22,HEND20,HEND10,HEND8,HEND7,HEND4};
assign LH_A3 = LH_A3_input[ConfigBits[371:368]];
 //switch matrix multiplexer LH_A4 MUX-16
assign LH_A4_input = {HEND59,HEND56,HEND55,HEND51,HEND45,HEND42,HEND39,HEND36,HEND28,HEND25,HEND18,HEND16,HEND15,HEND13,HEND7,HEND5};
assign LH_A4 = LH_A4_input[ConfigBits[375:372]];
 //switch matrix multiplexer LH_AX MUX-16
assign LH_AX_input = {HEND60,HEND56,HEND55,HEND52,HEND47,HEND43,HEND39,HEND37,HEND29,HEND26,HEND23,HEND21,HEND14,HEND10,HEND6,HEND2};
assign LH_AX = LH_AX_input[ConfigBits[379:376]];
 //switch matrix multiplexer LH_Ci MUX-4
assign LH_Ci_input = {VCC0,GND0,JN2END7,LG_Co};
assign LH_Ci = LH_Ci_input[ConfigBits[381:380]];
 //switch matrix multiplexer LH_SR MUX-8
assign LH_SR_input = {OSELEND14,J_SR_END0,VCC0,GND0,JW2END7,JS2END1,JE2END0,JN2END5};
assign LH_SR = LH_SR_input[ConfigBits[384:382]];
 //switch matrix multiplexer LH_EN MUX-8
assign LH_EN_input = {OSELEND14,J_EN_END0,VCC0,GND0,JW2END0,JS2END2,JE2END1,JN2END6};
assign LH_EN = LH_EN_input[ConfigBits[387:385]];
 //switch matrix multiplexer A MUX-1
assign A = LA_AY5;

 //switch matrix multiplexer B MUX-1
assign B = LB_AY5;

 //switch matrix multiplexer C MUX-1
assign C = LC_AY5;

 //switch matrix multiplexer D MUX-1
assign D = LD_AY5;

 //switch matrix multiplexer E MUX-1
assign E = LE_AY5;

 //switch matrix multiplexer F MUX-1
assign F = LF_AY5;

 //switch matrix multiplexer G MUX-1
assign G = LG_AY5;

 //switch matrix multiplexer H MUX-1
assign H = LH_AY5;

 //switch matrix multiplexer S0 MUX-4
assign S0_input = {JW2END4,JS2END4,JE2END4,JN2END4};
assign S0 = S0_input[ConfigBits[389:388]];
 //switch matrix multiplexer S1 MUX-4
assign S1_input = {JW2END5,JS2END5,JE2END5,JN2END5};
assign S1 = S1_input[ConfigBits[391:390]];
 //switch matrix multiplexer S2 MUX-4
assign S2_input = {JW2END6,JS2END6,JE2END6,JN2END6};
assign S2 = S2_input[ConfigBits[393:392]];
 //switch matrix multiplexer S3 MUX-4
assign S3_input = {JW2END7,JS2END7,JE2END7,JN2END7};
assign S3 = S3_input[ConfigBits[395:394]];
 //switch matrix multiplexer JN2BEG0 MUX-8
assign JN2BEG0_input = {OSELEND0,HEND50,HEND29,HEND15,HEND0,LC_AY4,W2END5,E1END1};
assign JN2BEG0 = JN2BEG0_input[ConfigBits[398:396]];
 //switch matrix multiplexer JN2BEG1 MUX-8
assign JN2BEG1_input = {OSELEND5,HEND61,HEND32,HEND18,HEND11,LA_AY4,W2END6,E1END2};
assign JN2BEG1 = JN2BEG1_input[ConfigBits[401:399]];
 //switch matrix multiplexer JN2BEG2 MUX-8
assign JN2BEG2_input = {OSELEND10,HEND43,HEND29,HEND22,HEND0,LE_AY4,W2MID7,E2END3};
assign JN2BEG2 = JN2BEG2_input[ConfigBits[404:402]];
 //switch matrix multiplexer JN2BEG3 MUX-8
assign JN2BEG3_input = {OSELEND15,HEND54,HEND32,HEND25,HEND11,LG_AY4,W2MID0,E2END4};
assign JN2BEG3 = JN2BEG3_input[ConfigBits[407:405]];
 //switch matrix multiplexer JN2BEG4 MUX-8
assign JN2BEG4_input = {OSELEND4,HEND57,HEND43,HEND36,HEND22,W1END1,E2MID5,NN4END0};
assign JN2BEG4 = JN2BEG4_input[ConfigBits[410:408]];
 //switch matrix multiplexer JN2BEG5 MUX-8
assign JN2BEG5_input = {OSELEND9,HEND54,HEND47,HEND25,HEND4,W1END2,E2MID6,N4END0};
assign JN2BEG5 = JN2BEG5_input[ConfigBits[413:411]];
 //switch matrix multiplexer JN2BEG6 MUX-8
assign JN2BEG6_input = {OSELEND14,HEND57,HEND50,HEND36,HEND15,W2END3,E1END3,N2MID1};
assign JN2BEG6 = JN2BEG6_input[ConfigBits[416:414]];
 //switch matrix multiplexer JN2BEG7 MUX-16
assign JN2BEG7_input = {OSELEND13,OSELEND12,OSELEND11,OSELEND8,OSELEND7,OSELEND6,OSELEND3,OSELEND2,OSELEND1,HEND61,HEND47,HEND18,HEND4,W2END4,E1END0,N2END7};
assign JN2BEG7 = JN2BEG7_input[ConfigBits[420:417]];
 //switch matrix multiplexer JE2BEG0 MUX-8
assign JE2BEG0_input = {OSELEND3,HEND51,HEND30,HEND8,HEND1,S1END1,E2MID1,N2END5};
assign JE2BEG0 = JE2BEG0_input[ConfigBits[423:421]];
 //switch matrix multiplexer JE2BEG1 MUX-8
assign JE2BEG1_input = {OSELEND8,HEND62,HEND33,HEND19,HEND12,LB_AQ5,S1END2,N2END6};
assign JE2BEG1 = JE2BEG1_input[ConfigBits[426:424]];
 //switch matrix multiplexer JE2BEG2 MUX-8
assign JE2BEG2_input = {OSELEND13,HEND44,HEND30,HEND23,HEND1,LD_AQ5,S2END3,N2MID7};
assign JE2BEG2 = JE2BEG2_input[ConfigBits[429:427]];
 //switch matrix multiplexer JE2BEG3 MUX-8
assign JE2BEG3_input = {OSELEND2,HEND55,HEND33,HEND26,HEND12,S2END4,E2END1,N2MID0};
assign JE2BEG3 = JE2BEG3_input[ConfigBits[432:430]];
 //switch matrix multiplexer JE2BEG4 MUX-16
assign JE2BEG4_input = {OSELEND15,OSELEND14,OSELEND10,OSELEND9,OSELEND7,OSELEND5,OSELEND4,OSELEND3,OSELEND0,HEND58,HEND44,HEND37,HEND23,LF_AQ5,S2MID5,N1END1};
assign JE2BEG4 = JE2BEG4_input[ConfigBits[436:433]];
 //switch matrix multiplexer JE2BEG5 MUX-8
assign JE2BEG5_input = {OSELEND12,HEND55,HEND40,HEND26,HEND5,LA_AY5,S2MID6,N1END2};
assign JE2BEG5 = JE2BEG5_input[ConfigBits[439:437]];
 //switch matrix multiplexer JE2BEG6 MUX-8
assign JE2BEG6_input = {OSELEND1,HEND58,HEND51,HEND37,HEND8,LH_AQ5,S1END3,N2END3};
assign JE2BEG6 = JE2BEG6_input[ConfigBits[442:440]];
 //switch matrix multiplexer JE2BEG7 MUX-8
assign JE2BEG7_input = {OSELEND6,HEND62,HEND40,HEND19,HEND5,LC_AY5,S1END0,N2END4};
assign JE2BEG7 = JE2BEG7_input[ConfigBits[445:443]];
 //switch matrix multiplexer JS2BEG0 MUX-16
assign JS2BEG0_input = {OSELEND14,OSELEND13,OSELEND12,OSELEND9,OSELEND8,OSELEND7,OSELEND6,OSELEND3,OSELEND2,HEND52,HEND31,HEND9,HEND2,W1END1,S2MID1,E2END5};
assign JS2BEG0 = JS2BEG0_input[ConfigBits[449:446]];
 //switch matrix multiplexer JS2BEG1 MUX-8
assign JS2BEG1_input = {OSELEND11,HEND63,HEND34,HEND20,HEND13,W1END2,S4END3,E2END6};
assign JS2BEG1 = JS2BEG1_input[ConfigBits[452:450]];
 //switch matrix multiplexer JS2BEG2 MUX-8
assign JS2BEG2_input = {OSELEND0,HEND45,HEND31,HEND16,HEND2,W2END3,SS4END0,E2MID7};
assign JS2BEG2 = JS2BEG2_input[ConfigBits[455:453]];
 //switch matrix multiplexer JS2BEG3 MUX-8
assign JS2BEG3_input = {OSELEND5,HEND48,HEND34,HEND27,HEND13,LA_AQ4,W2END4,E2MID0};
assign JS2BEG3 = JS2BEG3_input[ConfigBits[458:456]];
 //switch matrix multiplexer JS2BEG4 MUX-8
assign JS2BEG4_input = {OSELEND10,HEND59,HEND45,HEND38,HEND16,LC_AQ4,W2MID5,E1END1};
assign JS2BEG4 = JS2BEG4_input[ConfigBits[461:459]];
 //switch matrix multiplexer JS2BEG5 MUX-8
assign JS2BEG5_input = {OSELEND15,HEND48,HEND41,HEND27,HEND6,LE_AQ4,W2MID6,E1END2};
assign JS2BEG5 = JS2BEG5_input[ConfigBits[464:462]];
 //switch matrix multiplexer JS2BEG6 MUX-8
assign JS2BEG6_input = {OSELEND4,HEND59,HEND52,HEND38,HEND9,LG_AQ4,W1END3,E2END3};
assign JS2BEG6 = JS2BEG6_input[ConfigBits[467:465]];
 //switch matrix multiplexer JS2BEG7 MUX-8
assign JS2BEG7_input = {OSELEND9,HEND63,HEND41,HEND20,HEND6,W1END0,S2END0,E2END4};
assign JS2BEG7 = JS2BEG7_input[ConfigBits[470:468]];
 //switch matrix multiplexer JW2BEG0 MUX-8
assign JW2BEG0_input = {OSELEND9,HEND53,HEND24,HEND10,HEND3,W2END1,S2END5,N1END1};
assign JW2BEG0 = JW2BEG0_input[ConfigBits[473:471]];
 //switch matrix multiplexer JW2BEG1 MUX-8
assign JW2BEG1_input = {OSELEND14,HEND56,HEND35,HEND21,HEND14,LF_AY5,S2END6,N1END2};
assign JW2BEG1 = JW2BEG1_input[ConfigBits[476:474]];
 //switch matrix multiplexer JW2BEG2 MUX-8
assign JW2BEG2_input = {OSELEND3,HEND46,HEND24,HEND17,HEND3,W2END7,S2MID7,N2END3};
assign JW2BEG2 = JW2BEG2_input[ConfigBits[479:477]];
 //switch matrix multiplexer JW2BEG3 MUX-8
assign JW2BEG3_input = {OSELEND8,HEND49,HEND35,HEND28,HEND14,LH_AY5,S2MID0,N2END4};
assign JW2BEG3 = JW2BEG3_input[ConfigBits[482:480]];
 //switch matrix multiplexer JW2BEG4 MUX-8
assign JW2BEG4_input = {OSELEND13,HEND60,HEND46,HEND39,HEND17,W2END2,S1END1,N2MID5};
assign JW2BEG4 = JW2BEG4_input[ConfigBits[485:483]];
 //switch matrix multiplexer JW2BEG5 MUX-8
assign JW2BEG5_input = {OSELEND2,HEND49,HEND42,HEND28,HEND7,W2END0,S1END2,N2MID6};
assign JW2BEG5 = JW2BEG5_input[ConfigBits[488:486]];
 //switch matrix multiplexer JW2BEG6 MUX-16
assign JW2BEG6_input = {OSELEND15,OSELEND11,OSELEND10,OSELEND7,OSELEND6,OSELEND5,OSELEND4,OSELEND1,OSELEND0,HEND60,HEND53,HEND39,HEND10,W2MID1,S2END3,N1END3};
assign JW2BEG6 = JW2BEG6_input[ConfigBits[492:489]];
 //switch matrix multiplexer JW2BEG7 MUX-8
assign JW2BEG7_input = {OSELEND12,HEND56,HEND42,HEND21,HEND7,WW4END0,S2END4,N1END0};
assign JW2BEG7 = JW2BEG7_input[ConfigBits[495:493]];
 //switch matrix multiplexer J_SR_BEG0 MUX-8
assign J_SR_BEG0_input = {WW4END0,W2MID6,S4END0,S2MID4,EE4END0,E2MID2,N4END0,N2MID0};
assign J_SR_BEG0 = J_SR_BEG0_input[ConfigBits[498:496]];
 //switch matrix multiplexer J_EN_BEG0 MUX-8
assign J_EN_BEG0_input = {WW4END0,W2MID7,S4END0,S2MID5,EE4END0,E2MID3,N4END0,N2MID1};
assign J_EN_BEG0 = J_EN_BEG0_input[ConfigBits[501:499]];
 //switch matrix multiplexer HBEG0 MUX-16
assign HBEG0_input = {OSELEND15,OSELEND3,VCC0,GND0,LC_AQ5,W2MID0,S4END2,S2END2,EE4END2,E2END4,E2MID4,E1END0,NN4END2,N2END6,N2MID6,N1END2};
assign HBEG0 = HBEG0_input[ConfigBits[505:502]];
 //switch matrix multiplexer HBEG1 MUX-16
assign HBEG1_input = {OSELEND10,OSELEND3,VCC0,GND0,W2END1,W2MID0,S4END2,S2END2,S2MID2,EE4END2,E2END4,E1END0,NN4END2,N2END6,N2MID6,N1END2};
assign HBEG1 = HBEG1_input[ConfigBits[509:506]];
 //switch matrix multiplexer HBEG2 MUX-16
assign HBEG2_input = {OSELEND4,VCC0,GND0,LD_AY4,W2END6,W2MID6,W1END2,S4END2,S2END2,S2MID2,E2END4,E1END0,NN4END2,N2END6,N2MID6,N1END2};
assign HBEG2 = HBEG2_input[ConfigBits[513:510]];
 //switch matrix multiplexer HBEG3 MUX-16
assign HBEG3_input = {WW4END0,W2END6,W2MID6,W2MID3,W1END2,S4END2,S2END2,S2MID2,EE4END2,E2END4,E2MID4,E1END0,NN4END2,N2END6,N2MID6,N1END2};
assign HBEG3 = HBEG3_input[ConfigBits[517:514]];
 //switch matrix multiplexer HBEG4 MUX-16
assign HBEG4_input = {OSELEND5,LF_AQ5,W2END6,W2MID6,W1END2,S4END2,S2END2,S2MID2,EE4END2,E2END4,E2MID4,E1END0,NN4END2,N2END6,N2MID6,N1END2};
assign HBEG4 = HBEG4_input[ConfigBits[521:518]];
 //switch matrix multiplexer HBEG5 MUX-16
assign HBEG5_input = {OSELEND13,OSELEND5,W2END6,W2MID6,W1END2,S4END2,S2END2,S2MID2,EE4END2,E2END4,E2MID4,E1END0,NN4END2,N2END6,N2MID6,N1END2};
assign HBEG5 = HBEG5_input[ConfigBits[525:522]];
 //switch matrix multiplexer HBEG6 MUX-16
assign HBEG6_input = {OSELEND12,OSELEND3,LH_AQ4,W2END6,W2MID0,S4END2,S2END2,S2MID2,EE4END2,E2END4,E2MID4,E1END0,NN4END2,N2END6,N2MID6,N1END2};
assign HBEG6 = HBEG6_input[ConfigBits[529:526]];
 //switch matrix multiplexer HBEG7 MUX-16
assign HBEG7_input = {OSELEND10,OSELEND3,VCC0,GND0,LA_AY4,W2MID0,S4END2,S2END2,S2MID2,EE4END2,E2END4,E1END0,NN4END2,N2END6,N2MID6,N1END2};
assign HBEG7 = HBEG7_input[ConfigBits[533:530]];
 //switch matrix multiplexer HBEG8 MUX-16
assign HBEG8_input = {OSELEND15,OSELEND1,W6END0,WW4END2,W2MID6,S4END3,S2END3,S2MID3,EE4END3,E2END5,E2MID5,E1END1,NN4END3,N2END7,N2MID7,N1END3};
assign HBEG8 = HBEG8_input[ConfigBits[537:534]];
 //switch matrix multiplexer HBEG9 MUX-16
assign HBEG9_input = {OSELEND15,OSELEND1,VCC0,GND0,LB_AY5,S4END3,S2END3,S2MID3,EE4END3,E2END5,E2MID5,E1END1,NN4END3,N2END7,N2MID7,N1END3};
assign HBEG9 = HBEG9_input[ConfigBits[541:538]];
 //switch matrix multiplexer HBEG10 MUX-16
assign HBEG10_input = {OSELEND7,VCC0,GND0,W2END7,W2MID7,W1END3,S4END3,S2END3,S2MID3,E2END5,E2MID5,E1END1,NN4END3,N2END7,N2MID7,N1END3};
assign HBEG10 = HBEG10_input[ConfigBits[545:542]];
 //switch matrix multiplexer HBEG11 MUX-16
assign HBEG11_input = {W2END7,W2END4,W2END3,W2MID7,W1END3,S4END3,S2END3,S2MID3,EE4END3,E2END5,E2MID5,E1END1,NN4END3,N2END7,N2MID7,N1END3};
assign HBEG11 = HBEG11_input[ConfigBits[549:546]];
 //switch matrix multiplexer HBEG12 MUX-16
assign HBEG12_input = {OSELEND12,VCC0,GND0,LE_AY4,W2END7,W2MID7,W1END3,S4END3,S2END3,S2MID3,EE4END3,E2END5,E2MID5,E1END1,N2END7,N2MID7};
assign HBEG12 = HBEG12_input[ConfigBits[553:550]];
 //switch matrix multiplexer HBEG13 MUX-16
assign HBEG13_input = {OSELEND15,OSELEND12,LE_AY5,W2END7,W2MID7,W1END3,S2END3,S2MID3,EE4END3,E2END5,E2MID5,E1END1,NN4END3,N2END7,N2MID7,N1END3};
assign HBEG13 = HBEG13_input[ConfigBits[557:554]];
 //switch matrix multiplexer HBEG14 MUX-16
assign HBEG14_input = {OSELEND15,OSELEND10,LE_AQ4,WW4END2,W2END3,SS4END2,S4END3,S2END3,EE4END3,E2END5,E2MID5,E1END1,NN4END3,N2END7,N2MID7,N1END3};
assign HBEG14 = HBEG14_input[ConfigBits[561:558]];
 //switch matrix multiplexer HBEG15 MUX-16
assign HBEG15_input = {OSELEND10,OSELEND5,VCC0,GND0,LG_AY4,S4END3,S2END3,S2MID3,EE4END3,E2END5,E2MID5,E1END1,NN4END3,N2END7,N2MID7,N1END3};
assign HBEG15 = HBEG15_input[ConfigBits[565:562]];
 //switch matrix multiplexer HBEG16 MUX-16
assign HBEG16_input = {OSELEND2,OSELEND0,M_AB,W6END1,WW4END3,W2END0,W2MID7,W2MID2,W2MID1,S1END0,E2END6,E2MID6,E1END2,N4END0,N2END0,N2MID0};
assign HBEG16 = HBEG16_input[ConfigBits[569:566]];
 //switch matrix multiplexer HBEG17 MUX-16
assign HBEG17_input = {OSELEND6,OSELEND0,M_AB,LH_AY5,W6END1,W2MID7,W2MID1,SS4END0,S2END4,S2MID4,S1END0,E2END6,E2MID6,N4END0,N2END0,N2MID0};
assign HBEG17 = HBEG17_input[ConfigBits[573:570]];
 //switch matrix multiplexer HBEG18 MUX-16
assign HBEG18_input = {VCC0,GND0,M_AB,LA_AQ4,W6END0,W2END0,W2MID0,SS4END0,S2END4,S2MID4,S1END0,E2END6,E2MID6,N4END0,N2END0,N2MID0};
assign HBEG18 = HBEG18_input[ConfigBits[577:574]];
 //switch matrix multiplexer HBEG19 MUX-16
assign HBEG19_input = {VCC0,GND0,W6END0,W2END0,W2MID3,W2MID0,SS4END0,S2END4,S2MID4,S1END0,E2END6,E2MID6,E1END2,N4END0,N2END0,N2MID0};
assign HBEG19 = HBEG19_input[ConfigBits[581:578]];
 //switch matrix multiplexer HBEG20 MUX-16
assign HBEG20_input = {OSELEND4,OSELEND2,VCC0,GND0,LB_AQ5,W6END0,W2END0,W2MID0,SS4END0,S2END4,S2MID4,E2END6,E2MID6,E1END2,N4END0,N2MID0};
assign HBEG20 = HBEG20_input[ConfigBits[585:582]];
 //switch matrix multiplexer HBEG21 MUX-16
assign HBEG21_input = {OSELEND3,OSELEND2,VCC0,GND0,M_AB,W6END0,WW4END3,W2END0,W2MID0,S1END0,E2END6,E2MID6,E1END2,N4END0,N2END0,N2MID0};
assign HBEG21 = HBEG21_input[ConfigBits[589:586]];
 //switch matrix multiplexer HBEG22 MUX-16
assign HBEG22_input = {OSELEND11,OSELEND2,M_AB,LF_AY4,W2END0,W2MID7,W2MID2,W2MID1,W1END3,S1END0,E2END6,E2MID6,E1END2,N4END0,N2END0,N2MID0};
assign HBEG22 = HBEG22_input[ConfigBits[593:590]];
 //switch matrix multiplexer HBEG23 MUX-16
assign HBEG23_input = {OSELEND2,OSELEND1,M_AB,LC_AY5,W6END1,W2END0,W2MID7,SS4END0,S2END4,S2MID4,S1END0,E2END6,E2MID6,N4END0,N2END0,N2MID0};
assign HBEG23 = HBEG23_input[ConfigBits[597:594]];
 //switch matrix multiplexer HBEG24 MUX-16
assign HBEG24_input = {OSELEND11,OSELEND9,M_AD,LF_AQ4,W6END0,WW4END1,W2END5,SS4END1,S2MID5,S1END1,E2END7,E2MID7,E1END3,N4END1,N2END1,N2MID1};
assign HBEG24 = HBEG24_input[ConfigBits[601:598]];
 //switch matrix multiplexer HBEG25 MUX-16
assign HBEG25_input = {OSELEND6,OSELEND4,M_AD,WW4END1,W2END4,W2MID4,SS4END1,S2END5,S2MID5,S1END1,E2END7,E2MID7,E1END3,N4END1,N2END1,N2MID1};
assign HBEG25 = HBEG25_input[ConfigBits[605:602]];
 //switch matrix multiplexer HBEG26 MUX-16
assign HBEG26_input = {VCC0,GND0,M_AD,LG_AQ4,W6END1,W2END1,W2MID1,SS4END1,S2END5,S2MID5,S1END1,E2END7,E1END3,N4END1,N2END1,N2MID1};
assign HBEG26 = HBEG26_input[ConfigBits[609:606]];
 //switch matrix multiplexer HBEG27 MUX-16
assign HBEG27_input = {VCC0,GND0,W6END1,W2END6,W2END1,W2MID1,SS4END1,S2END5,S2MID5,S1END1,E2END7,E2MID7,E1END3,N4END1,N2END1,N2MID1};
assign HBEG27 = HBEG27_input[ConfigBits[613:610]];
 //switch matrix multiplexer HBEG28 MUX-16
assign HBEG28_input = {OSELEND14,OSELEND8,VCC0,GND0,LH_AQ5,W6END1,W2END1,W2MID1,SS4END1,S2END5,S2MID5,S1END1,E2END7,E2MID7,E1END3,N2END1};
assign HBEG28 = HBEG28_input[ConfigBits[617:614]];
 //switch matrix multiplexer HBEG29 MUX-16
assign HBEG29_input = {OSELEND10,OSELEND8,M_AD,LA_AY5,W6END1,W2END1,W2MID1,SS4END1,S2END5,S2MID5,E2END7,E2MID7,E1END3,N4END1,N2END1,N2MID1};
assign HBEG29 = HBEG29_input[ConfigBits[621:618]];
 //switch matrix multiplexer HBEG30 MUX-16
assign HBEG30_input = {OSELEND11,OSELEND5,M_AD,WW4END1,W2END6,W2END5,SS4END1,S2END5,S2MID5,S1END1,E2END7,E2MID7,E1END3,N4END1,N2END1,N2MID1};
assign HBEG30 = HBEG30_input[ConfigBits[625:622]];
 //switch matrix multiplexer HBEG31 MUX-16
assign HBEG31_input = {OSELEND6,OSELEND5,VCC0,GND0,M_AD,WW4END1,SS4END1,S2END5,S2MID5,S1END1,E2END7,E2MID7,E1END3,N4END1,N2END1,N2MID1};
assign HBEG31 = HBEG31_input[ConfigBits[629:626]];
 //switch matrix multiplexer HBEG32 MUX-16
assign HBEG32_input = {OSELEND8,OSELEND6,M_AH,WW4END0,W2END2,W2MID6,W2MID3,S2END6,S2MID6,S1END2,E6END0,E2END0,E2MID0,N4END2,N2END2,N2MID2};
assign HBEG32 = HBEG32_input[ConfigBits[633:630]];
 //switch matrix multiplexer HBEG33 MUX-16
assign HBEG33_input = {OSELEND10,OSELEND8,VCC0,GND0,M_AH,LD_AY5,W2END2,SS4END2,S2END6,S2MID6,S1END2,E6END0,E2MID0,N4END2,N2END2,N2MID2};
assign HBEG33 = HBEG33_input[ConfigBits[637:634]];
 //switch matrix multiplexer HBEG34 MUX-16
assign HBEG34_input = {OSELEND12,M_AH,WW4END0,W2END2,W2MID2,SS4END2,S2END6,S2MID6,S1END2,E6END0,E2END0,E2MID4,E2MID0,N4END2,N2END2,N2MID2};
assign HBEG34 = HBEG34_input[ConfigBits[641:638]];
 //switch matrix multiplexer HBEG35 MUX-16
assign HBEG35_input = {VCC0,GND0,LC_AY4,WW4END0,W2END2,W2MID2,SS4END2,S2END6,S2MID6,S1END2,E6END0,E2END0,E2MID0,N4END2,N2END2,N2MID2};
assign HBEG35 = HBEG35_input[ConfigBits[645:642]];
 //switch matrix multiplexer HBEG36 MUX-16
assign HBEG36_input = {OSELEND11,VCC0,GND0,WW4END0,W2END2,W2MID2,SS4END2,S2END6,S2MID6,S1END2,E6END0,E2END0,E2MID0,N4END2,N2END2,N2MID2};
assign HBEG36 = HBEG36_input[ConfigBits[649:646]];
 //switch matrix multiplexer HBEG37 MUX-16
assign HBEG37_input = {OSELEND11,OSELEND5,VCC0,GND0,M_AH,LG_AY5,WW4END0,W2END2,W2MID2,S2END6,S2MID6,E6END0,E2END0,E2MID0,N2END2,N2MID2};
assign HBEG37 = HBEG37_input[ConfigBits[653:650]];
 //switch matrix multiplexer HBEG38 MUX-16
assign HBEG38_input = {OSELEND11,OSELEND2,M_AH,W2END2,W2MID2,W1END3,SS4END2,S2END6,S2MID6,S1END2,E6END0,E2END0,E2MID0,N4END2,N2END2,N2MID2};
assign HBEG38 = HBEG38_input[ConfigBits[657:654]];
 //switch matrix multiplexer HBEG39 MUX-16
assign HBEG39_input = {OSELEND8,OSELEND3,M_AH,LD_AQ4,W2END2,W2END1,SS4END2,S2END6,S2MID6,S1END2,E6END0,E2END0,E2MID0,N4END2,N2END2,N2MID2};
assign HBEG39 = HBEG39_input[ConfigBits[661:658]];
 //switch matrix multiplexer HBEG40 MUX-16
assign HBEG40_input = {OSELEND14,OSELEND4,VCC0,GND0,M_EF,LA_AQ5,W2MID5,SS4END3,S2MID7,S1END3,E6END1,E2END1,E2MID1,N4END3,N2END3,N2MID3};
assign HBEG40 = HBEG40_input[ConfigBits[665:662]];
 //switch matrix multiplexer HBEG41 MUX-16
assign HBEG41_input = {OSELEND14,OSELEND12,M_EF,LE_AQ5,W2MID5,W1END2,SS4END3,S2END7,S2MID7,S1END3,E6END1,E2END1,E2MID1,N4END3,N2END3,N2MID3};
assign HBEG41 = HBEG41_input[ConfigBits[669:666]];
 //switch matrix multiplexer HBEG42 MUX-16
assign HBEG42_input = {OSELEND1,M_EF,WW4END1,W2END3,W2MID3,W1END2,SS4END3,S2END7,S2MID7,S1END3,E6END1,E2END1,E2MID1,N4END3,N2END3,N2MID3};
assign HBEG42 = HBEG42_input[ConfigBits[673:670]];
 //switch matrix multiplexer HBEG43 MUX-16
assign HBEG43_input = {LC_AQ4,WW4END1,W2END7,W2END3,W2MID4,W2MID3,SS4END3,S2END7,S2MID7,S1END3,E6END1,E2END1,E2MID1,N4END3,N2END3,N2MID3};
assign HBEG43 = HBEG43_input[ConfigBits[677:674]];
 //switch matrix multiplexer HBEG44 MUX-16
assign HBEG44_input = {OSELEND1,VCC0,GND0,LD_AQ5,WW4END1,W2END3,W2MID3,SS4END3,S2END7,S2MID7,E6END1,E2END1,E2MID1,N4END3,N2END3,N2MID3};
assign HBEG44 = HBEG44_input[ConfigBits[681:678]];
 //switch matrix multiplexer HBEG45 MUX-16
assign HBEG45_input = {OSELEND4,OSELEND1,VCC0,GND0,M_EF,WW4END1,W2END7,W2END3,W2MID3,S2MID7,S1END3,E6END1,E2END1,E2MID1,N4END3,N2END3};
assign HBEG45 = HBEG45_input[ConfigBits[685:682]];
 //switch matrix multiplexer HBEG46 MUX-16
assign HBEG46_input = {OSELEND14,OSELEND4,VCC0,GND0,M_EF,W2END7,W2MID5,SS4END3,S2MID7,S1END3,E6END1,E2END1,E2MID1,N4END3,N2END3,N2MID3};
assign HBEG46 = HBEG46_input[ConfigBits[689:686]];
 //switch matrix multiplexer HBEG47 MUX-16
assign HBEG47_input = {OSELEND15,OSELEND14,M_EF,W2MID5,W1END2,SS4END3,S2END7,S2MID7,S1END3,E6END1,E2END1,E2MID4,E2MID1,N4END3,N2END3,N2MID3};
assign HBEG47 = HBEG47_input[ConfigBits[693:690]];
 //switch matrix multiplexer HBEG48 MUX-16
assign HBEG48_input = {OSELEND7,OSELEND0,VCC0,GND0,LG_AQ5,W1END0,S4END0,S2END0,S2MID0,EE4END0,E2END2,E2MID2,NN4END0,N2END4,N2MID4,N1END0};
assign HBEG48 = HBEG48_input[ConfigBits[697:694]];
 //switch matrix multiplexer HBEG49 MUX-16
assign HBEG49_input = {OSELEND13,OSELEND7,VCC0,GND0,W1END0,S4END0,S2END4,S2END0,S2MID0,EE4END0,E2END2,E2MID2,NN4END0,N2END4,N2MID4,N1END0};
assign HBEG49 = HBEG49_input[ConfigBits[701:698]];
 //switch matrix multiplexer HBEG50 MUX-16
assign HBEG50_input = {OSELEND7,WW4END2,W2END4,W2MID4,W1END0,S4END0,S2END4,S2END0,S2MID0,EE4END0,E2END2,E2MID2,NN4END0,N2END4,N2MID4,N1END0};
assign HBEG50 = HBEG50_input[ConfigBits[705:702]];
 //switch matrix multiplexer HBEG51 MUX-16
assign HBEG51_input = {LB_AY4,WW4END2,W2END4,W2MID4,W1END0,S4END0,S2END7,S2END0,S2MID0,EE4END0,E2END2,E2MID2,NN4END0,N2END4,N2MID4,N1END0};
assign HBEG51 = HBEG51_input[ConfigBits[709:706]];
 //switch matrix multiplexer HBEG52 MUX-16
assign HBEG52_input = {OSELEND0,WW4END2,W2END4,W2MID4,W1END0,S4END0,S2END0,S2MID4,S2MID0,EE4END0,E2END2,E2MID2,NN4END0,N2END4,N2MID4,N1END0};
assign HBEG52 = HBEG52_input[ConfigBits[713:710]];
 //switch matrix multiplexer HBEG53 MUX-16
assign HBEG53_input = {OSELEND8,OSELEND0,WW4END2,W2END4,W2MID4,W1END0,S4END0,S2END0,S2MID0,EE4END0,E2END2,E2MID2,NN4END0,N2END4,N2MID4,N1END0};
assign HBEG53 = HBEG53_input[ConfigBits[717:714]];
 //switch matrix multiplexer HBEG54 MUX-16
assign HBEG54_input = {OSELEND7,OSELEND0,VCC0,GND0,W1END0,S4END0,S2END0,S2MID4,S2MID0,EE4END0,E2END2,E2MID2,NN4END0,N2END4,N2MID4,N1END0};
assign HBEG54 = HBEG54_input[ConfigBits[721:718]];
 //switch matrix multiplexer HBEG55 MUX-16
assign HBEG55_input = {OSELEND14,OSELEND7,VCC0,GND0,W6END0,W1END0,S4END0,S2END0,S2MID0,EE4END0,E2END2,E2MID2,NN4END0,N2END4,N2MID4,N1END0};
assign HBEG55 = HBEG55_input[ConfigBits[725:722]];
 //switch matrix multiplexer HBEG56 MUX-16
assign HBEG56_input = {OSELEND13,OSELEND9,VCC0,GND0,W2END1,W1END1,S4END1,S2END1,S2MID1,EE4END1,E2END3,E2MID3,NN4END1,N2END5,N2MID5,N1END1};
assign HBEG56 = HBEG56_input[ConfigBits[729:726]];
 //switch matrix multiplexer HBEG57 MUX-16
assign HBEG57_input = {OSELEND13,OSELEND9,VCC0,GND0,LF_AY5,W1END1,S4END1,S2END1,S2MID1,EE4END1,E2END3,E2MID3,NN4END1,N2END5,N2MID5,N1END1};
assign HBEG57 = HBEG57_input[ConfigBits[733:730]];
 //switch matrix multiplexer HBEG58 MUX-16
assign HBEG58_input = {OSELEND6,WW4END3,W2END5,W2MID5,W1END1,S4END1,S2END1,S2MID1,EE4END1,E2END3,E2MID3,E1END2,NN4END1,N2END5,N2MID5,N1END1};
assign HBEG58 = HBEG58_input[ConfigBits[737:734]];
 //switch matrix multiplexer HBEG59 MUX-16
assign HBEG59_input = {LH_AY4,WW4END3,W2END5,W2MID5,W1END1,SS4END0,S4END1,S2END1,S2MID1,EE4END1,E2END3,E2MID3,NN4END1,N2END5,N2MID5,N1END1};
assign HBEG59 = HBEG59_input[ConfigBits[741:738]];
 //switch matrix multiplexer HBEG60 MUX-16
assign HBEG60_input = {OSELEND9,WW4END3,W2END5,W2MID5,W1END1,S4END1,S2END1,S2MID1,EE4END1,E2END3,E2MID3,E1END2,NN4END1,N2END5,N2MID5,N1END1};
assign HBEG60 = HBEG60_input[ConfigBits[745:742]];
 //switch matrix multiplexer HBEG61 MUX-16
assign HBEG61_input = {OSELEND12,OSELEND9,WW4END3,W2END5,W2MID5,W1END1,S4END1,S2END1,S2MID1,EE4END1,E2END3,E2MID3,NN4END1,N2END5,N2MID5,N1END1};
assign HBEG61 = HBEG61_input[ConfigBits[749:746]];
 //switch matrix multiplexer HBEG62 MUX-16
assign HBEG62_input = {OSELEND13,OSELEND9,VCC0,GND0,LB_AQ4,W1END1,S4END1,S2END1,S2MID1,EE4END1,E2END3,E2MID3,NN4END1,N2END5,N2MID5,N1END1};
assign HBEG62 = HBEG62_input[ConfigBits[753:750]];
 //switch matrix multiplexer HBEG63 MUX-16
assign HBEG63_input = {OSELEND13,OSELEND6,VCC0,GND0,W2MID6,W1END1,S4END1,S2END1,S2MID1,EE4END1,E2END3,E2MID3,NN4END1,N2END5,N2MID5,N1END1};
assign HBEG63 = HBEG63_input[ConfigBits[757:754]];
 //switch matrix multiplexer OSELBEG0 MUX-2
assign OSELBEG0_input = {LA_AQ4,LA_AY4};
assign OSELBEG0 = OSELBEG0_input[ConfigBits[758]];
 //switch matrix multiplexer OSELBEG1 MUX-2
assign OSELBEG1_input = {LA_AQ5,LA_AY5};
assign OSELBEG1 = OSELBEG1_input[ConfigBits[759]];
 //switch matrix multiplexer OSELBEG2 MUX-2
assign OSELBEG2_input = {LB_AQ4,LB_AY4};
assign OSELBEG2 = OSELBEG2_input[ConfigBits[760]];
 //switch matrix multiplexer OSELBEG3 MUX-2
assign OSELBEG3_input = {LB_AQ5,LB_AY5};
assign OSELBEG3 = OSELBEG3_input[ConfigBits[761]];
 //switch matrix multiplexer OSELBEG4 MUX-2
assign OSELBEG4_input = {LC_AQ4,LC_AY4};
assign OSELBEG4 = OSELBEG4_input[ConfigBits[762]];
 //switch matrix multiplexer OSELBEG5 MUX-2
assign OSELBEG5_input = {LC_AQ5,LC_AY5};
assign OSELBEG5 = OSELBEG5_input[ConfigBits[763]];
 //switch matrix multiplexer OSELBEG6 MUX-2
assign OSELBEG6_input = {LD_AQ4,LD_AY4};
assign OSELBEG6 = OSELBEG6_input[ConfigBits[764]];
 //switch matrix multiplexer OSELBEG7 MUX-2
assign OSELBEG7_input = {LD_AQ5,LD_AY5};
assign OSELBEG7 = OSELBEG7_input[ConfigBits[765]];
 //switch matrix multiplexer OSELBEG8 MUX-2
assign OSELBEG8_input = {LE_AQ4,LE_AY4};
assign OSELBEG8 = OSELBEG8_input[ConfigBits[766]];
 //switch matrix multiplexer OSELBEG9 MUX-2
assign OSELBEG9_input = {LE_AQ5,LE_AY5};
assign OSELBEG9 = OSELBEG9_input[ConfigBits[767]];
 //switch matrix multiplexer OSELBEG10 MUX-2
assign OSELBEG10_input = {LF_AQ4,LF_AY4};
assign OSELBEG10 = OSELBEG10_input[ConfigBits[768]];
 //switch matrix multiplexer OSELBEG11 MUX-2
assign OSELBEG11_input = {LF_AQ5,LF_AY5};
assign OSELBEG11 = OSELBEG11_input[ConfigBits[769]];
 //switch matrix multiplexer OSELBEG12 MUX-2
assign OSELBEG12_input = {LG_AQ4,LG_AY4};
assign OSELBEG12 = OSELBEG12_input[ConfigBits[770]];
 //switch matrix multiplexer OSELBEG13 MUX-2
assign OSELBEG13_input = {LG_AQ5,LG_AY5};
assign OSELBEG13 = OSELBEG13_input[ConfigBits[771]];
 //switch matrix multiplexer OSELBEG14 MUX-2
assign OSELBEG14_input = {LH_AQ4,LH_AY4};
assign OSELBEG14 = OSELBEG14_input[ConfigBits[772]];
 //switch matrix multiplexer OSELBEG15 MUX-2
assign OSELBEG15_input = {LH_AQ5,LH_AY5};
assign OSELBEG15 = OSELBEG15_input[ConfigBits[773]];
endmodule