// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Systolic_Array
// Date      : 08/12/2022, 20:40:59

`timescale 1ns/1ps

module Systolic_Array (
  input               start,
  input               last,
  input      [511:0]  A_Array,
  input      [511:0]  B_Array,
  output     [2047:0] Array_OUT,
  input               clk,
  input               reset
);

  wire       [63:0]   tile_8_A;
  wire       [63:0]   tile_8_B;
  wire       [63:0]   tile_9_A;
  wire       [63:0]   tile_9_B;
  wire       [63:0]   tile_10_A;
  wire       [63:0]   tile_10_B;
  wire       [63:0]   tile_11_A;
  wire       [63:0]   tile_11_B;
  wire       [63:0]   tile_12_A;
  wire       [63:0]   tile_12_B;
  wire       [63:0]   tile_13_A;
  wire       [63:0]   tile_13_B;
  wire       [63:0]   tile_14_A;
  wire       [63:0]   tile_14_B;
  wire       [63:0]   tile_15_A;
  wire       [63:0]   tile_15_B;
  wire       [2047:0] tile_8_Tile_OUT;
  wire       [2047:0] tile_9_Tile_OUT;
  wire       [2047:0] tile_10_Tile_OUT;
  wire       [2047:0] tile_11_Tile_OUT;
  wire       [2047:0] tile_12_Tile_OUT;
  wire       [2047:0] tile_13_Tile_OUT;
  wire       [2047:0] tile_14_Tile_OUT;
  wire       [2047:0] tile_15_Tile_OUT;
  wire       [2047:0] Array_temp_0;
  wire       [2047:0] Array_temp_1;
  wire       [2047:0] Array_temp_2;
  wire       [2047:0] Array_temp_3;
  wire       [2047:0] Array_temp_4;
  wire       [2047:0] Array_temp_5;
  wire       [2047:0] Array_temp_6;
  wire       [2047:0] Array_temp_7;
  reg                 SCLR;
  reg                 last1;
  reg                 last2;
  reg                 CE;
  wire                add_en;

  Tile tile_8 (
    .CE       (CE                     ), //i
    .SCLR     (SCLR                   ), //i
    .A        (tile_8_A[63:0]         ), //i
    .B        (tile_8_B[63:0]         ), //i
    .Tile_OUT (tile_8_Tile_OUT[2047:0]), //o
    .clk      (clk                    ), //i
    .reset    (reset                  )  //i
  );
  Tile tile_9 (
    .CE       (CE                     ), //i
    .SCLR     (SCLR                   ), //i
    .A        (tile_9_A[63:0]         ), //i
    .B        (tile_9_B[63:0]         ), //i
    .Tile_OUT (tile_9_Tile_OUT[2047:0]), //o
    .clk      (clk                    ), //i
    .reset    (reset                  )  //i
  );
  Tile tile_10 (
    .CE       (CE                      ), //i
    .SCLR     (SCLR                    ), //i
    .A        (tile_10_A[63:0]         ), //i
    .B        (tile_10_B[63:0]         ), //i
    .Tile_OUT (tile_10_Tile_OUT[2047:0]), //o
    .clk      (clk                     ), //i
    .reset    (reset                   )  //i
  );
  Tile tile_11 (
    .CE       (CE                      ), //i
    .SCLR     (SCLR                    ), //i
    .A        (tile_11_A[63:0]         ), //i
    .B        (tile_11_B[63:0]         ), //i
    .Tile_OUT (tile_11_Tile_OUT[2047:0]), //o
    .clk      (clk                     ), //i
    .reset    (reset                   )  //i
  );
  Tile tile_12 (
    .CE       (CE                      ), //i
    .SCLR     (SCLR                    ), //i
    .A        (tile_12_A[63:0]         ), //i
    .B        (tile_12_B[63:0]         ), //i
    .Tile_OUT (tile_12_Tile_OUT[2047:0]), //o
    .clk      (clk                     ), //i
    .reset    (reset                   )  //i
  );
  Tile tile_13 (
    .CE       (CE                      ), //i
    .SCLR     (SCLR                    ), //i
    .A        (tile_13_A[63:0]         ), //i
    .B        (tile_13_B[63:0]         ), //i
    .Tile_OUT (tile_13_Tile_OUT[2047:0]), //o
    .clk      (clk                     ), //i
    .reset    (reset                   )  //i
  );
  Tile tile_14 (
    .CE       (CE                      ), //i
    .SCLR     (SCLR                    ), //i
    .A        (tile_14_A[63:0]         ), //i
    .B        (tile_14_B[63:0]         ), //i
    .Tile_OUT (tile_14_Tile_OUT[2047:0]), //o
    .clk      (clk                     ), //i
    .reset    (reset                   )  //i
  );
  Tile tile_15 (
    .CE       (CE                      ), //i
    .SCLR     (SCLR                    ), //i
    .A        (tile_15_A[63:0]         ), //i
    .B        (tile_15_B[63:0]         ), //i
    .Tile_OUT (tile_15_Tile_OUT[2047:0]), //o
    .clk      (clk                     ), //i
    .reset    (reset                   )  //i
  );
  assign add_en = 1'b0;
  assign tile_8_A = A_Array[63 : 0];
  assign tile_8_B = B_Array[63 : 0];
  assign Array_temp_0 = tile_8_Tile_OUT;
  assign tile_9_A = A_Array[127 : 64];
  assign tile_9_B = B_Array[127 : 64];
  assign Array_temp_1 = tile_9_Tile_OUT;
  assign tile_10_A = A_Array[191 : 128];
  assign tile_10_B = B_Array[191 : 128];
  assign Array_temp_2 = tile_10_Tile_OUT;
  assign tile_11_A = A_Array[255 : 192];
  assign tile_11_B = B_Array[255 : 192];
  assign Array_temp_3 = tile_11_Tile_OUT;
  assign tile_12_A = A_Array[319 : 256];
  assign tile_12_B = B_Array[319 : 256];
  assign Array_temp_4 = tile_12_Tile_OUT;
  assign tile_13_A = A_Array[383 : 320];
  assign tile_13_B = B_Array[383 : 320];
  assign Array_temp_5 = tile_13_Tile_OUT;
  assign tile_14_A = A_Array[447 : 384];
  assign tile_14_B = B_Array[447 : 384];
  assign Array_temp_6 = tile_14_Tile_OUT;
  assign tile_15_A = A_Array[511 : 448];
  assign tile_15_B = B_Array[511 : 448];
  assign Array_temp_7 = tile_15_Tile_OUT;
  assign Array_OUT = Array_temp_0;
  always @(posedge clk) begin
    if(reset) begin
      SCLR <= 1'b0;
      last1 <= 1'b0;
      last2 <= 1'b0;
      CE <= 1'b0;
    end else begin
      CE <= start;
      last1 <= last;
      last2 <= last1;
      SCLR <= last2;
    end
  end


endmodule

//Tile replaced by Tile

//Tile replaced by Tile

//Tile replaced by Tile

//Tile replaced by Tile

//Tile replaced by Tile

//Tile replaced by Tile

//Tile replaced by Tile

module Tile (
  input               CE,
  input               SCLR,
  input      [63:0]   A,
  input      [63:0]   B,
  output reg [2047:0] Tile_OUT,
  input               clk,
  input               reset
);

  wire       [7:0]    pe_00_a;
  wire       [7:0]    pe_00_b;
  wire                pE_1_CE;
  wire                pE_1_SCLR;
  wire       [7:0]    pE_1_b;
  wire                pE_2_CE;
  wire                pE_2_SCLR;
  wire       [7:0]    pE_2_b;
  wire                pE_3_CE;
  wire                pE_3_SCLR;
  wire       [7:0]    pE_3_b;
  wire                pE_4_CE;
  wire                pE_4_SCLR;
  wire       [7:0]    pE_4_b;
  wire                pE_5_CE;
  wire                pE_5_SCLR;
  wire       [7:0]    pE_5_b;
  wire                pE_6_CE;
  wire                pE_6_SCLR;
  wire       [7:0]    pE_6_b;
  wire                pE_7_CE;
  wire                pE_7_SCLR;
  wire       [7:0]    pE_7_b;
  wire                pE_8_CE;
  wire                pE_8_SCLR;
  wire       [7:0]    pE_8_a;
  wire                pE_9_CE;
  wire                pE_9_SCLR;
  wire       [7:0]    pE_9_a;
  wire                pE_10_CE;
  wire                pE_10_SCLR;
  wire       [7:0]    pE_10_a;
  wire                pE_11_CE;
  wire                pE_11_SCLR;
  wire       [7:0]    pE_11_a;
  wire                pE_12_CE;
  wire                pE_12_SCLR;
  wire       [7:0]    pE_12_a;
  wire                pE_13_CE;
  wire                pE_13_SCLR;
  wire       [7:0]    pE_13_a;
  wire                pE_14_CE;
  wire                pE_14_SCLR;
  wire       [7:0]    pE_14_a;
  wire                pE_15_CE;
  wire                pE_15_SCLR;
  wire                pE_16_CE;
  wire                pE_16_SCLR;
  wire                pE_17_CE;
  wire                pE_17_SCLR;
  wire                pE_18_CE;
  wire                pE_18_SCLR;
  wire                pE_19_CE;
  wire                pE_19_SCLR;
  wire                pE_20_CE;
  wire                pE_20_SCLR;
  wire                pE_21_CE;
  wire                pE_21_SCLR;
  wire                pE_22_CE;
  wire                pE_22_SCLR;
  wire                pE_23_CE;
  wire                pE_23_SCLR;
  wire                pE_24_CE;
  wire                pE_24_SCLR;
  wire                pE_25_CE;
  wire                pE_25_SCLR;
  wire                pE_26_CE;
  wire                pE_26_SCLR;
  wire                pE_27_CE;
  wire                pE_27_SCLR;
  wire                pE_28_CE;
  wire                pE_28_SCLR;
  wire                pE_29_CE;
  wire                pE_29_SCLR;
  wire                pE_30_CE;
  wire                pE_30_SCLR;
  wire                pE_31_CE;
  wire                pE_31_SCLR;
  wire                pE_32_CE;
  wire                pE_32_SCLR;
  wire                pE_33_CE;
  wire                pE_33_SCLR;
  wire                pE_34_CE;
  wire                pE_34_SCLR;
  wire                pE_35_CE;
  wire                pE_35_SCLR;
  wire                pE_36_CE;
  wire                pE_36_SCLR;
  wire                pE_37_CE;
  wire                pE_37_SCLR;
  wire                pE_38_CE;
  wire                pE_38_SCLR;
  wire                pE_39_CE;
  wire                pE_39_SCLR;
  wire                pE_40_CE;
  wire                pE_40_SCLR;
  wire                pE_41_CE;
  wire                pE_41_SCLR;
  wire                pE_42_CE;
  wire                pE_42_SCLR;
  wire                pE_43_CE;
  wire                pE_43_SCLR;
  wire                pE_44_CE;
  wire                pE_44_SCLR;
  wire                pE_45_CE;
  wire                pE_45_SCLR;
  wire                pE_46_CE;
  wire                pE_46_SCLR;
  wire                pE_47_CE;
  wire                pE_47_SCLR;
  wire                pE_48_CE;
  wire                pE_48_SCLR;
  wire                pE_49_CE;
  wire                pE_49_SCLR;
  wire                pE_50_CE;
  wire                pE_50_SCLR;
  wire                pE_51_CE;
  wire                pE_51_SCLR;
  wire                pE_52_CE;
  wire                pE_52_SCLR;
  wire                pE_53_CE;
  wire                pE_53_SCLR;
  wire                pE_54_CE;
  wire                pE_54_SCLR;
  wire                pE_55_CE;
  wire                pE_55_SCLR;
  wire                pE_56_CE;
  wire                pE_56_SCLR;
  wire                pE_57_CE;
  wire                pE_57_SCLR;
  wire                pE_58_CE;
  wire                pE_58_SCLR;
  wire                pE_59_CE;
  wire                pE_59_SCLR;
  wire                pE_60_CE;
  wire                pE_60_SCLR;
  wire                pE_61_CE;
  wire                pE_61_SCLR;
  wire                pE_62_CE;
  wire                pE_62_SCLR;
  wire                pE_63_CE;
  wire                pE_63_SCLR;
  wire       [31:0]   pe_00_pe_out;
  wire       [7:0]    pe_00_acout;
  wire       [7:0]    pe_00_bcout;
  wire       [31:0]   pE_1_pe_out;
  wire       [7:0]    pE_1_acout;
  wire       [7:0]    pE_1_bcout;
  wire       [31:0]   pE_2_pe_out;
  wire       [7:0]    pE_2_acout;
  wire       [7:0]    pE_2_bcout;
  wire       [31:0]   pE_3_pe_out;
  wire       [7:0]    pE_3_acout;
  wire       [7:0]    pE_3_bcout;
  wire       [31:0]   pE_4_pe_out;
  wire       [7:0]    pE_4_acout;
  wire       [7:0]    pE_4_bcout;
  wire       [31:0]   pE_5_pe_out;
  wire       [7:0]    pE_5_acout;
  wire       [7:0]    pE_5_bcout;
  wire       [31:0]   pE_6_pe_out;
  wire       [7:0]    pE_6_acout;
  wire       [7:0]    pE_6_bcout;
  wire       [31:0]   pE_7_pe_out;
  wire       [7:0]    pE_7_acout;
  wire       [7:0]    pE_7_bcout;
  wire       [31:0]   pE_8_pe_out;
  wire       [7:0]    pE_8_acout;
  wire       [7:0]    pE_8_bcout;
  wire       [31:0]   pE_9_pe_out;
  wire       [7:0]    pE_9_acout;
  wire       [7:0]    pE_9_bcout;
  wire       [31:0]   pE_10_pe_out;
  wire       [7:0]    pE_10_acout;
  wire       [7:0]    pE_10_bcout;
  wire       [31:0]   pE_11_pe_out;
  wire       [7:0]    pE_11_acout;
  wire       [7:0]    pE_11_bcout;
  wire       [31:0]   pE_12_pe_out;
  wire       [7:0]    pE_12_acout;
  wire       [7:0]    pE_12_bcout;
  wire       [31:0]   pE_13_pe_out;
  wire       [7:0]    pE_13_acout;
  wire       [7:0]    pE_13_bcout;
  wire       [31:0]   pE_14_pe_out;
  wire       [7:0]    pE_14_acout;
  wire       [7:0]    pE_14_bcout;
  wire       [31:0]   pE_15_pe_out;
  wire       [7:0]    pE_15_acout;
  wire       [7:0]    pE_15_bcout;
  wire       [31:0]   pE_16_pe_out;
  wire       [7:0]    pE_16_acout;
  wire       [7:0]    pE_16_bcout;
  wire       [31:0]   pE_17_pe_out;
  wire       [7:0]    pE_17_acout;
  wire       [7:0]    pE_17_bcout;
  wire       [31:0]   pE_18_pe_out;
  wire       [7:0]    pE_18_acout;
  wire       [7:0]    pE_18_bcout;
  wire       [31:0]   pE_19_pe_out;
  wire       [7:0]    pE_19_acout;
  wire       [7:0]    pE_19_bcout;
  wire       [31:0]   pE_20_pe_out;
  wire       [7:0]    pE_20_acout;
  wire       [7:0]    pE_20_bcout;
  wire       [31:0]   pE_21_pe_out;
  wire       [7:0]    pE_21_acout;
  wire       [7:0]    pE_21_bcout;
  wire       [31:0]   pE_22_pe_out;
  wire       [7:0]    pE_22_acout;
  wire       [7:0]    pE_22_bcout;
  wire       [31:0]   pE_23_pe_out;
  wire       [7:0]    pE_23_acout;
  wire       [7:0]    pE_23_bcout;
  wire       [31:0]   pE_24_pe_out;
  wire       [7:0]    pE_24_acout;
  wire       [7:0]    pE_24_bcout;
  wire       [31:0]   pE_25_pe_out;
  wire       [7:0]    pE_25_acout;
  wire       [7:0]    pE_25_bcout;
  wire       [31:0]   pE_26_pe_out;
  wire       [7:0]    pE_26_acout;
  wire       [7:0]    pE_26_bcout;
  wire       [31:0]   pE_27_pe_out;
  wire       [7:0]    pE_27_acout;
  wire       [7:0]    pE_27_bcout;
  wire       [31:0]   pE_28_pe_out;
  wire       [7:0]    pE_28_acout;
  wire       [7:0]    pE_28_bcout;
  wire       [31:0]   pE_29_pe_out;
  wire       [7:0]    pE_29_acout;
  wire       [7:0]    pE_29_bcout;
  wire       [31:0]   pE_30_pe_out;
  wire       [7:0]    pE_30_acout;
  wire       [7:0]    pE_30_bcout;
  wire       [31:0]   pE_31_pe_out;
  wire       [7:0]    pE_31_acout;
  wire       [7:0]    pE_31_bcout;
  wire       [31:0]   pE_32_pe_out;
  wire       [7:0]    pE_32_acout;
  wire       [7:0]    pE_32_bcout;
  wire       [31:0]   pE_33_pe_out;
  wire       [7:0]    pE_33_acout;
  wire       [7:0]    pE_33_bcout;
  wire       [31:0]   pE_34_pe_out;
  wire       [7:0]    pE_34_acout;
  wire       [7:0]    pE_34_bcout;
  wire       [31:0]   pE_35_pe_out;
  wire       [7:0]    pE_35_acout;
  wire       [7:0]    pE_35_bcout;
  wire       [31:0]   pE_36_pe_out;
  wire       [7:0]    pE_36_acout;
  wire       [7:0]    pE_36_bcout;
  wire       [31:0]   pE_37_pe_out;
  wire       [7:0]    pE_37_acout;
  wire       [7:0]    pE_37_bcout;
  wire       [31:0]   pE_38_pe_out;
  wire       [7:0]    pE_38_acout;
  wire       [7:0]    pE_38_bcout;
  wire       [31:0]   pE_39_pe_out;
  wire       [7:0]    pE_39_acout;
  wire       [7:0]    pE_39_bcout;
  wire       [31:0]   pE_40_pe_out;
  wire       [7:0]    pE_40_acout;
  wire       [7:0]    pE_40_bcout;
  wire       [31:0]   pE_41_pe_out;
  wire       [7:0]    pE_41_acout;
  wire       [7:0]    pE_41_bcout;
  wire       [31:0]   pE_42_pe_out;
  wire       [7:0]    pE_42_acout;
  wire       [7:0]    pE_42_bcout;
  wire       [31:0]   pE_43_pe_out;
  wire       [7:0]    pE_43_acout;
  wire       [7:0]    pE_43_bcout;
  wire       [31:0]   pE_44_pe_out;
  wire       [7:0]    pE_44_acout;
  wire       [7:0]    pE_44_bcout;
  wire       [31:0]   pE_45_pe_out;
  wire       [7:0]    pE_45_acout;
  wire       [7:0]    pE_45_bcout;
  wire       [31:0]   pE_46_pe_out;
  wire       [7:0]    pE_46_acout;
  wire       [7:0]    pE_46_bcout;
  wire       [31:0]   pE_47_pe_out;
  wire       [7:0]    pE_47_acout;
  wire       [7:0]    pE_47_bcout;
  wire       [31:0]   pE_48_pe_out;
  wire       [7:0]    pE_48_acout;
  wire       [7:0]    pE_48_bcout;
  wire       [31:0]   pE_49_pe_out;
  wire       [7:0]    pE_49_acout;
  wire       [7:0]    pE_49_bcout;
  wire       [31:0]   pE_50_pe_out;
  wire       [7:0]    pE_50_acout;
  wire       [7:0]    pE_50_bcout;
  wire       [31:0]   pE_51_pe_out;
  wire       [7:0]    pE_51_acout;
  wire       [7:0]    pE_51_bcout;
  wire       [31:0]   pE_52_pe_out;
  wire       [7:0]    pE_52_acout;
  wire       [7:0]    pE_52_bcout;
  wire       [31:0]   pE_53_pe_out;
  wire       [7:0]    pE_53_acout;
  wire       [7:0]    pE_53_bcout;
  wire       [31:0]   pE_54_pe_out;
  wire       [7:0]    pE_54_acout;
  wire       [7:0]    pE_54_bcout;
  wire       [31:0]   pE_55_pe_out;
  wire       [7:0]    pE_55_acout;
  wire       [7:0]    pE_55_bcout;
  wire       [31:0]   pE_56_pe_out;
  wire       [7:0]    pE_56_acout;
  wire       [7:0]    pE_56_bcout;
  wire       [31:0]   pE_57_pe_out;
  wire       [7:0]    pE_57_acout;
  wire       [7:0]    pE_57_bcout;
  wire       [31:0]   pE_58_pe_out;
  wire       [7:0]    pE_58_acout;
  wire       [7:0]    pE_58_bcout;
  wire       [31:0]   pE_59_pe_out;
  wire       [7:0]    pE_59_acout;
  wire       [7:0]    pE_59_bcout;
  wire       [31:0]   pE_60_pe_out;
  wire       [7:0]    pE_60_acout;
  wire       [7:0]    pE_60_bcout;
  wire       [31:0]   pE_61_pe_out;
  wire       [7:0]    pE_61_acout;
  wire       [7:0]    pE_61_bcout;
  wire       [31:0]   pE_62_pe_out;
  wire       [7:0]    pE_62_acout;
  wire       [7:0]    pE_62_bcout;
  wire       [31:0]   pE_63_pe_out;
  wire       [7:0]    pE_63_acout;
  wire       [7:0]    pE_63_bcout;
  reg        [13:0]   CE_srl;
  reg        [13:0]   SCLR_srl;
  wire       [7:0]    ACOUT_0_0;
  wire       [7:0]    ACOUT_0_1;
  wire       [7:0]    ACOUT_0_2;
  wire       [7:0]    ACOUT_0_3;
  wire       [7:0]    ACOUT_0_4;
  wire       [7:0]    ACOUT_0_5;
  wire       [7:0]    ACOUT_0_6;
  wire       [7:0]    ACOUT_0_7;
  wire       [7:0]    ACOUT_1_0;
  wire       [7:0]    ACOUT_1_1;
  wire       [7:0]    ACOUT_1_2;
  wire       [7:0]    ACOUT_1_3;
  wire       [7:0]    ACOUT_1_4;
  wire       [7:0]    ACOUT_1_5;
  wire       [7:0]    ACOUT_1_6;
  wire       [7:0]    ACOUT_1_7;
  wire       [7:0]    ACOUT_2_0;
  wire       [7:0]    ACOUT_2_1;
  wire       [7:0]    ACOUT_2_2;
  wire       [7:0]    ACOUT_2_3;
  wire       [7:0]    ACOUT_2_4;
  wire       [7:0]    ACOUT_2_5;
  wire       [7:0]    ACOUT_2_6;
  wire       [7:0]    ACOUT_2_7;
  wire       [7:0]    ACOUT_3_0;
  wire       [7:0]    ACOUT_3_1;
  wire       [7:0]    ACOUT_3_2;
  wire       [7:0]    ACOUT_3_3;
  wire       [7:0]    ACOUT_3_4;
  wire       [7:0]    ACOUT_3_5;
  wire       [7:0]    ACOUT_3_6;
  wire       [7:0]    ACOUT_3_7;
  wire       [7:0]    ACOUT_4_0;
  wire       [7:0]    ACOUT_4_1;
  wire       [7:0]    ACOUT_4_2;
  wire       [7:0]    ACOUT_4_3;
  wire       [7:0]    ACOUT_4_4;
  wire       [7:0]    ACOUT_4_5;
  wire       [7:0]    ACOUT_4_6;
  wire       [7:0]    ACOUT_4_7;
  wire       [7:0]    ACOUT_5_0;
  wire       [7:0]    ACOUT_5_1;
  wire       [7:0]    ACOUT_5_2;
  wire       [7:0]    ACOUT_5_3;
  wire       [7:0]    ACOUT_5_4;
  wire       [7:0]    ACOUT_5_5;
  wire       [7:0]    ACOUT_5_6;
  wire       [7:0]    ACOUT_5_7;
  wire       [7:0]    ACOUT_6_0;
  wire       [7:0]    ACOUT_6_1;
  wire       [7:0]    ACOUT_6_2;
  wire       [7:0]    ACOUT_6_3;
  wire       [7:0]    ACOUT_6_4;
  wire       [7:0]    ACOUT_6_5;
  wire       [7:0]    ACOUT_6_6;
  wire       [7:0]    ACOUT_6_7;
  wire       [7:0]    ACOUT_7_0;
  wire       [7:0]    ACOUT_7_1;
  wire       [7:0]    ACOUT_7_2;
  wire       [7:0]    ACOUT_7_3;
  wire       [7:0]    ACOUT_7_4;
  wire       [7:0]    ACOUT_7_5;
  wire       [7:0]    ACOUT_7_6;
  wire       [7:0]    ACOUT_7_7;
  wire       [7:0]    BCOUT_0_0;
  wire       [7:0]    BCOUT_0_1;
  wire       [7:0]    BCOUT_0_2;
  wire       [7:0]    BCOUT_0_3;
  wire       [7:0]    BCOUT_0_4;
  wire       [7:0]    BCOUT_0_5;
  wire       [7:0]    BCOUT_0_6;
  wire       [7:0]    BCOUT_0_7;
  wire       [7:0]    BCOUT_1_0;
  wire       [7:0]    BCOUT_1_1;
  wire       [7:0]    BCOUT_1_2;
  wire       [7:0]    BCOUT_1_3;
  wire       [7:0]    BCOUT_1_4;
  wire       [7:0]    BCOUT_1_5;
  wire       [7:0]    BCOUT_1_6;
  wire       [7:0]    BCOUT_1_7;
  wire       [7:0]    BCOUT_2_0;
  wire       [7:0]    BCOUT_2_1;
  wire       [7:0]    BCOUT_2_2;
  wire       [7:0]    BCOUT_2_3;
  wire       [7:0]    BCOUT_2_4;
  wire       [7:0]    BCOUT_2_5;
  wire       [7:0]    BCOUT_2_6;
  wire       [7:0]    BCOUT_2_7;
  wire       [7:0]    BCOUT_3_0;
  wire       [7:0]    BCOUT_3_1;
  wire       [7:0]    BCOUT_3_2;
  wire       [7:0]    BCOUT_3_3;
  wire       [7:0]    BCOUT_3_4;
  wire       [7:0]    BCOUT_3_5;
  wire       [7:0]    BCOUT_3_6;
  wire       [7:0]    BCOUT_3_7;
  wire       [7:0]    BCOUT_4_0;
  wire       [7:0]    BCOUT_4_1;
  wire       [7:0]    BCOUT_4_2;
  wire       [7:0]    BCOUT_4_3;
  wire       [7:0]    BCOUT_4_4;
  wire       [7:0]    BCOUT_4_5;
  wire       [7:0]    BCOUT_4_6;
  wire       [7:0]    BCOUT_4_7;
  wire       [7:0]    BCOUT_5_0;
  wire       [7:0]    BCOUT_5_1;
  wire       [7:0]    BCOUT_5_2;
  wire       [7:0]    BCOUT_5_3;
  wire       [7:0]    BCOUT_5_4;
  wire       [7:0]    BCOUT_5_5;
  wire       [7:0]    BCOUT_5_6;
  wire       [7:0]    BCOUT_5_7;
  wire       [7:0]    BCOUT_6_0;
  wire       [7:0]    BCOUT_6_1;
  wire       [7:0]    BCOUT_6_2;
  wire       [7:0]    BCOUT_6_3;
  wire       [7:0]    BCOUT_6_4;
  wire       [7:0]    BCOUT_6_5;
  wire       [7:0]    BCOUT_6_6;
  wire       [7:0]    BCOUT_6_7;
  wire       [7:0]    BCOUT_7_0;
  wire       [7:0]    BCOUT_7_1;
  wire       [7:0]    BCOUT_7_2;
  wire       [7:0]    BCOUT_7_3;
  wire       [7:0]    BCOUT_7_4;
  wire       [7:0]    BCOUT_7_5;
  wire       [7:0]    BCOUT_7_6;
  wire       [7:0]    BCOUT_7_7;

  PE pe_00 (
    .clk    (clk               ), //i
    .CE     (CE                ), //i
    .SCLR   (SCLR              ), //i
    .a      (pe_00_a[7:0]      ), //i
    .b      (pe_00_b[7:0]      ), //i
    .pe_out (pe_00_pe_out[31:0]), //o
    .acout  (pe_00_acout[7:0]  ), //o
    .bcout  (pe_00_bcout[7:0]  )  //o
  );
  PE pE_1 (
    .clk    (clk              ), //i
    .CE     (pE_1_CE          ), //i
    .SCLR   (pE_1_SCLR        ), //i
    .a      (ACOUT_0_0[7:0]   ), //i
    .b      (pE_1_b[7:0]      ), //i
    .pe_out (pE_1_pe_out[31:0]), //o
    .acout  (pE_1_acout[7:0]  ), //o
    .bcout  (pE_1_bcout[7:0]  )  //o
  );
  PE pE_2 (
    .clk    (clk              ), //i
    .CE     (pE_2_CE          ), //i
    .SCLR   (pE_2_SCLR        ), //i
    .a      (ACOUT_0_1[7:0]   ), //i
    .b      (pE_2_b[7:0]      ), //i
    .pe_out (pE_2_pe_out[31:0]), //o
    .acout  (pE_2_acout[7:0]  ), //o
    .bcout  (pE_2_bcout[7:0]  )  //o
  );
  PE pE_3 (
    .clk    (clk              ), //i
    .CE     (pE_3_CE          ), //i
    .SCLR   (pE_3_SCLR        ), //i
    .a      (ACOUT_0_2[7:0]   ), //i
    .b      (pE_3_b[7:0]      ), //i
    .pe_out (pE_3_pe_out[31:0]), //o
    .acout  (pE_3_acout[7:0]  ), //o
    .bcout  (pE_3_bcout[7:0]  )  //o
  );
  PE pE_4 (
    .clk    (clk              ), //i
    .CE     (pE_4_CE          ), //i
    .SCLR   (pE_4_SCLR        ), //i
    .a      (ACOUT_0_3[7:0]   ), //i
    .b      (pE_4_b[7:0]      ), //i
    .pe_out (pE_4_pe_out[31:0]), //o
    .acout  (pE_4_acout[7:0]  ), //o
    .bcout  (pE_4_bcout[7:0]  )  //o
  );
  PE pE_5 (
    .clk    (clk              ), //i
    .CE     (pE_5_CE          ), //i
    .SCLR   (pE_5_SCLR        ), //i
    .a      (ACOUT_0_4[7:0]   ), //i
    .b      (pE_5_b[7:0]      ), //i
    .pe_out (pE_5_pe_out[31:0]), //o
    .acout  (pE_5_acout[7:0]  ), //o
    .bcout  (pE_5_bcout[7:0]  )  //o
  );
  PE pE_6 (
    .clk    (clk              ), //i
    .CE     (pE_6_CE          ), //i
    .SCLR   (pE_6_SCLR        ), //i
    .a      (ACOUT_0_5[7:0]   ), //i
    .b      (pE_6_b[7:0]      ), //i
    .pe_out (pE_6_pe_out[31:0]), //o
    .acout  (pE_6_acout[7:0]  ), //o
    .bcout  (pE_6_bcout[7:0]  )  //o
  );
  PE pE_7 (
    .clk    (clk              ), //i
    .CE     (pE_7_CE          ), //i
    .SCLR   (pE_7_SCLR        ), //i
    .a      (ACOUT_0_6[7:0]   ), //i
    .b      (pE_7_b[7:0]      ), //i
    .pe_out (pE_7_pe_out[31:0]), //o
    .acout  (pE_7_acout[7:0]  ), //o
    .bcout  (pE_7_bcout[7:0]  )  //o
  );
  PE pE_8 (
    .clk    (clk              ), //i
    .CE     (pE_8_CE          ), //i
    .SCLR   (pE_8_SCLR        ), //i
    .a      (pE_8_a[7:0]      ), //i
    .b      (BCOUT_0_0[7:0]   ), //i
    .pe_out (pE_8_pe_out[31:0]), //o
    .acout  (pE_8_acout[7:0]  ), //o
    .bcout  (pE_8_bcout[7:0]  )  //o
  );
  PE pE_9 (
    .clk    (clk              ), //i
    .CE     (pE_9_CE          ), //i
    .SCLR   (pE_9_SCLR        ), //i
    .a      (pE_9_a[7:0]      ), //i
    .b      (BCOUT_1_0[7:0]   ), //i
    .pe_out (pE_9_pe_out[31:0]), //o
    .acout  (pE_9_acout[7:0]  ), //o
    .bcout  (pE_9_bcout[7:0]  )  //o
  );
  PE pE_10 (
    .clk    (clk               ), //i
    .CE     (pE_10_CE          ), //i
    .SCLR   (pE_10_SCLR        ), //i
    .a      (pE_10_a[7:0]      ), //i
    .b      (BCOUT_2_0[7:0]    ), //i
    .pe_out (pE_10_pe_out[31:0]), //o
    .acout  (pE_10_acout[7:0]  ), //o
    .bcout  (pE_10_bcout[7:0]  )  //o
  );
  PE pE_11 (
    .clk    (clk               ), //i
    .CE     (pE_11_CE          ), //i
    .SCLR   (pE_11_SCLR        ), //i
    .a      (pE_11_a[7:0]      ), //i
    .b      (BCOUT_3_0[7:0]    ), //i
    .pe_out (pE_11_pe_out[31:0]), //o
    .acout  (pE_11_acout[7:0]  ), //o
    .bcout  (pE_11_bcout[7:0]  )  //o
  );
  PE pE_12 (
    .clk    (clk               ), //i
    .CE     (pE_12_CE          ), //i
    .SCLR   (pE_12_SCLR        ), //i
    .a      (pE_12_a[7:0]      ), //i
    .b      (BCOUT_4_0[7:0]    ), //i
    .pe_out (pE_12_pe_out[31:0]), //o
    .acout  (pE_12_acout[7:0]  ), //o
    .bcout  (pE_12_bcout[7:0]  )  //o
  );
  PE pE_13 (
    .clk    (clk               ), //i
    .CE     (pE_13_CE          ), //i
    .SCLR   (pE_13_SCLR        ), //i
    .a      (pE_13_a[7:0]      ), //i
    .b      (BCOUT_5_0[7:0]    ), //i
    .pe_out (pE_13_pe_out[31:0]), //o
    .acout  (pE_13_acout[7:0]  ), //o
    .bcout  (pE_13_bcout[7:0]  )  //o
  );
  PE pE_14 (
    .clk    (clk               ), //i
    .CE     (pE_14_CE          ), //i
    .SCLR   (pE_14_SCLR        ), //i
    .a      (pE_14_a[7:0]      ), //i
    .b      (BCOUT_6_0[7:0]    ), //i
    .pe_out (pE_14_pe_out[31:0]), //o
    .acout  (pE_14_acout[7:0]  ), //o
    .bcout  (pE_14_bcout[7:0]  )  //o
  );
  PE pE_15 (
    .clk    (clk               ), //i
    .CE     (pE_15_CE          ), //i
    .SCLR   (pE_15_SCLR        ), //i
    .a      (ACOUT_1_0[7:0]    ), //i
    .b      (BCOUT_0_1[7:0]    ), //i
    .pe_out (pE_15_pe_out[31:0]), //o
    .acout  (pE_15_acout[7:0]  ), //o
    .bcout  (pE_15_bcout[7:0]  )  //o
  );
  PE pE_16 (
    .clk    (clk               ), //i
    .CE     (pE_16_CE          ), //i
    .SCLR   (pE_16_SCLR        ), //i
    .a      (ACOUT_1_1[7:0]    ), //i
    .b      (BCOUT_0_2[7:0]    ), //i
    .pe_out (pE_16_pe_out[31:0]), //o
    .acout  (pE_16_acout[7:0]  ), //o
    .bcout  (pE_16_bcout[7:0]  )  //o
  );
  PE pE_17 (
    .clk    (clk               ), //i
    .CE     (pE_17_CE          ), //i
    .SCLR   (pE_17_SCLR        ), //i
    .a      (ACOUT_1_2[7:0]    ), //i
    .b      (BCOUT_0_3[7:0]    ), //i
    .pe_out (pE_17_pe_out[31:0]), //o
    .acout  (pE_17_acout[7:0]  ), //o
    .bcout  (pE_17_bcout[7:0]  )  //o
  );
  PE pE_18 (
    .clk    (clk               ), //i
    .CE     (pE_18_CE          ), //i
    .SCLR   (pE_18_SCLR        ), //i
    .a      (ACOUT_1_3[7:0]    ), //i
    .b      (BCOUT_0_4[7:0]    ), //i
    .pe_out (pE_18_pe_out[31:0]), //o
    .acout  (pE_18_acout[7:0]  ), //o
    .bcout  (pE_18_bcout[7:0]  )  //o
  );
  PE pE_19 (
    .clk    (clk               ), //i
    .CE     (pE_19_CE          ), //i
    .SCLR   (pE_19_SCLR        ), //i
    .a      (ACOUT_1_4[7:0]    ), //i
    .b      (BCOUT_0_5[7:0]    ), //i
    .pe_out (pE_19_pe_out[31:0]), //o
    .acout  (pE_19_acout[7:0]  ), //o
    .bcout  (pE_19_bcout[7:0]  )  //o
  );
  PE pE_20 (
    .clk    (clk               ), //i
    .CE     (pE_20_CE          ), //i
    .SCLR   (pE_20_SCLR        ), //i
    .a      (ACOUT_1_5[7:0]    ), //i
    .b      (BCOUT_0_6[7:0]    ), //i
    .pe_out (pE_20_pe_out[31:0]), //o
    .acout  (pE_20_acout[7:0]  ), //o
    .bcout  (pE_20_bcout[7:0]  )  //o
  );
  PE pE_21 (
    .clk    (clk               ), //i
    .CE     (pE_21_CE          ), //i
    .SCLR   (pE_21_SCLR        ), //i
    .a      (ACOUT_1_6[7:0]    ), //i
    .b      (BCOUT_0_7[7:0]    ), //i
    .pe_out (pE_21_pe_out[31:0]), //o
    .acout  (pE_21_acout[7:0]  ), //o
    .bcout  (pE_21_bcout[7:0]  )  //o
  );
  PE pE_22 (
    .clk    (clk               ), //i
    .CE     (pE_22_CE          ), //i
    .SCLR   (pE_22_SCLR        ), //i
    .a      (ACOUT_2_0[7:0]    ), //i
    .b      (BCOUT_1_1[7:0]    ), //i
    .pe_out (pE_22_pe_out[31:0]), //o
    .acout  (pE_22_acout[7:0]  ), //o
    .bcout  (pE_22_bcout[7:0]  )  //o
  );
  PE pE_23 (
    .clk    (clk               ), //i
    .CE     (pE_23_CE          ), //i
    .SCLR   (pE_23_SCLR        ), //i
    .a      (ACOUT_2_1[7:0]    ), //i
    .b      (BCOUT_1_2[7:0]    ), //i
    .pe_out (pE_23_pe_out[31:0]), //o
    .acout  (pE_23_acout[7:0]  ), //o
    .bcout  (pE_23_bcout[7:0]  )  //o
  );
  PE pE_24 (
    .clk    (clk               ), //i
    .CE     (pE_24_CE          ), //i
    .SCLR   (pE_24_SCLR        ), //i
    .a      (ACOUT_2_2[7:0]    ), //i
    .b      (BCOUT_1_3[7:0]    ), //i
    .pe_out (pE_24_pe_out[31:0]), //o
    .acout  (pE_24_acout[7:0]  ), //o
    .bcout  (pE_24_bcout[7:0]  )  //o
  );
  PE pE_25 (
    .clk    (clk               ), //i
    .CE     (pE_25_CE          ), //i
    .SCLR   (pE_25_SCLR        ), //i
    .a      (ACOUT_2_3[7:0]    ), //i
    .b      (BCOUT_1_4[7:0]    ), //i
    .pe_out (pE_25_pe_out[31:0]), //o
    .acout  (pE_25_acout[7:0]  ), //o
    .bcout  (pE_25_bcout[7:0]  )  //o
  );
  PE pE_26 (
    .clk    (clk               ), //i
    .CE     (pE_26_CE          ), //i
    .SCLR   (pE_26_SCLR        ), //i
    .a      (ACOUT_2_4[7:0]    ), //i
    .b      (BCOUT_1_5[7:0]    ), //i
    .pe_out (pE_26_pe_out[31:0]), //o
    .acout  (pE_26_acout[7:0]  ), //o
    .bcout  (pE_26_bcout[7:0]  )  //o
  );
  PE pE_27 (
    .clk    (clk               ), //i
    .CE     (pE_27_CE          ), //i
    .SCLR   (pE_27_SCLR        ), //i
    .a      (ACOUT_2_5[7:0]    ), //i
    .b      (BCOUT_1_6[7:0]    ), //i
    .pe_out (pE_27_pe_out[31:0]), //o
    .acout  (pE_27_acout[7:0]  ), //o
    .bcout  (pE_27_bcout[7:0]  )  //o
  );
  PE pE_28 (
    .clk    (clk               ), //i
    .CE     (pE_28_CE          ), //i
    .SCLR   (pE_28_SCLR        ), //i
    .a      (ACOUT_2_6[7:0]    ), //i
    .b      (BCOUT_1_7[7:0]    ), //i
    .pe_out (pE_28_pe_out[31:0]), //o
    .acout  (pE_28_acout[7:0]  ), //o
    .bcout  (pE_28_bcout[7:0]  )  //o
  );
  PE pE_29 (
    .clk    (clk               ), //i
    .CE     (pE_29_CE          ), //i
    .SCLR   (pE_29_SCLR        ), //i
    .a      (ACOUT_3_0[7:0]    ), //i
    .b      (BCOUT_2_1[7:0]    ), //i
    .pe_out (pE_29_pe_out[31:0]), //o
    .acout  (pE_29_acout[7:0]  ), //o
    .bcout  (pE_29_bcout[7:0]  )  //o
  );
  PE pE_30 (
    .clk    (clk               ), //i
    .CE     (pE_30_CE          ), //i
    .SCLR   (pE_30_SCLR        ), //i
    .a      (ACOUT_3_1[7:0]    ), //i
    .b      (BCOUT_2_2[7:0]    ), //i
    .pe_out (pE_30_pe_out[31:0]), //o
    .acout  (pE_30_acout[7:0]  ), //o
    .bcout  (pE_30_bcout[7:0]  )  //o
  );
  PE pE_31 (
    .clk    (clk               ), //i
    .CE     (pE_31_CE          ), //i
    .SCLR   (pE_31_SCLR        ), //i
    .a      (ACOUT_3_2[7:0]    ), //i
    .b      (BCOUT_2_3[7:0]    ), //i
    .pe_out (pE_31_pe_out[31:0]), //o
    .acout  (pE_31_acout[7:0]  ), //o
    .bcout  (pE_31_bcout[7:0]  )  //o
  );
  PE pE_32 (
    .clk    (clk               ), //i
    .CE     (pE_32_CE          ), //i
    .SCLR   (pE_32_SCLR        ), //i
    .a      (ACOUT_3_3[7:0]    ), //i
    .b      (BCOUT_2_4[7:0]    ), //i
    .pe_out (pE_32_pe_out[31:0]), //o
    .acout  (pE_32_acout[7:0]  ), //o
    .bcout  (pE_32_bcout[7:0]  )  //o
  );
  PE pE_33 (
    .clk    (clk               ), //i
    .CE     (pE_33_CE          ), //i
    .SCLR   (pE_33_SCLR        ), //i
    .a      (ACOUT_3_4[7:0]    ), //i
    .b      (BCOUT_2_5[7:0]    ), //i
    .pe_out (pE_33_pe_out[31:0]), //o
    .acout  (pE_33_acout[7:0]  ), //o
    .bcout  (pE_33_bcout[7:0]  )  //o
  );
  PE pE_34 (
    .clk    (clk               ), //i
    .CE     (pE_34_CE          ), //i
    .SCLR   (pE_34_SCLR        ), //i
    .a      (ACOUT_3_5[7:0]    ), //i
    .b      (BCOUT_2_6[7:0]    ), //i
    .pe_out (pE_34_pe_out[31:0]), //o
    .acout  (pE_34_acout[7:0]  ), //o
    .bcout  (pE_34_bcout[7:0]  )  //o
  );
  PE pE_35 (
    .clk    (clk               ), //i
    .CE     (pE_35_CE          ), //i
    .SCLR   (pE_35_SCLR        ), //i
    .a      (ACOUT_3_6[7:0]    ), //i
    .b      (BCOUT_2_7[7:0]    ), //i
    .pe_out (pE_35_pe_out[31:0]), //o
    .acout  (pE_35_acout[7:0]  ), //o
    .bcout  (pE_35_bcout[7:0]  )  //o
  );
  PE pE_36 (
    .clk    (clk               ), //i
    .CE     (pE_36_CE          ), //i
    .SCLR   (pE_36_SCLR        ), //i
    .a      (ACOUT_4_0[7:0]    ), //i
    .b      (BCOUT_3_1[7:0]    ), //i
    .pe_out (pE_36_pe_out[31:0]), //o
    .acout  (pE_36_acout[7:0]  ), //o
    .bcout  (pE_36_bcout[7:0]  )  //o
  );
  PE pE_37 (
    .clk    (clk               ), //i
    .CE     (pE_37_CE          ), //i
    .SCLR   (pE_37_SCLR        ), //i
    .a      (ACOUT_4_1[7:0]    ), //i
    .b      (BCOUT_3_2[7:0]    ), //i
    .pe_out (pE_37_pe_out[31:0]), //o
    .acout  (pE_37_acout[7:0]  ), //o
    .bcout  (pE_37_bcout[7:0]  )  //o
  );
  PE pE_38 (
    .clk    (clk               ), //i
    .CE     (pE_38_CE          ), //i
    .SCLR   (pE_38_SCLR        ), //i
    .a      (ACOUT_4_2[7:0]    ), //i
    .b      (BCOUT_3_3[7:0]    ), //i
    .pe_out (pE_38_pe_out[31:0]), //o
    .acout  (pE_38_acout[7:0]  ), //o
    .bcout  (pE_38_bcout[7:0]  )  //o
  );
  PE pE_39 (
    .clk    (clk               ), //i
    .CE     (pE_39_CE          ), //i
    .SCLR   (pE_39_SCLR        ), //i
    .a      (ACOUT_4_3[7:0]    ), //i
    .b      (BCOUT_3_4[7:0]    ), //i
    .pe_out (pE_39_pe_out[31:0]), //o
    .acout  (pE_39_acout[7:0]  ), //o
    .bcout  (pE_39_bcout[7:0]  )  //o
  );
  PE pE_40 (
    .clk    (clk               ), //i
    .CE     (pE_40_CE          ), //i
    .SCLR   (pE_40_SCLR        ), //i
    .a      (ACOUT_4_4[7:0]    ), //i
    .b      (BCOUT_3_5[7:0]    ), //i
    .pe_out (pE_40_pe_out[31:0]), //o
    .acout  (pE_40_acout[7:0]  ), //o
    .bcout  (pE_40_bcout[7:0]  )  //o
  );
  PE pE_41 (
    .clk    (clk               ), //i
    .CE     (pE_41_CE          ), //i
    .SCLR   (pE_41_SCLR        ), //i
    .a      (ACOUT_4_5[7:0]    ), //i
    .b      (BCOUT_3_6[7:0]    ), //i
    .pe_out (pE_41_pe_out[31:0]), //o
    .acout  (pE_41_acout[7:0]  ), //o
    .bcout  (pE_41_bcout[7:0]  )  //o
  );
  PE pE_42 (
    .clk    (clk               ), //i
    .CE     (pE_42_CE          ), //i
    .SCLR   (pE_42_SCLR        ), //i
    .a      (ACOUT_4_6[7:0]    ), //i
    .b      (BCOUT_3_7[7:0]    ), //i
    .pe_out (pE_42_pe_out[31:0]), //o
    .acout  (pE_42_acout[7:0]  ), //o
    .bcout  (pE_42_bcout[7:0]  )  //o
  );
  PE pE_43 (
    .clk    (clk               ), //i
    .CE     (pE_43_CE          ), //i
    .SCLR   (pE_43_SCLR        ), //i
    .a      (ACOUT_5_0[7:0]    ), //i
    .b      (BCOUT_4_1[7:0]    ), //i
    .pe_out (pE_43_pe_out[31:0]), //o
    .acout  (pE_43_acout[7:0]  ), //o
    .bcout  (pE_43_bcout[7:0]  )  //o
  );
  PE pE_44 (
    .clk    (clk               ), //i
    .CE     (pE_44_CE          ), //i
    .SCLR   (pE_44_SCLR        ), //i
    .a      (ACOUT_5_1[7:0]    ), //i
    .b      (BCOUT_4_2[7:0]    ), //i
    .pe_out (pE_44_pe_out[31:0]), //o
    .acout  (pE_44_acout[7:0]  ), //o
    .bcout  (pE_44_bcout[7:0]  )  //o
  );
  PE pE_45 (
    .clk    (clk               ), //i
    .CE     (pE_45_CE          ), //i
    .SCLR   (pE_45_SCLR        ), //i
    .a      (ACOUT_5_2[7:0]    ), //i
    .b      (BCOUT_4_3[7:0]    ), //i
    .pe_out (pE_45_pe_out[31:0]), //o
    .acout  (pE_45_acout[7:0]  ), //o
    .bcout  (pE_45_bcout[7:0]  )  //o
  );
  PE pE_46 (
    .clk    (clk               ), //i
    .CE     (pE_46_CE          ), //i
    .SCLR   (pE_46_SCLR        ), //i
    .a      (ACOUT_5_3[7:0]    ), //i
    .b      (BCOUT_4_4[7:0]    ), //i
    .pe_out (pE_46_pe_out[31:0]), //o
    .acout  (pE_46_acout[7:0]  ), //o
    .bcout  (pE_46_bcout[7:0]  )  //o
  );
  PE pE_47 (
    .clk    (clk               ), //i
    .CE     (pE_47_CE          ), //i
    .SCLR   (pE_47_SCLR        ), //i
    .a      (ACOUT_5_4[7:0]    ), //i
    .b      (BCOUT_4_5[7:0]    ), //i
    .pe_out (pE_47_pe_out[31:0]), //o
    .acout  (pE_47_acout[7:0]  ), //o
    .bcout  (pE_47_bcout[7:0]  )  //o
  );
  PE pE_48 (
    .clk    (clk               ), //i
    .CE     (pE_48_CE          ), //i
    .SCLR   (pE_48_SCLR        ), //i
    .a      (ACOUT_5_5[7:0]    ), //i
    .b      (BCOUT_4_6[7:0]    ), //i
    .pe_out (pE_48_pe_out[31:0]), //o
    .acout  (pE_48_acout[7:0]  ), //o
    .bcout  (pE_48_bcout[7:0]  )  //o
  );
  PE pE_49 (
    .clk    (clk               ), //i
    .CE     (pE_49_CE          ), //i
    .SCLR   (pE_49_SCLR        ), //i
    .a      (ACOUT_5_6[7:0]    ), //i
    .b      (BCOUT_4_7[7:0]    ), //i
    .pe_out (pE_49_pe_out[31:0]), //o
    .acout  (pE_49_acout[7:0]  ), //o
    .bcout  (pE_49_bcout[7:0]  )  //o
  );
  PE pE_50 (
    .clk    (clk               ), //i
    .CE     (pE_50_CE          ), //i
    .SCLR   (pE_50_SCLR        ), //i
    .a      (ACOUT_6_0[7:0]    ), //i
    .b      (BCOUT_5_1[7:0]    ), //i
    .pe_out (pE_50_pe_out[31:0]), //o
    .acout  (pE_50_acout[7:0]  ), //o
    .bcout  (pE_50_bcout[7:0]  )  //o
  );
  PE pE_51 (
    .clk    (clk               ), //i
    .CE     (pE_51_CE          ), //i
    .SCLR   (pE_51_SCLR        ), //i
    .a      (ACOUT_6_1[7:0]    ), //i
    .b      (BCOUT_5_2[7:0]    ), //i
    .pe_out (pE_51_pe_out[31:0]), //o
    .acout  (pE_51_acout[7:0]  ), //o
    .bcout  (pE_51_bcout[7:0]  )  //o
  );
  PE pE_52 (
    .clk    (clk               ), //i
    .CE     (pE_52_CE          ), //i
    .SCLR   (pE_52_SCLR        ), //i
    .a      (ACOUT_6_2[7:0]    ), //i
    .b      (BCOUT_5_3[7:0]    ), //i
    .pe_out (pE_52_pe_out[31:0]), //o
    .acout  (pE_52_acout[7:0]  ), //o
    .bcout  (pE_52_bcout[7:0]  )  //o
  );
  PE pE_53 (
    .clk    (clk               ), //i
    .CE     (pE_53_CE          ), //i
    .SCLR   (pE_53_SCLR        ), //i
    .a      (ACOUT_6_3[7:0]    ), //i
    .b      (BCOUT_5_4[7:0]    ), //i
    .pe_out (pE_53_pe_out[31:0]), //o
    .acout  (pE_53_acout[7:0]  ), //o
    .bcout  (pE_53_bcout[7:0]  )  //o
  );
  PE pE_54 (
    .clk    (clk               ), //i
    .CE     (pE_54_CE          ), //i
    .SCLR   (pE_54_SCLR        ), //i
    .a      (ACOUT_6_4[7:0]    ), //i
    .b      (BCOUT_5_5[7:0]    ), //i
    .pe_out (pE_54_pe_out[31:0]), //o
    .acout  (pE_54_acout[7:0]  ), //o
    .bcout  (pE_54_bcout[7:0]  )  //o
  );
  PE pE_55 (
    .clk    (clk               ), //i
    .CE     (pE_55_CE          ), //i
    .SCLR   (pE_55_SCLR        ), //i
    .a      (ACOUT_6_5[7:0]    ), //i
    .b      (BCOUT_5_6[7:0]    ), //i
    .pe_out (pE_55_pe_out[31:0]), //o
    .acout  (pE_55_acout[7:0]  ), //o
    .bcout  (pE_55_bcout[7:0]  )  //o
  );
  PE pE_56 (
    .clk    (clk               ), //i
    .CE     (pE_56_CE          ), //i
    .SCLR   (pE_56_SCLR        ), //i
    .a      (ACOUT_6_6[7:0]    ), //i
    .b      (BCOUT_5_7[7:0]    ), //i
    .pe_out (pE_56_pe_out[31:0]), //o
    .acout  (pE_56_acout[7:0]  ), //o
    .bcout  (pE_56_bcout[7:0]  )  //o
  );
  PE pE_57 (
    .clk    (clk               ), //i
    .CE     (pE_57_CE          ), //i
    .SCLR   (pE_57_SCLR        ), //i
    .a      (ACOUT_7_0[7:0]    ), //i
    .b      (BCOUT_6_1[7:0]    ), //i
    .pe_out (pE_57_pe_out[31:0]), //o
    .acout  (pE_57_acout[7:0]  ), //o
    .bcout  (pE_57_bcout[7:0]  )  //o
  );
  PE pE_58 (
    .clk    (clk               ), //i
    .CE     (pE_58_CE          ), //i
    .SCLR   (pE_58_SCLR        ), //i
    .a      (ACOUT_7_1[7:0]    ), //i
    .b      (BCOUT_6_2[7:0]    ), //i
    .pe_out (pE_58_pe_out[31:0]), //o
    .acout  (pE_58_acout[7:0]  ), //o
    .bcout  (pE_58_bcout[7:0]  )  //o
  );
  PE pE_59 (
    .clk    (clk               ), //i
    .CE     (pE_59_CE          ), //i
    .SCLR   (pE_59_SCLR        ), //i
    .a      (ACOUT_7_2[7:0]    ), //i
    .b      (BCOUT_6_3[7:0]    ), //i
    .pe_out (pE_59_pe_out[31:0]), //o
    .acout  (pE_59_acout[7:0]  ), //o
    .bcout  (pE_59_bcout[7:0]  )  //o
  );
  PE pE_60 (
    .clk    (clk               ), //i
    .CE     (pE_60_CE          ), //i
    .SCLR   (pE_60_SCLR        ), //i
    .a      (ACOUT_7_3[7:0]    ), //i
    .b      (BCOUT_6_4[7:0]    ), //i
    .pe_out (pE_60_pe_out[31:0]), //o
    .acout  (pE_60_acout[7:0]  ), //o
    .bcout  (pE_60_bcout[7:0]  )  //o
  );
  PE pE_61 (
    .clk    (clk               ), //i
    .CE     (pE_61_CE          ), //i
    .SCLR   (pE_61_SCLR        ), //i
    .a      (ACOUT_7_4[7:0]    ), //i
    .b      (BCOUT_6_5[7:0]    ), //i
    .pe_out (pE_61_pe_out[31:0]), //o
    .acout  (pE_61_acout[7:0]  ), //o
    .bcout  (pE_61_bcout[7:0]  )  //o
  );
  PE pE_62 (
    .clk    (clk               ), //i
    .CE     (pE_62_CE          ), //i
    .SCLR   (pE_62_SCLR        ), //i
    .a      (ACOUT_7_5[7:0]    ), //i
    .b      (BCOUT_6_6[7:0]    ), //i
    .pe_out (pE_62_pe_out[31:0]), //o
    .acout  (pE_62_acout[7:0]  ), //o
    .bcout  (pE_62_bcout[7:0]  )  //o
  );
  PE pE_63 (
    .clk    (clk               ), //i
    .CE     (pE_63_CE          ), //i
    .SCLR   (pE_63_SCLR        ), //i
    .a      (ACOUT_7_6[7:0]    ), //i
    .b      (BCOUT_6_7[7:0]    ), //i
    .pe_out (pE_63_pe_out[31:0]), //o
    .acout  (pE_63_acout[7:0]  ), //o
    .bcout  (pE_63_bcout[7:0]  )  //o
  );
  assign pe_00_a = A[7 : 0];
  assign pe_00_b = B[7 : 0];
  always @(*) begin
    Tile_OUT[31 : 0] = pe_00_pe_out;
    Tile_OUT[63 : 32] = pE_1_pe_out;
    Tile_OUT[95 : 64] = pE_2_pe_out;
    Tile_OUT[127 : 96] = pE_3_pe_out;
    Tile_OUT[159 : 128] = pE_4_pe_out;
    Tile_OUT[191 : 160] = pE_5_pe_out;
    Tile_OUT[223 : 192] = pE_6_pe_out;
    Tile_OUT[255 : 224] = pE_7_pe_out;
    Tile_OUT[287 : 256] = pE_8_pe_out;
    Tile_OUT[543 : 512] = pE_9_pe_out;
    Tile_OUT[799 : 768] = pE_10_pe_out;
    Tile_OUT[1055 : 1024] = pE_11_pe_out;
    Tile_OUT[1311 : 1280] = pE_12_pe_out;
    Tile_OUT[1567 : 1536] = pE_13_pe_out;
    Tile_OUT[1823 : 1792] = pE_14_pe_out;
    Tile_OUT[319 : 288] = pE_15_pe_out;
    Tile_OUT[575 : 544] = pE_16_pe_out;
    Tile_OUT[831 : 800] = pE_17_pe_out;
    Tile_OUT[1087 : 1056] = pE_18_pe_out;
    Tile_OUT[1343 : 1312] = pE_19_pe_out;
    Tile_OUT[1599 : 1568] = pE_20_pe_out;
    Tile_OUT[1855 : 1824] = pE_21_pe_out;
    Tile_OUT[351 : 320] = pE_22_pe_out;
    Tile_OUT[607 : 576] = pE_23_pe_out;
    Tile_OUT[863 : 832] = pE_24_pe_out;
    Tile_OUT[1119 : 1088] = pE_25_pe_out;
    Tile_OUT[1375 : 1344] = pE_26_pe_out;
    Tile_OUT[1631 : 1600] = pE_27_pe_out;
    Tile_OUT[1887 : 1856] = pE_28_pe_out;
    Tile_OUT[383 : 352] = pE_29_pe_out;
    Tile_OUT[639 : 608] = pE_30_pe_out;
    Tile_OUT[895 : 864] = pE_31_pe_out;
    Tile_OUT[1151 : 1120] = pE_32_pe_out;
    Tile_OUT[1407 : 1376] = pE_33_pe_out;
    Tile_OUT[1663 : 1632] = pE_34_pe_out;
    Tile_OUT[1919 : 1888] = pE_35_pe_out;
    Tile_OUT[415 : 384] = pE_36_pe_out;
    Tile_OUT[671 : 640] = pE_37_pe_out;
    Tile_OUT[927 : 896] = pE_38_pe_out;
    Tile_OUT[1183 : 1152] = pE_39_pe_out;
    Tile_OUT[1439 : 1408] = pE_40_pe_out;
    Tile_OUT[1695 : 1664] = pE_41_pe_out;
    Tile_OUT[1951 : 1920] = pE_42_pe_out;
    Tile_OUT[447 : 416] = pE_43_pe_out;
    Tile_OUT[703 : 672] = pE_44_pe_out;
    Tile_OUT[959 : 928] = pE_45_pe_out;
    Tile_OUT[1215 : 1184] = pE_46_pe_out;
    Tile_OUT[1471 : 1440] = pE_47_pe_out;
    Tile_OUT[1727 : 1696] = pE_48_pe_out;
    Tile_OUT[1983 : 1952] = pE_49_pe_out;
    Tile_OUT[479 : 448] = pE_50_pe_out;
    Tile_OUT[735 : 704] = pE_51_pe_out;
    Tile_OUT[991 : 960] = pE_52_pe_out;
    Tile_OUT[1247 : 1216] = pE_53_pe_out;
    Tile_OUT[1503 : 1472] = pE_54_pe_out;
    Tile_OUT[1759 : 1728] = pE_55_pe_out;
    Tile_OUT[2015 : 1984] = pE_56_pe_out;
    Tile_OUT[511 : 480] = pE_57_pe_out;
    Tile_OUT[767 : 736] = pE_58_pe_out;
    Tile_OUT[1023 : 992] = pE_59_pe_out;
    Tile_OUT[1279 : 1248] = pE_60_pe_out;
    Tile_OUT[1535 : 1504] = pE_61_pe_out;
    Tile_OUT[1791 : 1760] = pE_62_pe_out;
    Tile_OUT[2047 : 2016] = pE_63_pe_out;
  end

  assign ACOUT_0_0 = pe_00_acout;
  assign BCOUT_0_0 = pe_00_bcout;
  assign pE_1_CE = CE_srl[0];
  assign pE_1_SCLR = SCLR_srl[0];
  assign pE_1_b = B[15 : 8];
  assign ACOUT_0_1 = pE_1_acout;
  assign BCOUT_0_1 = pE_1_bcout;
  assign pE_2_CE = CE_srl[1];
  assign pE_2_SCLR = SCLR_srl[1];
  assign pE_2_b = B[23 : 16];
  assign ACOUT_0_2 = pE_2_acout;
  assign BCOUT_0_2 = pE_2_bcout;
  assign pE_3_CE = CE_srl[2];
  assign pE_3_SCLR = SCLR_srl[2];
  assign pE_3_b = B[31 : 24];
  assign ACOUT_0_3 = pE_3_acout;
  assign BCOUT_0_3 = pE_3_bcout;
  assign pE_4_CE = CE_srl[3];
  assign pE_4_SCLR = SCLR_srl[3];
  assign pE_4_b = B[39 : 32];
  assign ACOUT_0_4 = pE_4_acout;
  assign BCOUT_0_4 = pE_4_bcout;
  assign pE_5_CE = CE_srl[4];
  assign pE_5_SCLR = SCLR_srl[4];
  assign pE_5_b = B[47 : 40];
  assign ACOUT_0_5 = pE_5_acout;
  assign BCOUT_0_5 = pE_5_bcout;
  assign pE_6_CE = CE_srl[5];
  assign pE_6_SCLR = SCLR_srl[5];
  assign pE_6_b = B[55 : 48];
  assign ACOUT_0_6 = pE_6_acout;
  assign BCOUT_0_6 = pE_6_bcout;
  assign pE_7_CE = CE_srl[6];
  assign pE_7_SCLR = SCLR_srl[6];
  assign pE_7_b = B[63 : 56];
  assign ACOUT_0_7 = pE_7_acout;
  assign BCOUT_0_7 = pE_7_bcout;
  assign pE_8_CE = CE_srl[0];
  assign pE_8_SCLR = SCLR_srl[0];
  assign pE_8_a = A[15 : 8];
  assign ACOUT_1_0 = pE_8_acout;
  assign BCOUT_1_0 = pE_8_bcout;
  assign pE_9_CE = CE_srl[1];
  assign pE_9_SCLR = SCLR_srl[1];
  assign pE_9_a = A[23 : 16];
  assign ACOUT_2_0 = pE_9_acout;
  assign BCOUT_2_0 = pE_9_bcout;
  assign pE_10_CE = CE_srl[2];
  assign pE_10_SCLR = SCLR_srl[2];
  assign pE_10_a = A[31 : 24];
  assign ACOUT_3_0 = pE_10_acout;
  assign BCOUT_3_0 = pE_10_bcout;
  assign pE_11_CE = CE_srl[3];
  assign pE_11_SCLR = SCLR_srl[3];
  assign pE_11_a = A[39 : 32];
  assign ACOUT_4_0 = pE_11_acout;
  assign BCOUT_4_0 = pE_11_bcout;
  assign pE_12_CE = CE_srl[4];
  assign pE_12_SCLR = SCLR_srl[4];
  assign pE_12_a = A[47 : 40];
  assign ACOUT_5_0 = pE_12_acout;
  assign BCOUT_5_0 = pE_12_bcout;
  assign pE_13_CE = CE_srl[5];
  assign pE_13_SCLR = SCLR_srl[5];
  assign pE_13_a = A[55 : 48];
  assign ACOUT_6_0 = pE_13_acout;
  assign BCOUT_6_0 = pE_13_bcout;
  assign pE_14_CE = CE_srl[6];
  assign pE_14_SCLR = SCLR_srl[6];
  assign pE_14_a = A[63 : 56];
  assign ACOUT_7_0 = pE_14_acout;
  assign BCOUT_7_0 = pE_14_bcout;
  assign pE_15_CE = CE_srl[1];
  assign pE_15_SCLR = SCLR_srl[1];
  assign ACOUT_1_1 = pE_15_acout;
  assign BCOUT_1_1 = pE_15_bcout;
  assign pE_16_CE = CE_srl[2];
  assign pE_16_SCLR = SCLR_srl[2];
  assign ACOUT_1_2 = pE_16_acout;
  assign BCOUT_1_2 = pE_16_bcout;
  assign pE_17_CE = CE_srl[3];
  assign pE_17_SCLR = SCLR_srl[3];
  assign ACOUT_1_3 = pE_17_acout;
  assign BCOUT_1_3 = pE_17_bcout;
  assign pE_18_CE = CE_srl[4];
  assign pE_18_SCLR = SCLR_srl[4];
  assign ACOUT_1_4 = pE_18_acout;
  assign BCOUT_1_4 = pE_18_bcout;
  assign pE_19_CE = CE_srl[5];
  assign pE_19_SCLR = SCLR_srl[5];
  assign ACOUT_1_5 = pE_19_acout;
  assign BCOUT_1_5 = pE_19_bcout;
  assign pE_20_CE = CE_srl[6];
  assign pE_20_SCLR = SCLR_srl[6];
  assign ACOUT_1_6 = pE_20_acout;
  assign BCOUT_1_6 = pE_20_bcout;
  assign pE_21_CE = CE_srl[7];
  assign pE_21_SCLR = SCLR_srl[7];
  assign ACOUT_1_7 = pE_21_acout;
  assign BCOUT_1_7 = pE_21_bcout;
  assign pE_22_CE = CE_srl[2];
  assign pE_22_SCLR = SCLR_srl[2];
  assign ACOUT_2_1 = pE_22_acout;
  assign BCOUT_2_1 = pE_22_bcout;
  assign pE_23_CE = CE_srl[3];
  assign pE_23_SCLR = SCLR_srl[3];
  assign ACOUT_2_2 = pE_23_acout;
  assign BCOUT_2_2 = pE_23_bcout;
  assign pE_24_CE = CE_srl[4];
  assign pE_24_SCLR = SCLR_srl[4];
  assign ACOUT_2_3 = pE_24_acout;
  assign BCOUT_2_3 = pE_24_bcout;
  assign pE_25_CE = CE_srl[5];
  assign pE_25_SCLR = SCLR_srl[5];
  assign ACOUT_2_4 = pE_25_acout;
  assign BCOUT_2_4 = pE_25_bcout;
  assign pE_26_CE = CE_srl[6];
  assign pE_26_SCLR = SCLR_srl[6];
  assign ACOUT_2_5 = pE_26_acout;
  assign BCOUT_2_5 = pE_26_bcout;
  assign pE_27_CE = CE_srl[7];
  assign pE_27_SCLR = SCLR_srl[7];
  assign ACOUT_2_6 = pE_27_acout;
  assign BCOUT_2_6 = pE_27_bcout;
  assign pE_28_CE = CE_srl[8];
  assign pE_28_SCLR = SCLR_srl[8];
  assign ACOUT_2_7 = pE_28_acout;
  assign BCOUT_2_7 = pE_28_bcout;
  assign pE_29_CE = CE_srl[3];
  assign pE_29_SCLR = SCLR_srl[3];
  assign ACOUT_3_1 = pE_29_acout;
  assign BCOUT_3_1 = pE_29_bcout;
  assign pE_30_CE = CE_srl[4];
  assign pE_30_SCLR = SCLR_srl[4];
  assign ACOUT_3_2 = pE_30_acout;
  assign BCOUT_3_2 = pE_30_bcout;
  assign pE_31_CE = CE_srl[5];
  assign pE_31_SCLR = SCLR_srl[5];
  assign ACOUT_3_3 = pE_31_acout;
  assign BCOUT_3_3 = pE_31_bcout;
  assign pE_32_CE = CE_srl[6];
  assign pE_32_SCLR = SCLR_srl[6];
  assign ACOUT_3_4 = pE_32_acout;
  assign BCOUT_3_4 = pE_32_bcout;
  assign pE_33_CE = CE_srl[7];
  assign pE_33_SCLR = SCLR_srl[7];
  assign ACOUT_3_5 = pE_33_acout;
  assign BCOUT_3_5 = pE_33_bcout;
  assign pE_34_CE = CE_srl[8];
  assign pE_34_SCLR = SCLR_srl[8];
  assign ACOUT_3_6 = pE_34_acout;
  assign BCOUT_3_6 = pE_34_bcout;
  assign pE_35_CE = CE_srl[9];
  assign pE_35_SCLR = SCLR_srl[9];
  assign ACOUT_3_7 = pE_35_acout;
  assign BCOUT_3_7 = pE_35_bcout;
  assign pE_36_CE = CE_srl[4];
  assign pE_36_SCLR = SCLR_srl[4];
  assign ACOUT_4_1 = pE_36_acout;
  assign BCOUT_4_1 = pE_36_bcout;
  assign pE_37_CE = CE_srl[5];
  assign pE_37_SCLR = SCLR_srl[5];
  assign ACOUT_4_2 = pE_37_acout;
  assign BCOUT_4_2 = pE_37_bcout;
  assign pE_38_CE = CE_srl[6];
  assign pE_38_SCLR = SCLR_srl[6];
  assign ACOUT_4_3 = pE_38_acout;
  assign BCOUT_4_3 = pE_38_bcout;
  assign pE_39_CE = CE_srl[7];
  assign pE_39_SCLR = SCLR_srl[7];
  assign ACOUT_4_4 = pE_39_acout;
  assign BCOUT_4_4 = pE_39_bcout;
  assign pE_40_CE = CE_srl[8];
  assign pE_40_SCLR = SCLR_srl[8];
  assign ACOUT_4_5 = pE_40_acout;
  assign BCOUT_4_5 = pE_40_bcout;
  assign pE_41_CE = CE_srl[9];
  assign pE_41_SCLR = SCLR_srl[9];
  assign ACOUT_4_6 = pE_41_acout;
  assign BCOUT_4_6 = pE_41_bcout;
  assign pE_42_CE = CE_srl[10];
  assign pE_42_SCLR = SCLR_srl[10];
  assign ACOUT_4_7 = pE_42_acout;
  assign BCOUT_4_7 = pE_42_bcout;
  assign pE_43_CE = CE_srl[5];
  assign pE_43_SCLR = SCLR_srl[5];
  assign ACOUT_5_1 = pE_43_acout;
  assign BCOUT_5_1 = pE_43_bcout;
  assign pE_44_CE = CE_srl[6];
  assign pE_44_SCLR = SCLR_srl[6];
  assign ACOUT_5_2 = pE_44_acout;
  assign BCOUT_5_2 = pE_44_bcout;
  assign pE_45_CE = CE_srl[7];
  assign pE_45_SCLR = SCLR_srl[7];
  assign ACOUT_5_3 = pE_45_acout;
  assign BCOUT_5_3 = pE_45_bcout;
  assign pE_46_CE = CE_srl[8];
  assign pE_46_SCLR = SCLR_srl[8];
  assign ACOUT_5_4 = pE_46_acout;
  assign BCOUT_5_4 = pE_46_bcout;
  assign pE_47_CE = CE_srl[9];
  assign pE_47_SCLR = SCLR_srl[9];
  assign ACOUT_5_5 = pE_47_acout;
  assign BCOUT_5_5 = pE_47_bcout;
  assign pE_48_CE = CE_srl[10];
  assign pE_48_SCLR = SCLR_srl[10];
  assign ACOUT_5_6 = pE_48_acout;
  assign BCOUT_5_6 = pE_48_bcout;
  assign pE_49_CE = CE_srl[11];
  assign pE_49_SCLR = SCLR_srl[11];
  assign ACOUT_5_7 = pE_49_acout;
  assign BCOUT_5_7 = pE_49_bcout;
  assign pE_50_CE = CE_srl[6];
  assign pE_50_SCLR = SCLR_srl[6];
  assign ACOUT_6_1 = pE_50_acout;
  assign BCOUT_6_1 = pE_50_bcout;
  assign pE_51_CE = CE_srl[7];
  assign pE_51_SCLR = SCLR_srl[7];
  assign ACOUT_6_2 = pE_51_acout;
  assign BCOUT_6_2 = pE_51_bcout;
  assign pE_52_CE = CE_srl[8];
  assign pE_52_SCLR = SCLR_srl[8];
  assign ACOUT_6_3 = pE_52_acout;
  assign BCOUT_6_3 = pE_52_bcout;
  assign pE_53_CE = CE_srl[9];
  assign pE_53_SCLR = SCLR_srl[9];
  assign ACOUT_6_4 = pE_53_acout;
  assign BCOUT_6_4 = pE_53_bcout;
  assign pE_54_CE = CE_srl[10];
  assign pE_54_SCLR = SCLR_srl[10];
  assign ACOUT_6_5 = pE_54_acout;
  assign BCOUT_6_5 = pE_54_bcout;
  assign pE_55_CE = CE_srl[11];
  assign pE_55_SCLR = SCLR_srl[11];
  assign ACOUT_6_6 = pE_55_acout;
  assign BCOUT_6_6 = pE_55_bcout;
  assign pE_56_CE = CE_srl[12];
  assign pE_56_SCLR = SCLR_srl[12];
  assign ACOUT_6_7 = pE_56_acout;
  assign BCOUT_6_7 = pE_56_bcout;
  assign pE_57_CE = CE_srl[7];
  assign pE_57_SCLR = SCLR_srl[7];
  assign ACOUT_7_1 = pE_57_acout;
  assign BCOUT_7_1 = pE_57_bcout;
  assign pE_58_CE = CE_srl[8];
  assign pE_58_SCLR = SCLR_srl[8];
  assign ACOUT_7_2 = pE_58_acout;
  assign BCOUT_7_2 = pE_58_bcout;
  assign pE_59_CE = CE_srl[9];
  assign pE_59_SCLR = SCLR_srl[9];
  assign ACOUT_7_3 = pE_59_acout;
  assign BCOUT_7_3 = pE_59_bcout;
  assign pE_60_CE = CE_srl[10];
  assign pE_60_SCLR = SCLR_srl[10];
  assign ACOUT_7_4 = pE_60_acout;
  assign BCOUT_7_4 = pE_60_bcout;
  assign pE_61_CE = CE_srl[11];
  assign pE_61_SCLR = SCLR_srl[11];
  assign ACOUT_7_5 = pE_61_acout;
  assign BCOUT_7_5 = pE_61_bcout;
  assign pE_62_CE = CE_srl[12];
  assign pE_62_SCLR = SCLR_srl[12];
  assign ACOUT_7_6 = pE_62_acout;
  assign BCOUT_7_6 = pE_62_bcout;
  assign pE_63_CE = CE_srl[13];
  assign pE_63_SCLR = SCLR_srl[13];
  assign ACOUT_7_7 = pE_63_acout;
  assign BCOUT_7_7 = pE_63_bcout;
  always @(posedge clk) begin
    if(reset) begin
      CE_srl <= 14'h0;
      SCLR_srl <= 14'h0;
    end else begin
      CE_srl[0] <= CE;
      CE_srl[1] <= CE_srl[0];
      CE_srl[2] <= CE_srl[1];
      CE_srl[3] <= CE_srl[2];
      CE_srl[4] <= CE_srl[3];
      CE_srl[5] <= CE_srl[4];
      CE_srl[6] <= CE_srl[5];
      CE_srl[7] <= CE_srl[6];
      CE_srl[8] <= CE_srl[7];
      CE_srl[9] <= CE_srl[8];
      CE_srl[10] <= CE_srl[9];
      CE_srl[11] <= CE_srl[10];
      CE_srl[12] <= CE_srl[11];
      CE_srl[13] <= CE_srl[12];
      SCLR_srl[0] <= SCLR;
      SCLR_srl[1] <= SCLR_srl[0];
      SCLR_srl[2] <= SCLR_srl[1];
      SCLR_srl[3] <= SCLR_srl[2];
      SCLR_srl[4] <= SCLR_srl[3];
      SCLR_srl[5] <= SCLR_srl[4];
      SCLR_srl[6] <= SCLR_srl[5];
      SCLR_srl[7] <= SCLR_srl[6];
      SCLR_srl[8] <= SCLR_srl[7];
      SCLR_srl[9] <= SCLR_srl[8];
      SCLR_srl[10] <= SCLR_srl[9];
      SCLR_srl[11] <= SCLR_srl[10];
      SCLR_srl[12] <= SCLR_srl[11];
      SCLR_srl[13] <= SCLR_srl[12];
    end
  end


endmodule

module PE(
        	input clk,
        	input	CE,
        	input SCLR,
        	input	[7:0]	a,
        	input	[7:0]	b,
        	output	[31:0]	pe_out,
        	output	 [7:0]	acout,
        	output   [7:0]	bcout
        );
	    wire signed	[7:0]	a_in;
	    assign a_in = $signed(a);
          pe pe_u (
            .CLK(clk),      // input wire CLK
            .CE(CE),        // input wire CE
            .A(a_in),          // input wire [7 : 0] A
            .B({1'b0,b}),          // input wire [8 : 0] B
            .ACOUT(acout),  // output wire [29 : 0] ACOUT
            .BCOUT(bcout),  // output wire [17 : 0] BCOUT
            .P(pe_out),          // output wire [47 : 0] P
            .SCLR(SCLR)  // input wire SCLRP
	        );

endmodule
      
