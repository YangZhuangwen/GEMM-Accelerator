// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : laji
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module laji (
  input               Weight_CE,
  input               Feature_CE,
  input      [7:0]    Weight_Array_0_0_0,
  input      [7:0]    Weight_Array_0_0_1,
  input      [7:0]    Weight_Array_0_0_2,
  input      [7:0]    Weight_Array_0_0_3,
  input      [7:0]    Weight_Array_0_0_4,
  input      [7:0]    Weight_Array_0_0_5,
  input      [7:0]    Weight_Array_0_0_6,
  input      [7:0]    Weight_Array_0_0_7,
  input      [7:0]    Weight_Array_0_0_8,
  input      [7:0]    Weight_Array_0_1_0,
  input      [7:0]    Weight_Array_0_1_1,
  input      [7:0]    Weight_Array_0_1_2,
  input      [7:0]    Weight_Array_0_1_3,
  input      [7:0]    Weight_Array_0_1_4,
  input      [7:0]    Weight_Array_0_1_5,
  input      [7:0]    Weight_Array_0_1_6,
  input      [7:0]    Weight_Array_0_1_7,
  input      [7:0]    Weight_Array_0_1_8,
  input      [7:0]    Weight_Array_0_2_0,
  input      [7:0]    Weight_Array_0_2_1,
  input      [7:0]    Weight_Array_0_2_2,
  input      [7:0]    Weight_Array_0_2_3,
  input      [7:0]    Weight_Array_0_2_4,
  input      [7:0]    Weight_Array_0_2_5,
  input      [7:0]    Weight_Array_0_2_6,
  input      [7:0]    Weight_Array_0_2_7,
  input      [7:0]    Weight_Array_0_2_8,
  input      [7:0]    Weight_Array_0_3_0,
  input      [7:0]    Weight_Array_0_3_1,
  input      [7:0]    Weight_Array_0_3_2,
  input      [7:0]    Weight_Array_0_3_3,
  input      [7:0]    Weight_Array_0_3_4,
  input      [7:0]    Weight_Array_0_3_5,
  input      [7:0]    Weight_Array_0_3_6,
  input      [7:0]    Weight_Array_0_3_7,
  input      [7:0]    Weight_Array_0_3_8,
  input      [7:0]    Weight_Array_0_4_0,
  input      [7:0]    Weight_Array_0_4_1,
  input      [7:0]    Weight_Array_0_4_2,
  input      [7:0]    Weight_Array_0_4_3,
  input      [7:0]    Weight_Array_0_4_4,
  input      [7:0]    Weight_Array_0_4_5,
  input      [7:0]    Weight_Array_0_4_6,
  input      [7:0]    Weight_Array_0_4_7,
  input      [7:0]    Weight_Array_0_4_8,
  input      [7:0]    Weight_Array_0_5_0,
  input      [7:0]    Weight_Array_0_5_1,
  input      [7:0]    Weight_Array_0_5_2,
  input      [7:0]    Weight_Array_0_5_3,
  input      [7:0]    Weight_Array_0_5_4,
  input      [7:0]    Weight_Array_0_5_5,
  input      [7:0]    Weight_Array_0_5_6,
  input      [7:0]    Weight_Array_0_5_7,
  input      [7:0]    Weight_Array_0_5_8,
  input      [7:0]    Weight_Array_0_6_0,
  input      [7:0]    Weight_Array_0_6_1,
  input      [7:0]    Weight_Array_0_6_2,
  input      [7:0]    Weight_Array_0_6_3,
  input      [7:0]    Weight_Array_0_6_4,
  input      [7:0]    Weight_Array_0_6_5,
  input      [7:0]    Weight_Array_0_6_6,
  input      [7:0]    Weight_Array_0_6_7,
  input      [7:0]    Weight_Array_0_6_8,
  input      [7:0]    Weight_Array_0_7_0,
  input      [7:0]    Weight_Array_0_7_1,
  input      [7:0]    Weight_Array_0_7_2,
  input      [7:0]    Weight_Array_0_7_3,
  input      [7:0]    Weight_Array_0_7_4,
  input      [7:0]    Weight_Array_0_7_5,
  input      [7:0]    Weight_Array_0_7_6,
  input      [7:0]    Weight_Array_0_7_7,
  input      [7:0]    Weight_Array_0_7_8,
  input      [7:0]    Weight_Array_1_0_0,
  input      [7:0]    Weight_Array_1_0_1,
  input      [7:0]    Weight_Array_1_0_2,
  input      [7:0]    Weight_Array_1_0_3,
  input      [7:0]    Weight_Array_1_0_4,
  input      [7:0]    Weight_Array_1_0_5,
  input      [7:0]    Weight_Array_1_0_6,
  input      [7:0]    Weight_Array_1_0_7,
  input      [7:0]    Weight_Array_1_0_8,
  input      [7:0]    Weight_Array_1_1_0,
  input      [7:0]    Weight_Array_1_1_1,
  input      [7:0]    Weight_Array_1_1_2,
  input      [7:0]    Weight_Array_1_1_3,
  input      [7:0]    Weight_Array_1_1_4,
  input      [7:0]    Weight_Array_1_1_5,
  input      [7:0]    Weight_Array_1_1_6,
  input      [7:0]    Weight_Array_1_1_7,
  input      [7:0]    Weight_Array_1_1_8,
  input      [7:0]    Weight_Array_1_2_0,
  input      [7:0]    Weight_Array_1_2_1,
  input      [7:0]    Weight_Array_1_2_2,
  input      [7:0]    Weight_Array_1_2_3,
  input      [7:0]    Weight_Array_1_2_4,
  input      [7:0]    Weight_Array_1_2_5,
  input      [7:0]    Weight_Array_1_2_6,
  input      [7:0]    Weight_Array_1_2_7,
  input      [7:0]    Weight_Array_1_2_8,
  input      [7:0]    Weight_Array_1_3_0,
  input      [7:0]    Weight_Array_1_3_1,
  input      [7:0]    Weight_Array_1_3_2,
  input      [7:0]    Weight_Array_1_3_3,
  input      [7:0]    Weight_Array_1_3_4,
  input      [7:0]    Weight_Array_1_3_5,
  input      [7:0]    Weight_Array_1_3_6,
  input      [7:0]    Weight_Array_1_3_7,
  input      [7:0]    Weight_Array_1_3_8,
  input      [7:0]    Weight_Array_1_4_0,
  input      [7:0]    Weight_Array_1_4_1,
  input      [7:0]    Weight_Array_1_4_2,
  input      [7:0]    Weight_Array_1_4_3,
  input      [7:0]    Weight_Array_1_4_4,
  input      [7:0]    Weight_Array_1_4_5,
  input      [7:0]    Weight_Array_1_4_6,
  input      [7:0]    Weight_Array_1_4_7,
  input      [7:0]    Weight_Array_1_4_8,
  input      [7:0]    Weight_Array_1_5_0,
  input      [7:0]    Weight_Array_1_5_1,
  input      [7:0]    Weight_Array_1_5_2,
  input      [7:0]    Weight_Array_1_5_3,
  input      [7:0]    Weight_Array_1_5_4,
  input      [7:0]    Weight_Array_1_5_5,
  input      [7:0]    Weight_Array_1_5_6,
  input      [7:0]    Weight_Array_1_5_7,
  input      [7:0]    Weight_Array_1_5_8,
  input      [7:0]    Weight_Array_1_6_0,
  input      [7:0]    Weight_Array_1_6_1,
  input      [7:0]    Weight_Array_1_6_2,
  input      [7:0]    Weight_Array_1_6_3,
  input      [7:0]    Weight_Array_1_6_4,
  input      [7:0]    Weight_Array_1_6_5,
  input      [7:0]    Weight_Array_1_6_6,
  input      [7:0]    Weight_Array_1_6_7,
  input      [7:0]    Weight_Array_1_6_8,
  input      [7:0]    Weight_Array_1_7_0,
  input      [7:0]    Weight_Array_1_7_1,
  input      [7:0]    Weight_Array_1_7_2,
  input      [7:0]    Weight_Array_1_7_3,
  input      [7:0]    Weight_Array_1_7_4,
  input      [7:0]    Weight_Array_1_7_5,
  input      [7:0]    Weight_Array_1_7_6,
  input      [7:0]    Weight_Array_1_7_7,
  input      [7:0]    Weight_Array_1_7_8,
  input      [7:0]    Weight_Array_2_0_0,
  input      [7:0]    Weight_Array_2_0_1,
  input      [7:0]    Weight_Array_2_0_2,
  input      [7:0]    Weight_Array_2_0_3,
  input      [7:0]    Weight_Array_2_0_4,
  input      [7:0]    Weight_Array_2_0_5,
  input      [7:0]    Weight_Array_2_0_6,
  input      [7:0]    Weight_Array_2_0_7,
  input      [7:0]    Weight_Array_2_0_8,
  input      [7:0]    Weight_Array_2_1_0,
  input      [7:0]    Weight_Array_2_1_1,
  input      [7:0]    Weight_Array_2_1_2,
  input      [7:0]    Weight_Array_2_1_3,
  input      [7:0]    Weight_Array_2_1_4,
  input      [7:0]    Weight_Array_2_1_5,
  input      [7:0]    Weight_Array_2_1_6,
  input      [7:0]    Weight_Array_2_1_7,
  input      [7:0]    Weight_Array_2_1_8,
  input      [7:0]    Weight_Array_2_2_0,
  input      [7:0]    Weight_Array_2_2_1,
  input      [7:0]    Weight_Array_2_2_2,
  input      [7:0]    Weight_Array_2_2_3,
  input      [7:0]    Weight_Array_2_2_4,
  input      [7:0]    Weight_Array_2_2_5,
  input      [7:0]    Weight_Array_2_2_6,
  input      [7:0]    Weight_Array_2_2_7,
  input      [7:0]    Weight_Array_2_2_8,
  input      [7:0]    Weight_Array_2_3_0,
  input      [7:0]    Weight_Array_2_3_1,
  input      [7:0]    Weight_Array_2_3_2,
  input      [7:0]    Weight_Array_2_3_3,
  input      [7:0]    Weight_Array_2_3_4,
  input      [7:0]    Weight_Array_2_3_5,
  input      [7:0]    Weight_Array_2_3_6,
  input      [7:0]    Weight_Array_2_3_7,
  input      [7:0]    Weight_Array_2_3_8,
  input      [7:0]    Weight_Array_2_4_0,
  input      [7:0]    Weight_Array_2_4_1,
  input      [7:0]    Weight_Array_2_4_2,
  input      [7:0]    Weight_Array_2_4_3,
  input      [7:0]    Weight_Array_2_4_4,
  input      [7:0]    Weight_Array_2_4_5,
  input      [7:0]    Weight_Array_2_4_6,
  input      [7:0]    Weight_Array_2_4_7,
  input      [7:0]    Weight_Array_2_4_8,
  input      [7:0]    Weight_Array_2_5_0,
  input      [7:0]    Weight_Array_2_5_1,
  input      [7:0]    Weight_Array_2_5_2,
  input      [7:0]    Weight_Array_2_5_3,
  input      [7:0]    Weight_Array_2_5_4,
  input      [7:0]    Weight_Array_2_5_5,
  input      [7:0]    Weight_Array_2_5_6,
  input      [7:0]    Weight_Array_2_5_7,
  input      [7:0]    Weight_Array_2_5_8,
  input      [7:0]    Weight_Array_2_6_0,
  input      [7:0]    Weight_Array_2_6_1,
  input      [7:0]    Weight_Array_2_6_2,
  input      [7:0]    Weight_Array_2_6_3,
  input      [7:0]    Weight_Array_2_6_4,
  input      [7:0]    Weight_Array_2_6_5,
  input      [7:0]    Weight_Array_2_6_6,
  input      [7:0]    Weight_Array_2_6_7,
  input      [7:0]    Weight_Array_2_6_8,
  input      [7:0]    Weight_Array_2_7_0,
  input      [7:0]    Weight_Array_2_7_1,
  input      [7:0]    Weight_Array_2_7_2,
  input      [7:0]    Weight_Array_2_7_3,
  input      [7:0]    Weight_Array_2_7_4,
  input      [7:0]    Weight_Array_2_7_5,
  input      [7:0]    Weight_Array_2_7_6,
  input      [7:0]    Weight_Array_2_7_7,
  input      [7:0]    Weight_Array_2_7_8,
  input      [7:0]    Weight_Array_3_0_0,
  input      [7:0]    Weight_Array_3_0_1,
  input      [7:0]    Weight_Array_3_0_2,
  input      [7:0]    Weight_Array_3_0_3,
  input      [7:0]    Weight_Array_3_0_4,
  input      [7:0]    Weight_Array_3_0_5,
  input      [7:0]    Weight_Array_3_0_6,
  input      [7:0]    Weight_Array_3_0_7,
  input      [7:0]    Weight_Array_3_0_8,
  input      [7:0]    Weight_Array_3_1_0,
  input      [7:0]    Weight_Array_3_1_1,
  input      [7:0]    Weight_Array_3_1_2,
  input      [7:0]    Weight_Array_3_1_3,
  input      [7:0]    Weight_Array_3_1_4,
  input      [7:0]    Weight_Array_3_1_5,
  input      [7:0]    Weight_Array_3_1_6,
  input      [7:0]    Weight_Array_3_1_7,
  input      [7:0]    Weight_Array_3_1_8,
  input      [7:0]    Weight_Array_3_2_0,
  input      [7:0]    Weight_Array_3_2_1,
  input      [7:0]    Weight_Array_3_2_2,
  input      [7:0]    Weight_Array_3_2_3,
  input      [7:0]    Weight_Array_3_2_4,
  input      [7:0]    Weight_Array_3_2_5,
  input      [7:0]    Weight_Array_3_2_6,
  input      [7:0]    Weight_Array_3_2_7,
  input      [7:0]    Weight_Array_3_2_8,
  input      [7:0]    Weight_Array_3_3_0,
  input      [7:0]    Weight_Array_3_3_1,
  input      [7:0]    Weight_Array_3_3_2,
  input      [7:0]    Weight_Array_3_3_3,
  input      [7:0]    Weight_Array_3_3_4,
  input      [7:0]    Weight_Array_3_3_5,
  input      [7:0]    Weight_Array_3_3_6,
  input      [7:0]    Weight_Array_3_3_7,
  input      [7:0]    Weight_Array_3_3_8,
  input      [7:0]    Weight_Array_3_4_0,
  input      [7:0]    Weight_Array_3_4_1,
  input      [7:0]    Weight_Array_3_4_2,
  input      [7:0]    Weight_Array_3_4_3,
  input      [7:0]    Weight_Array_3_4_4,
  input      [7:0]    Weight_Array_3_4_5,
  input      [7:0]    Weight_Array_3_4_6,
  input      [7:0]    Weight_Array_3_4_7,
  input      [7:0]    Weight_Array_3_4_8,
  input      [7:0]    Weight_Array_3_5_0,
  input      [7:0]    Weight_Array_3_5_1,
  input      [7:0]    Weight_Array_3_5_2,
  input      [7:0]    Weight_Array_3_5_3,
  input      [7:0]    Weight_Array_3_5_4,
  input      [7:0]    Weight_Array_3_5_5,
  input      [7:0]    Weight_Array_3_5_6,
  input      [7:0]    Weight_Array_3_5_7,
  input      [7:0]    Weight_Array_3_5_8,
  input      [7:0]    Weight_Array_3_6_0,
  input      [7:0]    Weight_Array_3_6_1,
  input      [7:0]    Weight_Array_3_6_2,
  input      [7:0]    Weight_Array_3_6_3,
  input      [7:0]    Weight_Array_3_6_4,
  input      [7:0]    Weight_Array_3_6_5,
  input      [7:0]    Weight_Array_3_6_6,
  input      [7:0]    Weight_Array_3_6_7,
  input      [7:0]    Weight_Array_3_6_8,
  input      [7:0]    Weight_Array_3_7_0,
  input      [7:0]    Weight_Array_3_7_1,
  input      [7:0]    Weight_Array_3_7_2,
  input      [7:0]    Weight_Array_3_7_3,
  input      [7:0]    Weight_Array_3_7_4,
  input      [7:0]    Weight_Array_3_7_5,
  input      [7:0]    Weight_Array_3_7_6,
  input      [7:0]    Weight_Array_3_7_7,
  input      [7:0]    Weight_Array_3_7_8,
  input      [7:0]    Weight_Array_4_0_0,
  input      [7:0]    Weight_Array_4_0_1,
  input      [7:0]    Weight_Array_4_0_2,
  input      [7:0]    Weight_Array_4_0_3,
  input      [7:0]    Weight_Array_4_0_4,
  input      [7:0]    Weight_Array_4_0_5,
  input      [7:0]    Weight_Array_4_0_6,
  input      [7:0]    Weight_Array_4_0_7,
  input      [7:0]    Weight_Array_4_0_8,
  input      [7:0]    Weight_Array_4_1_0,
  input      [7:0]    Weight_Array_4_1_1,
  input      [7:0]    Weight_Array_4_1_2,
  input      [7:0]    Weight_Array_4_1_3,
  input      [7:0]    Weight_Array_4_1_4,
  input      [7:0]    Weight_Array_4_1_5,
  input      [7:0]    Weight_Array_4_1_6,
  input      [7:0]    Weight_Array_4_1_7,
  input      [7:0]    Weight_Array_4_1_8,
  input      [7:0]    Weight_Array_4_2_0,
  input      [7:0]    Weight_Array_4_2_1,
  input      [7:0]    Weight_Array_4_2_2,
  input      [7:0]    Weight_Array_4_2_3,
  input      [7:0]    Weight_Array_4_2_4,
  input      [7:0]    Weight_Array_4_2_5,
  input      [7:0]    Weight_Array_4_2_6,
  input      [7:0]    Weight_Array_4_2_7,
  input      [7:0]    Weight_Array_4_2_8,
  input      [7:0]    Weight_Array_4_3_0,
  input      [7:0]    Weight_Array_4_3_1,
  input      [7:0]    Weight_Array_4_3_2,
  input      [7:0]    Weight_Array_4_3_3,
  input      [7:0]    Weight_Array_4_3_4,
  input      [7:0]    Weight_Array_4_3_5,
  input      [7:0]    Weight_Array_4_3_6,
  input      [7:0]    Weight_Array_4_3_7,
  input      [7:0]    Weight_Array_4_3_8,
  input      [7:0]    Weight_Array_4_4_0,
  input      [7:0]    Weight_Array_4_4_1,
  input      [7:0]    Weight_Array_4_4_2,
  input      [7:0]    Weight_Array_4_4_3,
  input      [7:0]    Weight_Array_4_4_4,
  input      [7:0]    Weight_Array_4_4_5,
  input      [7:0]    Weight_Array_4_4_6,
  input      [7:0]    Weight_Array_4_4_7,
  input      [7:0]    Weight_Array_4_4_8,
  input      [7:0]    Weight_Array_4_5_0,
  input      [7:0]    Weight_Array_4_5_1,
  input      [7:0]    Weight_Array_4_5_2,
  input      [7:0]    Weight_Array_4_5_3,
  input      [7:0]    Weight_Array_4_5_4,
  input      [7:0]    Weight_Array_4_5_5,
  input      [7:0]    Weight_Array_4_5_6,
  input      [7:0]    Weight_Array_4_5_7,
  input      [7:0]    Weight_Array_4_5_8,
  input      [7:0]    Weight_Array_4_6_0,
  input      [7:0]    Weight_Array_4_6_1,
  input      [7:0]    Weight_Array_4_6_2,
  input      [7:0]    Weight_Array_4_6_3,
  input      [7:0]    Weight_Array_4_6_4,
  input      [7:0]    Weight_Array_4_6_5,
  input      [7:0]    Weight_Array_4_6_6,
  input      [7:0]    Weight_Array_4_6_7,
  input      [7:0]    Weight_Array_4_6_8,
  input      [7:0]    Weight_Array_4_7_0,
  input      [7:0]    Weight_Array_4_7_1,
  input      [7:0]    Weight_Array_4_7_2,
  input      [7:0]    Weight_Array_4_7_3,
  input      [7:0]    Weight_Array_4_7_4,
  input      [7:0]    Weight_Array_4_7_5,
  input      [7:0]    Weight_Array_4_7_6,
  input      [7:0]    Weight_Array_4_7_7,
  input      [7:0]    Weight_Array_4_7_8,
  input      [7:0]    Weight_Array_5_0_0,
  input      [7:0]    Weight_Array_5_0_1,
  input      [7:0]    Weight_Array_5_0_2,
  input      [7:0]    Weight_Array_5_0_3,
  input      [7:0]    Weight_Array_5_0_4,
  input      [7:0]    Weight_Array_5_0_5,
  input      [7:0]    Weight_Array_5_0_6,
  input      [7:0]    Weight_Array_5_0_7,
  input      [7:0]    Weight_Array_5_0_8,
  input      [7:0]    Weight_Array_5_1_0,
  input      [7:0]    Weight_Array_5_1_1,
  input      [7:0]    Weight_Array_5_1_2,
  input      [7:0]    Weight_Array_5_1_3,
  input      [7:0]    Weight_Array_5_1_4,
  input      [7:0]    Weight_Array_5_1_5,
  input      [7:0]    Weight_Array_5_1_6,
  input      [7:0]    Weight_Array_5_1_7,
  input      [7:0]    Weight_Array_5_1_8,
  input      [7:0]    Weight_Array_5_2_0,
  input      [7:0]    Weight_Array_5_2_1,
  input      [7:0]    Weight_Array_5_2_2,
  input      [7:0]    Weight_Array_5_2_3,
  input      [7:0]    Weight_Array_5_2_4,
  input      [7:0]    Weight_Array_5_2_5,
  input      [7:0]    Weight_Array_5_2_6,
  input      [7:0]    Weight_Array_5_2_7,
  input      [7:0]    Weight_Array_5_2_8,
  input      [7:0]    Weight_Array_5_3_0,
  input      [7:0]    Weight_Array_5_3_1,
  input      [7:0]    Weight_Array_5_3_2,
  input      [7:0]    Weight_Array_5_3_3,
  input      [7:0]    Weight_Array_5_3_4,
  input      [7:0]    Weight_Array_5_3_5,
  input      [7:0]    Weight_Array_5_3_6,
  input      [7:0]    Weight_Array_5_3_7,
  input      [7:0]    Weight_Array_5_3_8,
  input      [7:0]    Weight_Array_5_4_0,
  input      [7:0]    Weight_Array_5_4_1,
  input      [7:0]    Weight_Array_5_4_2,
  input      [7:0]    Weight_Array_5_4_3,
  input      [7:0]    Weight_Array_5_4_4,
  input      [7:0]    Weight_Array_5_4_5,
  input      [7:0]    Weight_Array_5_4_6,
  input      [7:0]    Weight_Array_5_4_7,
  input      [7:0]    Weight_Array_5_4_8,
  input      [7:0]    Weight_Array_5_5_0,
  input      [7:0]    Weight_Array_5_5_1,
  input      [7:0]    Weight_Array_5_5_2,
  input      [7:0]    Weight_Array_5_5_3,
  input      [7:0]    Weight_Array_5_5_4,
  input      [7:0]    Weight_Array_5_5_5,
  input      [7:0]    Weight_Array_5_5_6,
  input      [7:0]    Weight_Array_5_5_7,
  input      [7:0]    Weight_Array_5_5_8,
  input      [7:0]    Weight_Array_5_6_0,
  input      [7:0]    Weight_Array_5_6_1,
  input      [7:0]    Weight_Array_5_6_2,
  input      [7:0]    Weight_Array_5_6_3,
  input      [7:0]    Weight_Array_5_6_4,
  input      [7:0]    Weight_Array_5_6_5,
  input      [7:0]    Weight_Array_5_6_6,
  input      [7:0]    Weight_Array_5_6_7,
  input      [7:0]    Weight_Array_5_6_8,
  input      [7:0]    Weight_Array_5_7_0,
  input      [7:0]    Weight_Array_5_7_1,
  input      [7:0]    Weight_Array_5_7_2,
  input      [7:0]    Weight_Array_5_7_3,
  input      [7:0]    Weight_Array_5_7_4,
  input      [7:0]    Weight_Array_5_7_5,
  input      [7:0]    Weight_Array_5_7_6,
  input      [7:0]    Weight_Array_5_7_7,
  input      [7:0]    Weight_Array_5_7_8,
  input      [7:0]    Weight_Array_6_0_0,
  input      [7:0]    Weight_Array_6_0_1,
  input      [7:0]    Weight_Array_6_0_2,
  input      [7:0]    Weight_Array_6_0_3,
  input      [7:0]    Weight_Array_6_0_4,
  input      [7:0]    Weight_Array_6_0_5,
  input      [7:0]    Weight_Array_6_0_6,
  input      [7:0]    Weight_Array_6_0_7,
  input      [7:0]    Weight_Array_6_0_8,
  input      [7:0]    Weight_Array_6_1_0,
  input      [7:0]    Weight_Array_6_1_1,
  input      [7:0]    Weight_Array_6_1_2,
  input      [7:0]    Weight_Array_6_1_3,
  input      [7:0]    Weight_Array_6_1_4,
  input      [7:0]    Weight_Array_6_1_5,
  input      [7:0]    Weight_Array_6_1_6,
  input      [7:0]    Weight_Array_6_1_7,
  input      [7:0]    Weight_Array_6_1_8,
  input      [7:0]    Weight_Array_6_2_0,
  input      [7:0]    Weight_Array_6_2_1,
  input      [7:0]    Weight_Array_6_2_2,
  input      [7:0]    Weight_Array_6_2_3,
  input      [7:0]    Weight_Array_6_2_4,
  input      [7:0]    Weight_Array_6_2_5,
  input      [7:0]    Weight_Array_6_2_6,
  input      [7:0]    Weight_Array_6_2_7,
  input      [7:0]    Weight_Array_6_2_8,
  input      [7:0]    Weight_Array_6_3_0,
  input      [7:0]    Weight_Array_6_3_1,
  input      [7:0]    Weight_Array_6_3_2,
  input      [7:0]    Weight_Array_6_3_3,
  input      [7:0]    Weight_Array_6_3_4,
  input      [7:0]    Weight_Array_6_3_5,
  input      [7:0]    Weight_Array_6_3_6,
  input      [7:0]    Weight_Array_6_3_7,
  input      [7:0]    Weight_Array_6_3_8,
  input      [7:0]    Weight_Array_6_4_0,
  input      [7:0]    Weight_Array_6_4_1,
  input      [7:0]    Weight_Array_6_4_2,
  input      [7:0]    Weight_Array_6_4_3,
  input      [7:0]    Weight_Array_6_4_4,
  input      [7:0]    Weight_Array_6_4_5,
  input      [7:0]    Weight_Array_6_4_6,
  input      [7:0]    Weight_Array_6_4_7,
  input      [7:0]    Weight_Array_6_4_8,
  input      [7:0]    Weight_Array_6_5_0,
  input      [7:0]    Weight_Array_6_5_1,
  input      [7:0]    Weight_Array_6_5_2,
  input      [7:0]    Weight_Array_6_5_3,
  input      [7:0]    Weight_Array_6_5_4,
  input      [7:0]    Weight_Array_6_5_5,
  input      [7:0]    Weight_Array_6_5_6,
  input      [7:0]    Weight_Array_6_5_7,
  input      [7:0]    Weight_Array_6_5_8,
  input      [7:0]    Weight_Array_6_6_0,
  input      [7:0]    Weight_Array_6_6_1,
  input      [7:0]    Weight_Array_6_6_2,
  input      [7:0]    Weight_Array_6_6_3,
  input      [7:0]    Weight_Array_6_6_4,
  input      [7:0]    Weight_Array_6_6_5,
  input      [7:0]    Weight_Array_6_6_6,
  input      [7:0]    Weight_Array_6_6_7,
  input      [7:0]    Weight_Array_6_6_8,
  input      [7:0]    Weight_Array_6_7_0,
  input      [7:0]    Weight_Array_6_7_1,
  input      [7:0]    Weight_Array_6_7_2,
  input      [7:0]    Weight_Array_6_7_3,
  input      [7:0]    Weight_Array_6_7_4,
  input      [7:0]    Weight_Array_6_7_5,
  input      [7:0]    Weight_Array_6_7_6,
  input      [7:0]    Weight_Array_6_7_7,
  input      [7:0]    Weight_Array_6_7_8,
  input      [7:0]    Weight_Array_7_0_0,
  input      [7:0]    Weight_Array_7_0_1,
  input      [7:0]    Weight_Array_7_0_2,
  input      [7:0]    Weight_Array_7_0_3,
  input      [7:0]    Weight_Array_7_0_4,
  input      [7:0]    Weight_Array_7_0_5,
  input      [7:0]    Weight_Array_7_0_6,
  input      [7:0]    Weight_Array_7_0_7,
  input      [7:0]    Weight_Array_7_0_8,
  input      [7:0]    Weight_Array_7_1_0,
  input      [7:0]    Weight_Array_7_1_1,
  input      [7:0]    Weight_Array_7_1_2,
  input      [7:0]    Weight_Array_7_1_3,
  input      [7:0]    Weight_Array_7_1_4,
  input      [7:0]    Weight_Array_7_1_5,
  input      [7:0]    Weight_Array_7_1_6,
  input      [7:0]    Weight_Array_7_1_7,
  input      [7:0]    Weight_Array_7_1_8,
  input      [7:0]    Weight_Array_7_2_0,
  input      [7:0]    Weight_Array_7_2_1,
  input      [7:0]    Weight_Array_7_2_2,
  input      [7:0]    Weight_Array_7_2_3,
  input      [7:0]    Weight_Array_7_2_4,
  input      [7:0]    Weight_Array_7_2_5,
  input      [7:0]    Weight_Array_7_2_6,
  input      [7:0]    Weight_Array_7_2_7,
  input      [7:0]    Weight_Array_7_2_8,
  input      [7:0]    Weight_Array_7_3_0,
  input      [7:0]    Weight_Array_7_3_1,
  input      [7:0]    Weight_Array_7_3_2,
  input      [7:0]    Weight_Array_7_3_3,
  input      [7:0]    Weight_Array_7_3_4,
  input      [7:0]    Weight_Array_7_3_5,
  input      [7:0]    Weight_Array_7_3_6,
  input      [7:0]    Weight_Array_7_3_7,
  input      [7:0]    Weight_Array_7_3_8,
  input      [7:0]    Weight_Array_7_4_0,
  input      [7:0]    Weight_Array_7_4_1,
  input      [7:0]    Weight_Array_7_4_2,
  input      [7:0]    Weight_Array_7_4_3,
  input      [7:0]    Weight_Array_7_4_4,
  input      [7:0]    Weight_Array_7_4_5,
  input      [7:0]    Weight_Array_7_4_6,
  input      [7:0]    Weight_Array_7_4_7,
  input      [7:0]    Weight_Array_7_4_8,
  input      [7:0]    Weight_Array_7_5_0,
  input      [7:0]    Weight_Array_7_5_1,
  input      [7:0]    Weight_Array_7_5_2,
  input      [7:0]    Weight_Array_7_5_3,
  input      [7:0]    Weight_Array_7_5_4,
  input      [7:0]    Weight_Array_7_5_5,
  input      [7:0]    Weight_Array_7_5_6,
  input      [7:0]    Weight_Array_7_5_7,
  input      [7:0]    Weight_Array_7_5_8,
  input      [7:0]    Weight_Array_7_6_0,
  input      [7:0]    Weight_Array_7_6_1,
  input      [7:0]    Weight_Array_7_6_2,
  input      [7:0]    Weight_Array_7_6_3,
  input      [7:0]    Weight_Array_7_6_4,
  input      [7:0]    Weight_Array_7_6_5,
  input      [7:0]    Weight_Array_7_6_6,
  input      [7:0]    Weight_Array_7_6_7,
  input      [7:0]    Weight_Array_7_6_8,
  input      [7:0]    Weight_Array_7_7_0,
  input      [7:0]    Weight_Array_7_7_1,
  input      [7:0]    Weight_Array_7_7_2,
  input      [7:0]    Weight_Array_7_7_3,
  input      [7:0]    Weight_Array_7_7_4,
  input      [7:0]    Weight_Array_7_7_5,
  input      [7:0]    Weight_Array_7_7_6,
  input      [7:0]    Weight_Array_7_7_7,
  input      [7:0]    Weight_Array_7_7_8,
  input      [7:0]    Feature_Array_0_0,
  input      [7:0]    Feature_Array_0_1,
  input      [7:0]    Feature_Array_0_2,
  input      [7:0]    Feature_Array_0_3,
  input      [7:0]    Feature_Array_0_4,
  input      [7:0]    Feature_Array_0_5,
  input      [7:0]    Feature_Array_0_6,
  input      [7:0]    Feature_Array_0_7,
  input      [7:0]    Feature_Array_0_8,
  input      [7:0]    Feature_Array_1_0,
  input      [7:0]    Feature_Array_1_1,
  input      [7:0]    Feature_Array_1_2,
  input      [7:0]    Feature_Array_1_3,
  input      [7:0]    Feature_Array_1_4,
  input      [7:0]    Feature_Array_1_5,
  input      [7:0]    Feature_Array_1_6,
  input      [7:0]    Feature_Array_1_7,
  input      [7:0]    Feature_Array_1_8,
  input      [7:0]    Feature_Array_2_0,
  input      [7:0]    Feature_Array_2_1,
  input      [7:0]    Feature_Array_2_2,
  input      [7:0]    Feature_Array_2_3,
  input      [7:0]    Feature_Array_2_4,
  input      [7:0]    Feature_Array_2_5,
  input      [7:0]    Feature_Array_2_6,
  input      [7:0]    Feature_Array_2_7,
  input      [7:0]    Feature_Array_2_8,
  input      [7:0]    Feature_Array_3_0,
  input      [7:0]    Feature_Array_3_1,
  input      [7:0]    Feature_Array_3_2,
  input      [7:0]    Feature_Array_3_3,
  input      [7:0]    Feature_Array_3_4,
  input      [7:0]    Feature_Array_3_5,
  input      [7:0]    Feature_Array_3_6,
  input      [7:0]    Feature_Array_3_7,
  input      [7:0]    Feature_Array_3_8,
  input      [7:0]    Feature_Array_4_0,
  input      [7:0]    Feature_Array_4_1,
  input      [7:0]    Feature_Array_4_2,
  input      [7:0]    Feature_Array_4_3,
  input      [7:0]    Feature_Array_4_4,
  input      [7:0]    Feature_Array_4_5,
  input      [7:0]    Feature_Array_4_6,
  input      [7:0]    Feature_Array_4_7,
  input      [7:0]    Feature_Array_4_8,
  input      [7:0]    Feature_Array_5_0,
  input      [7:0]    Feature_Array_5_1,
  input      [7:0]    Feature_Array_5_2,
  input      [7:0]    Feature_Array_5_3,
  input      [7:0]    Feature_Array_5_4,
  input      [7:0]    Feature_Array_5_5,
  input      [7:0]    Feature_Array_5_6,
  input      [7:0]    Feature_Array_5_7,
  input      [7:0]    Feature_Array_5_8,
  input      [7:0]    Feature_Array_6_0,
  input      [7:0]    Feature_Array_6_1,
  input      [7:0]    Feature_Array_6_2,
  input      [7:0]    Feature_Array_6_3,
  input      [7:0]    Feature_Array_6_4,
  input      [7:0]    Feature_Array_6_5,
  input      [7:0]    Feature_Array_6_6,
  input      [7:0]    Feature_Array_6_7,
  input      [7:0]    Feature_Array_6_8,
  input      [7:0]    Feature_Array_7_0,
  input      [7:0]    Feature_Array_7_1,
  input      [7:0]    Feature_Array_7_2,
  input      [7:0]    Feature_Array_7_3,
  input      [7:0]    Feature_Array_7_4,
  input      [7:0]    Feature_Array_7_5,
  input      [7:0]    Feature_Array_7_6,
  input      [7:0]    Feature_Array_7_7,
  input      [7:0]    Feature_Array_7_8,
  input               clk,
  input               reset,
  input               softReset
);

  wire                lajiPE_72_weight_CE;
  wire                lajiPE_72_feature_CE;
  wire                lajiPE_73_weight_CE;
  wire                lajiPE_73_feature_CE;
  wire                lajiPE_74_weight_CE;
  wire                lajiPE_74_feature_CE;
  wire                lajiPE_75_weight_CE;
  wire                lajiPE_75_feature_CE;
  wire                lajiPE_76_weight_CE;
  wire                lajiPE_76_feature_CE;
  wire                lajiPE_77_weight_CE;
  wire                lajiPE_77_feature_CE;
  wire                lajiPE_78_weight_CE;
  wire                lajiPE_78_feature_CE;
  wire                lajiPE_79_weight_CE;
  wire                lajiPE_79_feature_CE;
  wire                lajiPE_80_weight_CE;
  wire                lajiPE_80_feature_CE;
  wire                lajiPE_81_weight_CE;
  wire                lajiPE_81_feature_CE;
  wire                lajiPE_82_weight_CE;
  wire                lajiPE_82_feature_CE;
  wire                lajiPE_83_weight_CE;
  wire                lajiPE_83_feature_CE;
  wire                lajiPE_84_weight_CE;
  wire                lajiPE_84_feature_CE;
  wire                lajiPE_85_weight_CE;
  wire                lajiPE_85_feature_CE;
  wire                lajiPE_86_weight_CE;
  wire                lajiPE_86_feature_CE;
  wire                lajiPE_87_weight_CE;
  wire                lajiPE_87_feature_CE;
  wire                lajiPE_88_weight_CE;
  wire                lajiPE_88_feature_CE;
  wire                lajiPE_89_weight_CE;
  wire                lajiPE_89_feature_CE;
  wire                lajiPE_90_weight_CE;
  wire                lajiPE_90_feature_CE;
  wire                lajiPE_91_weight_CE;
  wire                lajiPE_91_feature_CE;
  wire                lajiPE_92_weight_CE;
  wire                lajiPE_92_feature_CE;
  wire                lajiPE_93_weight_CE;
  wire                lajiPE_93_feature_CE;
  wire                lajiPE_94_weight_CE;
  wire                lajiPE_94_feature_CE;
  wire                lajiPE_95_weight_CE;
  wire                lajiPE_95_feature_CE;
  wire                lajiPE_96_weight_CE;
  wire                lajiPE_96_feature_CE;
  wire                lajiPE_97_weight_CE;
  wire                lajiPE_97_feature_CE;
  wire                lajiPE_98_weight_CE;
  wire                lajiPE_98_feature_CE;
  wire                lajiPE_99_weight_CE;
  wire                lajiPE_99_feature_CE;
  wire                lajiPE_100_weight_CE;
  wire                lajiPE_100_feature_CE;
  wire                lajiPE_101_weight_CE;
  wire                lajiPE_101_feature_CE;
  wire                lajiPE_102_weight_CE;
  wire                lajiPE_102_feature_CE;
  wire                lajiPE_103_weight_CE;
  wire                lajiPE_103_feature_CE;
  wire                lajiPE_104_weight_CE;
  wire                lajiPE_104_feature_CE;
  wire                lajiPE_105_weight_CE;
  wire                lajiPE_105_feature_CE;
  wire                lajiPE_106_weight_CE;
  wire                lajiPE_106_feature_CE;
  wire                lajiPE_107_weight_CE;
  wire                lajiPE_107_feature_CE;
  wire                lajiPE_108_weight_CE;
  wire                lajiPE_108_feature_CE;
  wire                lajiPE_109_weight_CE;
  wire                lajiPE_109_feature_CE;
  wire                lajiPE_110_weight_CE;
  wire                lajiPE_110_feature_CE;
  wire                lajiPE_111_weight_CE;
  wire                lajiPE_111_feature_CE;
  wire                lajiPE_112_weight_CE;
  wire                lajiPE_112_feature_CE;
  wire                lajiPE_113_weight_CE;
  wire                lajiPE_113_feature_CE;
  wire                lajiPE_114_weight_CE;
  wire                lajiPE_114_feature_CE;
  wire                lajiPE_115_weight_CE;
  wire                lajiPE_115_feature_CE;
  wire                lajiPE_116_weight_CE;
  wire                lajiPE_116_feature_CE;
  wire                lajiPE_117_weight_CE;
  wire                lajiPE_117_feature_CE;
  wire                lajiPE_118_weight_CE;
  wire                lajiPE_118_feature_CE;
  wire                lajiPE_119_weight_CE;
  wire                lajiPE_119_feature_CE;
  wire                lajiPE_120_weight_CE;
  wire                lajiPE_120_feature_CE;
  wire                lajiPE_121_weight_CE;
  wire                lajiPE_121_feature_CE;
  wire                lajiPE_122_weight_CE;
  wire                lajiPE_122_feature_CE;
  wire                lajiPE_123_weight_CE;
  wire                lajiPE_123_feature_CE;
  wire                lajiPE_124_weight_CE;
  wire                lajiPE_124_feature_CE;
  wire                lajiPE_125_weight_CE;
  wire                lajiPE_125_feature_CE;
  wire                lajiPE_126_weight_CE;
  wire                lajiPE_126_feature_CE;
  wire                lajiPE_127_weight_CE;
  wire                lajiPE_127_feature_CE;
  wire       [7:0]    lajiPE_64_feature_out_0;
  wire       [7:0]    lajiPE_64_feature_out_1;
  wire       [7:0]    lajiPE_64_feature_out_2;
  wire       [7:0]    lajiPE_64_feature_out_3;
  wire       [7:0]    lajiPE_64_feature_out_4;
  wire       [7:0]    lajiPE_64_feature_out_5;
  wire       [7:0]    lajiPE_64_feature_out_6;
  wire       [7:0]    lajiPE_64_feature_out_7;
  wire       [7:0]    lajiPE_64_feature_out_8;
  wire       [7:0]    lajiPE_65_feature_out_0;
  wire       [7:0]    lajiPE_65_feature_out_1;
  wire       [7:0]    lajiPE_65_feature_out_2;
  wire       [7:0]    lajiPE_65_feature_out_3;
  wire       [7:0]    lajiPE_65_feature_out_4;
  wire       [7:0]    lajiPE_65_feature_out_5;
  wire       [7:0]    lajiPE_65_feature_out_6;
  wire       [7:0]    lajiPE_65_feature_out_7;
  wire       [7:0]    lajiPE_65_feature_out_8;
  wire       [7:0]    lajiPE_66_feature_out_0;
  wire       [7:0]    lajiPE_66_feature_out_1;
  wire       [7:0]    lajiPE_66_feature_out_2;
  wire       [7:0]    lajiPE_66_feature_out_3;
  wire       [7:0]    lajiPE_66_feature_out_4;
  wire       [7:0]    lajiPE_66_feature_out_5;
  wire       [7:0]    lajiPE_66_feature_out_6;
  wire       [7:0]    lajiPE_66_feature_out_7;
  wire       [7:0]    lajiPE_66_feature_out_8;
  wire       [7:0]    lajiPE_67_feature_out_0;
  wire       [7:0]    lajiPE_67_feature_out_1;
  wire       [7:0]    lajiPE_67_feature_out_2;
  wire       [7:0]    lajiPE_67_feature_out_3;
  wire       [7:0]    lajiPE_67_feature_out_4;
  wire       [7:0]    lajiPE_67_feature_out_5;
  wire       [7:0]    lajiPE_67_feature_out_6;
  wire       [7:0]    lajiPE_67_feature_out_7;
  wire       [7:0]    lajiPE_67_feature_out_8;
  wire       [7:0]    lajiPE_68_feature_out_0;
  wire       [7:0]    lajiPE_68_feature_out_1;
  wire       [7:0]    lajiPE_68_feature_out_2;
  wire       [7:0]    lajiPE_68_feature_out_3;
  wire       [7:0]    lajiPE_68_feature_out_4;
  wire       [7:0]    lajiPE_68_feature_out_5;
  wire       [7:0]    lajiPE_68_feature_out_6;
  wire       [7:0]    lajiPE_68_feature_out_7;
  wire       [7:0]    lajiPE_68_feature_out_8;
  wire       [7:0]    lajiPE_69_feature_out_0;
  wire       [7:0]    lajiPE_69_feature_out_1;
  wire       [7:0]    lajiPE_69_feature_out_2;
  wire       [7:0]    lajiPE_69_feature_out_3;
  wire       [7:0]    lajiPE_69_feature_out_4;
  wire       [7:0]    lajiPE_69_feature_out_5;
  wire       [7:0]    lajiPE_69_feature_out_6;
  wire       [7:0]    lajiPE_69_feature_out_7;
  wire       [7:0]    lajiPE_69_feature_out_8;
  wire       [7:0]    lajiPE_70_feature_out_0;
  wire       [7:0]    lajiPE_70_feature_out_1;
  wire       [7:0]    lajiPE_70_feature_out_2;
  wire       [7:0]    lajiPE_70_feature_out_3;
  wire       [7:0]    lajiPE_70_feature_out_4;
  wire       [7:0]    lajiPE_70_feature_out_5;
  wire       [7:0]    lajiPE_70_feature_out_6;
  wire       [7:0]    lajiPE_70_feature_out_7;
  wire       [7:0]    lajiPE_70_feature_out_8;
  wire       [7:0]    lajiPE_71_feature_out_0;
  wire       [7:0]    lajiPE_71_feature_out_1;
  wire       [7:0]    lajiPE_71_feature_out_2;
  wire       [7:0]    lajiPE_71_feature_out_3;
  wire       [7:0]    lajiPE_71_feature_out_4;
  wire       [7:0]    lajiPE_71_feature_out_5;
  wire       [7:0]    lajiPE_71_feature_out_6;
  wire       [7:0]    lajiPE_71_feature_out_7;
  wire       [7:0]    lajiPE_71_feature_out_8;
  wire       [7:0]    lajiPE_72_feature_out_0;
  wire       [7:0]    lajiPE_72_feature_out_1;
  wire       [7:0]    lajiPE_72_feature_out_2;
  wire       [7:0]    lajiPE_72_feature_out_3;
  wire       [7:0]    lajiPE_72_feature_out_4;
  wire       [7:0]    lajiPE_72_feature_out_5;
  wire       [7:0]    lajiPE_72_feature_out_6;
  wire       [7:0]    lajiPE_72_feature_out_7;
  wire       [7:0]    lajiPE_72_feature_out_8;
  wire       [7:0]    lajiPE_73_feature_out_0;
  wire       [7:0]    lajiPE_73_feature_out_1;
  wire       [7:0]    lajiPE_73_feature_out_2;
  wire       [7:0]    lajiPE_73_feature_out_3;
  wire       [7:0]    lajiPE_73_feature_out_4;
  wire       [7:0]    lajiPE_73_feature_out_5;
  wire       [7:0]    lajiPE_73_feature_out_6;
  wire       [7:0]    lajiPE_73_feature_out_7;
  wire       [7:0]    lajiPE_73_feature_out_8;
  wire       [7:0]    lajiPE_74_feature_out_0;
  wire       [7:0]    lajiPE_74_feature_out_1;
  wire       [7:0]    lajiPE_74_feature_out_2;
  wire       [7:0]    lajiPE_74_feature_out_3;
  wire       [7:0]    lajiPE_74_feature_out_4;
  wire       [7:0]    lajiPE_74_feature_out_5;
  wire       [7:0]    lajiPE_74_feature_out_6;
  wire       [7:0]    lajiPE_74_feature_out_7;
  wire       [7:0]    lajiPE_74_feature_out_8;
  wire       [7:0]    lajiPE_75_feature_out_0;
  wire       [7:0]    lajiPE_75_feature_out_1;
  wire       [7:0]    lajiPE_75_feature_out_2;
  wire       [7:0]    lajiPE_75_feature_out_3;
  wire       [7:0]    lajiPE_75_feature_out_4;
  wire       [7:0]    lajiPE_75_feature_out_5;
  wire       [7:0]    lajiPE_75_feature_out_6;
  wire       [7:0]    lajiPE_75_feature_out_7;
  wire       [7:0]    lajiPE_75_feature_out_8;
  wire       [7:0]    lajiPE_76_feature_out_0;
  wire       [7:0]    lajiPE_76_feature_out_1;
  wire       [7:0]    lajiPE_76_feature_out_2;
  wire       [7:0]    lajiPE_76_feature_out_3;
  wire       [7:0]    lajiPE_76_feature_out_4;
  wire       [7:0]    lajiPE_76_feature_out_5;
  wire       [7:0]    lajiPE_76_feature_out_6;
  wire       [7:0]    lajiPE_76_feature_out_7;
  wire       [7:0]    lajiPE_76_feature_out_8;
  wire       [7:0]    lajiPE_77_feature_out_0;
  wire       [7:0]    lajiPE_77_feature_out_1;
  wire       [7:0]    lajiPE_77_feature_out_2;
  wire       [7:0]    lajiPE_77_feature_out_3;
  wire       [7:0]    lajiPE_77_feature_out_4;
  wire       [7:0]    lajiPE_77_feature_out_5;
  wire       [7:0]    lajiPE_77_feature_out_6;
  wire       [7:0]    lajiPE_77_feature_out_7;
  wire       [7:0]    lajiPE_77_feature_out_8;
  wire       [7:0]    lajiPE_78_feature_out_0;
  wire       [7:0]    lajiPE_78_feature_out_1;
  wire       [7:0]    lajiPE_78_feature_out_2;
  wire       [7:0]    lajiPE_78_feature_out_3;
  wire       [7:0]    lajiPE_78_feature_out_4;
  wire       [7:0]    lajiPE_78_feature_out_5;
  wire       [7:0]    lajiPE_78_feature_out_6;
  wire       [7:0]    lajiPE_78_feature_out_7;
  wire       [7:0]    lajiPE_78_feature_out_8;
  wire       [7:0]    lajiPE_79_feature_out_0;
  wire       [7:0]    lajiPE_79_feature_out_1;
  wire       [7:0]    lajiPE_79_feature_out_2;
  wire       [7:0]    lajiPE_79_feature_out_3;
  wire       [7:0]    lajiPE_79_feature_out_4;
  wire       [7:0]    lajiPE_79_feature_out_5;
  wire       [7:0]    lajiPE_79_feature_out_6;
  wire       [7:0]    lajiPE_79_feature_out_7;
  wire       [7:0]    lajiPE_79_feature_out_8;
  wire       [7:0]    lajiPE_80_feature_out_0;
  wire       [7:0]    lajiPE_80_feature_out_1;
  wire       [7:0]    lajiPE_80_feature_out_2;
  wire       [7:0]    lajiPE_80_feature_out_3;
  wire       [7:0]    lajiPE_80_feature_out_4;
  wire       [7:0]    lajiPE_80_feature_out_5;
  wire       [7:0]    lajiPE_80_feature_out_6;
  wire       [7:0]    lajiPE_80_feature_out_7;
  wire       [7:0]    lajiPE_80_feature_out_8;
  wire       [7:0]    lajiPE_81_feature_out_0;
  wire       [7:0]    lajiPE_81_feature_out_1;
  wire       [7:0]    lajiPE_81_feature_out_2;
  wire       [7:0]    lajiPE_81_feature_out_3;
  wire       [7:0]    lajiPE_81_feature_out_4;
  wire       [7:0]    lajiPE_81_feature_out_5;
  wire       [7:0]    lajiPE_81_feature_out_6;
  wire       [7:0]    lajiPE_81_feature_out_7;
  wire       [7:0]    lajiPE_81_feature_out_8;
  wire       [7:0]    lajiPE_82_feature_out_0;
  wire       [7:0]    lajiPE_82_feature_out_1;
  wire       [7:0]    lajiPE_82_feature_out_2;
  wire       [7:0]    lajiPE_82_feature_out_3;
  wire       [7:0]    lajiPE_82_feature_out_4;
  wire       [7:0]    lajiPE_82_feature_out_5;
  wire       [7:0]    lajiPE_82_feature_out_6;
  wire       [7:0]    lajiPE_82_feature_out_7;
  wire       [7:0]    lajiPE_82_feature_out_8;
  wire       [7:0]    lajiPE_83_feature_out_0;
  wire       [7:0]    lajiPE_83_feature_out_1;
  wire       [7:0]    lajiPE_83_feature_out_2;
  wire       [7:0]    lajiPE_83_feature_out_3;
  wire       [7:0]    lajiPE_83_feature_out_4;
  wire       [7:0]    lajiPE_83_feature_out_5;
  wire       [7:0]    lajiPE_83_feature_out_6;
  wire       [7:0]    lajiPE_83_feature_out_7;
  wire       [7:0]    lajiPE_83_feature_out_8;
  wire       [7:0]    lajiPE_84_feature_out_0;
  wire       [7:0]    lajiPE_84_feature_out_1;
  wire       [7:0]    lajiPE_84_feature_out_2;
  wire       [7:0]    lajiPE_84_feature_out_3;
  wire       [7:0]    lajiPE_84_feature_out_4;
  wire       [7:0]    lajiPE_84_feature_out_5;
  wire       [7:0]    lajiPE_84_feature_out_6;
  wire       [7:0]    lajiPE_84_feature_out_7;
  wire       [7:0]    lajiPE_84_feature_out_8;
  wire       [7:0]    lajiPE_85_feature_out_0;
  wire       [7:0]    lajiPE_85_feature_out_1;
  wire       [7:0]    lajiPE_85_feature_out_2;
  wire       [7:0]    lajiPE_85_feature_out_3;
  wire       [7:0]    lajiPE_85_feature_out_4;
  wire       [7:0]    lajiPE_85_feature_out_5;
  wire       [7:0]    lajiPE_85_feature_out_6;
  wire       [7:0]    lajiPE_85_feature_out_7;
  wire       [7:0]    lajiPE_85_feature_out_8;
  wire       [7:0]    lajiPE_86_feature_out_0;
  wire       [7:0]    lajiPE_86_feature_out_1;
  wire       [7:0]    lajiPE_86_feature_out_2;
  wire       [7:0]    lajiPE_86_feature_out_3;
  wire       [7:0]    lajiPE_86_feature_out_4;
  wire       [7:0]    lajiPE_86_feature_out_5;
  wire       [7:0]    lajiPE_86_feature_out_6;
  wire       [7:0]    lajiPE_86_feature_out_7;
  wire       [7:0]    lajiPE_86_feature_out_8;
  wire       [7:0]    lajiPE_87_feature_out_0;
  wire       [7:0]    lajiPE_87_feature_out_1;
  wire       [7:0]    lajiPE_87_feature_out_2;
  wire       [7:0]    lajiPE_87_feature_out_3;
  wire       [7:0]    lajiPE_87_feature_out_4;
  wire       [7:0]    lajiPE_87_feature_out_5;
  wire       [7:0]    lajiPE_87_feature_out_6;
  wire       [7:0]    lajiPE_87_feature_out_7;
  wire       [7:0]    lajiPE_87_feature_out_8;
  wire       [7:0]    lajiPE_88_feature_out_0;
  wire       [7:0]    lajiPE_88_feature_out_1;
  wire       [7:0]    lajiPE_88_feature_out_2;
  wire       [7:0]    lajiPE_88_feature_out_3;
  wire       [7:0]    lajiPE_88_feature_out_4;
  wire       [7:0]    lajiPE_88_feature_out_5;
  wire       [7:0]    lajiPE_88_feature_out_6;
  wire       [7:0]    lajiPE_88_feature_out_7;
  wire       [7:0]    lajiPE_88_feature_out_8;
  wire       [7:0]    lajiPE_89_feature_out_0;
  wire       [7:0]    lajiPE_89_feature_out_1;
  wire       [7:0]    lajiPE_89_feature_out_2;
  wire       [7:0]    lajiPE_89_feature_out_3;
  wire       [7:0]    lajiPE_89_feature_out_4;
  wire       [7:0]    lajiPE_89_feature_out_5;
  wire       [7:0]    lajiPE_89_feature_out_6;
  wire       [7:0]    lajiPE_89_feature_out_7;
  wire       [7:0]    lajiPE_89_feature_out_8;
  wire       [7:0]    lajiPE_90_feature_out_0;
  wire       [7:0]    lajiPE_90_feature_out_1;
  wire       [7:0]    lajiPE_90_feature_out_2;
  wire       [7:0]    lajiPE_90_feature_out_3;
  wire       [7:0]    lajiPE_90_feature_out_4;
  wire       [7:0]    lajiPE_90_feature_out_5;
  wire       [7:0]    lajiPE_90_feature_out_6;
  wire       [7:0]    lajiPE_90_feature_out_7;
  wire       [7:0]    lajiPE_90_feature_out_8;
  wire       [7:0]    lajiPE_91_feature_out_0;
  wire       [7:0]    lajiPE_91_feature_out_1;
  wire       [7:0]    lajiPE_91_feature_out_2;
  wire       [7:0]    lajiPE_91_feature_out_3;
  wire       [7:0]    lajiPE_91_feature_out_4;
  wire       [7:0]    lajiPE_91_feature_out_5;
  wire       [7:0]    lajiPE_91_feature_out_6;
  wire       [7:0]    lajiPE_91_feature_out_7;
  wire       [7:0]    lajiPE_91_feature_out_8;
  wire       [7:0]    lajiPE_92_feature_out_0;
  wire       [7:0]    lajiPE_92_feature_out_1;
  wire       [7:0]    lajiPE_92_feature_out_2;
  wire       [7:0]    lajiPE_92_feature_out_3;
  wire       [7:0]    lajiPE_92_feature_out_4;
  wire       [7:0]    lajiPE_92_feature_out_5;
  wire       [7:0]    lajiPE_92_feature_out_6;
  wire       [7:0]    lajiPE_92_feature_out_7;
  wire       [7:0]    lajiPE_92_feature_out_8;
  wire       [7:0]    lajiPE_93_feature_out_0;
  wire       [7:0]    lajiPE_93_feature_out_1;
  wire       [7:0]    lajiPE_93_feature_out_2;
  wire       [7:0]    lajiPE_93_feature_out_3;
  wire       [7:0]    lajiPE_93_feature_out_4;
  wire       [7:0]    lajiPE_93_feature_out_5;
  wire       [7:0]    lajiPE_93_feature_out_6;
  wire       [7:0]    lajiPE_93_feature_out_7;
  wire       [7:0]    lajiPE_93_feature_out_8;
  wire       [7:0]    lajiPE_94_feature_out_0;
  wire       [7:0]    lajiPE_94_feature_out_1;
  wire       [7:0]    lajiPE_94_feature_out_2;
  wire       [7:0]    lajiPE_94_feature_out_3;
  wire       [7:0]    lajiPE_94_feature_out_4;
  wire       [7:0]    lajiPE_94_feature_out_5;
  wire       [7:0]    lajiPE_94_feature_out_6;
  wire       [7:0]    lajiPE_94_feature_out_7;
  wire       [7:0]    lajiPE_94_feature_out_8;
  wire       [7:0]    lajiPE_95_feature_out_0;
  wire       [7:0]    lajiPE_95_feature_out_1;
  wire       [7:0]    lajiPE_95_feature_out_2;
  wire       [7:0]    lajiPE_95_feature_out_3;
  wire       [7:0]    lajiPE_95_feature_out_4;
  wire       [7:0]    lajiPE_95_feature_out_5;
  wire       [7:0]    lajiPE_95_feature_out_6;
  wire       [7:0]    lajiPE_95_feature_out_7;
  wire       [7:0]    lajiPE_95_feature_out_8;
  wire       [7:0]    lajiPE_96_feature_out_0;
  wire       [7:0]    lajiPE_96_feature_out_1;
  wire       [7:0]    lajiPE_96_feature_out_2;
  wire       [7:0]    lajiPE_96_feature_out_3;
  wire       [7:0]    lajiPE_96_feature_out_4;
  wire       [7:0]    lajiPE_96_feature_out_5;
  wire       [7:0]    lajiPE_96_feature_out_6;
  wire       [7:0]    lajiPE_96_feature_out_7;
  wire       [7:0]    lajiPE_96_feature_out_8;
  wire       [7:0]    lajiPE_97_feature_out_0;
  wire       [7:0]    lajiPE_97_feature_out_1;
  wire       [7:0]    lajiPE_97_feature_out_2;
  wire       [7:0]    lajiPE_97_feature_out_3;
  wire       [7:0]    lajiPE_97_feature_out_4;
  wire       [7:0]    lajiPE_97_feature_out_5;
  wire       [7:0]    lajiPE_97_feature_out_6;
  wire       [7:0]    lajiPE_97_feature_out_7;
  wire       [7:0]    lajiPE_97_feature_out_8;
  wire       [7:0]    lajiPE_98_feature_out_0;
  wire       [7:0]    lajiPE_98_feature_out_1;
  wire       [7:0]    lajiPE_98_feature_out_2;
  wire       [7:0]    lajiPE_98_feature_out_3;
  wire       [7:0]    lajiPE_98_feature_out_4;
  wire       [7:0]    lajiPE_98_feature_out_5;
  wire       [7:0]    lajiPE_98_feature_out_6;
  wire       [7:0]    lajiPE_98_feature_out_7;
  wire       [7:0]    lajiPE_98_feature_out_8;
  wire       [7:0]    lajiPE_99_feature_out_0;
  wire       [7:0]    lajiPE_99_feature_out_1;
  wire       [7:0]    lajiPE_99_feature_out_2;
  wire       [7:0]    lajiPE_99_feature_out_3;
  wire       [7:0]    lajiPE_99_feature_out_4;
  wire       [7:0]    lajiPE_99_feature_out_5;
  wire       [7:0]    lajiPE_99_feature_out_6;
  wire       [7:0]    lajiPE_99_feature_out_7;
  wire       [7:0]    lajiPE_99_feature_out_8;
  wire       [7:0]    lajiPE_100_feature_out_0;
  wire       [7:0]    lajiPE_100_feature_out_1;
  wire       [7:0]    lajiPE_100_feature_out_2;
  wire       [7:0]    lajiPE_100_feature_out_3;
  wire       [7:0]    lajiPE_100_feature_out_4;
  wire       [7:0]    lajiPE_100_feature_out_5;
  wire       [7:0]    lajiPE_100_feature_out_6;
  wire       [7:0]    lajiPE_100_feature_out_7;
  wire       [7:0]    lajiPE_100_feature_out_8;
  wire       [7:0]    lajiPE_101_feature_out_0;
  wire       [7:0]    lajiPE_101_feature_out_1;
  wire       [7:0]    lajiPE_101_feature_out_2;
  wire       [7:0]    lajiPE_101_feature_out_3;
  wire       [7:0]    lajiPE_101_feature_out_4;
  wire       [7:0]    lajiPE_101_feature_out_5;
  wire       [7:0]    lajiPE_101_feature_out_6;
  wire       [7:0]    lajiPE_101_feature_out_7;
  wire       [7:0]    lajiPE_101_feature_out_8;
  wire       [7:0]    lajiPE_102_feature_out_0;
  wire       [7:0]    lajiPE_102_feature_out_1;
  wire       [7:0]    lajiPE_102_feature_out_2;
  wire       [7:0]    lajiPE_102_feature_out_3;
  wire       [7:0]    lajiPE_102_feature_out_4;
  wire       [7:0]    lajiPE_102_feature_out_5;
  wire       [7:0]    lajiPE_102_feature_out_6;
  wire       [7:0]    lajiPE_102_feature_out_7;
  wire       [7:0]    lajiPE_102_feature_out_8;
  wire       [7:0]    lajiPE_103_feature_out_0;
  wire       [7:0]    lajiPE_103_feature_out_1;
  wire       [7:0]    lajiPE_103_feature_out_2;
  wire       [7:0]    lajiPE_103_feature_out_3;
  wire       [7:0]    lajiPE_103_feature_out_4;
  wire       [7:0]    lajiPE_103_feature_out_5;
  wire       [7:0]    lajiPE_103_feature_out_6;
  wire       [7:0]    lajiPE_103_feature_out_7;
  wire       [7:0]    lajiPE_103_feature_out_8;
  wire       [7:0]    lajiPE_104_feature_out_0;
  wire       [7:0]    lajiPE_104_feature_out_1;
  wire       [7:0]    lajiPE_104_feature_out_2;
  wire       [7:0]    lajiPE_104_feature_out_3;
  wire       [7:0]    lajiPE_104_feature_out_4;
  wire       [7:0]    lajiPE_104_feature_out_5;
  wire       [7:0]    lajiPE_104_feature_out_6;
  wire       [7:0]    lajiPE_104_feature_out_7;
  wire       [7:0]    lajiPE_104_feature_out_8;
  wire       [7:0]    lajiPE_105_feature_out_0;
  wire       [7:0]    lajiPE_105_feature_out_1;
  wire       [7:0]    lajiPE_105_feature_out_2;
  wire       [7:0]    lajiPE_105_feature_out_3;
  wire       [7:0]    lajiPE_105_feature_out_4;
  wire       [7:0]    lajiPE_105_feature_out_5;
  wire       [7:0]    lajiPE_105_feature_out_6;
  wire       [7:0]    lajiPE_105_feature_out_7;
  wire       [7:0]    lajiPE_105_feature_out_8;
  wire       [7:0]    lajiPE_106_feature_out_0;
  wire       [7:0]    lajiPE_106_feature_out_1;
  wire       [7:0]    lajiPE_106_feature_out_2;
  wire       [7:0]    lajiPE_106_feature_out_3;
  wire       [7:0]    lajiPE_106_feature_out_4;
  wire       [7:0]    lajiPE_106_feature_out_5;
  wire       [7:0]    lajiPE_106_feature_out_6;
  wire       [7:0]    lajiPE_106_feature_out_7;
  wire       [7:0]    lajiPE_106_feature_out_8;
  wire       [7:0]    lajiPE_107_feature_out_0;
  wire       [7:0]    lajiPE_107_feature_out_1;
  wire       [7:0]    lajiPE_107_feature_out_2;
  wire       [7:0]    lajiPE_107_feature_out_3;
  wire       [7:0]    lajiPE_107_feature_out_4;
  wire       [7:0]    lajiPE_107_feature_out_5;
  wire       [7:0]    lajiPE_107_feature_out_6;
  wire       [7:0]    lajiPE_107_feature_out_7;
  wire       [7:0]    lajiPE_107_feature_out_8;
  wire       [7:0]    lajiPE_108_feature_out_0;
  wire       [7:0]    lajiPE_108_feature_out_1;
  wire       [7:0]    lajiPE_108_feature_out_2;
  wire       [7:0]    lajiPE_108_feature_out_3;
  wire       [7:0]    lajiPE_108_feature_out_4;
  wire       [7:0]    lajiPE_108_feature_out_5;
  wire       [7:0]    lajiPE_108_feature_out_6;
  wire       [7:0]    lajiPE_108_feature_out_7;
  wire       [7:0]    lajiPE_108_feature_out_8;
  wire       [7:0]    lajiPE_109_feature_out_0;
  wire       [7:0]    lajiPE_109_feature_out_1;
  wire       [7:0]    lajiPE_109_feature_out_2;
  wire       [7:0]    lajiPE_109_feature_out_3;
  wire       [7:0]    lajiPE_109_feature_out_4;
  wire       [7:0]    lajiPE_109_feature_out_5;
  wire       [7:0]    lajiPE_109_feature_out_6;
  wire       [7:0]    lajiPE_109_feature_out_7;
  wire       [7:0]    lajiPE_109_feature_out_8;
  wire       [7:0]    lajiPE_110_feature_out_0;
  wire       [7:0]    lajiPE_110_feature_out_1;
  wire       [7:0]    lajiPE_110_feature_out_2;
  wire       [7:0]    lajiPE_110_feature_out_3;
  wire       [7:0]    lajiPE_110_feature_out_4;
  wire       [7:0]    lajiPE_110_feature_out_5;
  wire       [7:0]    lajiPE_110_feature_out_6;
  wire       [7:0]    lajiPE_110_feature_out_7;
  wire       [7:0]    lajiPE_110_feature_out_8;
  wire       [7:0]    lajiPE_111_feature_out_0;
  wire       [7:0]    lajiPE_111_feature_out_1;
  wire       [7:0]    lajiPE_111_feature_out_2;
  wire       [7:0]    lajiPE_111_feature_out_3;
  wire       [7:0]    lajiPE_111_feature_out_4;
  wire       [7:0]    lajiPE_111_feature_out_5;
  wire       [7:0]    lajiPE_111_feature_out_6;
  wire       [7:0]    lajiPE_111_feature_out_7;
  wire       [7:0]    lajiPE_111_feature_out_8;
  wire       [7:0]    lajiPE_112_feature_out_0;
  wire       [7:0]    lajiPE_112_feature_out_1;
  wire       [7:0]    lajiPE_112_feature_out_2;
  wire       [7:0]    lajiPE_112_feature_out_3;
  wire       [7:0]    lajiPE_112_feature_out_4;
  wire       [7:0]    lajiPE_112_feature_out_5;
  wire       [7:0]    lajiPE_112_feature_out_6;
  wire       [7:0]    lajiPE_112_feature_out_7;
  wire       [7:0]    lajiPE_112_feature_out_8;
  wire       [7:0]    lajiPE_113_feature_out_0;
  wire       [7:0]    lajiPE_113_feature_out_1;
  wire       [7:0]    lajiPE_113_feature_out_2;
  wire       [7:0]    lajiPE_113_feature_out_3;
  wire       [7:0]    lajiPE_113_feature_out_4;
  wire       [7:0]    lajiPE_113_feature_out_5;
  wire       [7:0]    lajiPE_113_feature_out_6;
  wire       [7:0]    lajiPE_113_feature_out_7;
  wire       [7:0]    lajiPE_113_feature_out_8;
  wire       [7:0]    lajiPE_114_feature_out_0;
  wire       [7:0]    lajiPE_114_feature_out_1;
  wire       [7:0]    lajiPE_114_feature_out_2;
  wire       [7:0]    lajiPE_114_feature_out_3;
  wire       [7:0]    lajiPE_114_feature_out_4;
  wire       [7:0]    lajiPE_114_feature_out_5;
  wire       [7:0]    lajiPE_114_feature_out_6;
  wire       [7:0]    lajiPE_114_feature_out_7;
  wire       [7:0]    lajiPE_114_feature_out_8;
  wire       [7:0]    lajiPE_115_feature_out_0;
  wire       [7:0]    lajiPE_115_feature_out_1;
  wire       [7:0]    lajiPE_115_feature_out_2;
  wire       [7:0]    lajiPE_115_feature_out_3;
  wire       [7:0]    lajiPE_115_feature_out_4;
  wire       [7:0]    lajiPE_115_feature_out_5;
  wire       [7:0]    lajiPE_115_feature_out_6;
  wire       [7:0]    lajiPE_115_feature_out_7;
  wire       [7:0]    lajiPE_115_feature_out_8;
  wire       [7:0]    lajiPE_116_feature_out_0;
  wire       [7:0]    lajiPE_116_feature_out_1;
  wire       [7:0]    lajiPE_116_feature_out_2;
  wire       [7:0]    lajiPE_116_feature_out_3;
  wire       [7:0]    lajiPE_116_feature_out_4;
  wire       [7:0]    lajiPE_116_feature_out_5;
  wire       [7:0]    lajiPE_116_feature_out_6;
  wire       [7:0]    lajiPE_116_feature_out_7;
  wire       [7:0]    lajiPE_116_feature_out_8;
  wire       [7:0]    lajiPE_117_feature_out_0;
  wire       [7:0]    lajiPE_117_feature_out_1;
  wire       [7:0]    lajiPE_117_feature_out_2;
  wire       [7:0]    lajiPE_117_feature_out_3;
  wire       [7:0]    lajiPE_117_feature_out_4;
  wire       [7:0]    lajiPE_117_feature_out_5;
  wire       [7:0]    lajiPE_117_feature_out_6;
  wire       [7:0]    lajiPE_117_feature_out_7;
  wire       [7:0]    lajiPE_117_feature_out_8;
  wire       [7:0]    lajiPE_118_feature_out_0;
  wire       [7:0]    lajiPE_118_feature_out_1;
  wire       [7:0]    lajiPE_118_feature_out_2;
  wire       [7:0]    lajiPE_118_feature_out_3;
  wire       [7:0]    lajiPE_118_feature_out_4;
  wire       [7:0]    lajiPE_118_feature_out_5;
  wire       [7:0]    lajiPE_118_feature_out_6;
  wire       [7:0]    lajiPE_118_feature_out_7;
  wire       [7:0]    lajiPE_118_feature_out_8;
  wire       [7:0]    lajiPE_119_feature_out_0;
  wire       [7:0]    lajiPE_119_feature_out_1;
  wire       [7:0]    lajiPE_119_feature_out_2;
  wire       [7:0]    lajiPE_119_feature_out_3;
  wire       [7:0]    lajiPE_119_feature_out_4;
  wire       [7:0]    lajiPE_119_feature_out_5;
  wire       [7:0]    lajiPE_119_feature_out_6;
  wire       [7:0]    lajiPE_119_feature_out_7;
  wire       [7:0]    lajiPE_119_feature_out_8;
  wire       [7:0]    lajiPE_120_feature_out_0;
  wire       [7:0]    lajiPE_120_feature_out_1;
  wire       [7:0]    lajiPE_120_feature_out_2;
  wire       [7:0]    lajiPE_120_feature_out_3;
  wire       [7:0]    lajiPE_120_feature_out_4;
  wire       [7:0]    lajiPE_120_feature_out_5;
  wire       [7:0]    lajiPE_120_feature_out_6;
  wire       [7:0]    lajiPE_120_feature_out_7;
  wire       [7:0]    lajiPE_120_feature_out_8;
  wire       [7:0]    lajiPE_121_feature_out_0;
  wire       [7:0]    lajiPE_121_feature_out_1;
  wire       [7:0]    lajiPE_121_feature_out_2;
  wire       [7:0]    lajiPE_121_feature_out_3;
  wire       [7:0]    lajiPE_121_feature_out_4;
  wire       [7:0]    lajiPE_121_feature_out_5;
  wire       [7:0]    lajiPE_121_feature_out_6;
  wire       [7:0]    lajiPE_121_feature_out_7;
  wire       [7:0]    lajiPE_121_feature_out_8;
  wire       [7:0]    lajiPE_122_feature_out_0;
  wire       [7:0]    lajiPE_122_feature_out_1;
  wire       [7:0]    lajiPE_122_feature_out_2;
  wire       [7:0]    lajiPE_122_feature_out_3;
  wire       [7:0]    lajiPE_122_feature_out_4;
  wire       [7:0]    lajiPE_122_feature_out_5;
  wire       [7:0]    lajiPE_122_feature_out_6;
  wire       [7:0]    lajiPE_122_feature_out_7;
  wire       [7:0]    lajiPE_122_feature_out_8;
  wire       [7:0]    lajiPE_123_feature_out_0;
  wire       [7:0]    lajiPE_123_feature_out_1;
  wire       [7:0]    lajiPE_123_feature_out_2;
  wire       [7:0]    lajiPE_123_feature_out_3;
  wire       [7:0]    lajiPE_123_feature_out_4;
  wire       [7:0]    lajiPE_123_feature_out_5;
  wire       [7:0]    lajiPE_123_feature_out_6;
  wire       [7:0]    lajiPE_123_feature_out_7;
  wire       [7:0]    lajiPE_123_feature_out_8;
  wire       [7:0]    lajiPE_124_feature_out_0;
  wire       [7:0]    lajiPE_124_feature_out_1;
  wire       [7:0]    lajiPE_124_feature_out_2;
  wire       [7:0]    lajiPE_124_feature_out_3;
  wire       [7:0]    lajiPE_124_feature_out_4;
  wire       [7:0]    lajiPE_124_feature_out_5;
  wire       [7:0]    lajiPE_124_feature_out_6;
  wire       [7:0]    lajiPE_124_feature_out_7;
  wire       [7:0]    lajiPE_124_feature_out_8;
  wire       [7:0]    lajiPE_125_feature_out_0;
  wire       [7:0]    lajiPE_125_feature_out_1;
  wire       [7:0]    lajiPE_125_feature_out_2;
  wire       [7:0]    lajiPE_125_feature_out_3;
  wire       [7:0]    lajiPE_125_feature_out_4;
  wire       [7:0]    lajiPE_125_feature_out_5;
  wire       [7:0]    lajiPE_125_feature_out_6;
  wire       [7:0]    lajiPE_125_feature_out_7;
  wire       [7:0]    lajiPE_125_feature_out_8;
  wire       [7:0]    lajiPE_126_feature_out_0;
  wire       [7:0]    lajiPE_126_feature_out_1;
  wire       [7:0]    lajiPE_126_feature_out_2;
  wire       [7:0]    lajiPE_126_feature_out_3;
  wire       [7:0]    lajiPE_126_feature_out_4;
  wire       [7:0]    lajiPE_126_feature_out_5;
  wire       [7:0]    lajiPE_126_feature_out_6;
  wire       [7:0]    lajiPE_126_feature_out_7;
  wire       [7:0]    lajiPE_126_feature_out_8;
  wire       [7:0]    lajiPE_127_feature_out_0;
  wire       [7:0]    lajiPE_127_feature_out_1;
  wire       [7:0]    lajiPE_127_feature_out_2;
  wire       [7:0]    lajiPE_127_feature_out_3;
  wire       [7:0]    lajiPE_127_feature_out_4;
  wire       [7:0]    lajiPE_127_feature_out_5;
  wire       [7:0]    lajiPE_127_feature_out_6;
  wire       [7:0]    lajiPE_127_feature_out_7;
  wire       [7:0]    lajiPE_127_feature_out_8;
  reg        [6:0]    Weight_CE_c;
  reg        [6:0]    Feature_CE_c;
  wire       [7:0]    Feature_cas_0_0_0;
  wire       [7:0]    Feature_cas_0_0_1;
  wire       [7:0]    Feature_cas_0_0_2;
  wire       [7:0]    Feature_cas_0_0_3;
  wire       [7:0]    Feature_cas_0_0_4;
  wire       [7:0]    Feature_cas_0_0_5;
  wire       [7:0]    Feature_cas_0_0_6;
  wire       [7:0]    Feature_cas_0_0_7;
  wire       [7:0]    Feature_cas_0_0_8;
  wire       [7:0]    Feature_cas_0_1_0;
  wire       [7:0]    Feature_cas_0_1_1;
  wire       [7:0]    Feature_cas_0_1_2;
  wire       [7:0]    Feature_cas_0_1_3;
  wire       [7:0]    Feature_cas_0_1_4;
  wire       [7:0]    Feature_cas_0_1_5;
  wire       [7:0]    Feature_cas_0_1_6;
  wire       [7:0]    Feature_cas_0_1_7;
  wire       [7:0]    Feature_cas_0_1_8;
  wire       [7:0]    Feature_cas_0_2_0;
  wire       [7:0]    Feature_cas_0_2_1;
  wire       [7:0]    Feature_cas_0_2_2;
  wire       [7:0]    Feature_cas_0_2_3;
  wire       [7:0]    Feature_cas_0_2_4;
  wire       [7:0]    Feature_cas_0_2_5;
  wire       [7:0]    Feature_cas_0_2_6;
  wire       [7:0]    Feature_cas_0_2_7;
  wire       [7:0]    Feature_cas_0_2_8;
  wire       [7:0]    Feature_cas_0_3_0;
  wire       [7:0]    Feature_cas_0_3_1;
  wire       [7:0]    Feature_cas_0_3_2;
  wire       [7:0]    Feature_cas_0_3_3;
  wire       [7:0]    Feature_cas_0_3_4;
  wire       [7:0]    Feature_cas_0_3_5;
  wire       [7:0]    Feature_cas_0_3_6;
  wire       [7:0]    Feature_cas_0_3_7;
  wire       [7:0]    Feature_cas_0_3_8;
  wire       [7:0]    Feature_cas_0_4_0;
  wire       [7:0]    Feature_cas_0_4_1;
  wire       [7:0]    Feature_cas_0_4_2;
  wire       [7:0]    Feature_cas_0_4_3;
  wire       [7:0]    Feature_cas_0_4_4;
  wire       [7:0]    Feature_cas_0_4_5;
  wire       [7:0]    Feature_cas_0_4_6;
  wire       [7:0]    Feature_cas_0_4_7;
  wire       [7:0]    Feature_cas_0_4_8;
  wire       [7:0]    Feature_cas_0_5_0;
  wire       [7:0]    Feature_cas_0_5_1;
  wire       [7:0]    Feature_cas_0_5_2;
  wire       [7:0]    Feature_cas_0_5_3;
  wire       [7:0]    Feature_cas_0_5_4;
  wire       [7:0]    Feature_cas_0_5_5;
  wire       [7:0]    Feature_cas_0_5_6;
  wire       [7:0]    Feature_cas_0_5_7;
  wire       [7:0]    Feature_cas_0_5_8;
  wire       [7:0]    Feature_cas_0_6_0;
  wire       [7:0]    Feature_cas_0_6_1;
  wire       [7:0]    Feature_cas_0_6_2;
  wire       [7:0]    Feature_cas_0_6_3;
  wire       [7:0]    Feature_cas_0_6_4;
  wire       [7:0]    Feature_cas_0_6_5;
  wire       [7:0]    Feature_cas_0_6_6;
  wire       [7:0]    Feature_cas_0_6_7;
  wire       [7:0]    Feature_cas_0_6_8;
  wire       [7:0]    Feature_cas_0_7_0;
  wire       [7:0]    Feature_cas_0_7_1;
  wire       [7:0]    Feature_cas_0_7_2;
  wire       [7:0]    Feature_cas_0_7_3;
  wire       [7:0]    Feature_cas_0_7_4;
  wire       [7:0]    Feature_cas_0_7_5;
  wire       [7:0]    Feature_cas_0_7_6;
  wire       [7:0]    Feature_cas_0_7_7;
  wire       [7:0]    Feature_cas_0_7_8;
  wire       [7:0]    Feature_cas_1_0_0;
  wire       [7:0]    Feature_cas_1_0_1;
  wire       [7:0]    Feature_cas_1_0_2;
  wire       [7:0]    Feature_cas_1_0_3;
  wire       [7:0]    Feature_cas_1_0_4;
  wire       [7:0]    Feature_cas_1_0_5;
  wire       [7:0]    Feature_cas_1_0_6;
  wire       [7:0]    Feature_cas_1_0_7;
  wire       [7:0]    Feature_cas_1_0_8;
  wire       [7:0]    Feature_cas_1_1_0;
  wire       [7:0]    Feature_cas_1_1_1;
  wire       [7:0]    Feature_cas_1_1_2;
  wire       [7:0]    Feature_cas_1_1_3;
  wire       [7:0]    Feature_cas_1_1_4;
  wire       [7:0]    Feature_cas_1_1_5;
  wire       [7:0]    Feature_cas_1_1_6;
  wire       [7:0]    Feature_cas_1_1_7;
  wire       [7:0]    Feature_cas_1_1_8;
  wire       [7:0]    Feature_cas_1_2_0;
  wire       [7:0]    Feature_cas_1_2_1;
  wire       [7:0]    Feature_cas_1_2_2;
  wire       [7:0]    Feature_cas_1_2_3;
  wire       [7:0]    Feature_cas_1_2_4;
  wire       [7:0]    Feature_cas_1_2_5;
  wire       [7:0]    Feature_cas_1_2_6;
  wire       [7:0]    Feature_cas_1_2_7;
  wire       [7:0]    Feature_cas_1_2_8;
  wire       [7:0]    Feature_cas_1_3_0;
  wire       [7:0]    Feature_cas_1_3_1;
  wire       [7:0]    Feature_cas_1_3_2;
  wire       [7:0]    Feature_cas_1_3_3;
  wire       [7:0]    Feature_cas_1_3_4;
  wire       [7:0]    Feature_cas_1_3_5;
  wire       [7:0]    Feature_cas_1_3_6;
  wire       [7:0]    Feature_cas_1_3_7;
  wire       [7:0]    Feature_cas_1_3_8;
  wire       [7:0]    Feature_cas_1_4_0;
  wire       [7:0]    Feature_cas_1_4_1;
  wire       [7:0]    Feature_cas_1_4_2;
  wire       [7:0]    Feature_cas_1_4_3;
  wire       [7:0]    Feature_cas_1_4_4;
  wire       [7:0]    Feature_cas_1_4_5;
  wire       [7:0]    Feature_cas_1_4_6;
  wire       [7:0]    Feature_cas_1_4_7;
  wire       [7:0]    Feature_cas_1_4_8;
  wire       [7:0]    Feature_cas_1_5_0;
  wire       [7:0]    Feature_cas_1_5_1;
  wire       [7:0]    Feature_cas_1_5_2;
  wire       [7:0]    Feature_cas_1_5_3;
  wire       [7:0]    Feature_cas_1_5_4;
  wire       [7:0]    Feature_cas_1_5_5;
  wire       [7:0]    Feature_cas_1_5_6;
  wire       [7:0]    Feature_cas_1_5_7;
  wire       [7:0]    Feature_cas_1_5_8;
  wire       [7:0]    Feature_cas_1_6_0;
  wire       [7:0]    Feature_cas_1_6_1;
  wire       [7:0]    Feature_cas_1_6_2;
  wire       [7:0]    Feature_cas_1_6_3;
  wire       [7:0]    Feature_cas_1_6_4;
  wire       [7:0]    Feature_cas_1_6_5;
  wire       [7:0]    Feature_cas_1_6_6;
  wire       [7:0]    Feature_cas_1_6_7;
  wire       [7:0]    Feature_cas_1_6_8;
  wire       [7:0]    Feature_cas_1_7_0;
  wire       [7:0]    Feature_cas_1_7_1;
  wire       [7:0]    Feature_cas_1_7_2;
  wire       [7:0]    Feature_cas_1_7_3;
  wire       [7:0]    Feature_cas_1_7_4;
  wire       [7:0]    Feature_cas_1_7_5;
  wire       [7:0]    Feature_cas_1_7_6;
  wire       [7:0]    Feature_cas_1_7_7;
  wire       [7:0]    Feature_cas_1_7_8;
  wire       [7:0]    Feature_cas_2_0_0;
  wire       [7:0]    Feature_cas_2_0_1;
  wire       [7:0]    Feature_cas_2_0_2;
  wire       [7:0]    Feature_cas_2_0_3;
  wire       [7:0]    Feature_cas_2_0_4;
  wire       [7:0]    Feature_cas_2_0_5;
  wire       [7:0]    Feature_cas_2_0_6;
  wire       [7:0]    Feature_cas_2_0_7;
  wire       [7:0]    Feature_cas_2_0_8;
  wire       [7:0]    Feature_cas_2_1_0;
  wire       [7:0]    Feature_cas_2_1_1;
  wire       [7:0]    Feature_cas_2_1_2;
  wire       [7:0]    Feature_cas_2_1_3;
  wire       [7:0]    Feature_cas_2_1_4;
  wire       [7:0]    Feature_cas_2_1_5;
  wire       [7:0]    Feature_cas_2_1_6;
  wire       [7:0]    Feature_cas_2_1_7;
  wire       [7:0]    Feature_cas_2_1_8;
  wire       [7:0]    Feature_cas_2_2_0;
  wire       [7:0]    Feature_cas_2_2_1;
  wire       [7:0]    Feature_cas_2_2_2;
  wire       [7:0]    Feature_cas_2_2_3;
  wire       [7:0]    Feature_cas_2_2_4;
  wire       [7:0]    Feature_cas_2_2_5;
  wire       [7:0]    Feature_cas_2_2_6;
  wire       [7:0]    Feature_cas_2_2_7;
  wire       [7:0]    Feature_cas_2_2_8;
  wire       [7:0]    Feature_cas_2_3_0;
  wire       [7:0]    Feature_cas_2_3_1;
  wire       [7:0]    Feature_cas_2_3_2;
  wire       [7:0]    Feature_cas_2_3_3;
  wire       [7:0]    Feature_cas_2_3_4;
  wire       [7:0]    Feature_cas_2_3_5;
  wire       [7:0]    Feature_cas_2_3_6;
  wire       [7:0]    Feature_cas_2_3_7;
  wire       [7:0]    Feature_cas_2_3_8;
  wire       [7:0]    Feature_cas_2_4_0;
  wire       [7:0]    Feature_cas_2_4_1;
  wire       [7:0]    Feature_cas_2_4_2;
  wire       [7:0]    Feature_cas_2_4_3;
  wire       [7:0]    Feature_cas_2_4_4;
  wire       [7:0]    Feature_cas_2_4_5;
  wire       [7:0]    Feature_cas_2_4_6;
  wire       [7:0]    Feature_cas_2_4_7;
  wire       [7:0]    Feature_cas_2_4_8;
  wire       [7:0]    Feature_cas_2_5_0;
  wire       [7:0]    Feature_cas_2_5_1;
  wire       [7:0]    Feature_cas_2_5_2;
  wire       [7:0]    Feature_cas_2_5_3;
  wire       [7:0]    Feature_cas_2_5_4;
  wire       [7:0]    Feature_cas_2_5_5;
  wire       [7:0]    Feature_cas_2_5_6;
  wire       [7:0]    Feature_cas_2_5_7;
  wire       [7:0]    Feature_cas_2_5_8;
  wire       [7:0]    Feature_cas_2_6_0;
  wire       [7:0]    Feature_cas_2_6_1;
  wire       [7:0]    Feature_cas_2_6_2;
  wire       [7:0]    Feature_cas_2_6_3;
  wire       [7:0]    Feature_cas_2_6_4;
  wire       [7:0]    Feature_cas_2_6_5;
  wire       [7:0]    Feature_cas_2_6_6;
  wire       [7:0]    Feature_cas_2_6_7;
  wire       [7:0]    Feature_cas_2_6_8;
  wire       [7:0]    Feature_cas_2_7_0;
  wire       [7:0]    Feature_cas_2_7_1;
  wire       [7:0]    Feature_cas_2_7_2;
  wire       [7:0]    Feature_cas_2_7_3;
  wire       [7:0]    Feature_cas_2_7_4;
  wire       [7:0]    Feature_cas_2_7_5;
  wire       [7:0]    Feature_cas_2_7_6;
  wire       [7:0]    Feature_cas_2_7_7;
  wire       [7:0]    Feature_cas_2_7_8;
  wire       [7:0]    Feature_cas_3_0_0;
  wire       [7:0]    Feature_cas_3_0_1;
  wire       [7:0]    Feature_cas_3_0_2;
  wire       [7:0]    Feature_cas_3_0_3;
  wire       [7:0]    Feature_cas_3_0_4;
  wire       [7:0]    Feature_cas_3_0_5;
  wire       [7:0]    Feature_cas_3_0_6;
  wire       [7:0]    Feature_cas_3_0_7;
  wire       [7:0]    Feature_cas_3_0_8;
  wire       [7:0]    Feature_cas_3_1_0;
  wire       [7:0]    Feature_cas_3_1_1;
  wire       [7:0]    Feature_cas_3_1_2;
  wire       [7:0]    Feature_cas_3_1_3;
  wire       [7:0]    Feature_cas_3_1_4;
  wire       [7:0]    Feature_cas_3_1_5;
  wire       [7:0]    Feature_cas_3_1_6;
  wire       [7:0]    Feature_cas_3_1_7;
  wire       [7:0]    Feature_cas_3_1_8;
  wire       [7:0]    Feature_cas_3_2_0;
  wire       [7:0]    Feature_cas_3_2_1;
  wire       [7:0]    Feature_cas_3_2_2;
  wire       [7:0]    Feature_cas_3_2_3;
  wire       [7:0]    Feature_cas_3_2_4;
  wire       [7:0]    Feature_cas_3_2_5;
  wire       [7:0]    Feature_cas_3_2_6;
  wire       [7:0]    Feature_cas_3_2_7;
  wire       [7:0]    Feature_cas_3_2_8;
  wire       [7:0]    Feature_cas_3_3_0;
  wire       [7:0]    Feature_cas_3_3_1;
  wire       [7:0]    Feature_cas_3_3_2;
  wire       [7:0]    Feature_cas_3_3_3;
  wire       [7:0]    Feature_cas_3_3_4;
  wire       [7:0]    Feature_cas_3_3_5;
  wire       [7:0]    Feature_cas_3_3_6;
  wire       [7:0]    Feature_cas_3_3_7;
  wire       [7:0]    Feature_cas_3_3_8;
  wire       [7:0]    Feature_cas_3_4_0;
  wire       [7:0]    Feature_cas_3_4_1;
  wire       [7:0]    Feature_cas_3_4_2;
  wire       [7:0]    Feature_cas_3_4_3;
  wire       [7:0]    Feature_cas_3_4_4;
  wire       [7:0]    Feature_cas_3_4_5;
  wire       [7:0]    Feature_cas_3_4_6;
  wire       [7:0]    Feature_cas_3_4_7;
  wire       [7:0]    Feature_cas_3_4_8;
  wire       [7:0]    Feature_cas_3_5_0;
  wire       [7:0]    Feature_cas_3_5_1;
  wire       [7:0]    Feature_cas_3_5_2;
  wire       [7:0]    Feature_cas_3_5_3;
  wire       [7:0]    Feature_cas_3_5_4;
  wire       [7:0]    Feature_cas_3_5_5;
  wire       [7:0]    Feature_cas_3_5_6;
  wire       [7:0]    Feature_cas_3_5_7;
  wire       [7:0]    Feature_cas_3_5_8;
  wire       [7:0]    Feature_cas_3_6_0;
  wire       [7:0]    Feature_cas_3_6_1;
  wire       [7:0]    Feature_cas_3_6_2;
  wire       [7:0]    Feature_cas_3_6_3;
  wire       [7:0]    Feature_cas_3_6_4;
  wire       [7:0]    Feature_cas_3_6_5;
  wire       [7:0]    Feature_cas_3_6_6;
  wire       [7:0]    Feature_cas_3_6_7;
  wire       [7:0]    Feature_cas_3_6_8;
  wire       [7:0]    Feature_cas_3_7_0;
  wire       [7:0]    Feature_cas_3_7_1;
  wire       [7:0]    Feature_cas_3_7_2;
  wire       [7:0]    Feature_cas_3_7_3;
  wire       [7:0]    Feature_cas_3_7_4;
  wire       [7:0]    Feature_cas_3_7_5;
  wire       [7:0]    Feature_cas_3_7_6;
  wire       [7:0]    Feature_cas_3_7_7;
  wire       [7:0]    Feature_cas_3_7_8;
  wire       [7:0]    Feature_cas_4_0_0;
  wire       [7:0]    Feature_cas_4_0_1;
  wire       [7:0]    Feature_cas_4_0_2;
  wire       [7:0]    Feature_cas_4_0_3;
  wire       [7:0]    Feature_cas_4_0_4;
  wire       [7:0]    Feature_cas_4_0_5;
  wire       [7:0]    Feature_cas_4_0_6;
  wire       [7:0]    Feature_cas_4_0_7;
  wire       [7:0]    Feature_cas_4_0_8;
  wire       [7:0]    Feature_cas_4_1_0;
  wire       [7:0]    Feature_cas_4_1_1;
  wire       [7:0]    Feature_cas_4_1_2;
  wire       [7:0]    Feature_cas_4_1_3;
  wire       [7:0]    Feature_cas_4_1_4;
  wire       [7:0]    Feature_cas_4_1_5;
  wire       [7:0]    Feature_cas_4_1_6;
  wire       [7:0]    Feature_cas_4_1_7;
  wire       [7:0]    Feature_cas_4_1_8;
  wire       [7:0]    Feature_cas_4_2_0;
  wire       [7:0]    Feature_cas_4_2_1;
  wire       [7:0]    Feature_cas_4_2_2;
  wire       [7:0]    Feature_cas_4_2_3;
  wire       [7:0]    Feature_cas_4_2_4;
  wire       [7:0]    Feature_cas_4_2_5;
  wire       [7:0]    Feature_cas_4_2_6;
  wire       [7:0]    Feature_cas_4_2_7;
  wire       [7:0]    Feature_cas_4_2_8;
  wire       [7:0]    Feature_cas_4_3_0;
  wire       [7:0]    Feature_cas_4_3_1;
  wire       [7:0]    Feature_cas_4_3_2;
  wire       [7:0]    Feature_cas_4_3_3;
  wire       [7:0]    Feature_cas_4_3_4;
  wire       [7:0]    Feature_cas_4_3_5;
  wire       [7:0]    Feature_cas_4_3_6;
  wire       [7:0]    Feature_cas_4_3_7;
  wire       [7:0]    Feature_cas_4_3_8;
  wire       [7:0]    Feature_cas_4_4_0;
  wire       [7:0]    Feature_cas_4_4_1;
  wire       [7:0]    Feature_cas_4_4_2;
  wire       [7:0]    Feature_cas_4_4_3;
  wire       [7:0]    Feature_cas_4_4_4;
  wire       [7:0]    Feature_cas_4_4_5;
  wire       [7:0]    Feature_cas_4_4_6;
  wire       [7:0]    Feature_cas_4_4_7;
  wire       [7:0]    Feature_cas_4_4_8;
  wire       [7:0]    Feature_cas_4_5_0;
  wire       [7:0]    Feature_cas_4_5_1;
  wire       [7:0]    Feature_cas_4_5_2;
  wire       [7:0]    Feature_cas_4_5_3;
  wire       [7:0]    Feature_cas_4_5_4;
  wire       [7:0]    Feature_cas_4_5_5;
  wire       [7:0]    Feature_cas_4_5_6;
  wire       [7:0]    Feature_cas_4_5_7;
  wire       [7:0]    Feature_cas_4_5_8;
  wire       [7:0]    Feature_cas_4_6_0;
  wire       [7:0]    Feature_cas_4_6_1;
  wire       [7:0]    Feature_cas_4_6_2;
  wire       [7:0]    Feature_cas_4_6_3;
  wire       [7:0]    Feature_cas_4_6_4;
  wire       [7:0]    Feature_cas_4_6_5;
  wire       [7:0]    Feature_cas_4_6_6;
  wire       [7:0]    Feature_cas_4_6_7;
  wire       [7:0]    Feature_cas_4_6_8;
  wire       [7:0]    Feature_cas_4_7_0;
  wire       [7:0]    Feature_cas_4_7_1;
  wire       [7:0]    Feature_cas_4_7_2;
  wire       [7:0]    Feature_cas_4_7_3;
  wire       [7:0]    Feature_cas_4_7_4;
  wire       [7:0]    Feature_cas_4_7_5;
  wire       [7:0]    Feature_cas_4_7_6;
  wire       [7:0]    Feature_cas_4_7_7;
  wire       [7:0]    Feature_cas_4_7_8;
  wire       [7:0]    Feature_cas_5_0_0;
  wire       [7:0]    Feature_cas_5_0_1;
  wire       [7:0]    Feature_cas_5_0_2;
  wire       [7:0]    Feature_cas_5_0_3;
  wire       [7:0]    Feature_cas_5_0_4;
  wire       [7:0]    Feature_cas_5_0_5;
  wire       [7:0]    Feature_cas_5_0_6;
  wire       [7:0]    Feature_cas_5_0_7;
  wire       [7:0]    Feature_cas_5_0_8;
  wire       [7:0]    Feature_cas_5_1_0;
  wire       [7:0]    Feature_cas_5_1_1;
  wire       [7:0]    Feature_cas_5_1_2;
  wire       [7:0]    Feature_cas_5_1_3;
  wire       [7:0]    Feature_cas_5_1_4;
  wire       [7:0]    Feature_cas_5_1_5;
  wire       [7:0]    Feature_cas_5_1_6;
  wire       [7:0]    Feature_cas_5_1_7;
  wire       [7:0]    Feature_cas_5_1_8;
  wire       [7:0]    Feature_cas_5_2_0;
  wire       [7:0]    Feature_cas_5_2_1;
  wire       [7:0]    Feature_cas_5_2_2;
  wire       [7:0]    Feature_cas_5_2_3;
  wire       [7:0]    Feature_cas_5_2_4;
  wire       [7:0]    Feature_cas_5_2_5;
  wire       [7:0]    Feature_cas_5_2_6;
  wire       [7:0]    Feature_cas_5_2_7;
  wire       [7:0]    Feature_cas_5_2_8;
  wire       [7:0]    Feature_cas_5_3_0;
  wire       [7:0]    Feature_cas_5_3_1;
  wire       [7:0]    Feature_cas_5_3_2;
  wire       [7:0]    Feature_cas_5_3_3;
  wire       [7:0]    Feature_cas_5_3_4;
  wire       [7:0]    Feature_cas_5_3_5;
  wire       [7:0]    Feature_cas_5_3_6;
  wire       [7:0]    Feature_cas_5_3_7;
  wire       [7:0]    Feature_cas_5_3_8;
  wire       [7:0]    Feature_cas_5_4_0;
  wire       [7:0]    Feature_cas_5_4_1;
  wire       [7:0]    Feature_cas_5_4_2;
  wire       [7:0]    Feature_cas_5_4_3;
  wire       [7:0]    Feature_cas_5_4_4;
  wire       [7:0]    Feature_cas_5_4_5;
  wire       [7:0]    Feature_cas_5_4_6;
  wire       [7:0]    Feature_cas_5_4_7;
  wire       [7:0]    Feature_cas_5_4_8;
  wire       [7:0]    Feature_cas_5_5_0;
  wire       [7:0]    Feature_cas_5_5_1;
  wire       [7:0]    Feature_cas_5_5_2;
  wire       [7:0]    Feature_cas_5_5_3;
  wire       [7:0]    Feature_cas_5_5_4;
  wire       [7:0]    Feature_cas_5_5_5;
  wire       [7:0]    Feature_cas_5_5_6;
  wire       [7:0]    Feature_cas_5_5_7;
  wire       [7:0]    Feature_cas_5_5_8;
  wire       [7:0]    Feature_cas_5_6_0;
  wire       [7:0]    Feature_cas_5_6_1;
  wire       [7:0]    Feature_cas_5_6_2;
  wire       [7:0]    Feature_cas_5_6_3;
  wire       [7:0]    Feature_cas_5_6_4;
  wire       [7:0]    Feature_cas_5_6_5;
  wire       [7:0]    Feature_cas_5_6_6;
  wire       [7:0]    Feature_cas_5_6_7;
  wire       [7:0]    Feature_cas_5_6_8;
  wire       [7:0]    Feature_cas_5_7_0;
  wire       [7:0]    Feature_cas_5_7_1;
  wire       [7:0]    Feature_cas_5_7_2;
  wire       [7:0]    Feature_cas_5_7_3;
  wire       [7:0]    Feature_cas_5_7_4;
  wire       [7:0]    Feature_cas_5_7_5;
  wire       [7:0]    Feature_cas_5_7_6;
  wire       [7:0]    Feature_cas_5_7_7;
  wire       [7:0]    Feature_cas_5_7_8;
  wire       [7:0]    Feature_cas_6_0_0;
  wire       [7:0]    Feature_cas_6_0_1;
  wire       [7:0]    Feature_cas_6_0_2;
  wire       [7:0]    Feature_cas_6_0_3;
  wire       [7:0]    Feature_cas_6_0_4;
  wire       [7:0]    Feature_cas_6_0_5;
  wire       [7:0]    Feature_cas_6_0_6;
  wire       [7:0]    Feature_cas_6_0_7;
  wire       [7:0]    Feature_cas_6_0_8;
  wire       [7:0]    Feature_cas_6_1_0;
  wire       [7:0]    Feature_cas_6_1_1;
  wire       [7:0]    Feature_cas_6_1_2;
  wire       [7:0]    Feature_cas_6_1_3;
  wire       [7:0]    Feature_cas_6_1_4;
  wire       [7:0]    Feature_cas_6_1_5;
  wire       [7:0]    Feature_cas_6_1_6;
  wire       [7:0]    Feature_cas_6_1_7;
  wire       [7:0]    Feature_cas_6_1_8;
  wire       [7:0]    Feature_cas_6_2_0;
  wire       [7:0]    Feature_cas_6_2_1;
  wire       [7:0]    Feature_cas_6_2_2;
  wire       [7:0]    Feature_cas_6_2_3;
  wire       [7:0]    Feature_cas_6_2_4;
  wire       [7:0]    Feature_cas_6_2_5;
  wire       [7:0]    Feature_cas_6_2_6;
  wire       [7:0]    Feature_cas_6_2_7;
  wire       [7:0]    Feature_cas_6_2_8;
  wire       [7:0]    Feature_cas_6_3_0;
  wire       [7:0]    Feature_cas_6_3_1;
  wire       [7:0]    Feature_cas_6_3_2;
  wire       [7:0]    Feature_cas_6_3_3;
  wire       [7:0]    Feature_cas_6_3_4;
  wire       [7:0]    Feature_cas_6_3_5;
  wire       [7:0]    Feature_cas_6_3_6;
  wire       [7:0]    Feature_cas_6_3_7;
  wire       [7:0]    Feature_cas_6_3_8;
  wire       [7:0]    Feature_cas_6_4_0;
  wire       [7:0]    Feature_cas_6_4_1;
  wire       [7:0]    Feature_cas_6_4_2;
  wire       [7:0]    Feature_cas_6_4_3;
  wire       [7:0]    Feature_cas_6_4_4;
  wire       [7:0]    Feature_cas_6_4_5;
  wire       [7:0]    Feature_cas_6_4_6;
  wire       [7:0]    Feature_cas_6_4_7;
  wire       [7:0]    Feature_cas_6_4_8;
  wire       [7:0]    Feature_cas_6_5_0;
  wire       [7:0]    Feature_cas_6_5_1;
  wire       [7:0]    Feature_cas_6_5_2;
  wire       [7:0]    Feature_cas_6_5_3;
  wire       [7:0]    Feature_cas_6_5_4;
  wire       [7:0]    Feature_cas_6_5_5;
  wire       [7:0]    Feature_cas_6_5_6;
  wire       [7:0]    Feature_cas_6_5_7;
  wire       [7:0]    Feature_cas_6_5_8;
  wire       [7:0]    Feature_cas_6_6_0;
  wire       [7:0]    Feature_cas_6_6_1;
  wire       [7:0]    Feature_cas_6_6_2;
  wire       [7:0]    Feature_cas_6_6_3;
  wire       [7:0]    Feature_cas_6_6_4;
  wire       [7:0]    Feature_cas_6_6_5;
  wire       [7:0]    Feature_cas_6_6_6;
  wire       [7:0]    Feature_cas_6_6_7;
  wire       [7:0]    Feature_cas_6_6_8;
  wire       [7:0]    Feature_cas_6_7_0;
  wire       [7:0]    Feature_cas_6_7_1;
  wire       [7:0]    Feature_cas_6_7_2;
  wire       [7:0]    Feature_cas_6_7_3;
  wire       [7:0]    Feature_cas_6_7_4;
  wire       [7:0]    Feature_cas_6_7_5;
  wire       [7:0]    Feature_cas_6_7_6;
  wire       [7:0]    Feature_cas_6_7_7;
  wire       [7:0]    Feature_cas_6_7_8;
  wire       [7:0]    Feature_cas_7_0_0;
  wire       [7:0]    Feature_cas_7_0_1;
  wire       [7:0]    Feature_cas_7_0_2;
  wire       [7:0]    Feature_cas_7_0_3;
  wire       [7:0]    Feature_cas_7_0_4;
  wire       [7:0]    Feature_cas_7_0_5;
  wire       [7:0]    Feature_cas_7_0_6;
  wire       [7:0]    Feature_cas_7_0_7;
  wire       [7:0]    Feature_cas_7_0_8;
  wire       [7:0]    Feature_cas_7_1_0;
  wire       [7:0]    Feature_cas_7_1_1;
  wire       [7:0]    Feature_cas_7_1_2;
  wire       [7:0]    Feature_cas_7_1_3;
  wire       [7:0]    Feature_cas_7_1_4;
  wire       [7:0]    Feature_cas_7_1_5;
  wire       [7:0]    Feature_cas_7_1_6;
  wire       [7:0]    Feature_cas_7_1_7;
  wire       [7:0]    Feature_cas_7_1_8;
  wire       [7:0]    Feature_cas_7_2_0;
  wire       [7:0]    Feature_cas_7_2_1;
  wire       [7:0]    Feature_cas_7_2_2;
  wire       [7:0]    Feature_cas_7_2_3;
  wire       [7:0]    Feature_cas_7_2_4;
  wire       [7:0]    Feature_cas_7_2_5;
  wire       [7:0]    Feature_cas_7_2_6;
  wire       [7:0]    Feature_cas_7_2_7;
  wire       [7:0]    Feature_cas_7_2_8;
  wire       [7:0]    Feature_cas_7_3_0;
  wire       [7:0]    Feature_cas_7_3_1;
  wire       [7:0]    Feature_cas_7_3_2;
  wire       [7:0]    Feature_cas_7_3_3;
  wire       [7:0]    Feature_cas_7_3_4;
  wire       [7:0]    Feature_cas_7_3_5;
  wire       [7:0]    Feature_cas_7_3_6;
  wire       [7:0]    Feature_cas_7_3_7;
  wire       [7:0]    Feature_cas_7_3_8;
  wire       [7:0]    Feature_cas_7_4_0;
  wire       [7:0]    Feature_cas_7_4_1;
  wire       [7:0]    Feature_cas_7_4_2;
  wire       [7:0]    Feature_cas_7_4_3;
  wire       [7:0]    Feature_cas_7_4_4;
  wire       [7:0]    Feature_cas_7_4_5;
  wire       [7:0]    Feature_cas_7_4_6;
  wire       [7:0]    Feature_cas_7_4_7;
  wire       [7:0]    Feature_cas_7_4_8;
  wire       [7:0]    Feature_cas_7_5_0;
  wire       [7:0]    Feature_cas_7_5_1;
  wire       [7:0]    Feature_cas_7_5_2;
  wire       [7:0]    Feature_cas_7_5_3;
  wire       [7:0]    Feature_cas_7_5_4;
  wire       [7:0]    Feature_cas_7_5_5;
  wire       [7:0]    Feature_cas_7_5_6;
  wire       [7:0]    Feature_cas_7_5_7;
  wire       [7:0]    Feature_cas_7_5_8;
  wire       [7:0]    Feature_cas_7_6_0;
  wire       [7:0]    Feature_cas_7_6_1;
  wire       [7:0]    Feature_cas_7_6_2;
  wire       [7:0]    Feature_cas_7_6_3;
  wire       [7:0]    Feature_cas_7_6_4;
  wire       [7:0]    Feature_cas_7_6_5;
  wire       [7:0]    Feature_cas_7_6_6;
  wire       [7:0]    Feature_cas_7_6_7;
  wire       [7:0]    Feature_cas_7_6_8;
  wire       [7:0]    Feature_cas_7_7_0;
  wire       [7:0]    Feature_cas_7_7_1;
  wire       [7:0]    Feature_cas_7_7_2;
  wire       [7:0]    Feature_cas_7_7_3;
  wire       [7:0]    Feature_cas_7_7_4;
  wire       [7:0]    Feature_cas_7_7_5;
  wire       [7:0]    Feature_cas_7_7_6;
  wire       [7:0]    Feature_cas_7_7_7;
  wire       [7:0]    Feature_cas_7_7_8;
  wire       [31:0]   result_c_0_0;
  wire       [31:0]   result_c_0_1;
  wire       [31:0]   result_c_0_2;
  wire       [31:0]   result_c_0_3;
  wire       [31:0]   result_c_0_4;
  wire       [31:0]   result_c_0_5;
  wire       [31:0]   result_c_0_6;
  wire       [31:0]   result_c_0_7;
  wire       [31:0]   result_c_1_0;
  wire       [31:0]   result_c_1_1;
  wire       [31:0]   result_c_1_2;
  wire       [31:0]   result_c_1_3;
  wire       [31:0]   result_c_1_4;
  wire       [31:0]   result_c_1_5;
  wire       [31:0]   result_c_1_6;
  wire       [31:0]   result_c_1_7;
  wire       [31:0]   result_c_2_0;
  wire       [31:0]   result_c_2_1;
  wire       [31:0]   result_c_2_2;
  wire       [31:0]   result_c_2_3;
  wire       [31:0]   result_c_2_4;
  wire       [31:0]   result_c_2_5;
  wire       [31:0]   result_c_2_6;
  wire       [31:0]   result_c_2_7;
  wire       [31:0]   result_c_3_0;
  wire       [31:0]   result_c_3_1;
  wire       [31:0]   result_c_3_2;
  wire       [31:0]   result_c_3_3;
  wire       [31:0]   result_c_3_4;
  wire       [31:0]   result_c_3_5;
  wire       [31:0]   result_c_3_6;
  wire       [31:0]   result_c_3_7;
  wire       [31:0]   result_c_4_0;
  wire       [31:0]   result_c_4_1;
  wire       [31:0]   result_c_4_2;
  wire       [31:0]   result_c_4_3;
  wire       [31:0]   result_c_4_4;
  wire       [31:0]   result_c_4_5;
  wire       [31:0]   result_c_4_6;
  wire       [31:0]   result_c_4_7;
  wire       [31:0]   result_c_5_0;
  wire       [31:0]   result_c_5_1;
  wire       [31:0]   result_c_5_2;
  wire       [31:0]   result_c_5_3;
  wire       [31:0]   result_c_5_4;
  wire       [31:0]   result_c_5_5;
  wire       [31:0]   result_c_5_6;
  wire       [31:0]   result_c_5_7;
  wire       [31:0]   result_c_6_0;
  wire       [31:0]   result_c_6_1;
  wire       [31:0]   result_c_6_2;
  wire       [31:0]   result_c_6_3;
  wire       [31:0]   result_c_6_4;
  wire       [31:0]   result_c_6_5;
  wire       [31:0]   result_c_6_6;
  wire       [31:0]   result_c_6_7;
  wire       [31:0]   result_c_7_0;
  wire       [31:0]   result_c_7_1;
  wire       [31:0]   result_c_7_2;
  wire       [31:0]   result_c_7_3;
  wire       [31:0]   result_c_7_4;
  wire       [31:0]   result_c_7_5;
  wire       [31:0]   result_c_7_6;
  wire       [31:0]   result_c_7_7;
  wire       [31:0]   colAddResult;
  wire                colAddResult_Valid;

  lajiPE lajiPE_64 (
    .weight_CE     (Weight_CE                   ), //i
    .feature_CE    (Feature_CE                  ), //i
    .weight_0      (Weight_Array_0_0_0[7:0]     ), //i
    .weight_1      (Weight_Array_0_0_1[7:0]     ), //i
    .weight_2      (Weight_Array_0_0_2[7:0]     ), //i
    .weight_3      (Weight_Array_0_0_3[7:0]     ), //i
    .weight_4      (Weight_Array_0_0_4[7:0]     ), //i
    .weight_5      (Weight_Array_0_0_5[7:0]     ), //i
    .weight_6      (Weight_Array_0_0_6[7:0]     ), //i
    .weight_7      (Weight_Array_0_0_7[7:0]     ), //i
    .weight_8      (Weight_Array_0_0_8[7:0]     ), //i
    .feature_0     (Feature_Array_0_0[7:0]      ), //i
    .feature_1     (Feature_Array_0_1[7:0]      ), //i
    .feature_2     (Feature_Array_0_2[7:0]      ), //i
    .feature_3     (Feature_Array_0_3[7:0]      ), //i
    .feature_4     (Feature_Array_0_4[7:0]      ), //i
    .feature_5     (Feature_Array_0_5[7:0]      ), //i
    .feature_6     (Feature_Array_0_6[7:0]      ), //i
    .feature_7     (Feature_Array_0_7[7:0]      ), //i
    .feature_8     (Feature_Array_0_8[7:0]      ), //i
    .feature_out_0 (lajiPE_64_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_64_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_64_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_64_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_64_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_64_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_64_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_64_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_64_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_65 (
    .weight_CE     (Weight_CE                   ), //i
    .feature_CE    (Feature_CE                  ), //i
    .weight_0      (Weight_Array_0_1_0[7:0]     ), //i
    .weight_1      (Weight_Array_0_1_1[7:0]     ), //i
    .weight_2      (Weight_Array_0_1_2[7:0]     ), //i
    .weight_3      (Weight_Array_0_1_3[7:0]     ), //i
    .weight_4      (Weight_Array_0_1_4[7:0]     ), //i
    .weight_5      (Weight_Array_0_1_5[7:0]     ), //i
    .weight_6      (Weight_Array_0_1_6[7:0]     ), //i
    .weight_7      (Weight_Array_0_1_7[7:0]     ), //i
    .weight_8      (Weight_Array_0_1_8[7:0]     ), //i
    .feature_0     (Feature_Array_1_0[7:0]      ), //i
    .feature_1     (Feature_Array_1_1[7:0]      ), //i
    .feature_2     (Feature_Array_1_2[7:0]      ), //i
    .feature_3     (Feature_Array_1_3[7:0]      ), //i
    .feature_4     (Feature_Array_1_4[7:0]      ), //i
    .feature_5     (Feature_Array_1_5[7:0]      ), //i
    .feature_6     (Feature_Array_1_6[7:0]      ), //i
    .feature_7     (Feature_Array_1_7[7:0]      ), //i
    .feature_8     (Feature_Array_1_8[7:0]      ), //i
    .feature_out_0 (lajiPE_65_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_65_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_65_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_65_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_65_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_65_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_65_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_65_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_65_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_66 (
    .weight_CE     (Weight_CE                   ), //i
    .feature_CE    (Feature_CE                  ), //i
    .weight_0      (Weight_Array_0_2_0[7:0]     ), //i
    .weight_1      (Weight_Array_0_2_1[7:0]     ), //i
    .weight_2      (Weight_Array_0_2_2[7:0]     ), //i
    .weight_3      (Weight_Array_0_2_3[7:0]     ), //i
    .weight_4      (Weight_Array_0_2_4[7:0]     ), //i
    .weight_5      (Weight_Array_0_2_5[7:0]     ), //i
    .weight_6      (Weight_Array_0_2_6[7:0]     ), //i
    .weight_7      (Weight_Array_0_2_7[7:0]     ), //i
    .weight_8      (Weight_Array_0_2_8[7:0]     ), //i
    .feature_0     (Feature_Array_2_0[7:0]      ), //i
    .feature_1     (Feature_Array_2_1[7:0]      ), //i
    .feature_2     (Feature_Array_2_2[7:0]      ), //i
    .feature_3     (Feature_Array_2_3[7:0]      ), //i
    .feature_4     (Feature_Array_2_4[7:0]      ), //i
    .feature_5     (Feature_Array_2_5[7:0]      ), //i
    .feature_6     (Feature_Array_2_6[7:0]      ), //i
    .feature_7     (Feature_Array_2_7[7:0]      ), //i
    .feature_8     (Feature_Array_2_8[7:0]      ), //i
    .feature_out_0 (lajiPE_66_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_66_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_66_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_66_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_66_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_66_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_66_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_66_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_66_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_67 (
    .weight_CE     (Weight_CE                   ), //i
    .feature_CE    (Feature_CE                  ), //i
    .weight_0      (Weight_Array_0_3_0[7:0]     ), //i
    .weight_1      (Weight_Array_0_3_1[7:0]     ), //i
    .weight_2      (Weight_Array_0_3_2[7:0]     ), //i
    .weight_3      (Weight_Array_0_3_3[7:0]     ), //i
    .weight_4      (Weight_Array_0_3_4[7:0]     ), //i
    .weight_5      (Weight_Array_0_3_5[7:0]     ), //i
    .weight_6      (Weight_Array_0_3_6[7:0]     ), //i
    .weight_7      (Weight_Array_0_3_7[7:0]     ), //i
    .weight_8      (Weight_Array_0_3_8[7:0]     ), //i
    .feature_0     (Feature_Array_3_0[7:0]      ), //i
    .feature_1     (Feature_Array_3_1[7:0]      ), //i
    .feature_2     (Feature_Array_3_2[7:0]      ), //i
    .feature_3     (Feature_Array_3_3[7:0]      ), //i
    .feature_4     (Feature_Array_3_4[7:0]      ), //i
    .feature_5     (Feature_Array_3_5[7:0]      ), //i
    .feature_6     (Feature_Array_3_6[7:0]      ), //i
    .feature_7     (Feature_Array_3_7[7:0]      ), //i
    .feature_8     (Feature_Array_3_8[7:0]      ), //i
    .feature_out_0 (lajiPE_67_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_67_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_67_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_67_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_67_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_67_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_67_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_67_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_67_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_68 (
    .weight_CE     (Weight_CE                   ), //i
    .feature_CE    (Feature_CE                  ), //i
    .weight_0      (Weight_Array_0_4_0[7:0]     ), //i
    .weight_1      (Weight_Array_0_4_1[7:0]     ), //i
    .weight_2      (Weight_Array_0_4_2[7:0]     ), //i
    .weight_3      (Weight_Array_0_4_3[7:0]     ), //i
    .weight_4      (Weight_Array_0_4_4[7:0]     ), //i
    .weight_5      (Weight_Array_0_4_5[7:0]     ), //i
    .weight_6      (Weight_Array_0_4_6[7:0]     ), //i
    .weight_7      (Weight_Array_0_4_7[7:0]     ), //i
    .weight_8      (Weight_Array_0_4_8[7:0]     ), //i
    .feature_0     (Feature_Array_4_0[7:0]      ), //i
    .feature_1     (Feature_Array_4_1[7:0]      ), //i
    .feature_2     (Feature_Array_4_2[7:0]      ), //i
    .feature_3     (Feature_Array_4_3[7:0]      ), //i
    .feature_4     (Feature_Array_4_4[7:0]      ), //i
    .feature_5     (Feature_Array_4_5[7:0]      ), //i
    .feature_6     (Feature_Array_4_6[7:0]      ), //i
    .feature_7     (Feature_Array_4_7[7:0]      ), //i
    .feature_8     (Feature_Array_4_8[7:0]      ), //i
    .feature_out_0 (lajiPE_68_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_68_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_68_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_68_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_68_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_68_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_68_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_68_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_68_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_69 (
    .weight_CE     (Weight_CE                   ), //i
    .feature_CE    (Feature_CE                  ), //i
    .weight_0      (Weight_Array_0_5_0[7:0]     ), //i
    .weight_1      (Weight_Array_0_5_1[7:0]     ), //i
    .weight_2      (Weight_Array_0_5_2[7:0]     ), //i
    .weight_3      (Weight_Array_0_5_3[7:0]     ), //i
    .weight_4      (Weight_Array_0_5_4[7:0]     ), //i
    .weight_5      (Weight_Array_0_5_5[7:0]     ), //i
    .weight_6      (Weight_Array_0_5_6[7:0]     ), //i
    .weight_7      (Weight_Array_0_5_7[7:0]     ), //i
    .weight_8      (Weight_Array_0_5_8[7:0]     ), //i
    .feature_0     (Feature_Array_5_0[7:0]      ), //i
    .feature_1     (Feature_Array_5_1[7:0]      ), //i
    .feature_2     (Feature_Array_5_2[7:0]      ), //i
    .feature_3     (Feature_Array_5_3[7:0]      ), //i
    .feature_4     (Feature_Array_5_4[7:0]      ), //i
    .feature_5     (Feature_Array_5_5[7:0]      ), //i
    .feature_6     (Feature_Array_5_6[7:0]      ), //i
    .feature_7     (Feature_Array_5_7[7:0]      ), //i
    .feature_8     (Feature_Array_5_8[7:0]      ), //i
    .feature_out_0 (lajiPE_69_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_69_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_69_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_69_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_69_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_69_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_69_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_69_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_69_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_70 (
    .weight_CE     (Weight_CE                   ), //i
    .feature_CE    (Feature_CE                  ), //i
    .weight_0      (Weight_Array_0_6_0[7:0]     ), //i
    .weight_1      (Weight_Array_0_6_1[7:0]     ), //i
    .weight_2      (Weight_Array_0_6_2[7:0]     ), //i
    .weight_3      (Weight_Array_0_6_3[7:0]     ), //i
    .weight_4      (Weight_Array_0_6_4[7:0]     ), //i
    .weight_5      (Weight_Array_0_6_5[7:0]     ), //i
    .weight_6      (Weight_Array_0_6_6[7:0]     ), //i
    .weight_7      (Weight_Array_0_6_7[7:0]     ), //i
    .weight_8      (Weight_Array_0_6_8[7:0]     ), //i
    .feature_0     (Feature_Array_6_0[7:0]      ), //i
    .feature_1     (Feature_Array_6_1[7:0]      ), //i
    .feature_2     (Feature_Array_6_2[7:0]      ), //i
    .feature_3     (Feature_Array_6_3[7:0]      ), //i
    .feature_4     (Feature_Array_6_4[7:0]      ), //i
    .feature_5     (Feature_Array_6_5[7:0]      ), //i
    .feature_6     (Feature_Array_6_6[7:0]      ), //i
    .feature_7     (Feature_Array_6_7[7:0]      ), //i
    .feature_8     (Feature_Array_6_8[7:0]      ), //i
    .feature_out_0 (lajiPE_70_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_70_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_70_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_70_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_70_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_70_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_70_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_70_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_70_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_71 (
    .weight_CE     (Weight_CE                   ), //i
    .feature_CE    (Feature_CE                  ), //i
    .weight_0      (Weight_Array_0_7_0[7:0]     ), //i
    .weight_1      (Weight_Array_0_7_1[7:0]     ), //i
    .weight_2      (Weight_Array_0_7_2[7:0]     ), //i
    .weight_3      (Weight_Array_0_7_3[7:0]     ), //i
    .weight_4      (Weight_Array_0_7_4[7:0]     ), //i
    .weight_5      (Weight_Array_0_7_5[7:0]     ), //i
    .weight_6      (Weight_Array_0_7_6[7:0]     ), //i
    .weight_7      (Weight_Array_0_7_7[7:0]     ), //i
    .weight_8      (Weight_Array_0_7_8[7:0]     ), //i
    .feature_0     (Feature_Array_7_0[7:0]      ), //i
    .feature_1     (Feature_Array_7_1[7:0]      ), //i
    .feature_2     (Feature_Array_7_2[7:0]      ), //i
    .feature_3     (Feature_Array_7_3[7:0]      ), //i
    .feature_4     (Feature_Array_7_4[7:0]      ), //i
    .feature_5     (Feature_Array_7_5[7:0]      ), //i
    .feature_6     (Feature_Array_7_6[7:0]      ), //i
    .feature_7     (Feature_Array_7_7[7:0]      ), //i
    .feature_8     (Feature_Array_7_8[7:0]      ), //i
    .feature_out_0 (lajiPE_71_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_71_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_71_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_71_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_71_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_71_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_71_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_71_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_71_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_72 (
    .weight_CE     (lajiPE_72_weight_CE         ), //i
    .feature_CE    (lajiPE_72_feature_CE        ), //i
    .weight_0      (Weight_Array_1_0_0[7:0]     ), //i
    .weight_1      (Weight_Array_1_0_1[7:0]     ), //i
    .weight_2      (Weight_Array_1_0_2[7:0]     ), //i
    .weight_3      (Weight_Array_1_0_3[7:0]     ), //i
    .weight_4      (Weight_Array_1_0_4[7:0]     ), //i
    .weight_5      (Weight_Array_1_0_5[7:0]     ), //i
    .weight_6      (Weight_Array_1_0_6[7:0]     ), //i
    .weight_7      (Weight_Array_1_0_7[7:0]     ), //i
    .weight_8      (Weight_Array_1_0_8[7:0]     ), //i
    .feature_0     (Feature_cas_0_0_0[7:0]      ), //i
    .feature_1     (Feature_cas_0_0_1[7:0]      ), //i
    .feature_2     (Feature_cas_0_0_2[7:0]      ), //i
    .feature_3     (Feature_cas_0_0_3[7:0]      ), //i
    .feature_4     (Feature_cas_0_0_4[7:0]      ), //i
    .feature_5     (Feature_cas_0_0_5[7:0]      ), //i
    .feature_6     (Feature_cas_0_0_6[7:0]      ), //i
    .feature_7     (Feature_cas_0_0_7[7:0]      ), //i
    .feature_8     (Feature_cas_0_0_8[7:0]      ), //i
    .feature_out_0 (lajiPE_72_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_72_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_72_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_72_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_72_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_72_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_72_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_72_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_72_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_73 (
    .weight_CE     (lajiPE_73_weight_CE         ), //i
    .feature_CE    (lajiPE_73_feature_CE        ), //i
    .weight_0      (Weight_Array_2_0_0[7:0]     ), //i
    .weight_1      (Weight_Array_2_0_1[7:0]     ), //i
    .weight_2      (Weight_Array_2_0_2[7:0]     ), //i
    .weight_3      (Weight_Array_2_0_3[7:0]     ), //i
    .weight_4      (Weight_Array_2_0_4[7:0]     ), //i
    .weight_5      (Weight_Array_2_0_5[7:0]     ), //i
    .weight_6      (Weight_Array_2_0_6[7:0]     ), //i
    .weight_7      (Weight_Array_2_0_7[7:0]     ), //i
    .weight_8      (Weight_Array_2_0_8[7:0]     ), //i
    .feature_0     (Feature_cas_1_0_0[7:0]      ), //i
    .feature_1     (Feature_cas_1_0_1[7:0]      ), //i
    .feature_2     (Feature_cas_1_0_2[7:0]      ), //i
    .feature_3     (Feature_cas_1_0_3[7:0]      ), //i
    .feature_4     (Feature_cas_1_0_4[7:0]      ), //i
    .feature_5     (Feature_cas_1_0_5[7:0]      ), //i
    .feature_6     (Feature_cas_1_0_6[7:0]      ), //i
    .feature_7     (Feature_cas_1_0_7[7:0]      ), //i
    .feature_8     (Feature_cas_1_0_8[7:0]      ), //i
    .feature_out_0 (lajiPE_73_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_73_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_73_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_73_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_73_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_73_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_73_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_73_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_73_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_74 (
    .weight_CE     (lajiPE_74_weight_CE         ), //i
    .feature_CE    (lajiPE_74_feature_CE        ), //i
    .weight_0      (Weight_Array_3_0_0[7:0]     ), //i
    .weight_1      (Weight_Array_3_0_1[7:0]     ), //i
    .weight_2      (Weight_Array_3_0_2[7:0]     ), //i
    .weight_3      (Weight_Array_3_0_3[7:0]     ), //i
    .weight_4      (Weight_Array_3_0_4[7:0]     ), //i
    .weight_5      (Weight_Array_3_0_5[7:0]     ), //i
    .weight_6      (Weight_Array_3_0_6[7:0]     ), //i
    .weight_7      (Weight_Array_3_0_7[7:0]     ), //i
    .weight_8      (Weight_Array_3_0_8[7:0]     ), //i
    .feature_0     (Feature_cas_2_0_0[7:0]      ), //i
    .feature_1     (Feature_cas_2_0_1[7:0]      ), //i
    .feature_2     (Feature_cas_2_0_2[7:0]      ), //i
    .feature_3     (Feature_cas_2_0_3[7:0]      ), //i
    .feature_4     (Feature_cas_2_0_4[7:0]      ), //i
    .feature_5     (Feature_cas_2_0_5[7:0]      ), //i
    .feature_6     (Feature_cas_2_0_6[7:0]      ), //i
    .feature_7     (Feature_cas_2_0_7[7:0]      ), //i
    .feature_8     (Feature_cas_2_0_8[7:0]      ), //i
    .feature_out_0 (lajiPE_74_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_74_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_74_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_74_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_74_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_74_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_74_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_74_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_74_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_75 (
    .weight_CE     (lajiPE_75_weight_CE         ), //i
    .feature_CE    (lajiPE_75_feature_CE        ), //i
    .weight_0      (Weight_Array_4_0_0[7:0]     ), //i
    .weight_1      (Weight_Array_4_0_1[7:0]     ), //i
    .weight_2      (Weight_Array_4_0_2[7:0]     ), //i
    .weight_3      (Weight_Array_4_0_3[7:0]     ), //i
    .weight_4      (Weight_Array_4_0_4[7:0]     ), //i
    .weight_5      (Weight_Array_4_0_5[7:0]     ), //i
    .weight_6      (Weight_Array_4_0_6[7:0]     ), //i
    .weight_7      (Weight_Array_4_0_7[7:0]     ), //i
    .weight_8      (Weight_Array_4_0_8[7:0]     ), //i
    .feature_0     (Feature_cas_3_0_0[7:0]      ), //i
    .feature_1     (Feature_cas_3_0_1[7:0]      ), //i
    .feature_2     (Feature_cas_3_0_2[7:0]      ), //i
    .feature_3     (Feature_cas_3_0_3[7:0]      ), //i
    .feature_4     (Feature_cas_3_0_4[7:0]      ), //i
    .feature_5     (Feature_cas_3_0_5[7:0]      ), //i
    .feature_6     (Feature_cas_3_0_6[7:0]      ), //i
    .feature_7     (Feature_cas_3_0_7[7:0]      ), //i
    .feature_8     (Feature_cas_3_0_8[7:0]      ), //i
    .feature_out_0 (lajiPE_75_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_75_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_75_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_75_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_75_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_75_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_75_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_75_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_75_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_76 (
    .weight_CE     (lajiPE_76_weight_CE         ), //i
    .feature_CE    (lajiPE_76_feature_CE        ), //i
    .weight_0      (Weight_Array_5_0_0[7:0]     ), //i
    .weight_1      (Weight_Array_5_0_1[7:0]     ), //i
    .weight_2      (Weight_Array_5_0_2[7:0]     ), //i
    .weight_3      (Weight_Array_5_0_3[7:0]     ), //i
    .weight_4      (Weight_Array_5_0_4[7:0]     ), //i
    .weight_5      (Weight_Array_5_0_5[7:0]     ), //i
    .weight_6      (Weight_Array_5_0_6[7:0]     ), //i
    .weight_7      (Weight_Array_5_0_7[7:0]     ), //i
    .weight_8      (Weight_Array_5_0_8[7:0]     ), //i
    .feature_0     (Feature_cas_4_0_0[7:0]      ), //i
    .feature_1     (Feature_cas_4_0_1[7:0]      ), //i
    .feature_2     (Feature_cas_4_0_2[7:0]      ), //i
    .feature_3     (Feature_cas_4_0_3[7:0]      ), //i
    .feature_4     (Feature_cas_4_0_4[7:0]      ), //i
    .feature_5     (Feature_cas_4_0_5[7:0]      ), //i
    .feature_6     (Feature_cas_4_0_6[7:0]      ), //i
    .feature_7     (Feature_cas_4_0_7[7:0]      ), //i
    .feature_8     (Feature_cas_4_0_8[7:0]      ), //i
    .feature_out_0 (lajiPE_76_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_76_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_76_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_76_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_76_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_76_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_76_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_76_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_76_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_77 (
    .weight_CE     (lajiPE_77_weight_CE         ), //i
    .feature_CE    (lajiPE_77_feature_CE        ), //i
    .weight_0      (Weight_Array_6_0_0[7:0]     ), //i
    .weight_1      (Weight_Array_6_0_1[7:0]     ), //i
    .weight_2      (Weight_Array_6_0_2[7:0]     ), //i
    .weight_3      (Weight_Array_6_0_3[7:0]     ), //i
    .weight_4      (Weight_Array_6_0_4[7:0]     ), //i
    .weight_5      (Weight_Array_6_0_5[7:0]     ), //i
    .weight_6      (Weight_Array_6_0_6[7:0]     ), //i
    .weight_7      (Weight_Array_6_0_7[7:0]     ), //i
    .weight_8      (Weight_Array_6_0_8[7:0]     ), //i
    .feature_0     (Feature_cas_5_0_0[7:0]      ), //i
    .feature_1     (Feature_cas_5_0_1[7:0]      ), //i
    .feature_2     (Feature_cas_5_0_2[7:0]      ), //i
    .feature_3     (Feature_cas_5_0_3[7:0]      ), //i
    .feature_4     (Feature_cas_5_0_4[7:0]      ), //i
    .feature_5     (Feature_cas_5_0_5[7:0]      ), //i
    .feature_6     (Feature_cas_5_0_6[7:0]      ), //i
    .feature_7     (Feature_cas_5_0_7[7:0]      ), //i
    .feature_8     (Feature_cas_5_0_8[7:0]      ), //i
    .feature_out_0 (lajiPE_77_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_77_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_77_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_77_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_77_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_77_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_77_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_77_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_77_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_78 (
    .weight_CE     (lajiPE_78_weight_CE         ), //i
    .feature_CE    (lajiPE_78_feature_CE        ), //i
    .weight_0      (Weight_Array_7_0_0[7:0]     ), //i
    .weight_1      (Weight_Array_7_0_1[7:0]     ), //i
    .weight_2      (Weight_Array_7_0_2[7:0]     ), //i
    .weight_3      (Weight_Array_7_0_3[7:0]     ), //i
    .weight_4      (Weight_Array_7_0_4[7:0]     ), //i
    .weight_5      (Weight_Array_7_0_5[7:0]     ), //i
    .weight_6      (Weight_Array_7_0_6[7:0]     ), //i
    .weight_7      (Weight_Array_7_0_7[7:0]     ), //i
    .weight_8      (Weight_Array_7_0_8[7:0]     ), //i
    .feature_0     (Feature_cas_6_0_0[7:0]      ), //i
    .feature_1     (Feature_cas_6_0_1[7:0]      ), //i
    .feature_2     (Feature_cas_6_0_2[7:0]      ), //i
    .feature_3     (Feature_cas_6_0_3[7:0]      ), //i
    .feature_4     (Feature_cas_6_0_4[7:0]      ), //i
    .feature_5     (Feature_cas_6_0_5[7:0]      ), //i
    .feature_6     (Feature_cas_6_0_6[7:0]      ), //i
    .feature_7     (Feature_cas_6_0_7[7:0]      ), //i
    .feature_8     (Feature_cas_6_0_8[7:0]      ), //i
    .feature_out_0 (lajiPE_78_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_78_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_78_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_78_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_78_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_78_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_78_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_78_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_78_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_79 (
    .weight_CE     (lajiPE_79_weight_CE         ), //i
    .feature_CE    (lajiPE_79_feature_CE        ), //i
    .weight_0      (Weight_Array_1_1_0[7:0]     ), //i
    .weight_1      (Weight_Array_1_1_1[7:0]     ), //i
    .weight_2      (Weight_Array_1_1_2[7:0]     ), //i
    .weight_3      (Weight_Array_1_1_3[7:0]     ), //i
    .weight_4      (Weight_Array_1_1_4[7:0]     ), //i
    .weight_5      (Weight_Array_1_1_5[7:0]     ), //i
    .weight_6      (Weight_Array_1_1_6[7:0]     ), //i
    .weight_7      (Weight_Array_1_1_7[7:0]     ), //i
    .weight_8      (Weight_Array_1_1_8[7:0]     ), //i
    .feature_0     (Feature_cas_0_1_0[7:0]      ), //i
    .feature_1     (Feature_cas_0_1_1[7:0]      ), //i
    .feature_2     (Feature_cas_0_1_2[7:0]      ), //i
    .feature_3     (Feature_cas_0_1_3[7:0]      ), //i
    .feature_4     (Feature_cas_0_1_4[7:0]      ), //i
    .feature_5     (Feature_cas_0_1_5[7:0]      ), //i
    .feature_6     (Feature_cas_0_1_6[7:0]      ), //i
    .feature_7     (Feature_cas_0_1_7[7:0]      ), //i
    .feature_8     (Feature_cas_0_1_8[7:0]      ), //i
    .feature_out_0 (lajiPE_79_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_79_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_79_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_79_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_79_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_79_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_79_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_79_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_79_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_80 (
    .weight_CE     (lajiPE_80_weight_CE         ), //i
    .feature_CE    (lajiPE_80_feature_CE        ), //i
    .weight_0      (Weight_Array_2_1_0[7:0]     ), //i
    .weight_1      (Weight_Array_2_1_1[7:0]     ), //i
    .weight_2      (Weight_Array_2_1_2[7:0]     ), //i
    .weight_3      (Weight_Array_2_1_3[7:0]     ), //i
    .weight_4      (Weight_Array_2_1_4[7:0]     ), //i
    .weight_5      (Weight_Array_2_1_5[7:0]     ), //i
    .weight_6      (Weight_Array_2_1_6[7:0]     ), //i
    .weight_7      (Weight_Array_2_1_7[7:0]     ), //i
    .weight_8      (Weight_Array_2_1_8[7:0]     ), //i
    .feature_0     (Feature_cas_1_1_0[7:0]      ), //i
    .feature_1     (Feature_cas_1_1_1[7:0]      ), //i
    .feature_2     (Feature_cas_1_1_2[7:0]      ), //i
    .feature_3     (Feature_cas_1_1_3[7:0]      ), //i
    .feature_4     (Feature_cas_1_1_4[7:0]      ), //i
    .feature_5     (Feature_cas_1_1_5[7:0]      ), //i
    .feature_6     (Feature_cas_1_1_6[7:0]      ), //i
    .feature_7     (Feature_cas_1_1_7[7:0]      ), //i
    .feature_8     (Feature_cas_1_1_8[7:0]      ), //i
    .feature_out_0 (lajiPE_80_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_80_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_80_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_80_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_80_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_80_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_80_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_80_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_80_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_81 (
    .weight_CE     (lajiPE_81_weight_CE         ), //i
    .feature_CE    (lajiPE_81_feature_CE        ), //i
    .weight_0      (Weight_Array_3_1_0[7:0]     ), //i
    .weight_1      (Weight_Array_3_1_1[7:0]     ), //i
    .weight_2      (Weight_Array_3_1_2[7:0]     ), //i
    .weight_3      (Weight_Array_3_1_3[7:0]     ), //i
    .weight_4      (Weight_Array_3_1_4[7:0]     ), //i
    .weight_5      (Weight_Array_3_1_5[7:0]     ), //i
    .weight_6      (Weight_Array_3_1_6[7:0]     ), //i
    .weight_7      (Weight_Array_3_1_7[7:0]     ), //i
    .weight_8      (Weight_Array_3_1_8[7:0]     ), //i
    .feature_0     (Feature_cas_2_1_0[7:0]      ), //i
    .feature_1     (Feature_cas_2_1_1[7:0]      ), //i
    .feature_2     (Feature_cas_2_1_2[7:0]      ), //i
    .feature_3     (Feature_cas_2_1_3[7:0]      ), //i
    .feature_4     (Feature_cas_2_1_4[7:0]      ), //i
    .feature_5     (Feature_cas_2_1_5[7:0]      ), //i
    .feature_6     (Feature_cas_2_1_6[7:0]      ), //i
    .feature_7     (Feature_cas_2_1_7[7:0]      ), //i
    .feature_8     (Feature_cas_2_1_8[7:0]      ), //i
    .feature_out_0 (lajiPE_81_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_81_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_81_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_81_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_81_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_81_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_81_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_81_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_81_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_82 (
    .weight_CE     (lajiPE_82_weight_CE         ), //i
    .feature_CE    (lajiPE_82_feature_CE        ), //i
    .weight_0      (Weight_Array_4_1_0[7:0]     ), //i
    .weight_1      (Weight_Array_4_1_1[7:0]     ), //i
    .weight_2      (Weight_Array_4_1_2[7:0]     ), //i
    .weight_3      (Weight_Array_4_1_3[7:0]     ), //i
    .weight_4      (Weight_Array_4_1_4[7:0]     ), //i
    .weight_5      (Weight_Array_4_1_5[7:0]     ), //i
    .weight_6      (Weight_Array_4_1_6[7:0]     ), //i
    .weight_7      (Weight_Array_4_1_7[7:0]     ), //i
    .weight_8      (Weight_Array_4_1_8[7:0]     ), //i
    .feature_0     (Feature_cas_3_1_0[7:0]      ), //i
    .feature_1     (Feature_cas_3_1_1[7:0]      ), //i
    .feature_2     (Feature_cas_3_1_2[7:0]      ), //i
    .feature_3     (Feature_cas_3_1_3[7:0]      ), //i
    .feature_4     (Feature_cas_3_1_4[7:0]      ), //i
    .feature_5     (Feature_cas_3_1_5[7:0]      ), //i
    .feature_6     (Feature_cas_3_1_6[7:0]      ), //i
    .feature_7     (Feature_cas_3_1_7[7:0]      ), //i
    .feature_8     (Feature_cas_3_1_8[7:0]      ), //i
    .feature_out_0 (lajiPE_82_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_82_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_82_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_82_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_82_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_82_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_82_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_82_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_82_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_83 (
    .weight_CE     (lajiPE_83_weight_CE         ), //i
    .feature_CE    (lajiPE_83_feature_CE        ), //i
    .weight_0      (Weight_Array_5_1_0[7:0]     ), //i
    .weight_1      (Weight_Array_5_1_1[7:0]     ), //i
    .weight_2      (Weight_Array_5_1_2[7:0]     ), //i
    .weight_3      (Weight_Array_5_1_3[7:0]     ), //i
    .weight_4      (Weight_Array_5_1_4[7:0]     ), //i
    .weight_5      (Weight_Array_5_1_5[7:0]     ), //i
    .weight_6      (Weight_Array_5_1_6[7:0]     ), //i
    .weight_7      (Weight_Array_5_1_7[7:0]     ), //i
    .weight_8      (Weight_Array_5_1_8[7:0]     ), //i
    .feature_0     (Feature_cas_4_1_0[7:0]      ), //i
    .feature_1     (Feature_cas_4_1_1[7:0]      ), //i
    .feature_2     (Feature_cas_4_1_2[7:0]      ), //i
    .feature_3     (Feature_cas_4_1_3[7:0]      ), //i
    .feature_4     (Feature_cas_4_1_4[7:0]      ), //i
    .feature_5     (Feature_cas_4_1_5[7:0]      ), //i
    .feature_6     (Feature_cas_4_1_6[7:0]      ), //i
    .feature_7     (Feature_cas_4_1_7[7:0]      ), //i
    .feature_8     (Feature_cas_4_1_8[7:0]      ), //i
    .feature_out_0 (lajiPE_83_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_83_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_83_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_83_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_83_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_83_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_83_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_83_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_83_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_84 (
    .weight_CE     (lajiPE_84_weight_CE         ), //i
    .feature_CE    (lajiPE_84_feature_CE        ), //i
    .weight_0      (Weight_Array_6_1_0[7:0]     ), //i
    .weight_1      (Weight_Array_6_1_1[7:0]     ), //i
    .weight_2      (Weight_Array_6_1_2[7:0]     ), //i
    .weight_3      (Weight_Array_6_1_3[7:0]     ), //i
    .weight_4      (Weight_Array_6_1_4[7:0]     ), //i
    .weight_5      (Weight_Array_6_1_5[7:0]     ), //i
    .weight_6      (Weight_Array_6_1_6[7:0]     ), //i
    .weight_7      (Weight_Array_6_1_7[7:0]     ), //i
    .weight_8      (Weight_Array_6_1_8[7:0]     ), //i
    .feature_0     (Feature_cas_5_1_0[7:0]      ), //i
    .feature_1     (Feature_cas_5_1_1[7:0]      ), //i
    .feature_2     (Feature_cas_5_1_2[7:0]      ), //i
    .feature_3     (Feature_cas_5_1_3[7:0]      ), //i
    .feature_4     (Feature_cas_5_1_4[7:0]      ), //i
    .feature_5     (Feature_cas_5_1_5[7:0]      ), //i
    .feature_6     (Feature_cas_5_1_6[7:0]      ), //i
    .feature_7     (Feature_cas_5_1_7[7:0]      ), //i
    .feature_8     (Feature_cas_5_1_8[7:0]      ), //i
    .feature_out_0 (lajiPE_84_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_84_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_84_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_84_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_84_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_84_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_84_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_84_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_84_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_85 (
    .weight_CE     (lajiPE_85_weight_CE         ), //i
    .feature_CE    (lajiPE_85_feature_CE        ), //i
    .weight_0      (Weight_Array_7_1_0[7:0]     ), //i
    .weight_1      (Weight_Array_7_1_1[7:0]     ), //i
    .weight_2      (Weight_Array_7_1_2[7:0]     ), //i
    .weight_3      (Weight_Array_7_1_3[7:0]     ), //i
    .weight_4      (Weight_Array_7_1_4[7:0]     ), //i
    .weight_5      (Weight_Array_7_1_5[7:0]     ), //i
    .weight_6      (Weight_Array_7_1_6[7:0]     ), //i
    .weight_7      (Weight_Array_7_1_7[7:0]     ), //i
    .weight_8      (Weight_Array_7_1_8[7:0]     ), //i
    .feature_0     (Feature_cas_6_1_0[7:0]      ), //i
    .feature_1     (Feature_cas_6_1_1[7:0]      ), //i
    .feature_2     (Feature_cas_6_1_2[7:0]      ), //i
    .feature_3     (Feature_cas_6_1_3[7:0]      ), //i
    .feature_4     (Feature_cas_6_1_4[7:0]      ), //i
    .feature_5     (Feature_cas_6_1_5[7:0]      ), //i
    .feature_6     (Feature_cas_6_1_6[7:0]      ), //i
    .feature_7     (Feature_cas_6_1_7[7:0]      ), //i
    .feature_8     (Feature_cas_6_1_8[7:0]      ), //i
    .feature_out_0 (lajiPE_85_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_85_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_85_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_85_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_85_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_85_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_85_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_85_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_85_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_86 (
    .weight_CE     (lajiPE_86_weight_CE         ), //i
    .feature_CE    (lajiPE_86_feature_CE        ), //i
    .weight_0      (Weight_Array_1_2_0[7:0]     ), //i
    .weight_1      (Weight_Array_1_2_1[7:0]     ), //i
    .weight_2      (Weight_Array_1_2_2[7:0]     ), //i
    .weight_3      (Weight_Array_1_2_3[7:0]     ), //i
    .weight_4      (Weight_Array_1_2_4[7:0]     ), //i
    .weight_5      (Weight_Array_1_2_5[7:0]     ), //i
    .weight_6      (Weight_Array_1_2_6[7:0]     ), //i
    .weight_7      (Weight_Array_1_2_7[7:0]     ), //i
    .weight_8      (Weight_Array_1_2_8[7:0]     ), //i
    .feature_0     (Feature_cas_0_2_0[7:0]      ), //i
    .feature_1     (Feature_cas_0_2_1[7:0]      ), //i
    .feature_2     (Feature_cas_0_2_2[7:0]      ), //i
    .feature_3     (Feature_cas_0_2_3[7:0]      ), //i
    .feature_4     (Feature_cas_0_2_4[7:0]      ), //i
    .feature_5     (Feature_cas_0_2_5[7:0]      ), //i
    .feature_6     (Feature_cas_0_2_6[7:0]      ), //i
    .feature_7     (Feature_cas_0_2_7[7:0]      ), //i
    .feature_8     (Feature_cas_0_2_8[7:0]      ), //i
    .feature_out_0 (lajiPE_86_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_86_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_86_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_86_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_86_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_86_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_86_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_86_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_86_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_87 (
    .weight_CE     (lajiPE_87_weight_CE         ), //i
    .feature_CE    (lajiPE_87_feature_CE        ), //i
    .weight_0      (Weight_Array_2_2_0[7:0]     ), //i
    .weight_1      (Weight_Array_2_2_1[7:0]     ), //i
    .weight_2      (Weight_Array_2_2_2[7:0]     ), //i
    .weight_3      (Weight_Array_2_2_3[7:0]     ), //i
    .weight_4      (Weight_Array_2_2_4[7:0]     ), //i
    .weight_5      (Weight_Array_2_2_5[7:0]     ), //i
    .weight_6      (Weight_Array_2_2_6[7:0]     ), //i
    .weight_7      (Weight_Array_2_2_7[7:0]     ), //i
    .weight_8      (Weight_Array_2_2_8[7:0]     ), //i
    .feature_0     (Feature_cas_1_2_0[7:0]      ), //i
    .feature_1     (Feature_cas_1_2_1[7:0]      ), //i
    .feature_2     (Feature_cas_1_2_2[7:0]      ), //i
    .feature_3     (Feature_cas_1_2_3[7:0]      ), //i
    .feature_4     (Feature_cas_1_2_4[7:0]      ), //i
    .feature_5     (Feature_cas_1_2_5[7:0]      ), //i
    .feature_6     (Feature_cas_1_2_6[7:0]      ), //i
    .feature_7     (Feature_cas_1_2_7[7:0]      ), //i
    .feature_8     (Feature_cas_1_2_8[7:0]      ), //i
    .feature_out_0 (lajiPE_87_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_87_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_87_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_87_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_87_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_87_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_87_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_87_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_87_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_88 (
    .weight_CE     (lajiPE_88_weight_CE         ), //i
    .feature_CE    (lajiPE_88_feature_CE        ), //i
    .weight_0      (Weight_Array_3_2_0[7:0]     ), //i
    .weight_1      (Weight_Array_3_2_1[7:0]     ), //i
    .weight_2      (Weight_Array_3_2_2[7:0]     ), //i
    .weight_3      (Weight_Array_3_2_3[7:0]     ), //i
    .weight_4      (Weight_Array_3_2_4[7:0]     ), //i
    .weight_5      (Weight_Array_3_2_5[7:0]     ), //i
    .weight_6      (Weight_Array_3_2_6[7:0]     ), //i
    .weight_7      (Weight_Array_3_2_7[7:0]     ), //i
    .weight_8      (Weight_Array_3_2_8[7:0]     ), //i
    .feature_0     (Feature_cas_2_2_0[7:0]      ), //i
    .feature_1     (Feature_cas_2_2_1[7:0]      ), //i
    .feature_2     (Feature_cas_2_2_2[7:0]      ), //i
    .feature_3     (Feature_cas_2_2_3[7:0]      ), //i
    .feature_4     (Feature_cas_2_2_4[7:0]      ), //i
    .feature_5     (Feature_cas_2_2_5[7:0]      ), //i
    .feature_6     (Feature_cas_2_2_6[7:0]      ), //i
    .feature_7     (Feature_cas_2_2_7[7:0]      ), //i
    .feature_8     (Feature_cas_2_2_8[7:0]      ), //i
    .feature_out_0 (lajiPE_88_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_88_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_88_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_88_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_88_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_88_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_88_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_88_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_88_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_89 (
    .weight_CE     (lajiPE_89_weight_CE         ), //i
    .feature_CE    (lajiPE_89_feature_CE        ), //i
    .weight_0      (Weight_Array_4_2_0[7:0]     ), //i
    .weight_1      (Weight_Array_4_2_1[7:0]     ), //i
    .weight_2      (Weight_Array_4_2_2[7:0]     ), //i
    .weight_3      (Weight_Array_4_2_3[7:0]     ), //i
    .weight_4      (Weight_Array_4_2_4[7:0]     ), //i
    .weight_5      (Weight_Array_4_2_5[7:0]     ), //i
    .weight_6      (Weight_Array_4_2_6[7:0]     ), //i
    .weight_7      (Weight_Array_4_2_7[7:0]     ), //i
    .weight_8      (Weight_Array_4_2_8[7:0]     ), //i
    .feature_0     (Feature_cas_3_2_0[7:0]      ), //i
    .feature_1     (Feature_cas_3_2_1[7:0]      ), //i
    .feature_2     (Feature_cas_3_2_2[7:0]      ), //i
    .feature_3     (Feature_cas_3_2_3[7:0]      ), //i
    .feature_4     (Feature_cas_3_2_4[7:0]      ), //i
    .feature_5     (Feature_cas_3_2_5[7:0]      ), //i
    .feature_6     (Feature_cas_3_2_6[7:0]      ), //i
    .feature_7     (Feature_cas_3_2_7[7:0]      ), //i
    .feature_8     (Feature_cas_3_2_8[7:0]      ), //i
    .feature_out_0 (lajiPE_89_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_89_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_89_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_89_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_89_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_89_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_89_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_89_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_89_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_90 (
    .weight_CE     (lajiPE_90_weight_CE         ), //i
    .feature_CE    (lajiPE_90_feature_CE        ), //i
    .weight_0      (Weight_Array_5_2_0[7:0]     ), //i
    .weight_1      (Weight_Array_5_2_1[7:0]     ), //i
    .weight_2      (Weight_Array_5_2_2[7:0]     ), //i
    .weight_3      (Weight_Array_5_2_3[7:0]     ), //i
    .weight_4      (Weight_Array_5_2_4[7:0]     ), //i
    .weight_5      (Weight_Array_5_2_5[7:0]     ), //i
    .weight_6      (Weight_Array_5_2_6[7:0]     ), //i
    .weight_7      (Weight_Array_5_2_7[7:0]     ), //i
    .weight_8      (Weight_Array_5_2_8[7:0]     ), //i
    .feature_0     (Feature_cas_4_2_0[7:0]      ), //i
    .feature_1     (Feature_cas_4_2_1[7:0]      ), //i
    .feature_2     (Feature_cas_4_2_2[7:0]      ), //i
    .feature_3     (Feature_cas_4_2_3[7:0]      ), //i
    .feature_4     (Feature_cas_4_2_4[7:0]      ), //i
    .feature_5     (Feature_cas_4_2_5[7:0]      ), //i
    .feature_6     (Feature_cas_4_2_6[7:0]      ), //i
    .feature_7     (Feature_cas_4_2_7[7:0]      ), //i
    .feature_8     (Feature_cas_4_2_8[7:0]      ), //i
    .feature_out_0 (lajiPE_90_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_90_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_90_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_90_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_90_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_90_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_90_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_90_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_90_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_91 (
    .weight_CE     (lajiPE_91_weight_CE         ), //i
    .feature_CE    (lajiPE_91_feature_CE        ), //i
    .weight_0      (Weight_Array_6_2_0[7:0]     ), //i
    .weight_1      (Weight_Array_6_2_1[7:0]     ), //i
    .weight_2      (Weight_Array_6_2_2[7:0]     ), //i
    .weight_3      (Weight_Array_6_2_3[7:0]     ), //i
    .weight_4      (Weight_Array_6_2_4[7:0]     ), //i
    .weight_5      (Weight_Array_6_2_5[7:0]     ), //i
    .weight_6      (Weight_Array_6_2_6[7:0]     ), //i
    .weight_7      (Weight_Array_6_2_7[7:0]     ), //i
    .weight_8      (Weight_Array_6_2_8[7:0]     ), //i
    .feature_0     (Feature_cas_5_2_0[7:0]      ), //i
    .feature_1     (Feature_cas_5_2_1[7:0]      ), //i
    .feature_2     (Feature_cas_5_2_2[7:0]      ), //i
    .feature_3     (Feature_cas_5_2_3[7:0]      ), //i
    .feature_4     (Feature_cas_5_2_4[7:0]      ), //i
    .feature_5     (Feature_cas_5_2_5[7:0]      ), //i
    .feature_6     (Feature_cas_5_2_6[7:0]      ), //i
    .feature_7     (Feature_cas_5_2_7[7:0]      ), //i
    .feature_8     (Feature_cas_5_2_8[7:0]      ), //i
    .feature_out_0 (lajiPE_91_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_91_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_91_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_91_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_91_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_91_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_91_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_91_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_91_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_92 (
    .weight_CE     (lajiPE_92_weight_CE         ), //i
    .feature_CE    (lajiPE_92_feature_CE        ), //i
    .weight_0      (Weight_Array_7_2_0[7:0]     ), //i
    .weight_1      (Weight_Array_7_2_1[7:0]     ), //i
    .weight_2      (Weight_Array_7_2_2[7:0]     ), //i
    .weight_3      (Weight_Array_7_2_3[7:0]     ), //i
    .weight_4      (Weight_Array_7_2_4[7:0]     ), //i
    .weight_5      (Weight_Array_7_2_5[7:0]     ), //i
    .weight_6      (Weight_Array_7_2_6[7:0]     ), //i
    .weight_7      (Weight_Array_7_2_7[7:0]     ), //i
    .weight_8      (Weight_Array_7_2_8[7:0]     ), //i
    .feature_0     (Feature_cas_6_2_0[7:0]      ), //i
    .feature_1     (Feature_cas_6_2_1[7:0]      ), //i
    .feature_2     (Feature_cas_6_2_2[7:0]      ), //i
    .feature_3     (Feature_cas_6_2_3[7:0]      ), //i
    .feature_4     (Feature_cas_6_2_4[7:0]      ), //i
    .feature_5     (Feature_cas_6_2_5[7:0]      ), //i
    .feature_6     (Feature_cas_6_2_6[7:0]      ), //i
    .feature_7     (Feature_cas_6_2_7[7:0]      ), //i
    .feature_8     (Feature_cas_6_2_8[7:0]      ), //i
    .feature_out_0 (lajiPE_92_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_92_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_92_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_92_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_92_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_92_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_92_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_92_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_92_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_93 (
    .weight_CE     (lajiPE_93_weight_CE         ), //i
    .feature_CE    (lajiPE_93_feature_CE        ), //i
    .weight_0      (Weight_Array_1_3_0[7:0]     ), //i
    .weight_1      (Weight_Array_1_3_1[7:0]     ), //i
    .weight_2      (Weight_Array_1_3_2[7:0]     ), //i
    .weight_3      (Weight_Array_1_3_3[7:0]     ), //i
    .weight_4      (Weight_Array_1_3_4[7:0]     ), //i
    .weight_5      (Weight_Array_1_3_5[7:0]     ), //i
    .weight_6      (Weight_Array_1_3_6[7:0]     ), //i
    .weight_7      (Weight_Array_1_3_7[7:0]     ), //i
    .weight_8      (Weight_Array_1_3_8[7:0]     ), //i
    .feature_0     (Feature_cas_0_3_0[7:0]      ), //i
    .feature_1     (Feature_cas_0_3_1[7:0]      ), //i
    .feature_2     (Feature_cas_0_3_2[7:0]      ), //i
    .feature_3     (Feature_cas_0_3_3[7:0]      ), //i
    .feature_4     (Feature_cas_0_3_4[7:0]      ), //i
    .feature_5     (Feature_cas_0_3_5[7:0]      ), //i
    .feature_6     (Feature_cas_0_3_6[7:0]      ), //i
    .feature_7     (Feature_cas_0_3_7[7:0]      ), //i
    .feature_8     (Feature_cas_0_3_8[7:0]      ), //i
    .feature_out_0 (lajiPE_93_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_93_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_93_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_93_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_93_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_93_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_93_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_93_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_93_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_94 (
    .weight_CE     (lajiPE_94_weight_CE         ), //i
    .feature_CE    (lajiPE_94_feature_CE        ), //i
    .weight_0      (Weight_Array_2_3_0[7:0]     ), //i
    .weight_1      (Weight_Array_2_3_1[7:0]     ), //i
    .weight_2      (Weight_Array_2_3_2[7:0]     ), //i
    .weight_3      (Weight_Array_2_3_3[7:0]     ), //i
    .weight_4      (Weight_Array_2_3_4[7:0]     ), //i
    .weight_5      (Weight_Array_2_3_5[7:0]     ), //i
    .weight_6      (Weight_Array_2_3_6[7:0]     ), //i
    .weight_7      (Weight_Array_2_3_7[7:0]     ), //i
    .weight_8      (Weight_Array_2_3_8[7:0]     ), //i
    .feature_0     (Feature_cas_1_3_0[7:0]      ), //i
    .feature_1     (Feature_cas_1_3_1[7:0]      ), //i
    .feature_2     (Feature_cas_1_3_2[7:0]      ), //i
    .feature_3     (Feature_cas_1_3_3[7:0]      ), //i
    .feature_4     (Feature_cas_1_3_4[7:0]      ), //i
    .feature_5     (Feature_cas_1_3_5[7:0]      ), //i
    .feature_6     (Feature_cas_1_3_6[7:0]      ), //i
    .feature_7     (Feature_cas_1_3_7[7:0]      ), //i
    .feature_8     (Feature_cas_1_3_8[7:0]      ), //i
    .feature_out_0 (lajiPE_94_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_94_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_94_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_94_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_94_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_94_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_94_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_94_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_94_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_95 (
    .weight_CE     (lajiPE_95_weight_CE         ), //i
    .feature_CE    (lajiPE_95_feature_CE        ), //i
    .weight_0      (Weight_Array_3_3_0[7:0]     ), //i
    .weight_1      (Weight_Array_3_3_1[7:0]     ), //i
    .weight_2      (Weight_Array_3_3_2[7:0]     ), //i
    .weight_3      (Weight_Array_3_3_3[7:0]     ), //i
    .weight_4      (Weight_Array_3_3_4[7:0]     ), //i
    .weight_5      (Weight_Array_3_3_5[7:0]     ), //i
    .weight_6      (Weight_Array_3_3_6[7:0]     ), //i
    .weight_7      (Weight_Array_3_3_7[7:0]     ), //i
    .weight_8      (Weight_Array_3_3_8[7:0]     ), //i
    .feature_0     (Feature_cas_2_3_0[7:0]      ), //i
    .feature_1     (Feature_cas_2_3_1[7:0]      ), //i
    .feature_2     (Feature_cas_2_3_2[7:0]      ), //i
    .feature_3     (Feature_cas_2_3_3[7:0]      ), //i
    .feature_4     (Feature_cas_2_3_4[7:0]      ), //i
    .feature_5     (Feature_cas_2_3_5[7:0]      ), //i
    .feature_6     (Feature_cas_2_3_6[7:0]      ), //i
    .feature_7     (Feature_cas_2_3_7[7:0]      ), //i
    .feature_8     (Feature_cas_2_3_8[7:0]      ), //i
    .feature_out_0 (lajiPE_95_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_95_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_95_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_95_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_95_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_95_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_95_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_95_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_95_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_96 (
    .weight_CE     (lajiPE_96_weight_CE         ), //i
    .feature_CE    (lajiPE_96_feature_CE        ), //i
    .weight_0      (Weight_Array_4_3_0[7:0]     ), //i
    .weight_1      (Weight_Array_4_3_1[7:0]     ), //i
    .weight_2      (Weight_Array_4_3_2[7:0]     ), //i
    .weight_3      (Weight_Array_4_3_3[7:0]     ), //i
    .weight_4      (Weight_Array_4_3_4[7:0]     ), //i
    .weight_5      (Weight_Array_4_3_5[7:0]     ), //i
    .weight_6      (Weight_Array_4_3_6[7:0]     ), //i
    .weight_7      (Weight_Array_4_3_7[7:0]     ), //i
    .weight_8      (Weight_Array_4_3_8[7:0]     ), //i
    .feature_0     (Feature_cas_3_3_0[7:0]      ), //i
    .feature_1     (Feature_cas_3_3_1[7:0]      ), //i
    .feature_2     (Feature_cas_3_3_2[7:0]      ), //i
    .feature_3     (Feature_cas_3_3_3[7:0]      ), //i
    .feature_4     (Feature_cas_3_3_4[7:0]      ), //i
    .feature_5     (Feature_cas_3_3_5[7:0]      ), //i
    .feature_6     (Feature_cas_3_3_6[7:0]      ), //i
    .feature_7     (Feature_cas_3_3_7[7:0]      ), //i
    .feature_8     (Feature_cas_3_3_8[7:0]      ), //i
    .feature_out_0 (lajiPE_96_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_96_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_96_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_96_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_96_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_96_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_96_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_96_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_96_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_97 (
    .weight_CE     (lajiPE_97_weight_CE         ), //i
    .feature_CE    (lajiPE_97_feature_CE        ), //i
    .weight_0      (Weight_Array_5_3_0[7:0]     ), //i
    .weight_1      (Weight_Array_5_3_1[7:0]     ), //i
    .weight_2      (Weight_Array_5_3_2[7:0]     ), //i
    .weight_3      (Weight_Array_5_3_3[7:0]     ), //i
    .weight_4      (Weight_Array_5_3_4[7:0]     ), //i
    .weight_5      (Weight_Array_5_3_5[7:0]     ), //i
    .weight_6      (Weight_Array_5_3_6[7:0]     ), //i
    .weight_7      (Weight_Array_5_3_7[7:0]     ), //i
    .weight_8      (Weight_Array_5_3_8[7:0]     ), //i
    .feature_0     (Feature_cas_4_3_0[7:0]      ), //i
    .feature_1     (Feature_cas_4_3_1[7:0]      ), //i
    .feature_2     (Feature_cas_4_3_2[7:0]      ), //i
    .feature_3     (Feature_cas_4_3_3[7:0]      ), //i
    .feature_4     (Feature_cas_4_3_4[7:0]      ), //i
    .feature_5     (Feature_cas_4_3_5[7:0]      ), //i
    .feature_6     (Feature_cas_4_3_6[7:0]      ), //i
    .feature_7     (Feature_cas_4_3_7[7:0]      ), //i
    .feature_8     (Feature_cas_4_3_8[7:0]      ), //i
    .feature_out_0 (lajiPE_97_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_97_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_97_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_97_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_97_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_97_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_97_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_97_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_97_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_98 (
    .weight_CE     (lajiPE_98_weight_CE         ), //i
    .feature_CE    (lajiPE_98_feature_CE        ), //i
    .weight_0      (Weight_Array_6_3_0[7:0]     ), //i
    .weight_1      (Weight_Array_6_3_1[7:0]     ), //i
    .weight_2      (Weight_Array_6_3_2[7:0]     ), //i
    .weight_3      (Weight_Array_6_3_3[7:0]     ), //i
    .weight_4      (Weight_Array_6_3_4[7:0]     ), //i
    .weight_5      (Weight_Array_6_3_5[7:0]     ), //i
    .weight_6      (Weight_Array_6_3_6[7:0]     ), //i
    .weight_7      (Weight_Array_6_3_7[7:0]     ), //i
    .weight_8      (Weight_Array_6_3_8[7:0]     ), //i
    .feature_0     (Feature_cas_5_3_0[7:0]      ), //i
    .feature_1     (Feature_cas_5_3_1[7:0]      ), //i
    .feature_2     (Feature_cas_5_3_2[7:0]      ), //i
    .feature_3     (Feature_cas_5_3_3[7:0]      ), //i
    .feature_4     (Feature_cas_5_3_4[7:0]      ), //i
    .feature_5     (Feature_cas_5_3_5[7:0]      ), //i
    .feature_6     (Feature_cas_5_3_6[7:0]      ), //i
    .feature_7     (Feature_cas_5_3_7[7:0]      ), //i
    .feature_8     (Feature_cas_5_3_8[7:0]      ), //i
    .feature_out_0 (lajiPE_98_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_98_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_98_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_98_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_98_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_98_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_98_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_98_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_98_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_99 (
    .weight_CE     (lajiPE_99_weight_CE         ), //i
    .feature_CE    (lajiPE_99_feature_CE        ), //i
    .weight_0      (Weight_Array_7_3_0[7:0]     ), //i
    .weight_1      (Weight_Array_7_3_1[7:0]     ), //i
    .weight_2      (Weight_Array_7_3_2[7:0]     ), //i
    .weight_3      (Weight_Array_7_3_3[7:0]     ), //i
    .weight_4      (Weight_Array_7_3_4[7:0]     ), //i
    .weight_5      (Weight_Array_7_3_5[7:0]     ), //i
    .weight_6      (Weight_Array_7_3_6[7:0]     ), //i
    .weight_7      (Weight_Array_7_3_7[7:0]     ), //i
    .weight_8      (Weight_Array_7_3_8[7:0]     ), //i
    .feature_0     (Feature_cas_6_3_0[7:0]      ), //i
    .feature_1     (Feature_cas_6_3_1[7:0]      ), //i
    .feature_2     (Feature_cas_6_3_2[7:0]      ), //i
    .feature_3     (Feature_cas_6_3_3[7:0]      ), //i
    .feature_4     (Feature_cas_6_3_4[7:0]      ), //i
    .feature_5     (Feature_cas_6_3_5[7:0]      ), //i
    .feature_6     (Feature_cas_6_3_6[7:0]      ), //i
    .feature_7     (Feature_cas_6_3_7[7:0]      ), //i
    .feature_8     (Feature_cas_6_3_8[7:0]      ), //i
    .feature_out_0 (lajiPE_99_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_99_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_99_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_99_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_99_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_99_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_99_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_99_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_99_feature_out_8[7:0]), //o
    .clk           (clk                         ), //i
    .reset         (reset                       ), //i
    .softReset     (softReset                   )  //i
  );
  lajiPE lajiPE_100 (
    .weight_CE     (lajiPE_100_weight_CE         ), //i
    .feature_CE    (lajiPE_100_feature_CE        ), //i
    .weight_0      (Weight_Array_1_4_0[7:0]      ), //i
    .weight_1      (Weight_Array_1_4_1[7:0]      ), //i
    .weight_2      (Weight_Array_1_4_2[7:0]      ), //i
    .weight_3      (Weight_Array_1_4_3[7:0]      ), //i
    .weight_4      (Weight_Array_1_4_4[7:0]      ), //i
    .weight_5      (Weight_Array_1_4_5[7:0]      ), //i
    .weight_6      (Weight_Array_1_4_6[7:0]      ), //i
    .weight_7      (Weight_Array_1_4_7[7:0]      ), //i
    .weight_8      (Weight_Array_1_4_8[7:0]      ), //i
    .feature_0     (Feature_cas_0_4_0[7:0]       ), //i
    .feature_1     (Feature_cas_0_4_1[7:0]       ), //i
    .feature_2     (Feature_cas_0_4_2[7:0]       ), //i
    .feature_3     (Feature_cas_0_4_3[7:0]       ), //i
    .feature_4     (Feature_cas_0_4_4[7:0]       ), //i
    .feature_5     (Feature_cas_0_4_5[7:0]       ), //i
    .feature_6     (Feature_cas_0_4_6[7:0]       ), //i
    .feature_7     (Feature_cas_0_4_7[7:0]       ), //i
    .feature_8     (Feature_cas_0_4_8[7:0]       ), //i
    .feature_out_0 (lajiPE_100_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_100_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_100_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_100_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_100_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_100_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_100_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_100_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_100_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_101 (
    .weight_CE     (lajiPE_101_weight_CE         ), //i
    .feature_CE    (lajiPE_101_feature_CE        ), //i
    .weight_0      (Weight_Array_2_4_0[7:0]      ), //i
    .weight_1      (Weight_Array_2_4_1[7:0]      ), //i
    .weight_2      (Weight_Array_2_4_2[7:0]      ), //i
    .weight_3      (Weight_Array_2_4_3[7:0]      ), //i
    .weight_4      (Weight_Array_2_4_4[7:0]      ), //i
    .weight_5      (Weight_Array_2_4_5[7:0]      ), //i
    .weight_6      (Weight_Array_2_4_6[7:0]      ), //i
    .weight_7      (Weight_Array_2_4_7[7:0]      ), //i
    .weight_8      (Weight_Array_2_4_8[7:0]      ), //i
    .feature_0     (Feature_cas_1_4_0[7:0]       ), //i
    .feature_1     (Feature_cas_1_4_1[7:0]       ), //i
    .feature_2     (Feature_cas_1_4_2[7:0]       ), //i
    .feature_3     (Feature_cas_1_4_3[7:0]       ), //i
    .feature_4     (Feature_cas_1_4_4[7:0]       ), //i
    .feature_5     (Feature_cas_1_4_5[7:0]       ), //i
    .feature_6     (Feature_cas_1_4_6[7:0]       ), //i
    .feature_7     (Feature_cas_1_4_7[7:0]       ), //i
    .feature_8     (Feature_cas_1_4_8[7:0]       ), //i
    .feature_out_0 (lajiPE_101_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_101_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_101_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_101_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_101_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_101_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_101_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_101_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_101_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_102 (
    .weight_CE     (lajiPE_102_weight_CE         ), //i
    .feature_CE    (lajiPE_102_feature_CE        ), //i
    .weight_0      (Weight_Array_3_4_0[7:0]      ), //i
    .weight_1      (Weight_Array_3_4_1[7:0]      ), //i
    .weight_2      (Weight_Array_3_4_2[7:0]      ), //i
    .weight_3      (Weight_Array_3_4_3[7:0]      ), //i
    .weight_4      (Weight_Array_3_4_4[7:0]      ), //i
    .weight_5      (Weight_Array_3_4_5[7:0]      ), //i
    .weight_6      (Weight_Array_3_4_6[7:0]      ), //i
    .weight_7      (Weight_Array_3_4_7[7:0]      ), //i
    .weight_8      (Weight_Array_3_4_8[7:0]      ), //i
    .feature_0     (Feature_cas_2_4_0[7:0]       ), //i
    .feature_1     (Feature_cas_2_4_1[7:0]       ), //i
    .feature_2     (Feature_cas_2_4_2[7:0]       ), //i
    .feature_3     (Feature_cas_2_4_3[7:0]       ), //i
    .feature_4     (Feature_cas_2_4_4[7:0]       ), //i
    .feature_5     (Feature_cas_2_4_5[7:0]       ), //i
    .feature_6     (Feature_cas_2_4_6[7:0]       ), //i
    .feature_7     (Feature_cas_2_4_7[7:0]       ), //i
    .feature_8     (Feature_cas_2_4_8[7:0]       ), //i
    .feature_out_0 (lajiPE_102_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_102_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_102_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_102_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_102_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_102_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_102_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_102_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_102_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_103 (
    .weight_CE     (lajiPE_103_weight_CE         ), //i
    .feature_CE    (lajiPE_103_feature_CE        ), //i
    .weight_0      (Weight_Array_4_4_0[7:0]      ), //i
    .weight_1      (Weight_Array_4_4_1[7:0]      ), //i
    .weight_2      (Weight_Array_4_4_2[7:0]      ), //i
    .weight_3      (Weight_Array_4_4_3[7:0]      ), //i
    .weight_4      (Weight_Array_4_4_4[7:0]      ), //i
    .weight_5      (Weight_Array_4_4_5[7:0]      ), //i
    .weight_6      (Weight_Array_4_4_6[7:0]      ), //i
    .weight_7      (Weight_Array_4_4_7[7:0]      ), //i
    .weight_8      (Weight_Array_4_4_8[7:0]      ), //i
    .feature_0     (Feature_cas_3_4_0[7:0]       ), //i
    .feature_1     (Feature_cas_3_4_1[7:0]       ), //i
    .feature_2     (Feature_cas_3_4_2[7:0]       ), //i
    .feature_3     (Feature_cas_3_4_3[7:0]       ), //i
    .feature_4     (Feature_cas_3_4_4[7:0]       ), //i
    .feature_5     (Feature_cas_3_4_5[7:0]       ), //i
    .feature_6     (Feature_cas_3_4_6[7:0]       ), //i
    .feature_7     (Feature_cas_3_4_7[7:0]       ), //i
    .feature_8     (Feature_cas_3_4_8[7:0]       ), //i
    .feature_out_0 (lajiPE_103_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_103_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_103_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_103_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_103_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_103_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_103_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_103_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_103_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_104 (
    .weight_CE     (lajiPE_104_weight_CE         ), //i
    .feature_CE    (lajiPE_104_feature_CE        ), //i
    .weight_0      (Weight_Array_5_4_0[7:0]      ), //i
    .weight_1      (Weight_Array_5_4_1[7:0]      ), //i
    .weight_2      (Weight_Array_5_4_2[7:0]      ), //i
    .weight_3      (Weight_Array_5_4_3[7:0]      ), //i
    .weight_4      (Weight_Array_5_4_4[7:0]      ), //i
    .weight_5      (Weight_Array_5_4_5[7:0]      ), //i
    .weight_6      (Weight_Array_5_4_6[7:0]      ), //i
    .weight_7      (Weight_Array_5_4_7[7:0]      ), //i
    .weight_8      (Weight_Array_5_4_8[7:0]      ), //i
    .feature_0     (Feature_cas_4_4_0[7:0]       ), //i
    .feature_1     (Feature_cas_4_4_1[7:0]       ), //i
    .feature_2     (Feature_cas_4_4_2[7:0]       ), //i
    .feature_3     (Feature_cas_4_4_3[7:0]       ), //i
    .feature_4     (Feature_cas_4_4_4[7:0]       ), //i
    .feature_5     (Feature_cas_4_4_5[7:0]       ), //i
    .feature_6     (Feature_cas_4_4_6[7:0]       ), //i
    .feature_7     (Feature_cas_4_4_7[7:0]       ), //i
    .feature_8     (Feature_cas_4_4_8[7:0]       ), //i
    .feature_out_0 (lajiPE_104_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_104_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_104_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_104_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_104_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_104_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_104_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_104_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_104_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_105 (
    .weight_CE     (lajiPE_105_weight_CE         ), //i
    .feature_CE    (lajiPE_105_feature_CE        ), //i
    .weight_0      (Weight_Array_6_4_0[7:0]      ), //i
    .weight_1      (Weight_Array_6_4_1[7:0]      ), //i
    .weight_2      (Weight_Array_6_4_2[7:0]      ), //i
    .weight_3      (Weight_Array_6_4_3[7:0]      ), //i
    .weight_4      (Weight_Array_6_4_4[7:0]      ), //i
    .weight_5      (Weight_Array_6_4_5[7:0]      ), //i
    .weight_6      (Weight_Array_6_4_6[7:0]      ), //i
    .weight_7      (Weight_Array_6_4_7[7:0]      ), //i
    .weight_8      (Weight_Array_6_4_8[7:0]      ), //i
    .feature_0     (Feature_cas_5_4_0[7:0]       ), //i
    .feature_1     (Feature_cas_5_4_1[7:0]       ), //i
    .feature_2     (Feature_cas_5_4_2[7:0]       ), //i
    .feature_3     (Feature_cas_5_4_3[7:0]       ), //i
    .feature_4     (Feature_cas_5_4_4[7:0]       ), //i
    .feature_5     (Feature_cas_5_4_5[7:0]       ), //i
    .feature_6     (Feature_cas_5_4_6[7:0]       ), //i
    .feature_7     (Feature_cas_5_4_7[7:0]       ), //i
    .feature_8     (Feature_cas_5_4_8[7:0]       ), //i
    .feature_out_0 (lajiPE_105_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_105_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_105_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_105_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_105_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_105_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_105_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_105_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_105_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_106 (
    .weight_CE     (lajiPE_106_weight_CE         ), //i
    .feature_CE    (lajiPE_106_feature_CE        ), //i
    .weight_0      (Weight_Array_7_4_0[7:0]      ), //i
    .weight_1      (Weight_Array_7_4_1[7:0]      ), //i
    .weight_2      (Weight_Array_7_4_2[7:0]      ), //i
    .weight_3      (Weight_Array_7_4_3[7:0]      ), //i
    .weight_4      (Weight_Array_7_4_4[7:0]      ), //i
    .weight_5      (Weight_Array_7_4_5[7:0]      ), //i
    .weight_6      (Weight_Array_7_4_6[7:0]      ), //i
    .weight_7      (Weight_Array_7_4_7[7:0]      ), //i
    .weight_8      (Weight_Array_7_4_8[7:0]      ), //i
    .feature_0     (Feature_cas_6_4_0[7:0]       ), //i
    .feature_1     (Feature_cas_6_4_1[7:0]       ), //i
    .feature_2     (Feature_cas_6_4_2[7:0]       ), //i
    .feature_3     (Feature_cas_6_4_3[7:0]       ), //i
    .feature_4     (Feature_cas_6_4_4[7:0]       ), //i
    .feature_5     (Feature_cas_6_4_5[7:0]       ), //i
    .feature_6     (Feature_cas_6_4_6[7:0]       ), //i
    .feature_7     (Feature_cas_6_4_7[7:0]       ), //i
    .feature_8     (Feature_cas_6_4_8[7:0]       ), //i
    .feature_out_0 (lajiPE_106_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_106_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_106_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_106_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_106_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_106_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_106_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_106_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_106_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_107 (
    .weight_CE     (lajiPE_107_weight_CE         ), //i
    .feature_CE    (lajiPE_107_feature_CE        ), //i
    .weight_0      (Weight_Array_1_5_0[7:0]      ), //i
    .weight_1      (Weight_Array_1_5_1[7:0]      ), //i
    .weight_2      (Weight_Array_1_5_2[7:0]      ), //i
    .weight_3      (Weight_Array_1_5_3[7:0]      ), //i
    .weight_4      (Weight_Array_1_5_4[7:0]      ), //i
    .weight_5      (Weight_Array_1_5_5[7:0]      ), //i
    .weight_6      (Weight_Array_1_5_6[7:0]      ), //i
    .weight_7      (Weight_Array_1_5_7[7:0]      ), //i
    .weight_8      (Weight_Array_1_5_8[7:0]      ), //i
    .feature_0     (Feature_cas_0_5_0[7:0]       ), //i
    .feature_1     (Feature_cas_0_5_1[7:0]       ), //i
    .feature_2     (Feature_cas_0_5_2[7:0]       ), //i
    .feature_3     (Feature_cas_0_5_3[7:0]       ), //i
    .feature_4     (Feature_cas_0_5_4[7:0]       ), //i
    .feature_5     (Feature_cas_0_5_5[7:0]       ), //i
    .feature_6     (Feature_cas_0_5_6[7:0]       ), //i
    .feature_7     (Feature_cas_0_5_7[7:0]       ), //i
    .feature_8     (Feature_cas_0_5_8[7:0]       ), //i
    .feature_out_0 (lajiPE_107_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_107_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_107_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_107_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_107_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_107_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_107_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_107_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_107_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_108 (
    .weight_CE     (lajiPE_108_weight_CE         ), //i
    .feature_CE    (lajiPE_108_feature_CE        ), //i
    .weight_0      (Weight_Array_2_5_0[7:0]      ), //i
    .weight_1      (Weight_Array_2_5_1[7:0]      ), //i
    .weight_2      (Weight_Array_2_5_2[7:0]      ), //i
    .weight_3      (Weight_Array_2_5_3[7:0]      ), //i
    .weight_4      (Weight_Array_2_5_4[7:0]      ), //i
    .weight_5      (Weight_Array_2_5_5[7:0]      ), //i
    .weight_6      (Weight_Array_2_5_6[7:0]      ), //i
    .weight_7      (Weight_Array_2_5_7[7:0]      ), //i
    .weight_8      (Weight_Array_2_5_8[7:0]      ), //i
    .feature_0     (Feature_cas_1_5_0[7:0]       ), //i
    .feature_1     (Feature_cas_1_5_1[7:0]       ), //i
    .feature_2     (Feature_cas_1_5_2[7:0]       ), //i
    .feature_3     (Feature_cas_1_5_3[7:0]       ), //i
    .feature_4     (Feature_cas_1_5_4[7:0]       ), //i
    .feature_5     (Feature_cas_1_5_5[7:0]       ), //i
    .feature_6     (Feature_cas_1_5_6[7:0]       ), //i
    .feature_7     (Feature_cas_1_5_7[7:0]       ), //i
    .feature_8     (Feature_cas_1_5_8[7:0]       ), //i
    .feature_out_0 (lajiPE_108_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_108_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_108_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_108_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_108_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_108_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_108_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_108_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_108_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_109 (
    .weight_CE     (lajiPE_109_weight_CE         ), //i
    .feature_CE    (lajiPE_109_feature_CE        ), //i
    .weight_0      (Weight_Array_3_5_0[7:0]      ), //i
    .weight_1      (Weight_Array_3_5_1[7:0]      ), //i
    .weight_2      (Weight_Array_3_5_2[7:0]      ), //i
    .weight_3      (Weight_Array_3_5_3[7:0]      ), //i
    .weight_4      (Weight_Array_3_5_4[7:0]      ), //i
    .weight_5      (Weight_Array_3_5_5[7:0]      ), //i
    .weight_6      (Weight_Array_3_5_6[7:0]      ), //i
    .weight_7      (Weight_Array_3_5_7[7:0]      ), //i
    .weight_8      (Weight_Array_3_5_8[7:0]      ), //i
    .feature_0     (Feature_cas_2_5_0[7:0]       ), //i
    .feature_1     (Feature_cas_2_5_1[7:0]       ), //i
    .feature_2     (Feature_cas_2_5_2[7:0]       ), //i
    .feature_3     (Feature_cas_2_5_3[7:0]       ), //i
    .feature_4     (Feature_cas_2_5_4[7:0]       ), //i
    .feature_5     (Feature_cas_2_5_5[7:0]       ), //i
    .feature_6     (Feature_cas_2_5_6[7:0]       ), //i
    .feature_7     (Feature_cas_2_5_7[7:0]       ), //i
    .feature_8     (Feature_cas_2_5_8[7:0]       ), //i
    .feature_out_0 (lajiPE_109_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_109_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_109_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_109_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_109_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_109_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_109_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_109_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_109_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_110 (
    .weight_CE     (lajiPE_110_weight_CE         ), //i
    .feature_CE    (lajiPE_110_feature_CE        ), //i
    .weight_0      (Weight_Array_4_5_0[7:0]      ), //i
    .weight_1      (Weight_Array_4_5_1[7:0]      ), //i
    .weight_2      (Weight_Array_4_5_2[7:0]      ), //i
    .weight_3      (Weight_Array_4_5_3[7:0]      ), //i
    .weight_4      (Weight_Array_4_5_4[7:0]      ), //i
    .weight_5      (Weight_Array_4_5_5[7:0]      ), //i
    .weight_6      (Weight_Array_4_5_6[7:0]      ), //i
    .weight_7      (Weight_Array_4_5_7[7:0]      ), //i
    .weight_8      (Weight_Array_4_5_8[7:0]      ), //i
    .feature_0     (Feature_cas_3_5_0[7:0]       ), //i
    .feature_1     (Feature_cas_3_5_1[7:0]       ), //i
    .feature_2     (Feature_cas_3_5_2[7:0]       ), //i
    .feature_3     (Feature_cas_3_5_3[7:0]       ), //i
    .feature_4     (Feature_cas_3_5_4[7:0]       ), //i
    .feature_5     (Feature_cas_3_5_5[7:0]       ), //i
    .feature_6     (Feature_cas_3_5_6[7:0]       ), //i
    .feature_7     (Feature_cas_3_5_7[7:0]       ), //i
    .feature_8     (Feature_cas_3_5_8[7:0]       ), //i
    .feature_out_0 (lajiPE_110_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_110_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_110_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_110_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_110_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_110_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_110_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_110_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_110_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_111 (
    .weight_CE     (lajiPE_111_weight_CE         ), //i
    .feature_CE    (lajiPE_111_feature_CE        ), //i
    .weight_0      (Weight_Array_5_5_0[7:0]      ), //i
    .weight_1      (Weight_Array_5_5_1[7:0]      ), //i
    .weight_2      (Weight_Array_5_5_2[7:0]      ), //i
    .weight_3      (Weight_Array_5_5_3[7:0]      ), //i
    .weight_4      (Weight_Array_5_5_4[7:0]      ), //i
    .weight_5      (Weight_Array_5_5_5[7:0]      ), //i
    .weight_6      (Weight_Array_5_5_6[7:0]      ), //i
    .weight_7      (Weight_Array_5_5_7[7:0]      ), //i
    .weight_8      (Weight_Array_5_5_8[7:0]      ), //i
    .feature_0     (Feature_cas_4_5_0[7:0]       ), //i
    .feature_1     (Feature_cas_4_5_1[7:0]       ), //i
    .feature_2     (Feature_cas_4_5_2[7:0]       ), //i
    .feature_3     (Feature_cas_4_5_3[7:0]       ), //i
    .feature_4     (Feature_cas_4_5_4[7:0]       ), //i
    .feature_5     (Feature_cas_4_5_5[7:0]       ), //i
    .feature_6     (Feature_cas_4_5_6[7:0]       ), //i
    .feature_7     (Feature_cas_4_5_7[7:0]       ), //i
    .feature_8     (Feature_cas_4_5_8[7:0]       ), //i
    .feature_out_0 (lajiPE_111_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_111_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_111_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_111_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_111_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_111_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_111_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_111_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_111_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_112 (
    .weight_CE     (lajiPE_112_weight_CE         ), //i
    .feature_CE    (lajiPE_112_feature_CE        ), //i
    .weight_0      (Weight_Array_6_5_0[7:0]      ), //i
    .weight_1      (Weight_Array_6_5_1[7:0]      ), //i
    .weight_2      (Weight_Array_6_5_2[7:0]      ), //i
    .weight_3      (Weight_Array_6_5_3[7:0]      ), //i
    .weight_4      (Weight_Array_6_5_4[7:0]      ), //i
    .weight_5      (Weight_Array_6_5_5[7:0]      ), //i
    .weight_6      (Weight_Array_6_5_6[7:0]      ), //i
    .weight_7      (Weight_Array_6_5_7[7:0]      ), //i
    .weight_8      (Weight_Array_6_5_8[7:0]      ), //i
    .feature_0     (Feature_cas_5_5_0[7:0]       ), //i
    .feature_1     (Feature_cas_5_5_1[7:0]       ), //i
    .feature_2     (Feature_cas_5_5_2[7:0]       ), //i
    .feature_3     (Feature_cas_5_5_3[7:0]       ), //i
    .feature_4     (Feature_cas_5_5_4[7:0]       ), //i
    .feature_5     (Feature_cas_5_5_5[7:0]       ), //i
    .feature_6     (Feature_cas_5_5_6[7:0]       ), //i
    .feature_7     (Feature_cas_5_5_7[7:0]       ), //i
    .feature_8     (Feature_cas_5_5_8[7:0]       ), //i
    .feature_out_0 (lajiPE_112_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_112_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_112_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_112_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_112_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_112_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_112_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_112_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_112_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_113 (
    .weight_CE     (lajiPE_113_weight_CE         ), //i
    .feature_CE    (lajiPE_113_feature_CE        ), //i
    .weight_0      (Weight_Array_7_5_0[7:0]      ), //i
    .weight_1      (Weight_Array_7_5_1[7:0]      ), //i
    .weight_2      (Weight_Array_7_5_2[7:0]      ), //i
    .weight_3      (Weight_Array_7_5_3[7:0]      ), //i
    .weight_4      (Weight_Array_7_5_4[7:0]      ), //i
    .weight_5      (Weight_Array_7_5_5[7:0]      ), //i
    .weight_6      (Weight_Array_7_5_6[7:0]      ), //i
    .weight_7      (Weight_Array_7_5_7[7:0]      ), //i
    .weight_8      (Weight_Array_7_5_8[7:0]      ), //i
    .feature_0     (Feature_cas_6_5_0[7:0]       ), //i
    .feature_1     (Feature_cas_6_5_1[7:0]       ), //i
    .feature_2     (Feature_cas_6_5_2[7:0]       ), //i
    .feature_3     (Feature_cas_6_5_3[7:0]       ), //i
    .feature_4     (Feature_cas_6_5_4[7:0]       ), //i
    .feature_5     (Feature_cas_6_5_5[7:0]       ), //i
    .feature_6     (Feature_cas_6_5_6[7:0]       ), //i
    .feature_7     (Feature_cas_6_5_7[7:0]       ), //i
    .feature_8     (Feature_cas_6_5_8[7:0]       ), //i
    .feature_out_0 (lajiPE_113_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_113_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_113_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_113_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_113_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_113_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_113_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_113_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_113_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_114 (
    .weight_CE     (lajiPE_114_weight_CE         ), //i
    .feature_CE    (lajiPE_114_feature_CE        ), //i
    .weight_0      (Weight_Array_1_6_0[7:0]      ), //i
    .weight_1      (Weight_Array_1_6_1[7:0]      ), //i
    .weight_2      (Weight_Array_1_6_2[7:0]      ), //i
    .weight_3      (Weight_Array_1_6_3[7:0]      ), //i
    .weight_4      (Weight_Array_1_6_4[7:0]      ), //i
    .weight_5      (Weight_Array_1_6_5[7:0]      ), //i
    .weight_6      (Weight_Array_1_6_6[7:0]      ), //i
    .weight_7      (Weight_Array_1_6_7[7:0]      ), //i
    .weight_8      (Weight_Array_1_6_8[7:0]      ), //i
    .feature_0     (Feature_cas_0_6_0[7:0]       ), //i
    .feature_1     (Feature_cas_0_6_1[7:0]       ), //i
    .feature_2     (Feature_cas_0_6_2[7:0]       ), //i
    .feature_3     (Feature_cas_0_6_3[7:0]       ), //i
    .feature_4     (Feature_cas_0_6_4[7:0]       ), //i
    .feature_5     (Feature_cas_0_6_5[7:0]       ), //i
    .feature_6     (Feature_cas_0_6_6[7:0]       ), //i
    .feature_7     (Feature_cas_0_6_7[7:0]       ), //i
    .feature_8     (Feature_cas_0_6_8[7:0]       ), //i
    .feature_out_0 (lajiPE_114_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_114_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_114_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_114_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_114_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_114_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_114_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_114_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_114_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_115 (
    .weight_CE     (lajiPE_115_weight_CE         ), //i
    .feature_CE    (lajiPE_115_feature_CE        ), //i
    .weight_0      (Weight_Array_2_6_0[7:0]      ), //i
    .weight_1      (Weight_Array_2_6_1[7:0]      ), //i
    .weight_2      (Weight_Array_2_6_2[7:0]      ), //i
    .weight_3      (Weight_Array_2_6_3[7:0]      ), //i
    .weight_4      (Weight_Array_2_6_4[7:0]      ), //i
    .weight_5      (Weight_Array_2_6_5[7:0]      ), //i
    .weight_6      (Weight_Array_2_6_6[7:0]      ), //i
    .weight_7      (Weight_Array_2_6_7[7:0]      ), //i
    .weight_8      (Weight_Array_2_6_8[7:0]      ), //i
    .feature_0     (Feature_cas_1_6_0[7:0]       ), //i
    .feature_1     (Feature_cas_1_6_1[7:0]       ), //i
    .feature_2     (Feature_cas_1_6_2[7:0]       ), //i
    .feature_3     (Feature_cas_1_6_3[7:0]       ), //i
    .feature_4     (Feature_cas_1_6_4[7:0]       ), //i
    .feature_5     (Feature_cas_1_6_5[7:0]       ), //i
    .feature_6     (Feature_cas_1_6_6[7:0]       ), //i
    .feature_7     (Feature_cas_1_6_7[7:0]       ), //i
    .feature_8     (Feature_cas_1_6_8[7:0]       ), //i
    .feature_out_0 (lajiPE_115_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_115_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_115_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_115_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_115_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_115_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_115_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_115_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_115_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_116 (
    .weight_CE     (lajiPE_116_weight_CE         ), //i
    .feature_CE    (lajiPE_116_feature_CE        ), //i
    .weight_0      (Weight_Array_3_6_0[7:0]      ), //i
    .weight_1      (Weight_Array_3_6_1[7:0]      ), //i
    .weight_2      (Weight_Array_3_6_2[7:0]      ), //i
    .weight_3      (Weight_Array_3_6_3[7:0]      ), //i
    .weight_4      (Weight_Array_3_6_4[7:0]      ), //i
    .weight_5      (Weight_Array_3_6_5[7:0]      ), //i
    .weight_6      (Weight_Array_3_6_6[7:0]      ), //i
    .weight_7      (Weight_Array_3_6_7[7:0]      ), //i
    .weight_8      (Weight_Array_3_6_8[7:0]      ), //i
    .feature_0     (Feature_cas_2_6_0[7:0]       ), //i
    .feature_1     (Feature_cas_2_6_1[7:0]       ), //i
    .feature_2     (Feature_cas_2_6_2[7:0]       ), //i
    .feature_3     (Feature_cas_2_6_3[7:0]       ), //i
    .feature_4     (Feature_cas_2_6_4[7:0]       ), //i
    .feature_5     (Feature_cas_2_6_5[7:0]       ), //i
    .feature_6     (Feature_cas_2_6_6[7:0]       ), //i
    .feature_7     (Feature_cas_2_6_7[7:0]       ), //i
    .feature_8     (Feature_cas_2_6_8[7:0]       ), //i
    .feature_out_0 (lajiPE_116_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_116_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_116_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_116_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_116_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_116_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_116_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_116_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_116_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_117 (
    .weight_CE     (lajiPE_117_weight_CE         ), //i
    .feature_CE    (lajiPE_117_feature_CE        ), //i
    .weight_0      (Weight_Array_4_6_0[7:0]      ), //i
    .weight_1      (Weight_Array_4_6_1[7:0]      ), //i
    .weight_2      (Weight_Array_4_6_2[7:0]      ), //i
    .weight_3      (Weight_Array_4_6_3[7:0]      ), //i
    .weight_4      (Weight_Array_4_6_4[7:0]      ), //i
    .weight_5      (Weight_Array_4_6_5[7:0]      ), //i
    .weight_6      (Weight_Array_4_6_6[7:0]      ), //i
    .weight_7      (Weight_Array_4_6_7[7:0]      ), //i
    .weight_8      (Weight_Array_4_6_8[7:0]      ), //i
    .feature_0     (Feature_cas_3_6_0[7:0]       ), //i
    .feature_1     (Feature_cas_3_6_1[7:0]       ), //i
    .feature_2     (Feature_cas_3_6_2[7:0]       ), //i
    .feature_3     (Feature_cas_3_6_3[7:0]       ), //i
    .feature_4     (Feature_cas_3_6_4[7:0]       ), //i
    .feature_5     (Feature_cas_3_6_5[7:0]       ), //i
    .feature_6     (Feature_cas_3_6_6[7:0]       ), //i
    .feature_7     (Feature_cas_3_6_7[7:0]       ), //i
    .feature_8     (Feature_cas_3_6_8[7:0]       ), //i
    .feature_out_0 (lajiPE_117_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_117_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_117_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_117_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_117_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_117_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_117_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_117_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_117_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_118 (
    .weight_CE     (lajiPE_118_weight_CE         ), //i
    .feature_CE    (lajiPE_118_feature_CE        ), //i
    .weight_0      (Weight_Array_5_6_0[7:0]      ), //i
    .weight_1      (Weight_Array_5_6_1[7:0]      ), //i
    .weight_2      (Weight_Array_5_6_2[7:0]      ), //i
    .weight_3      (Weight_Array_5_6_3[7:0]      ), //i
    .weight_4      (Weight_Array_5_6_4[7:0]      ), //i
    .weight_5      (Weight_Array_5_6_5[7:0]      ), //i
    .weight_6      (Weight_Array_5_6_6[7:0]      ), //i
    .weight_7      (Weight_Array_5_6_7[7:0]      ), //i
    .weight_8      (Weight_Array_5_6_8[7:0]      ), //i
    .feature_0     (Feature_cas_4_6_0[7:0]       ), //i
    .feature_1     (Feature_cas_4_6_1[7:0]       ), //i
    .feature_2     (Feature_cas_4_6_2[7:0]       ), //i
    .feature_3     (Feature_cas_4_6_3[7:0]       ), //i
    .feature_4     (Feature_cas_4_6_4[7:0]       ), //i
    .feature_5     (Feature_cas_4_6_5[7:0]       ), //i
    .feature_6     (Feature_cas_4_6_6[7:0]       ), //i
    .feature_7     (Feature_cas_4_6_7[7:0]       ), //i
    .feature_8     (Feature_cas_4_6_8[7:0]       ), //i
    .feature_out_0 (lajiPE_118_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_118_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_118_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_118_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_118_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_118_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_118_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_118_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_118_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_119 (
    .weight_CE     (lajiPE_119_weight_CE         ), //i
    .feature_CE    (lajiPE_119_feature_CE        ), //i
    .weight_0      (Weight_Array_6_6_0[7:0]      ), //i
    .weight_1      (Weight_Array_6_6_1[7:0]      ), //i
    .weight_2      (Weight_Array_6_6_2[7:0]      ), //i
    .weight_3      (Weight_Array_6_6_3[7:0]      ), //i
    .weight_4      (Weight_Array_6_6_4[7:0]      ), //i
    .weight_5      (Weight_Array_6_6_5[7:0]      ), //i
    .weight_6      (Weight_Array_6_6_6[7:0]      ), //i
    .weight_7      (Weight_Array_6_6_7[7:0]      ), //i
    .weight_8      (Weight_Array_6_6_8[7:0]      ), //i
    .feature_0     (Feature_cas_5_6_0[7:0]       ), //i
    .feature_1     (Feature_cas_5_6_1[7:0]       ), //i
    .feature_2     (Feature_cas_5_6_2[7:0]       ), //i
    .feature_3     (Feature_cas_5_6_3[7:0]       ), //i
    .feature_4     (Feature_cas_5_6_4[7:0]       ), //i
    .feature_5     (Feature_cas_5_6_5[7:0]       ), //i
    .feature_6     (Feature_cas_5_6_6[7:0]       ), //i
    .feature_7     (Feature_cas_5_6_7[7:0]       ), //i
    .feature_8     (Feature_cas_5_6_8[7:0]       ), //i
    .feature_out_0 (lajiPE_119_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_119_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_119_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_119_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_119_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_119_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_119_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_119_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_119_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_120 (
    .weight_CE     (lajiPE_120_weight_CE         ), //i
    .feature_CE    (lajiPE_120_feature_CE        ), //i
    .weight_0      (Weight_Array_7_6_0[7:0]      ), //i
    .weight_1      (Weight_Array_7_6_1[7:0]      ), //i
    .weight_2      (Weight_Array_7_6_2[7:0]      ), //i
    .weight_3      (Weight_Array_7_6_3[7:0]      ), //i
    .weight_4      (Weight_Array_7_6_4[7:0]      ), //i
    .weight_5      (Weight_Array_7_6_5[7:0]      ), //i
    .weight_6      (Weight_Array_7_6_6[7:0]      ), //i
    .weight_7      (Weight_Array_7_6_7[7:0]      ), //i
    .weight_8      (Weight_Array_7_6_8[7:0]      ), //i
    .feature_0     (Feature_cas_6_6_0[7:0]       ), //i
    .feature_1     (Feature_cas_6_6_1[7:0]       ), //i
    .feature_2     (Feature_cas_6_6_2[7:0]       ), //i
    .feature_3     (Feature_cas_6_6_3[7:0]       ), //i
    .feature_4     (Feature_cas_6_6_4[7:0]       ), //i
    .feature_5     (Feature_cas_6_6_5[7:0]       ), //i
    .feature_6     (Feature_cas_6_6_6[7:0]       ), //i
    .feature_7     (Feature_cas_6_6_7[7:0]       ), //i
    .feature_8     (Feature_cas_6_6_8[7:0]       ), //i
    .feature_out_0 (lajiPE_120_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_120_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_120_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_120_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_120_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_120_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_120_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_120_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_120_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_121 (
    .weight_CE     (lajiPE_121_weight_CE         ), //i
    .feature_CE    (lajiPE_121_feature_CE        ), //i
    .weight_0      (Weight_Array_1_7_0[7:0]      ), //i
    .weight_1      (Weight_Array_1_7_1[7:0]      ), //i
    .weight_2      (Weight_Array_1_7_2[7:0]      ), //i
    .weight_3      (Weight_Array_1_7_3[7:0]      ), //i
    .weight_4      (Weight_Array_1_7_4[7:0]      ), //i
    .weight_5      (Weight_Array_1_7_5[7:0]      ), //i
    .weight_6      (Weight_Array_1_7_6[7:0]      ), //i
    .weight_7      (Weight_Array_1_7_7[7:0]      ), //i
    .weight_8      (Weight_Array_1_7_8[7:0]      ), //i
    .feature_0     (Feature_cas_0_7_0[7:0]       ), //i
    .feature_1     (Feature_cas_0_7_1[7:0]       ), //i
    .feature_2     (Feature_cas_0_7_2[7:0]       ), //i
    .feature_3     (Feature_cas_0_7_3[7:0]       ), //i
    .feature_4     (Feature_cas_0_7_4[7:0]       ), //i
    .feature_5     (Feature_cas_0_7_5[7:0]       ), //i
    .feature_6     (Feature_cas_0_7_6[7:0]       ), //i
    .feature_7     (Feature_cas_0_7_7[7:0]       ), //i
    .feature_8     (Feature_cas_0_7_8[7:0]       ), //i
    .feature_out_0 (lajiPE_121_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_121_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_121_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_121_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_121_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_121_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_121_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_121_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_121_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_122 (
    .weight_CE     (lajiPE_122_weight_CE         ), //i
    .feature_CE    (lajiPE_122_feature_CE        ), //i
    .weight_0      (Weight_Array_2_7_0[7:0]      ), //i
    .weight_1      (Weight_Array_2_7_1[7:0]      ), //i
    .weight_2      (Weight_Array_2_7_2[7:0]      ), //i
    .weight_3      (Weight_Array_2_7_3[7:0]      ), //i
    .weight_4      (Weight_Array_2_7_4[7:0]      ), //i
    .weight_5      (Weight_Array_2_7_5[7:0]      ), //i
    .weight_6      (Weight_Array_2_7_6[7:0]      ), //i
    .weight_7      (Weight_Array_2_7_7[7:0]      ), //i
    .weight_8      (Weight_Array_2_7_8[7:0]      ), //i
    .feature_0     (Feature_cas_1_7_0[7:0]       ), //i
    .feature_1     (Feature_cas_1_7_1[7:0]       ), //i
    .feature_2     (Feature_cas_1_7_2[7:0]       ), //i
    .feature_3     (Feature_cas_1_7_3[7:0]       ), //i
    .feature_4     (Feature_cas_1_7_4[7:0]       ), //i
    .feature_5     (Feature_cas_1_7_5[7:0]       ), //i
    .feature_6     (Feature_cas_1_7_6[7:0]       ), //i
    .feature_7     (Feature_cas_1_7_7[7:0]       ), //i
    .feature_8     (Feature_cas_1_7_8[7:0]       ), //i
    .feature_out_0 (lajiPE_122_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_122_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_122_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_122_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_122_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_122_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_122_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_122_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_122_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_123 (
    .weight_CE     (lajiPE_123_weight_CE         ), //i
    .feature_CE    (lajiPE_123_feature_CE        ), //i
    .weight_0      (Weight_Array_3_7_0[7:0]      ), //i
    .weight_1      (Weight_Array_3_7_1[7:0]      ), //i
    .weight_2      (Weight_Array_3_7_2[7:0]      ), //i
    .weight_3      (Weight_Array_3_7_3[7:0]      ), //i
    .weight_4      (Weight_Array_3_7_4[7:0]      ), //i
    .weight_5      (Weight_Array_3_7_5[7:0]      ), //i
    .weight_6      (Weight_Array_3_7_6[7:0]      ), //i
    .weight_7      (Weight_Array_3_7_7[7:0]      ), //i
    .weight_8      (Weight_Array_3_7_8[7:0]      ), //i
    .feature_0     (Feature_cas_2_7_0[7:0]       ), //i
    .feature_1     (Feature_cas_2_7_1[7:0]       ), //i
    .feature_2     (Feature_cas_2_7_2[7:0]       ), //i
    .feature_3     (Feature_cas_2_7_3[7:0]       ), //i
    .feature_4     (Feature_cas_2_7_4[7:0]       ), //i
    .feature_5     (Feature_cas_2_7_5[7:0]       ), //i
    .feature_6     (Feature_cas_2_7_6[7:0]       ), //i
    .feature_7     (Feature_cas_2_7_7[7:0]       ), //i
    .feature_8     (Feature_cas_2_7_8[7:0]       ), //i
    .feature_out_0 (lajiPE_123_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_123_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_123_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_123_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_123_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_123_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_123_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_123_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_123_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_124 (
    .weight_CE     (lajiPE_124_weight_CE         ), //i
    .feature_CE    (lajiPE_124_feature_CE        ), //i
    .weight_0      (Weight_Array_4_7_0[7:0]      ), //i
    .weight_1      (Weight_Array_4_7_1[7:0]      ), //i
    .weight_2      (Weight_Array_4_7_2[7:0]      ), //i
    .weight_3      (Weight_Array_4_7_3[7:0]      ), //i
    .weight_4      (Weight_Array_4_7_4[7:0]      ), //i
    .weight_5      (Weight_Array_4_7_5[7:0]      ), //i
    .weight_6      (Weight_Array_4_7_6[7:0]      ), //i
    .weight_7      (Weight_Array_4_7_7[7:0]      ), //i
    .weight_8      (Weight_Array_4_7_8[7:0]      ), //i
    .feature_0     (Feature_cas_3_7_0[7:0]       ), //i
    .feature_1     (Feature_cas_3_7_1[7:0]       ), //i
    .feature_2     (Feature_cas_3_7_2[7:0]       ), //i
    .feature_3     (Feature_cas_3_7_3[7:0]       ), //i
    .feature_4     (Feature_cas_3_7_4[7:0]       ), //i
    .feature_5     (Feature_cas_3_7_5[7:0]       ), //i
    .feature_6     (Feature_cas_3_7_6[7:0]       ), //i
    .feature_7     (Feature_cas_3_7_7[7:0]       ), //i
    .feature_8     (Feature_cas_3_7_8[7:0]       ), //i
    .feature_out_0 (lajiPE_124_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_124_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_124_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_124_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_124_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_124_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_124_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_124_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_124_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_125 (
    .weight_CE     (lajiPE_125_weight_CE         ), //i
    .feature_CE    (lajiPE_125_feature_CE        ), //i
    .weight_0      (Weight_Array_5_7_0[7:0]      ), //i
    .weight_1      (Weight_Array_5_7_1[7:0]      ), //i
    .weight_2      (Weight_Array_5_7_2[7:0]      ), //i
    .weight_3      (Weight_Array_5_7_3[7:0]      ), //i
    .weight_4      (Weight_Array_5_7_4[7:0]      ), //i
    .weight_5      (Weight_Array_5_7_5[7:0]      ), //i
    .weight_6      (Weight_Array_5_7_6[7:0]      ), //i
    .weight_7      (Weight_Array_5_7_7[7:0]      ), //i
    .weight_8      (Weight_Array_5_7_8[7:0]      ), //i
    .feature_0     (Feature_cas_4_7_0[7:0]       ), //i
    .feature_1     (Feature_cas_4_7_1[7:0]       ), //i
    .feature_2     (Feature_cas_4_7_2[7:0]       ), //i
    .feature_3     (Feature_cas_4_7_3[7:0]       ), //i
    .feature_4     (Feature_cas_4_7_4[7:0]       ), //i
    .feature_5     (Feature_cas_4_7_5[7:0]       ), //i
    .feature_6     (Feature_cas_4_7_6[7:0]       ), //i
    .feature_7     (Feature_cas_4_7_7[7:0]       ), //i
    .feature_8     (Feature_cas_4_7_8[7:0]       ), //i
    .feature_out_0 (lajiPE_125_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_125_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_125_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_125_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_125_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_125_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_125_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_125_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_125_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_126 (
    .weight_CE     (lajiPE_126_weight_CE         ), //i
    .feature_CE    (lajiPE_126_feature_CE        ), //i
    .weight_0      (Weight_Array_6_7_0[7:0]      ), //i
    .weight_1      (Weight_Array_6_7_1[7:0]      ), //i
    .weight_2      (Weight_Array_6_7_2[7:0]      ), //i
    .weight_3      (Weight_Array_6_7_3[7:0]      ), //i
    .weight_4      (Weight_Array_6_7_4[7:0]      ), //i
    .weight_5      (Weight_Array_6_7_5[7:0]      ), //i
    .weight_6      (Weight_Array_6_7_6[7:0]      ), //i
    .weight_7      (Weight_Array_6_7_7[7:0]      ), //i
    .weight_8      (Weight_Array_6_7_8[7:0]      ), //i
    .feature_0     (Feature_cas_5_7_0[7:0]       ), //i
    .feature_1     (Feature_cas_5_7_1[7:0]       ), //i
    .feature_2     (Feature_cas_5_7_2[7:0]       ), //i
    .feature_3     (Feature_cas_5_7_3[7:0]       ), //i
    .feature_4     (Feature_cas_5_7_4[7:0]       ), //i
    .feature_5     (Feature_cas_5_7_5[7:0]       ), //i
    .feature_6     (Feature_cas_5_7_6[7:0]       ), //i
    .feature_7     (Feature_cas_5_7_7[7:0]       ), //i
    .feature_8     (Feature_cas_5_7_8[7:0]       ), //i
    .feature_out_0 (lajiPE_126_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_126_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_126_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_126_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_126_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_126_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_126_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_126_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_126_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  lajiPE lajiPE_127 (
    .weight_CE     (lajiPE_127_weight_CE         ), //i
    .feature_CE    (lajiPE_127_feature_CE        ), //i
    .weight_0      (Weight_Array_7_7_0[7:0]      ), //i
    .weight_1      (Weight_Array_7_7_1[7:0]      ), //i
    .weight_2      (Weight_Array_7_7_2[7:0]      ), //i
    .weight_3      (Weight_Array_7_7_3[7:0]      ), //i
    .weight_4      (Weight_Array_7_7_4[7:0]      ), //i
    .weight_5      (Weight_Array_7_7_5[7:0]      ), //i
    .weight_6      (Weight_Array_7_7_6[7:0]      ), //i
    .weight_7      (Weight_Array_7_7_7[7:0]      ), //i
    .weight_8      (Weight_Array_7_7_8[7:0]      ), //i
    .feature_0     (Feature_cas_6_7_0[7:0]       ), //i
    .feature_1     (Feature_cas_6_7_1[7:0]       ), //i
    .feature_2     (Feature_cas_6_7_2[7:0]       ), //i
    .feature_3     (Feature_cas_6_7_3[7:0]       ), //i
    .feature_4     (Feature_cas_6_7_4[7:0]       ), //i
    .feature_5     (Feature_cas_6_7_5[7:0]       ), //i
    .feature_6     (Feature_cas_6_7_6[7:0]       ), //i
    .feature_7     (Feature_cas_6_7_7[7:0]       ), //i
    .feature_8     (Feature_cas_6_7_8[7:0]       ), //i
    .feature_out_0 (lajiPE_127_feature_out_0[7:0]), //o
    .feature_out_1 (lajiPE_127_feature_out_1[7:0]), //o
    .feature_out_2 (lajiPE_127_feature_out_2[7:0]), //o
    .feature_out_3 (lajiPE_127_feature_out_3[7:0]), //o
    .feature_out_4 (lajiPE_127_feature_out_4[7:0]), //o
    .feature_out_5 (lajiPE_127_feature_out_5[7:0]), //o
    .feature_out_6 (lajiPE_127_feature_out_6[7:0]), //o
    .feature_out_7 (lajiPE_127_feature_out_7[7:0]), //o
    .feature_out_8 (lajiPE_127_feature_out_8[7:0]), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  assign Feature_cas_0_0_0 = lajiPE_64_feature_out_0;
  assign Feature_cas_0_0_1 = lajiPE_64_feature_out_1;
  assign Feature_cas_0_0_2 = lajiPE_64_feature_out_2;
  assign Feature_cas_0_0_3 = lajiPE_64_feature_out_3;
  assign Feature_cas_0_0_4 = lajiPE_64_feature_out_4;
  assign Feature_cas_0_0_5 = lajiPE_64_feature_out_5;
  assign Feature_cas_0_0_6 = lajiPE_64_feature_out_6;
  assign Feature_cas_0_0_7 = lajiPE_64_feature_out_7;
  assign Feature_cas_0_0_8 = lajiPE_64_feature_out_8;
  assign Feature_cas_0_1_0 = lajiPE_65_feature_out_0;
  assign Feature_cas_0_1_1 = lajiPE_65_feature_out_1;
  assign Feature_cas_0_1_2 = lajiPE_65_feature_out_2;
  assign Feature_cas_0_1_3 = lajiPE_65_feature_out_3;
  assign Feature_cas_0_1_4 = lajiPE_65_feature_out_4;
  assign Feature_cas_0_1_5 = lajiPE_65_feature_out_5;
  assign Feature_cas_0_1_6 = lajiPE_65_feature_out_6;
  assign Feature_cas_0_1_7 = lajiPE_65_feature_out_7;
  assign Feature_cas_0_1_8 = lajiPE_65_feature_out_8;
  assign Feature_cas_0_2_0 = lajiPE_66_feature_out_0;
  assign Feature_cas_0_2_1 = lajiPE_66_feature_out_1;
  assign Feature_cas_0_2_2 = lajiPE_66_feature_out_2;
  assign Feature_cas_0_2_3 = lajiPE_66_feature_out_3;
  assign Feature_cas_0_2_4 = lajiPE_66_feature_out_4;
  assign Feature_cas_0_2_5 = lajiPE_66_feature_out_5;
  assign Feature_cas_0_2_6 = lajiPE_66_feature_out_6;
  assign Feature_cas_0_2_7 = lajiPE_66_feature_out_7;
  assign Feature_cas_0_2_8 = lajiPE_66_feature_out_8;
  assign Feature_cas_0_3_0 = lajiPE_67_feature_out_0;
  assign Feature_cas_0_3_1 = lajiPE_67_feature_out_1;
  assign Feature_cas_0_3_2 = lajiPE_67_feature_out_2;
  assign Feature_cas_0_3_3 = lajiPE_67_feature_out_3;
  assign Feature_cas_0_3_4 = lajiPE_67_feature_out_4;
  assign Feature_cas_0_3_5 = lajiPE_67_feature_out_5;
  assign Feature_cas_0_3_6 = lajiPE_67_feature_out_6;
  assign Feature_cas_0_3_7 = lajiPE_67_feature_out_7;
  assign Feature_cas_0_3_8 = lajiPE_67_feature_out_8;
  assign Feature_cas_0_4_0 = lajiPE_68_feature_out_0;
  assign Feature_cas_0_4_1 = lajiPE_68_feature_out_1;
  assign Feature_cas_0_4_2 = lajiPE_68_feature_out_2;
  assign Feature_cas_0_4_3 = lajiPE_68_feature_out_3;
  assign Feature_cas_0_4_4 = lajiPE_68_feature_out_4;
  assign Feature_cas_0_4_5 = lajiPE_68_feature_out_5;
  assign Feature_cas_0_4_6 = lajiPE_68_feature_out_6;
  assign Feature_cas_0_4_7 = lajiPE_68_feature_out_7;
  assign Feature_cas_0_4_8 = lajiPE_68_feature_out_8;
  assign Feature_cas_0_5_0 = lajiPE_69_feature_out_0;
  assign Feature_cas_0_5_1 = lajiPE_69_feature_out_1;
  assign Feature_cas_0_5_2 = lajiPE_69_feature_out_2;
  assign Feature_cas_0_5_3 = lajiPE_69_feature_out_3;
  assign Feature_cas_0_5_4 = lajiPE_69_feature_out_4;
  assign Feature_cas_0_5_5 = lajiPE_69_feature_out_5;
  assign Feature_cas_0_5_6 = lajiPE_69_feature_out_6;
  assign Feature_cas_0_5_7 = lajiPE_69_feature_out_7;
  assign Feature_cas_0_5_8 = lajiPE_69_feature_out_8;
  assign Feature_cas_0_6_0 = lajiPE_70_feature_out_0;
  assign Feature_cas_0_6_1 = lajiPE_70_feature_out_1;
  assign Feature_cas_0_6_2 = lajiPE_70_feature_out_2;
  assign Feature_cas_0_6_3 = lajiPE_70_feature_out_3;
  assign Feature_cas_0_6_4 = lajiPE_70_feature_out_4;
  assign Feature_cas_0_6_5 = lajiPE_70_feature_out_5;
  assign Feature_cas_0_6_6 = lajiPE_70_feature_out_6;
  assign Feature_cas_0_6_7 = lajiPE_70_feature_out_7;
  assign Feature_cas_0_6_8 = lajiPE_70_feature_out_8;
  assign Feature_cas_0_7_0 = lajiPE_71_feature_out_0;
  assign Feature_cas_0_7_1 = lajiPE_71_feature_out_1;
  assign Feature_cas_0_7_2 = lajiPE_71_feature_out_2;
  assign Feature_cas_0_7_3 = lajiPE_71_feature_out_3;
  assign Feature_cas_0_7_4 = lajiPE_71_feature_out_4;
  assign Feature_cas_0_7_5 = lajiPE_71_feature_out_5;
  assign Feature_cas_0_7_6 = lajiPE_71_feature_out_6;
  assign Feature_cas_0_7_7 = lajiPE_71_feature_out_7;
  assign Feature_cas_0_7_8 = lajiPE_71_feature_out_8;
  assign lajiPE_72_weight_CE = Weight_CE_c[0];
  assign lajiPE_72_feature_CE = Feature_CE_c[0];
  assign Feature_cas_1_0_0 = lajiPE_72_feature_out_0;
  assign Feature_cas_1_0_1 = lajiPE_72_feature_out_1;
  assign Feature_cas_1_0_2 = lajiPE_72_feature_out_2;
  assign Feature_cas_1_0_3 = lajiPE_72_feature_out_3;
  assign Feature_cas_1_0_4 = lajiPE_72_feature_out_4;
  assign Feature_cas_1_0_5 = lajiPE_72_feature_out_5;
  assign Feature_cas_1_0_6 = lajiPE_72_feature_out_6;
  assign Feature_cas_1_0_7 = lajiPE_72_feature_out_7;
  assign Feature_cas_1_0_8 = lajiPE_72_feature_out_8;
  assign lajiPE_73_weight_CE = Weight_CE_c[1];
  assign lajiPE_73_feature_CE = Feature_CE_c[1];
  assign Feature_cas_2_0_0 = lajiPE_73_feature_out_0;
  assign Feature_cas_2_0_1 = lajiPE_73_feature_out_1;
  assign Feature_cas_2_0_2 = lajiPE_73_feature_out_2;
  assign Feature_cas_2_0_3 = lajiPE_73_feature_out_3;
  assign Feature_cas_2_0_4 = lajiPE_73_feature_out_4;
  assign Feature_cas_2_0_5 = lajiPE_73_feature_out_5;
  assign Feature_cas_2_0_6 = lajiPE_73_feature_out_6;
  assign Feature_cas_2_0_7 = lajiPE_73_feature_out_7;
  assign Feature_cas_2_0_8 = lajiPE_73_feature_out_8;
  assign lajiPE_74_weight_CE = Weight_CE_c[2];
  assign lajiPE_74_feature_CE = Feature_CE_c[2];
  assign Feature_cas_3_0_0 = lajiPE_74_feature_out_0;
  assign Feature_cas_3_0_1 = lajiPE_74_feature_out_1;
  assign Feature_cas_3_0_2 = lajiPE_74_feature_out_2;
  assign Feature_cas_3_0_3 = lajiPE_74_feature_out_3;
  assign Feature_cas_3_0_4 = lajiPE_74_feature_out_4;
  assign Feature_cas_3_0_5 = lajiPE_74_feature_out_5;
  assign Feature_cas_3_0_6 = lajiPE_74_feature_out_6;
  assign Feature_cas_3_0_7 = lajiPE_74_feature_out_7;
  assign Feature_cas_3_0_8 = lajiPE_74_feature_out_8;
  assign lajiPE_75_weight_CE = Weight_CE_c[3];
  assign lajiPE_75_feature_CE = Feature_CE_c[3];
  assign Feature_cas_4_0_0 = lajiPE_75_feature_out_0;
  assign Feature_cas_4_0_1 = lajiPE_75_feature_out_1;
  assign Feature_cas_4_0_2 = lajiPE_75_feature_out_2;
  assign Feature_cas_4_0_3 = lajiPE_75_feature_out_3;
  assign Feature_cas_4_0_4 = lajiPE_75_feature_out_4;
  assign Feature_cas_4_0_5 = lajiPE_75_feature_out_5;
  assign Feature_cas_4_0_6 = lajiPE_75_feature_out_6;
  assign Feature_cas_4_0_7 = lajiPE_75_feature_out_7;
  assign Feature_cas_4_0_8 = lajiPE_75_feature_out_8;
  assign lajiPE_76_weight_CE = Weight_CE_c[4];
  assign lajiPE_76_feature_CE = Feature_CE_c[4];
  assign Feature_cas_5_0_0 = lajiPE_76_feature_out_0;
  assign Feature_cas_5_0_1 = lajiPE_76_feature_out_1;
  assign Feature_cas_5_0_2 = lajiPE_76_feature_out_2;
  assign Feature_cas_5_0_3 = lajiPE_76_feature_out_3;
  assign Feature_cas_5_0_4 = lajiPE_76_feature_out_4;
  assign Feature_cas_5_0_5 = lajiPE_76_feature_out_5;
  assign Feature_cas_5_0_6 = lajiPE_76_feature_out_6;
  assign Feature_cas_5_0_7 = lajiPE_76_feature_out_7;
  assign Feature_cas_5_0_8 = lajiPE_76_feature_out_8;
  assign lajiPE_77_weight_CE = Weight_CE_c[5];
  assign lajiPE_77_feature_CE = Feature_CE_c[5];
  assign Feature_cas_6_0_0 = lajiPE_77_feature_out_0;
  assign Feature_cas_6_0_1 = lajiPE_77_feature_out_1;
  assign Feature_cas_6_0_2 = lajiPE_77_feature_out_2;
  assign Feature_cas_6_0_3 = lajiPE_77_feature_out_3;
  assign Feature_cas_6_0_4 = lajiPE_77_feature_out_4;
  assign Feature_cas_6_0_5 = lajiPE_77_feature_out_5;
  assign Feature_cas_6_0_6 = lajiPE_77_feature_out_6;
  assign Feature_cas_6_0_7 = lajiPE_77_feature_out_7;
  assign Feature_cas_6_0_8 = lajiPE_77_feature_out_8;
  assign lajiPE_78_weight_CE = Weight_CE_c[6];
  assign lajiPE_78_feature_CE = Feature_CE_c[6];
  assign Feature_cas_7_0_0 = lajiPE_78_feature_out_0;
  assign Feature_cas_7_0_1 = lajiPE_78_feature_out_1;
  assign Feature_cas_7_0_2 = lajiPE_78_feature_out_2;
  assign Feature_cas_7_0_3 = lajiPE_78_feature_out_3;
  assign Feature_cas_7_0_4 = lajiPE_78_feature_out_4;
  assign Feature_cas_7_0_5 = lajiPE_78_feature_out_5;
  assign Feature_cas_7_0_6 = lajiPE_78_feature_out_6;
  assign Feature_cas_7_0_7 = lajiPE_78_feature_out_7;
  assign Feature_cas_7_0_8 = lajiPE_78_feature_out_8;
  assign lajiPE_79_weight_CE = Weight_CE_c[0];
  assign lajiPE_79_feature_CE = Feature_CE_c[0];
  assign Feature_cas_1_1_0 = lajiPE_79_feature_out_0;
  assign Feature_cas_1_1_1 = lajiPE_79_feature_out_1;
  assign Feature_cas_1_1_2 = lajiPE_79_feature_out_2;
  assign Feature_cas_1_1_3 = lajiPE_79_feature_out_3;
  assign Feature_cas_1_1_4 = lajiPE_79_feature_out_4;
  assign Feature_cas_1_1_5 = lajiPE_79_feature_out_5;
  assign Feature_cas_1_1_6 = lajiPE_79_feature_out_6;
  assign Feature_cas_1_1_7 = lajiPE_79_feature_out_7;
  assign Feature_cas_1_1_8 = lajiPE_79_feature_out_8;
  assign lajiPE_80_weight_CE = Weight_CE_c[1];
  assign lajiPE_80_feature_CE = Feature_CE_c[1];
  assign Feature_cas_2_1_0 = lajiPE_80_feature_out_0;
  assign Feature_cas_2_1_1 = lajiPE_80_feature_out_1;
  assign Feature_cas_2_1_2 = lajiPE_80_feature_out_2;
  assign Feature_cas_2_1_3 = lajiPE_80_feature_out_3;
  assign Feature_cas_2_1_4 = lajiPE_80_feature_out_4;
  assign Feature_cas_2_1_5 = lajiPE_80_feature_out_5;
  assign Feature_cas_2_1_6 = lajiPE_80_feature_out_6;
  assign Feature_cas_2_1_7 = lajiPE_80_feature_out_7;
  assign Feature_cas_2_1_8 = lajiPE_80_feature_out_8;
  assign lajiPE_81_weight_CE = Weight_CE_c[2];
  assign lajiPE_81_feature_CE = Feature_CE_c[2];
  assign Feature_cas_3_1_0 = lajiPE_81_feature_out_0;
  assign Feature_cas_3_1_1 = lajiPE_81_feature_out_1;
  assign Feature_cas_3_1_2 = lajiPE_81_feature_out_2;
  assign Feature_cas_3_1_3 = lajiPE_81_feature_out_3;
  assign Feature_cas_3_1_4 = lajiPE_81_feature_out_4;
  assign Feature_cas_3_1_5 = lajiPE_81_feature_out_5;
  assign Feature_cas_3_1_6 = lajiPE_81_feature_out_6;
  assign Feature_cas_3_1_7 = lajiPE_81_feature_out_7;
  assign Feature_cas_3_1_8 = lajiPE_81_feature_out_8;
  assign lajiPE_82_weight_CE = Weight_CE_c[3];
  assign lajiPE_82_feature_CE = Feature_CE_c[3];
  assign Feature_cas_4_1_0 = lajiPE_82_feature_out_0;
  assign Feature_cas_4_1_1 = lajiPE_82_feature_out_1;
  assign Feature_cas_4_1_2 = lajiPE_82_feature_out_2;
  assign Feature_cas_4_1_3 = lajiPE_82_feature_out_3;
  assign Feature_cas_4_1_4 = lajiPE_82_feature_out_4;
  assign Feature_cas_4_1_5 = lajiPE_82_feature_out_5;
  assign Feature_cas_4_1_6 = lajiPE_82_feature_out_6;
  assign Feature_cas_4_1_7 = lajiPE_82_feature_out_7;
  assign Feature_cas_4_1_8 = lajiPE_82_feature_out_8;
  assign lajiPE_83_weight_CE = Weight_CE_c[4];
  assign lajiPE_83_feature_CE = Feature_CE_c[4];
  assign Feature_cas_5_1_0 = lajiPE_83_feature_out_0;
  assign Feature_cas_5_1_1 = lajiPE_83_feature_out_1;
  assign Feature_cas_5_1_2 = lajiPE_83_feature_out_2;
  assign Feature_cas_5_1_3 = lajiPE_83_feature_out_3;
  assign Feature_cas_5_1_4 = lajiPE_83_feature_out_4;
  assign Feature_cas_5_1_5 = lajiPE_83_feature_out_5;
  assign Feature_cas_5_1_6 = lajiPE_83_feature_out_6;
  assign Feature_cas_5_1_7 = lajiPE_83_feature_out_7;
  assign Feature_cas_5_1_8 = lajiPE_83_feature_out_8;
  assign lajiPE_84_weight_CE = Weight_CE_c[5];
  assign lajiPE_84_feature_CE = Feature_CE_c[5];
  assign Feature_cas_6_1_0 = lajiPE_84_feature_out_0;
  assign Feature_cas_6_1_1 = lajiPE_84_feature_out_1;
  assign Feature_cas_6_1_2 = lajiPE_84_feature_out_2;
  assign Feature_cas_6_1_3 = lajiPE_84_feature_out_3;
  assign Feature_cas_6_1_4 = lajiPE_84_feature_out_4;
  assign Feature_cas_6_1_5 = lajiPE_84_feature_out_5;
  assign Feature_cas_6_1_6 = lajiPE_84_feature_out_6;
  assign Feature_cas_6_1_7 = lajiPE_84_feature_out_7;
  assign Feature_cas_6_1_8 = lajiPE_84_feature_out_8;
  assign lajiPE_85_weight_CE = Weight_CE_c[6];
  assign lajiPE_85_feature_CE = Feature_CE_c[6];
  assign Feature_cas_7_1_0 = lajiPE_85_feature_out_0;
  assign Feature_cas_7_1_1 = lajiPE_85_feature_out_1;
  assign Feature_cas_7_1_2 = lajiPE_85_feature_out_2;
  assign Feature_cas_7_1_3 = lajiPE_85_feature_out_3;
  assign Feature_cas_7_1_4 = lajiPE_85_feature_out_4;
  assign Feature_cas_7_1_5 = lajiPE_85_feature_out_5;
  assign Feature_cas_7_1_6 = lajiPE_85_feature_out_6;
  assign Feature_cas_7_1_7 = lajiPE_85_feature_out_7;
  assign Feature_cas_7_1_8 = lajiPE_85_feature_out_8;
  assign lajiPE_86_weight_CE = Weight_CE_c[0];
  assign lajiPE_86_feature_CE = Feature_CE_c[0];
  assign Feature_cas_1_2_0 = lajiPE_86_feature_out_0;
  assign Feature_cas_1_2_1 = lajiPE_86_feature_out_1;
  assign Feature_cas_1_2_2 = lajiPE_86_feature_out_2;
  assign Feature_cas_1_2_3 = lajiPE_86_feature_out_3;
  assign Feature_cas_1_2_4 = lajiPE_86_feature_out_4;
  assign Feature_cas_1_2_5 = lajiPE_86_feature_out_5;
  assign Feature_cas_1_2_6 = lajiPE_86_feature_out_6;
  assign Feature_cas_1_2_7 = lajiPE_86_feature_out_7;
  assign Feature_cas_1_2_8 = lajiPE_86_feature_out_8;
  assign lajiPE_87_weight_CE = Weight_CE_c[1];
  assign lajiPE_87_feature_CE = Feature_CE_c[1];
  assign Feature_cas_2_2_0 = lajiPE_87_feature_out_0;
  assign Feature_cas_2_2_1 = lajiPE_87_feature_out_1;
  assign Feature_cas_2_2_2 = lajiPE_87_feature_out_2;
  assign Feature_cas_2_2_3 = lajiPE_87_feature_out_3;
  assign Feature_cas_2_2_4 = lajiPE_87_feature_out_4;
  assign Feature_cas_2_2_5 = lajiPE_87_feature_out_5;
  assign Feature_cas_2_2_6 = lajiPE_87_feature_out_6;
  assign Feature_cas_2_2_7 = lajiPE_87_feature_out_7;
  assign Feature_cas_2_2_8 = lajiPE_87_feature_out_8;
  assign lajiPE_88_weight_CE = Weight_CE_c[2];
  assign lajiPE_88_feature_CE = Feature_CE_c[2];
  assign Feature_cas_3_2_0 = lajiPE_88_feature_out_0;
  assign Feature_cas_3_2_1 = lajiPE_88_feature_out_1;
  assign Feature_cas_3_2_2 = lajiPE_88_feature_out_2;
  assign Feature_cas_3_2_3 = lajiPE_88_feature_out_3;
  assign Feature_cas_3_2_4 = lajiPE_88_feature_out_4;
  assign Feature_cas_3_2_5 = lajiPE_88_feature_out_5;
  assign Feature_cas_3_2_6 = lajiPE_88_feature_out_6;
  assign Feature_cas_3_2_7 = lajiPE_88_feature_out_7;
  assign Feature_cas_3_2_8 = lajiPE_88_feature_out_8;
  assign lajiPE_89_weight_CE = Weight_CE_c[3];
  assign lajiPE_89_feature_CE = Feature_CE_c[3];
  assign Feature_cas_4_2_0 = lajiPE_89_feature_out_0;
  assign Feature_cas_4_2_1 = lajiPE_89_feature_out_1;
  assign Feature_cas_4_2_2 = lajiPE_89_feature_out_2;
  assign Feature_cas_4_2_3 = lajiPE_89_feature_out_3;
  assign Feature_cas_4_2_4 = lajiPE_89_feature_out_4;
  assign Feature_cas_4_2_5 = lajiPE_89_feature_out_5;
  assign Feature_cas_4_2_6 = lajiPE_89_feature_out_6;
  assign Feature_cas_4_2_7 = lajiPE_89_feature_out_7;
  assign Feature_cas_4_2_8 = lajiPE_89_feature_out_8;
  assign lajiPE_90_weight_CE = Weight_CE_c[4];
  assign lajiPE_90_feature_CE = Feature_CE_c[4];
  assign Feature_cas_5_2_0 = lajiPE_90_feature_out_0;
  assign Feature_cas_5_2_1 = lajiPE_90_feature_out_1;
  assign Feature_cas_5_2_2 = lajiPE_90_feature_out_2;
  assign Feature_cas_5_2_3 = lajiPE_90_feature_out_3;
  assign Feature_cas_5_2_4 = lajiPE_90_feature_out_4;
  assign Feature_cas_5_2_5 = lajiPE_90_feature_out_5;
  assign Feature_cas_5_2_6 = lajiPE_90_feature_out_6;
  assign Feature_cas_5_2_7 = lajiPE_90_feature_out_7;
  assign Feature_cas_5_2_8 = lajiPE_90_feature_out_8;
  assign lajiPE_91_weight_CE = Weight_CE_c[5];
  assign lajiPE_91_feature_CE = Feature_CE_c[5];
  assign Feature_cas_6_2_0 = lajiPE_91_feature_out_0;
  assign Feature_cas_6_2_1 = lajiPE_91_feature_out_1;
  assign Feature_cas_6_2_2 = lajiPE_91_feature_out_2;
  assign Feature_cas_6_2_3 = lajiPE_91_feature_out_3;
  assign Feature_cas_6_2_4 = lajiPE_91_feature_out_4;
  assign Feature_cas_6_2_5 = lajiPE_91_feature_out_5;
  assign Feature_cas_6_2_6 = lajiPE_91_feature_out_6;
  assign Feature_cas_6_2_7 = lajiPE_91_feature_out_7;
  assign Feature_cas_6_2_8 = lajiPE_91_feature_out_8;
  assign lajiPE_92_weight_CE = Weight_CE_c[6];
  assign lajiPE_92_feature_CE = Feature_CE_c[6];
  assign Feature_cas_7_2_0 = lajiPE_92_feature_out_0;
  assign Feature_cas_7_2_1 = lajiPE_92_feature_out_1;
  assign Feature_cas_7_2_2 = lajiPE_92_feature_out_2;
  assign Feature_cas_7_2_3 = lajiPE_92_feature_out_3;
  assign Feature_cas_7_2_4 = lajiPE_92_feature_out_4;
  assign Feature_cas_7_2_5 = lajiPE_92_feature_out_5;
  assign Feature_cas_7_2_6 = lajiPE_92_feature_out_6;
  assign Feature_cas_7_2_7 = lajiPE_92_feature_out_7;
  assign Feature_cas_7_2_8 = lajiPE_92_feature_out_8;
  assign lajiPE_93_weight_CE = Weight_CE_c[0];
  assign lajiPE_93_feature_CE = Feature_CE_c[0];
  assign Feature_cas_1_3_0 = lajiPE_93_feature_out_0;
  assign Feature_cas_1_3_1 = lajiPE_93_feature_out_1;
  assign Feature_cas_1_3_2 = lajiPE_93_feature_out_2;
  assign Feature_cas_1_3_3 = lajiPE_93_feature_out_3;
  assign Feature_cas_1_3_4 = lajiPE_93_feature_out_4;
  assign Feature_cas_1_3_5 = lajiPE_93_feature_out_5;
  assign Feature_cas_1_3_6 = lajiPE_93_feature_out_6;
  assign Feature_cas_1_3_7 = lajiPE_93_feature_out_7;
  assign Feature_cas_1_3_8 = lajiPE_93_feature_out_8;
  assign lajiPE_94_weight_CE = Weight_CE_c[1];
  assign lajiPE_94_feature_CE = Feature_CE_c[1];
  assign Feature_cas_2_3_0 = lajiPE_94_feature_out_0;
  assign Feature_cas_2_3_1 = lajiPE_94_feature_out_1;
  assign Feature_cas_2_3_2 = lajiPE_94_feature_out_2;
  assign Feature_cas_2_3_3 = lajiPE_94_feature_out_3;
  assign Feature_cas_2_3_4 = lajiPE_94_feature_out_4;
  assign Feature_cas_2_3_5 = lajiPE_94_feature_out_5;
  assign Feature_cas_2_3_6 = lajiPE_94_feature_out_6;
  assign Feature_cas_2_3_7 = lajiPE_94_feature_out_7;
  assign Feature_cas_2_3_8 = lajiPE_94_feature_out_8;
  assign lajiPE_95_weight_CE = Weight_CE_c[2];
  assign lajiPE_95_feature_CE = Feature_CE_c[2];
  assign Feature_cas_3_3_0 = lajiPE_95_feature_out_0;
  assign Feature_cas_3_3_1 = lajiPE_95_feature_out_1;
  assign Feature_cas_3_3_2 = lajiPE_95_feature_out_2;
  assign Feature_cas_3_3_3 = lajiPE_95_feature_out_3;
  assign Feature_cas_3_3_4 = lajiPE_95_feature_out_4;
  assign Feature_cas_3_3_5 = lajiPE_95_feature_out_5;
  assign Feature_cas_3_3_6 = lajiPE_95_feature_out_6;
  assign Feature_cas_3_3_7 = lajiPE_95_feature_out_7;
  assign Feature_cas_3_3_8 = lajiPE_95_feature_out_8;
  assign lajiPE_96_weight_CE = Weight_CE_c[3];
  assign lajiPE_96_feature_CE = Feature_CE_c[3];
  assign Feature_cas_4_3_0 = lajiPE_96_feature_out_0;
  assign Feature_cas_4_3_1 = lajiPE_96_feature_out_1;
  assign Feature_cas_4_3_2 = lajiPE_96_feature_out_2;
  assign Feature_cas_4_3_3 = lajiPE_96_feature_out_3;
  assign Feature_cas_4_3_4 = lajiPE_96_feature_out_4;
  assign Feature_cas_4_3_5 = lajiPE_96_feature_out_5;
  assign Feature_cas_4_3_6 = lajiPE_96_feature_out_6;
  assign Feature_cas_4_3_7 = lajiPE_96_feature_out_7;
  assign Feature_cas_4_3_8 = lajiPE_96_feature_out_8;
  assign lajiPE_97_weight_CE = Weight_CE_c[4];
  assign lajiPE_97_feature_CE = Feature_CE_c[4];
  assign Feature_cas_5_3_0 = lajiPE_97_feature_out_0;
  assign Feature_cas_5_3_1 = lajiPE_97_feature_out_1;
  assign Feature_cas_5_3_2 = lajiPE_97_feature_out_2;
  assign Feature_cas_5_3_3 = lajiPE_97_feature_out_3;
  assign Feature_cas_5_3_4 = lajiPE_97_feature_out_4;
  assign Feature_cas_5_3_5 = lajiPE_97_feature_out_5;
  assign Feature_cas_5_3_6 = lajiPE_97_feature_out_6;
  assign Feature_cas_5_3_7 = lajiPE_97_feature_out_7;
  assign Feature_cas_5_3_8 = lajiPE_97_feature_out_8;
  assign lajiPE_98_weight_CE = Weight_CE_c[5];
  assign lajiPE_98_feature_CE = Feature_CE_c[5];
  assign Feature_cas_6_3_0 = lajiPE_98_feature_out_0;
  assign Feature_cas_6_3_1 = lajiPE_98_feature_out_1;
  assign Feature_cas_6_3_2 = lajiPE_98_feature_out_2;
  assign Feature_cas_6_3_3 = lajiPE_98_feature_out_3;
  assign Feature_cas_6_3_4 = lajiPE_98_feature_out_4;
  assign Feature_cas_6_3_5 = lajiPE_98_feature_out_5;
  assign Feature_cas_6_3_6 = lajiPE_98_feature_out_6;
  assign Feature_cas_6_3_7 = lajiPE_98_feature_out_7;
  assign Feature_cas_6_3_8 = lajiPE_98_feature_out_8;
  assign lajiPE_99_weight_CE = Weight_CE_c[6];
  assign lajiPE_99_feature_CE = Feature_CE_c[6];
  assign Feature_cas_7_3_0 = lajiPE_99_feature_out_0;
  assign Feature_cas_7_3_1 = lajiPE_99_feature_out_1;
  assign Feature_cas_7_3_2 = lajiPE_99_feature_out_2;
  assign Feature_cas_7_3_3 = lajiPE_99_feature_out_3;
  assign Feature_cas_7_3_4 = lajiPE_99_feature_out_4;
  assign Feature_cas_7_3_5 = lajiPE_99_feature_out_5;
  assign Feature_cas_7_3_6 = lajiPE_99_feature_out_6;
  assign Feature_cas_7_3_7 = lajiPE_99_feature_out_7;
  assign Feature_cas_7_3_8 = lajiPE_99_feature_out_8;
  assign lajiPE_100_weight_CE = Weight_CE_c[0];
  assign lajiPE_100_feature_CE = Feature_CE_c[0];
  assign Feature_cas_1_4_0 = lajiPE_100_feature_out_0;
  assign Feature_cas_1_4_1 = lajiPE_100_feature_out_1;
  assign Feature_cas_1_4_2 = lajiPE_100_feature_out_2;
  assign Feature_cas_1_4_3 = lajiPE_100_feature_out_3;
  assign Feature_cas_1_4_4 = lajiPE_100_feature_out_4;
  assign Feature_cas_1_4_5 = lajiPE_100_feature_out_5;
  assign Feature_cas_1_4_6 = lajiPE_100_feature_out_6;
  assign Feature_cas_1_4_7 = lajiPE_100_feature_out_7;
  assign Feature_cas_1_4_8 = lajiPE_100_feature_out_8;
  assign lajiPE_101_weight_CE = Weight_CE_c[1];
  assign lajiPE_101_feature_CE = Feature_CE_c[1];
  assign Feature_cas_2_4_0 = lajiPE_101_feature_out_0;
  assign Feature_cas_2_4_1 = lajiPE_101_feature_out_1;
  assign Feature_cas_2_4_2 = lajiPE_101_feature_out_2;
  assign Feature_cas_2_4_3 = lajiPE_101_feature_out_3;
  assign Feature_cas_2_4_4 = lajiPE_101_feature_out_4;
  assign Feature_cas_2_4_5 = lajiPE_101_feature_out_5;
  assign Feature_cas_2_4_6 = lajiPE_101_feature_out_6;
  assign Feature_cas_2_4_7 = lajiPE_101_feature_out_7;
  assign Feature_cas_2_4_8 = lajiPE_101_feature_out_8;
  assign lajiPE_102_weight_CE = Weight_CE_c[2];
  assign lajiPE_102_feature_CE = Feature_CE_c[2];
  assign Feature_cas_3_4_0 = lajiPE_102_feature_out_0;
  assign Feature_cas_3_4_1 = lajiPE_102_feature_out_1;
  assign Feature_cas_3_4_2 = lajiPE_102_feature_out_2;
  assign Feature_cas_3_4_3 = lajiPE_102_feature_out_3;
  assign Feature_cas_3_4_4 = lajiPE_102_feature_out_4;
  assign Feature_cas_3_4_5 = lajiPE_102_feature_out_5;
  assign Feature_cas_3_4_6 = lajiPE_102_feature_out_6;
  assign Feature_cas_3_4_7 = lajiPE_102_feature_out_7;
  assign Feature_cas_3_4_8 = lajiPE_102_feature_out_8;
  assign lajiPE_103_weight_CE = Weight_CE_c[3];
  assign lajiPE_103_feature_CE = Feature_CE_c[3];
  assign Feature_cas_4_4_0 = lajiPE_103_feature_out_0;
  assign Feature_cas_4_4_1 = lajiPE_103_feature_out_1;
  assign Feature_cas_4_4_2 = lajiPE_103_feature_out_2;
  assign Feature_cas_4_4_3 = lajiPE_103_feature_out_3;
  assign Feature_cas_4_4_4 = lajiPE_103_feature_out_4;
  assign Feature_cas_4_4_5 = lajiPE_103_feature_out_5;
  assign Feature_cas_4_4_6 = lajiPE_103_feature_out_6;
  assign Feature_cas_4_4_7 = lajiPE_103_feature_out_7;
  assign Feature_cas_4_4_8 = lajiPE_103_feature_out_8;
  assign lajiPE_104_weight_CE = Weight_CE_c[4];
  assign lajiPE_104_feature_CE = Feature_CE_c[4];
  assign Feature_cas_5_4_0 = lajiPE_104_feature_out_0;
  assign Feature_cas_5_4_1 = lajiPE_104_feature_out_1;
  assign Feature_cas_5_4_2 = lajiPE_104_feature_out_2;
  assign Feature_cas_5_4_3 = lajiPE_104_feature_out_3;
  assign Feature_cas_5_4_4 = lajiPE_104_feature_out_4;
  assign Feature_cas_5_4_5 = lajiPE_104_feature_out_5;
  assign Feature_cas_5_4_6 = lajiPE_104_feature_out_6;
  assign Feature_cas_5_4_7 = lajiPE_104_feature_out_7;
  assign Feature_cas_5_4_8 = lajiPE_104_feature_out_8;
  assign lajiPE_105_weight_CE = Weight_CE_c[5];
  assign lajiPE_105_feature_CE = Feature_CE_c[5];
  assign Feature_cas_6_4_0 = lajiPE_105_feature_out_0;
  assign Feature_cas_6_4_1 = lajiPE_105_feature_out_1;
  assign Feature_cas_6_4_2 = lajiPE_105_feature_out_2;
  assign Feature_cas_6_4_3 = lajiPE_105_feature_out_3;
  assign Feature_cas_6_4_4 = lajiPE_105_feature_out_4;
  assign Feature_cas_6_4_5 = lajiPE_105_feature_out_5;
  assign Feature_cas_6_4_6 = lajiPE_105_feature_out_6;
  assign Feature_cas_6_4_7 = lajiPE_105_feature_out_7;
  assign Feature_cas_6_4_8 = lajiPE_105_feature_out_8;
  assign lajiPE_106_weight_CE = Weight_CE_c[6];
  assign lajiPE_106_feature_CE = Feature_CE_c[6];
  assign Feature_cas_7_4_0 = lajiPE_106_feature_out_0;
  assign Feature_cas_7_4_1 = lajiPE_106_feature_out_1;
  assign Feature_cas_7_4_2 = lajiPE_106_feature_out_2;
  assign Feature_cas_7_4_3 = lajiPE_106_feature_out_3;
  assign Feature_cas_7_4_4 = lajiPE_106_feature_out_4;
  assign Feature_cas_7_4_5 = lajiPE_106_feature_out_5;
  assign Feature_cas_7_4_6 = lajiPE_106_feature_out_6;
  assign Feature_cas_7_4_7 = lajiPE_106_feature_out_7;
  assign Feature_cas_7_4_8 = lajiPE_106_feature_out_8;
  assign lajiPE_107_weight_CE = Weight_CE_c[0];
  assign lajiPE_107_feature_CE = Feature_CE_c[0];
  assign Feature_cas_1_5_0 = lajiPE_107_feature_out_0;
  assign Feature_cas_1_5_1 = lajiPE_107_feature_out_1;
  assign Feature_cas_1_5_2 = lajiPE_107_feature_out_2;
  assign Feature_cas_1_5_3 = lajiPE_107_feature_out_3;
  assign Feature_cas_1_5_4 = lajiPE_107_feature_out_4;
  assign Feature_cas_1_5_5 = lajiPE_107_feature_out_5;
  assign Feature_cas_1_5_6 = lajiPE_107_feature_out_6;
  assign Feature_cas_1_5_7 = lajiPE_107_feature_out_7;
  assign Feature_cas_1_5_8 = lajiPE_107_feature_out_8;
  assign lajiPE_108_weight_CE = Weight_CE_c[1];
  assign lajiPE_108_feature_CE = Feature_CE_c[1];
  assign Feature_cas_2_5_0 = lajiPE_108_feature_out_0;
  assign Feature_cas_2_5_1 = lajiPE_108_feature_out_1;
  assign Feature_cas_2_5_2 = lajiPE_108_feature_out_2;
  assign Feature_cas_2_5_3 = lajiPE_108_feature_out_3;
  assign Feature_cas_2_5_4 = lajiPE_108_feature_out_4;
  assign Feature_cas_2_5_5 = lajiPE_108_feature_out_5;
  assign Feature_cas_2_5_6 = lajiPE_108_feature_out_6;
  assign Feature_cas_2_5_7 = lajiPE_108_feature_out_7;
  assign Feature_cas_2_5_8 = lajiPE_108_feature_out_8;
  assign lajiPE_109_weight_CE = Weight_CE_c[2];
  assign lajiPE_109_feature_CE = Feature_CE_c[2];
  assign Feature_cas_3_5_0 = lajiPE_109_feature_out_0;
  assign Feature_cas_3_5_1 = lajiPE_109_feature_out_1;
  assign Feature_cas_3_5_2 = lajiPE_109_feature_out_2;
  assign Feature_cas_3_5_3 = lajiPE_109_feature_out_3;
  assign Feature_cas_3_5_4 = lajiPE_109_feature_out_4;
  assign Feature_cas_3_5_5 = lajiPE_109_feature_out_5;
  assign Feature_cas_3_5_6 = lajiPE_109_feature_out_6;
  assign Feature_cas_3_5_7 = lajiPE_109_feature_out_7;
  assign Feature_cas_3_5_8 = lajiPE_109_feature_out_8;
  assign lajiPE_110_weight_CE = Weight_CE_c[3];
  assign lajiPE_110_feature_CE = Feature_CE_c[3];
  assign Feature_cas_4_5_0 = lajiPE_110_feature_out_0;
  assign Feature_cas_4_5_1 = lajiPE_110_feature_out_1;
  assign Feature_cas_4_5_2 = lajiPE_110_feature_out_2;
  assign Feature_cas_4_5_3 = lajiPE_110_feature_out_3;
  assign Feature_cas_4_5_4 = lajiPE_110_feature_out_4;
  assign Feature_cas_4_5_5 = lajiPE_110_feature_out_5;
  assign Feature_cas_4_5_6 = lajiPE_110_feature_out_6;
  assign Feature_cas_4_5_7 = lajiPE_110_feature_out_7;
  assign Feature_cas_4_5_8 = lajiPE_110_feature_out_8;
  assign lajiPE_111_weight_CE = Weight_CE_c[4];
  assign lajiPE_111_feature_CE = Feature_CE_c[4];
  assign Feature_cas_5_5_0 = lajiPE_111_feature_out_0;
  assign Feature_cas_5_5_1 = lajiPE_111_feature_out_1;
  assign Feature_cas_5_5_2 = lajiPE_111_feature_out_2;
  assign Feature_cas_5_5_3 = lajiPE_111_feature_out_3;
  assign Feature_cas_5_5_4 = lajiPE_111_feature_out_4;
  assign Feature_cas_5_5_5 = lajiPE_111_feature_out_5;
  assign Feature_cas_5_5_6 = lajiPE_111_feature_out_6;
  assign Feature_cas_5_5_7 = lajiPE_111_feature_out_7;
  assign Feature_cas_5_5_8 = lajiPE_111_feature_out_8;
  assign lajiPE_112_weight_CE = Weight_CE_c[5];
  assign lajiPE_112_feature_CE = Feature_CE_c[5];
  assign Feature_cas_6_5_0 = lajiPE_112_feature_out_0;
  assign Feature_cas_6_5_1 = lajiPE_112_feature_out_1;
  assign Feature_cas_6_5_2 = lajiPE_112_feature_out_2;
  assign Feature_cas_6_5_3 = lajiPE_112_feature_out_3;
  assign Feature_cas_6_5_4 = lajiPE_112_feature_out_4;
  assign Feature_cas_6_5_5 = lajiPE_112_feature_out_5;
  assign Feature_cas_6_5_6 = lajiPE_112_feature_out_6;
  assign Feature_cas_6_5_7 = lajiPE_112_feature_out_7;
  assign Feature_cas_6_5_8 = lajiPE_112_feature_out_8;
  assign lajiPE_113_weight_CE = Weight_CE_c[6];
  assign lajiPE_113_feature_CE = Feature_CE_c[6];
  assign Feature_cas_7_5_0 = lajiPE_113_feature_out_0;
  assign Feature_cas_7_5_1 = lajiPE_113_feature_out_1;
  assign Feature_cas_7_5_2 = lajiPE_113_feature_out_2;
  assign Feature_cas_7_5_3 = lajiPE_113_feature_out_3;
  assign Feature_cas_7_5_4 = lajiPE_113_feature_out_4;
  assign Feature_cas_7_5_5 = lajiPE_113_feature_out_5;
  assign Feature_cas_7_5_6 = lajiPE_113_feature_out_6;
  assign Feature_cas_7_5_7 = lajiPE_113_feature_out_7;
  assign Feature_cas_7_5_8 = lajiPE_113_feature_out_8;
  assign lajiPE_114_weight_CE = Weight_CE_c[0];
  assign lajiPE_114_feature_CE = Feature_CE_c[0];
  assign Feature_cas_1_6_0 = lajiPE_114_feature_out_0;
  assign Feature_cas_1_6_1 = lajiPE_114_feature_out_1;
  assign Feature_cas_1_6_2 = lajiPE_114_feature_out_2;
  assign Feature_cas_1_6_3 = lajiPE_114_feature_out_3;
  assign Feature_cas_1_6_4 = lajiPE_114_feature_out_4;
  assign Feature_cas_1_6_5 = lajiPE_114_feature_out_5;
  assign Feature_cas_1_6_6 = lajiPE_114_feature_out_6;
  assign Feature_cas_1_6_7 = lajiPE_114_feature_out_7;
  assign Feature_cas_1_6_8 = lajiPE_114_feature_out_8;
  assign lajiPE_115_weight_CE = Weight_CE_c[1];
  assign lajiPE_115_feature_CE = Feature_CE_c[1];
  assign Feature_cas_2_6_0 = lajiPE_115_feature_out_0;
  assign Feature_cas_2_6_1 = lajiPE_115_feature_out_1;
  assign Feature_cas_2_6_2 = lajiPE_115_feature_out_2;
  assign Feature_cas_2_6_3 = lajiPE_115_feature_out_3;
  assign Feature_cas_2_6_4 = lajiPE_115_feature_out_4;
  assign Feature_cas_2_6_5 = lajiPE_115_feature_out_5;
  assign Feature_cas_2_6_6 = lajiPE_115_feature_out_6;
  assign Feature_cas_2_6_7 = lajiPE_115_feature_out_7;
  assign Feature_cas_2_6_8 = lajiPE_115_feature_out_8;
  assign lajiPE_116_weight_CE = Weight_CE_c[2];
  assign lajiPE_116_feature_CE = Feature_CE_c[2];
  assign Feature_cas_3_6_0 = lajiPE_116_feature_out_0;
  assign Feature_cas_3_6_1 = lajiPE_116_feature_out_1;
  assign Feature_cas_3_6_2 = lajiPE_116_feature_out_2;
  assign Feature_cas_3_6_3 = lajiPE_116_feature_out_3;
  assign Feature_cas_3_6_4 = lajiPE_116_feature_out_4;
  assign Feature_cas_3_6_5 = lajiPE_116_feature_out_5;
  assign Feature_cas_3_6_6 = lajiPE_116_feature_out_6;
  assign Feature_cas_3_6_7 = lajiPE_116_feature_out_7;
  assign Feature_cas_3_6_8 = lajiPE_116_feature_out_8;
  assign lajiPE_117_weight_CE = Weight_CE_c[3];
  assign lajiPE_117_feature_CE = Feature_CE_c[3];
  assign Feature_cas_4_6_0 = lajiPE_117_feature_out_0;
  assign Feature_cas_4_6_1 = lajiPE_117_feature_out_1;
  assign Feature_cas_4_6_2 = lajiPE_117_feature_out_2;
  assign Feature_cas_4_6_3 = lajiPE_117_feature_out_3;
  assign Feature_cas_4_6_4 = lajiPE_117_feature_out_4;
  assign Feature_cas_4_6_5 = lajiPE_117_feature_out_5;
  assign Feature_cas_4_6_6 = lajiPE_117_feature_out_6;
  assign Feature_cas_4_6_7 = lajiPE_117_feature_out_7;
  assign Feature_cas_4_6_8 = lajiPE_117_feature_out_8;
  assign lajiPE_118_weight_CE = Weight_CE_c[4];
  assign lajiPE_118_feature_CE = Feature_CE_c[4];
  assign Feature_cas_5_6_0 = lajiPE_118_feature_out_0;
  assign Feature_cas_5_6_1 = lajiPE_118_feature_out_1;
  assign Feature_cas_5_6_2 = lajiPE_118_feature_out_2;
  assign Feature_cas_5_6_3 = lajiPE_118_feature_out_3;
  assign Feature_cas_5_6_4 = lajiPE_118_feature_out_4;
  assign Feature_cas_5_6_5 = lajiPE_118_feature_out_5;
  assign Feature_cas_5_6_6 = lajiPE_118_feature_out_6;
  assign Feature_cas_5_6_7 = lajiPE_118_feature_out_7;
  assign Feature_cas_5_6_8 = lajiPE_118_feature_out_8;
  assign lajiPE_119_weight_CE = Weight_CE_c[5];
  assign lajiPE_119_feature_CE = Feature_CE_c[5];
  assign Feature_cas_6_6_0 = lajiPE_119_feature_out_0;
  assign Feature_cas_6_6_1 = lajiPE_119_feature_out_1;
  assign Feature_cas_6_6_2 = lajiPE_119_feature_out_2;
  assign Feature_cas_6_6_3 = lajiPE_119_feature_out_3;
  assign Feature_cas_6_6_4 = lajiPE_119_feature_out_4;
  assign Feature_cas_6_6_5 = lajiPE_119_feature_out_5;
  assign Feature_cas_6_6_6 = lajiPE_119_feature_out_6;
  assign Feature_cas_6_6_7 = lajiPE_119_feature_out_7;
  assign Feature_cas_6_6_8 = lajiPE_119_feature_out_8;
  assign lajiPE_120_weight_CE = Weight_CE_c[6];
  assign lajiPE_120_feature_CE = Feature_CE_c[6];
  assign Feature_cas_7_6_0 = lajiPE_120_feature_out_0;
  assign Feature_cas_7_6_1 = lajiPE_120_feature_out_1;
  assign Feature_cas_7_6_2 = lajiPE_120_feature_out_2;
  assign Feature_cas_7_6_3 = lajiPE_120_feature_out_3;
  assign Feature_cas_7_6_4 = lajiPE_120_feature_out_4;
  assign Feature_cas_7_6_5 = lajiPE_120_feature_out_5;
  assign Feature_cas_7_6_6 = lajiPE_120_feature_out_6;
  assign Feature_cas_7_6_7 = lajiPE_120_feature_out_7;
  assign Feature_cas_7_6_8 = lajiPE_120_feature_out_8;
  assign lajiPE_121_weight_CE = Weight_CE_c[0];
  assign lajiPE_121_feature_CE = Feature_CE_c[0];
  assign Feature_cas_1_7_0 = lajiPE_121_feature_out_0;
  assign Feature_cas_1_7_1 = lajiPE_121_feature_out_1;
  assign Feature_cas_1_7_2 = lajiPE_121_feature_out_2;
  assign Feature_cas_1_7_3 = lajiPE_121_feature_out_3;
  assign Feature_cas_1_7_4 = lajiPE_121_feature_out_4;
  assign Feature_cas_1_7_5 = lajiPE_121_feature_out_5;
  assign Feature_cas_1_7_6 = lajiPE_121_feature_out_6;
  assign Feature_cas_1_7_7 = lajiPE_121_feature_out_7;
  assign Feature_cas_1_7_8 = lajiPE_121_feature_out_8;
  assign lajiPE_122_weight_CE = Weight_CE_c[1];
  assign lajiPE_122_feature_CE = Feature_CE_c[1];
  assign Feature_cas_2_7_0 = lajiPE_122_feature_out_0;
  assign Feature_cas_2_7_1 = lajiPE_122_feature_out_1;
  assign Feature_cas_2_7_2 = lajiPE_122_feature_out_2;
  assign Feature_cas_2_7_3 = lajiPE_122_feature_out_3;
  assign Feature_cas_2_7_4 = lajiPE_122_feature_out_4;
  assign Feature_cas_2_7_5 = lajiPE_122_feature_out_5;
  assign Feature_cas_2_7_6 = lajiPE_122_feature_out_6;
  assign Feature_cas_2_7_7 = lajiPE_122_feature_out_7;
  assign Feature_cas_2_7_8 = lajiPE_122_feature_out_8;
  assign lajiPE_123_weight_CE = Weight_CE_c[2];
  assign lajiPE_123_feature_CE = Feature_CE_c[2];
  assign Feature_cas_3_7_0 = lajiPE_123_feature_out_0;
  assign Feature_cas_3_7_1 = lajiPE_123_feature_out_1;
  assign Feature_cas_3_7_2 = lajiPE_123_feature_out_2;
  assign Feature_cas_3_7_3 = lajiPE_123_feature_out_3;
  assign Feature_cas_3_7_4 = lajiPE_123_feature_out_4;
  assign Feature_cas_3_7_5 = lajiPE_123_feature_out_5;
  assign Feature_cas_3_7_6 = lajiPE_123_feature_out_6;
  assign Feature_cas_3_7_7 = lajiPE_123_feature_out_7;
  assign Feature_cas_3_7_8 = lajiPE_123_feature_out_8;
  assign lajiPE_124_weight_CE = Weight_CE_c[3];
  assign lajiPE_124_feature_CE = Feature_CE_c[3];
  assign Feature_cas_4_7_0 = lajiPE_124_feature_out_0;
  assign Feature_cas_4_7_1 = lajiPE_124_feature_out_1;
  assign Feature_cas_4_7_2 = lajiPE_124_feature_out_2;
  assign Feature_cas_4_7_3 = lajiPE_124_feature_out_3;
  assign Feature_cas_4_7_4 = lajiPE_124_feature_out_4;
  assign Feature_cas_4_7_5 = lajiPE_124_feature_out_5;
  assign Feature_cas_4_7_6 = lajiPE_124_feature_out_6;
  assign Feature_cas_4_7_7 = lajiPE_124_feature_out_7;
  assign Feature_cas_4_7_8 = lajiPE_124_feature_out_8;
  assign lajiPE_125_weight_CE = Weight_CE_c[4];
  assign lajiPE_125_feature_CE = Feature_CE_c[4];
  assign Feature_cas_5_7_0 = lajiPE_125_feature_out_0;
  assign Feature_cas_5_7_1 = lajiPE_125_feature_out_1;
  assign Feature_cas_5_7_2 = lajiPE_125_feature_out_2;
  assign Feature_cas_5_7_3 = lajiPE_125_feature_out_3;
  assign Feature_cas_5_7_4 = lajiPE_125_feature_out_4;
  assign Feature_cas_5_7_5 = lajiPE_125_feature_out_5;
  assign Feature_cas_5_7_6 = lajiPE_125_feature_out_6;
  assign Feature_cas_5_7_7 = lajiPE_125_feature_out_7;
  assign Feature_cas_5_7_8 = lajiPE_125_feature_out_8;
  assign lajiPE_126_weight_CE = Weight_CE_c[5];
  assign lajiPE_126_feature_CE = Feature_CE_c[5];
  assign Feature_cas_6_7_0 = lajiPE_126_feature_out_0;
  assign Feature_cas_6_7_1 = lajiPE_126_feature_out_1;
  assign Feature_cas_6_7_2 = lajiPE_126_feature_out_2;
  assign Feature_cas_6_7_3 = lajiPE_126_feature_out_3;
  assign Feature_cas_6_7_4 = lajiPE_126_feature_out_4;
  assign Feature_cas_6_7_5 = lajiPE_126_feature_out_5;
  assign Feature_cas_6_7_6 = lajiPE_126_feature_out_6;
  assign Feature_cas_6_7_7 = lajiPE_126_feature_out_7;
  assign Feature_cas_6_7_8 = lajiPE_126_feature_out_8;
  assign lajiPE_127_weight_CE = Weight_CE_c[6];
  assign lajiPE_127_feature_CE = Feature_CE_c[6];
  assign Feature_cas_7_7_0 = lajiPE_127_feature_out_0;
  assign Feature_cas_7_7_1 = lajiPE_127_feature_out_1;
  assign Feature_cas_7_7_2 = lajiPE_127_feature_out_2;
  assign Feature_cas_7_7_3 = lajiPE_127_feature_out_3;
  assign Feature_cas_7_7_4 = lajiPE_127_feature_out_4;
  assign Feature_cas_7_7_5 = lajiPE_127_feature_out_5;
  assign Feature_cas_7_7_6 = lajiPE_127_feature_out_6;
  assign Feature_cas_7_7_7 = lajiPE_127_feature_out_7;
  assign Feature_cas_7_7_8 = lajiPE_127_feature_out_8;
  always @(posedge clk) begin
    if(reset || softReset) begin
      Weight_CE_c <= 7'h0;
      Feature_CE_c <= 7'h0;
    end else begin
      Weight_CE_c[0] <= Weight_CE;
      Feature_CE_c[0] <= Feature_CE;
      Weight_CE_c[1] <= Weight_CE_c[0];
      Feature_CE_c[1] <= Feature_CE_c[0];
      Weight_CE_c[2] <= Weight_CE_c[1];
      Feature_CE_c[2] <= Feature_CE_c[1];
      Weight_CE_c[3] <= Weight_CE_c[2];
      Feature_CE_c[3] <= Feature_CE_c[2];
      Weight_CE_c[4] <= Weight_CE_c[3];
      Feature_CE_c[4] <= Feature_CE_c[3];
      Weight_CE_c[5] <= Weight_CE_c[4];
      Feature_CE_c[5] <= Feature_CE_c[4];
      Weight_CE_c[6] <= Weight_CE_c[5];
      Feature_CE_c[6] <= Feature_CE_c[5];
    end
  end


endmodule
