// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

`default_nettype none

module LUT_MEM_8x4 (
    // LUT inputs
    input  wire       A0,
    input  wire       A1,
    input  wire       A2,
    // Select-as-data input (corresponds to A4, share breaker)
    input  wire       SB,
    // Enable select-as-data mode
    input  wire       sad,    

    // 32 configuration bits, split into four 8-bit rows
    input  wire [7:0] row0,
    input  wire [7:0] row1,
    input  wire [7:0] row2,
    input  wire [7:0] row3,

    // Outputs of the four 8:1 muxes
    output wire       q0,
    output wire       q1,
    output wire       q2,
    output wire       q3,
    
    // if sad=0 then block_SB = SB
    // if sad=1 then block_SB = 1
    output wire       block_SB
);

    /*
                         sad
                          │
                    +-----v------+
    A2 ------------>│            |
                    │    MUX     |--> SF
    SB ------------>│            |
                    +------------+

    Four independent 8:1 configuration muxes:
    (sad = 0: normal A0,A1,A2 8x4 mem block)

    row0[7:0] --> 8:1 {SF,A1,A0} --> q0
    row1[7:0] --> 8:1 {SF,A1,A0} --> q1
    
    row2[7:0] --> 8:1 {A2,A1,A0} --> q2
    row3[7:0] --> 8:1 {A2,A1,A0} --> q3
    */

    wire SF;
    assign SF = sad ? SB : A2;

    wire [2:0] addr01;
    wire [2:0] addr23;

    assign addr01 = {SF, A1, A0};
    assign addr23 = {A2, A1, A0};

    assign q0 = row0[addr01];
    assign q1 = row1[addr01];
    assign q2 = row2[addr23];
    assign q3 = row3[addr23];

    assign block_SB = sad ? 1'b1 : SB;

endmodule

// Synchronous reset takes priority over clock enable for both output registers.
module sync_ff (
    input  wire clk,
    input  wire rst,
    input  wire rst_value,
    input  wire en,
    input  wire D,
    output reg  Q
);

    always @(posedge clk) begin
        if (rst) begin
            Q <= rst_value;
        end else begin
            if (en) begin
                Q <= D;
            end
        end
    end

endmodule

module mux21 (
    input  wire A,
    input  wire B,
    input  wire S,
    output wire Y
);

    assign Y = S ? B : A;

endmodule

module xor21 (
    input  wire A,
    input  wire B,
    output wire Y
);

    assign Y = A ^ B;

endmodule


(* FABulous, BelMap,
    INIT=0,
    INIT_1=1,
    INIT_2=2,
    INIT_3=3,
    INIT_4=4,
    INIT_5=5,
    INIT_6=6,
    INIT_7=7,
    INIT_8=8,
    INIT_9=9,
    INIT_10=10,
    INIT_11=11,
    INIT_12=12,
    INIT_13=13,
    INIT_14=14,
    INIT_15=15,
    INIT_16=16,
    INIT_17=17,
    INIT_18=18,
    INIT_19=19,
    INIT_20=20,
    INIT_21=21,
    INIT_22=22,
    INIT_23=23,
    INIT_24=24,
    INIT_25=25,
    INIT_26=26,
    INIT_27=27,
    INIT_28=28,
    INIT_29=29,
    INIT_30=30,
    INIT_31=31,
    CFG_MUX4_MUX=32,
    CFG_DUAL_MUX=33,
    CFG_CARRYSTART_MUX=34,
    CFG_CARRY_MUX=35,
    CFG_AY4_MUX=36,
    CFG_AQ4_MUX=37,
    CFG_AY5_MUX=38,
    CFG_AQ5_MUX=39,
    CFG_SELECT_AS_DATA_MUX=40,
    CFG_SET_NORESET=41

*)
module FLUT51PSDM_architecture #(
    parameter integer NoConfigBits = 42
) (
    input wire A0,
    input wire A1,
    input wire A2,
    input wire A3,
    input wire A4,
    input wire AX,
    input wire Ci,

    input wire SR,
    input wire EN,

    output wire AY4,
    output wire AQ4,
    output wire AY5,
    output wire AQ5,
    
    output wire Co,
   
    (* FABulous, EXTERNAL, SHARED_PORT *) input wire UserCLK,
    (* FABulous, GLOBAL *) input wire [NoConfigBits-1:0] ConfigBits
);

    wire [7:0] init_row0;
    wire [7:0] init_row1;
    wire [7:0] init_row2;
    wire [7:0] init_row3;
    wire MUX4_MUX;
    wire DUAL_MUX;
    wire CARRYSTART_MUX;
    wire CARRY_MUX;
    wire AY4_MUX;
    wire AQ4_MUX;
    wire AY5_MUX;
    wire AQ5_MUX;
    wire SELECT_AS_DATA_MUX;
    wire SET_NORESET; 

    assign init_row0 = ConfigBits[7:0];
    assign init_row1 = ConfigBits[15:8];
    assign init_row2 = ConfigBits[23:16];
    assign init_row3 = ConfigBits[31:24];
    assign MUX4_MUX = ConfigBits[32];
    assign DUAL_MUX = ConfigBits[33];
    assign CARRYSTART_MUX = ConfigBits[34];
    assign CARRY_MUX = ConfigBits[35];
    assign AY4_MUX = ConfigBits[36];
    assign AQ4_MUX = ConfigBits[37];
    assign AY5_MUX = ConfigBits[38];
    assign AQ5_MUX = ConfigBits[39];
    assign SELECT_AS_DATA_MUX = ConfigBits[40];
    assign SET_NORESET = ConfigBits[41];

    wire q0;
    wire q1;
    wire q2;
    wire q3;
    wire A4_SB_block;
    wire f4;
    wire g4;
    wire fg5;

    wire [8:0] conn;

    LUT_MEM_8x4 u_lut_mem_8x4 (
        .A0(A0),
        .A1(A1),
        .A2(A2),
        .SB(A4),
        .sad(SELECT_AS_DATA_MUX),    
        .row0(init_row0),
        .row1(init_row1),
        .row2(init_row2),
        .row3(init_row3),
        .q0(q0),
        .q1(q1),
        .q2(q2),
        .q3(q3),
        .block_SB(A4_SB_block)
    );

    // mux21 mux_00 (.A(), .B(), .S(), .Y());
    // xor21 xor_00 (.A(), .B(), .Y());

    mux21 mux_00 (.A(q0), .B(q1), .S(A3), .Y(f4));
    mux21 mux_01 (.A(q3), .B(AX), .S(MUX4_MUX), .Y(conn[0]));
    mux21 mux_02 (.A(A3), .B(AX), .S(DUAL_MUX), .Y(conn[1]));
    mux21 mux_03 (.A(q2), .B(conn[0]), .S(conn[1]), .Y(g4));
    mux21 mux_04 (.A(f4), .B(g4), .S(A4_SB_block), .Y(fg5));
    mux21 mux_05 (.A(Ci), .B(AX), .S(CARRYSTART_MUX), .Y(conn[2]));
    mux21 mux_06 (.A(conn[2]), .B(AX), .S(CARRY_MUX), .Y(conn[3]));
    mux21 mux_07 (.A(g4), .B(conn[2]), .S(fg5), .Y(conn[4])); 
    assign Co = conn[4];
    xor21 xor_08 (.A(fg5), .B(conn[3]), .Y(conn[5]));
    mux21 mux_09 (.A(1'b0), .B(f4), .S(1'b1), .Y(conn[6]));
    mux21 mux_10 (.A(conn[4]), .B(conn[6]), .S(AY4_MUX), .Y(AY4));
    mux21 mux_11 (.A(conn[6]), .B(AX), .S(AQ4_MUX), .Y(conn[7]));
    sync_ff ff0 (
        .clk(UserCLK),
        .rst(SR),
        .rst_value(SET_NORESET),
        .en(EN),
        .D(conn[7]),
        .Q(AQ4)
    );
    mux21 mux_12 (.A(conn[5]), .B(fg5), .S(AY5_MUX), .Y(AY5));
    mux21 mux_13 (.A(conn[5]), .B(fg5), .S(AQ5_MUX), .Y(conn[8]));
    sync_ff ff1 (
        .clk(UserCLK),
        .rst(SR),
        .rst_value(SET_NORESET),
        .en(EN),
        .D(conn[8]),
        .Q(AQ5)
    );
  
endmodule

`resetall
