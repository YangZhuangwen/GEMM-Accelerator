// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : ConvCompute
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module ConvCompute (
  input               startPa,
  input               startCu,
  input               sParaData_valid,
  output              sParaData_ready,
  input      [71:0]   sParaData_payload,
  input               sQuanData_valid,
  output              sQuanData_ready,
  input      [63:0]   sQuanData_payload,
  input               sFeatureData_valid,
  output reg          sFeatureData_ready,
  input      [63:0]   sFeatureData_payload,
  input               sFeatureFirstLayerData_valid,
  output              sFeatureFirstLayerData_ready,
  input      [7:0]    sFeatureFirstLayerData_payload,
  output              copyWeightDone,
  input      [8:0]    rowNumIn,
  input      [8:0]    colNumIn,
  input      [11:0]   channelIn,
  input      [11:0]   channelOut,
  input               enPadding,
  input               enActivation,
  input      [7:0]    zeroDara,
  input      [0:0]    zeroNum,
  input      [12:0]   weightNum,
  input      [8:0]    quanNum,
  input               firstLayer,
  input      [1:0]    convType,
  input               softReset,
  input               mDataReady,
  output              computedown,
  output              copyWeightEnd,
  input               reset,
  input               clk
);

  reg                 channelIncr_1_mData_ready;
  reg                 dataGenerate_1_sData_valid;
  reg        [63:0]   dataGenerate_1_sData_payload;
  wire       [11:0]   waXpmSyncFifo_9_sCount;
  wire       [11:0]   waXpmSyncFifo_9_mCount;
  wire       [11:0]   waXpmSyncFifo_10_sCount;
  wire       [11:0]   waXpmSyncFifo_10_mCount;
  wire       [11:0]   waXpmSyncFifo_11_sCount;
  wire       [11:0]   waXpmSyncFifo_11_mCount;
  wire       [11:0]   waXpmSyncFifo_12_sCount;
  wire       [11:0]   waXpmSyncFifo_12_mCount;
  wire       [11:0]   waXpmSyncFifo_13_sCount;
  wire       [11:0]   waXpmSyncFifo_13_mCount;
  wire       [11:0]   waXpmSyncFifo_14_sCount;
  wire       [11:0]   waXpmSyncFifo_14_mCount;
  wire       [11:0]   waXpmSyncFifo_15_sCount;
  wire       [11:0]   waXpmSyncFifo_15_mCount;
  wire       [11:0]   waXpmSyncFifo_16_sCount;
  wire       [11:0]   waXpmSyncFifo_16_mCount;
  wire       [11:0]   waXpmSyncFifo_17_sCount;
  wire       [11:0]   waXpmSyncFifo_17_mCount;
  wire       [7:0]    laji_1_Weight_Array_0_0_0;
  wire       [7:0]    laji_1_Weight_Array_0_0_1;
  wire       [7:0]    laji_1_Weight_Array_0_0_2;
  wire       [7:0]    laji_1_Weight_Array_0_0_3;
  wire       [7:0]    laji_1_Weight_Array_0_0_4;
  wire       [7:0]    laji_1_Weight_Array_0_0_5;
  wire       [7:0]    laji_1_Weight_Array_0_0_6;
  wire       [7:0]    laji_1_Weight_Array_0_0_7;
  wire       [7:0]    laji_1_Weight_Array_0_0_8;
  wire       [7:0]    laji_1_Weight_Array_0_1_0;
  wire       [7:0]    laji_1_Weight_Array_0_1_1;
  wire       [7:0]    laji_1_Weight_Array_0_1_2;
  wire       [7:0]    laji_1_Weight_Array_0_1_3;
  wire       [7:0]    laji_1_Weight_Array_0_1_4;
  wire       [7:0]    laji_1_Weight_Array_0_1_5;
  wire       [7:0]    laji_1_Weight_Array_0_1_6;
  wire       [7:0]    laji_1_Weight_Array_0_1_7;
  wire       [7:0]    laji_1_Weight_Array_0_1_8;
  wire       [7:0]    laji_1_Weight_Array_0_2_0;
  wire       [7:0]    laji_1_Weight_Array_0_2_1;
  wire       [7:0]    laji_1_Weight_Array_0_2_2;
  wire       [7:0]    laji_1_Weight_Array_0_2_3;
  wire       [7:0]    laji_1_Weight_Array_0_2_4;
  wire       [7:0]    laji_1_Weight_Array_0_2_5;
  wire       [7:0]    laji_1_Weight_Array_0_2_6;
  wire       [7:0]    laji_1_Weight_Array_0_2_7;
  wire       [7:0]    laji_1_Weight_Array_0_2_8;
  wire       [7:0]    laji_1_Weight_Array_0_3_0;
  wire       [7:0]    laji_1_Weight_Array_0_3_1;
  wire       [7:0]    laji_1_Weight_Array_0_3_2;
  wire       [7:0]    laji_1_Weight_Array_0_3_3;
  wire       [7:0]    laji_1_Weight_Array_0_3_4;
  wire       [7:0]    laji_1_Weight_Array_0_3_5;
  wire       [7:0]    laji_1_Weight_Array_0_3_6;
  wire       [7:0]    laji_1_Weight_Array_0_3_7;
  wire       [7:0]    laji_1_Weight_Array_0_3_8;
  wire       [7:0]    laji_1_Weight_Array_0_4_0;
  wire       [7:0]    laji_1_Weight_Array_0_4_1;
  wire       [7:0]    laji_1_Weight_Array_0_4_2;
  wire       [7:0]    laji_1_Weight_Array_0_4_3;
  wire       [7:0]    laji_1_Weight_Array_0_4_4;
  wire       [7:0]    laji_1_Weight_Array_0_4_5;
  wire       [7:0]    laji_1_Weight_Array_0_4_6;
  wire       [7:0]    laji_1_Weight_Array_0_4_7;
  wire       [7:0]    laji_1_Weight_Array_0_4_8;
  wire       [7:0]    laji_1_Weight_Array_0_5_0;
  wire       [7:0]    laji_1_Weight_Array_0_5_1;
  wire       [7:0]    laji_1_Weight_Array_0_5_2;
  wire       [7:0]    laji_1_Weight_Array_0_5_3;
  wire       [7:0]    laji_1_Weight_Array_0_5_4;
  wire       [7:0]    laji_1_Weight_Array_0_5_5;
  wire       [7:0]    laji_1_Weight_Array_0_5_6;
  wire       [7:0]    laji_1_Weight_Array_0_5_7;
  wire       [7:0]    laji_1_Weight_Array_0_5_8;
  wire       [7:0]    laji_1_Weight_Array_0_6_0;
  wire       [7:0]    laji_1_Weight_Array_0_6_1;
  wire       [7:0]    laji_1_Weight_Array_0_6_2;
  wire       [7:0]    laji_1_Weight_Array_0_6_3;
  wire       [7:0]    laji_1_Weight_Array_0_6_4;
  wire       [7:0]    laji_1_Weight_Array_0_6_5;
  wire       [7:0]    laji_1_Weight_Array_0_6_6;
  wire       [7:0]    laji_1_Weight_Array_0_6_7;
  wire       [7:0]    laji_1_Weight_Array_0_6_8;
  wire       [7:0]    laji_1_Weight_Array_0_7_0;
  wire       [7:0]    laji_1_Weight_Array_0_7_1;
  wire       [7:0]    laji_1_Weight_Array_0_7_2;
  wire       [7:0]    laji_1_Weight_Array_0_7_3;
  wire       [7:0]    laji_1_Weight_Array_0_7_4;
  wire       [7:0]    laji_1_Weight_Array_0_7_5;
  wire       [7:0]    laji_1_Weight_Array_0_7_6;
  wire       [7:0]    laji_1_Weight_Array_0_7_7;
  wire       [7:0]    laji_1_Weight_Array_0_7_8;
  wire       [7:0]    laji_1_Weight_Array_1_0_0;
  wire       [7:0]    laji_1_Weight_Array_1_0_1;
  wire       [7:0]    laji_1_Weight_Array_1_0_2;
  wire       [7:0]    laji_1_Weight_Array_1_0_3;
  wire       [7:0]    laji_1_Weight_Array_1_0_4;
  wire       [7:0]    laji_1_Weight_Array_1_0_5;
  wire       [7:0]    laji_1_Weight_Array_1_0_6;
  wire       [7:0]    laji_1_Weight_Array_1_0_7;
  wire       [7:0]    laji_1_Weight_Array_1_0_8;
  wire       [7:0]    laji_1_Weight_Array_1_1_0;
  wire       [7:0]    laji_1_Weight_Array_1_1_1;
  wire       [7:0]    laji_1_Weight_Array_1_1_2;
  wire       [7:0]    laji_1_Weight_Array_1_1_3;
  wire       [7:0]    laji_1_Weight_Array_1_1_4;
  wire       [7:0]    laji_1_Weight_Array_1_1_5;
  wire       [7:0]    laji_1_Weight_Array_1_1_6;
  wire       [7:0]    laji_1_Weight_Array_1_1_7;
  wire       [7:0]    laji_1_Weight_Array_1_1_8;
  wire       [7:0]    laji_1_Weight_Array_1_2_0;
  wire       [7:0]    laji_1_Weight_Array_1_2_1;
  wire       [7:0]    laji_1_Weight_Array_1_2_2;
  wire       [7:0]    laji_1_Weight_Array_1_2_3;
  wire       [7:0]    laji_1_Weight_Array_1_2_4;
  wire       [7:0]    laji_1_Weight_Array_1_2_5;
  wire       [7:0]    laji_1_Weight_Array_1_2_6;
  wire       [7:0]    laji_1_Weight_Array_1_2_7;
  wire       [7:0]    laji_1_Weight_Array_1_2_8;
  wire       [7:0]    laji_1_Weight_Array_1_3_0;
  wire       [7:0]    laji_1_Weight_Array_1_3_1;
  wire       [7:0]    laji_1_Weight_Array_1_3_2;
  wire       [7:0]    laji_1_Weight_Array_1_3_3;
  wire       [7:0]    laji_1_Weight_Array_1_3_4;
  wire       [7:0]    laji_1_Weight_Array_1_3_5;
  wire       [7:0]    laji_1_Weight_Array_1_3_6;
  wire       [7:0]    laji_1_Weight_Array_1_3_7;
  wire       [7:0]    laji_1_Weight_Array_1_3_8;
  wire       [7:0]    laji_1_Weight_Array_1_4_0;
  wire       [7:0]    laji_1_Weight_Array_1_4_1;
  wire       [7:0]    laji_1_Weight_Array_1_4_2;
  wire       [7:0]    laji_1_Weight_Array_1_4_3;
  wire       [7:0]    laji_1_Weight_Array_1_4_4;
  wire       [7:0]    laji_1_Weight_Array_1_4_5;
  wire       [7:0]    laji_1_Weight_Array_1_4_6;
  wire       [7:0]    laji_1_Weight_Array_1_4_7;
  wire       [7:0]    laji_1_Weight_Array_1_4_8;
  wire       [7:0]    laji_1_Weight_Array_1_5_0;
  wire       [7:0]    laji_1_Weight_Array_1_5_1;
  wire       [7:0]    laji_1_Weight_Array_1_5_2;
  wire       [7:0]    laji_1_Weight_Array_1_5_3;
  wire       [7:0]    laji_1_Weight_Array_1_5_4;
  wire       [7:0]    laji_1_Weight_Array_1_5_5;
  wire       [7:0]    laji_1_Weight_Array_1_5_6;
  wire       [7:0]    laji_1_Weight_Array_1_5_7;
  wire       [7:0]    laji_1_Weight_Array_1_5_8;
  wire       [7:0]    laji_1_Weight_Array_1_6_0;
  wire       [7:0]    laji_1_Weight_Array_1_6_1;
  wire       [7:0]    laji_1_Weight_Array_1_6_2;
  wire       [7:0]    laji_1_Weight_Array_1_6_3;
  wire       [7:0]    laji_1_Weight_Array_1_6_4;
  wire       [7:0]    laji_1_Weight_Array_1_6_5;
  wire       [7:0]    laji_1_Weight_Array_1_6_6;
  wire       [7:0]    laji_1_Weight_Array_1_6_7;
  wire       [7:0]    laji_1_Weight_Array_1_6_8;
  wire       [7:0]    laji_1_Weight_Array_1_7_0;
  wire       [7:0]    laji_1_Weight_Array_1_7_1;
  wire       [7:0]    laji_1_Weight_Array_1_7_2;
  wire       [7:0]    laji_1_Weight_Array_1_7_3;
  wire       [7:0]    laji_1_Weight_Array_1_7_4;
  wire       [7:0]    laji_1_Weight_Array_1_7_5;
  wire       [7:0]    laji_1_Weight_Array_1_7_6;
  wire       [7:0]    laji_1_Weight_Array_1_7_7;
  wire       [7:0]    laji_1_Weight_Array_1_7_8;
  wire       [7:0]    laji_1_Weight_Array_2_0_0;
  wire       [7:0]    laji_1_Weight_Array_2_0_1;
  wire       [7:0]    laji_1_Weight_Array_2_0_2;
  wire       [7:0]    laji_1_Weight_Array_2_0_3;
  wire       [7:0]    laji_1_Weight_Array_2_0_4;
  wire       [7:0]    laji_1_Weight_Array_2_0_5;
  wire       [7:0]    laji_1_Weight_Array_2_0_6;
  wire       [7:0]    laji_1_Weight_Array_2_0_7;
  wire       [7:0]    laji_1_Weight_Array_2_0_8;
  wire       [7:0]    laji_1_Weight_Array_2_1_0;
  wire       [7:0]    laji_1_Weight_Array_2_1_1;
  wire       [7:0]    laji_1_Weight_Array_2_1_2;
  wire       [7:0]    laji_1_Weight_Array_2_1_3;
  wire       [7:0]    laji_1_Weight_Array_2_1_4;
  wire       [7:0]    laji_1_Weight_Array_2_1_5;
  wire       [7:0]    laji_1_Weight_Array_2_1_6;
  wire       [7:0]    laji_1_Weight_Array_2_1_7;
  wire       [7:0]    laji_1_Weight_Array_2_1_8;
  wire       [7:0]    laji_1_Weight_Array_2_2_0;
  wire       [7:0]    laji_1_Weight_Array_2_2_1;
  wire       [7:0]    laji_1_Weight_Array_2_2_2;
  wire       [7:0]    laji_1_Weight_Array_2_2_3;
  wire       [7:0]    laji_1_Weight_Array_2_2_4;
  wire       [7:0]    laji_1_Weight_Array_2_2_5;
  wire       [7:0]    laji_1_Weight_Array_2_2_6;
  wire       [7:0]    laji_1_Weight_Array_2_2_7;
  wire       [7:0]    laji_1_Weight_Array_2_2_8;
  wire       [7:0]    laji_1_Weight_Array_2_3_0;
  wire       [7:0]    laji_1_Weight_Array_2_3_1;
  wire       [7:0]    laji_1_Weight_Array_2_3_2;
  wire       [7:0]    laji_1_Weight_Array_2_3_3;
  wire       [7:0]    laji_1_Weight_Array_2_3_4;
  wire       [7:0]    laji_1_Weight_Array_2_3_5;
  wire       [7:0]    laji_1_Weight_Array_2_3_6;
  wire       [7:0]    laji_1_Weight_Array_2_3_7;
  wire       [7:0]    laji_1_Weight_Array_2_3_8;
  wire       [7:0]    laji_1_Weight_Array_2_4_0;
  wire       [7:0]    laji_1_Weight_Array_2_4_1;
  wire       [7:0]    laji_1_Weight_Array_2_4_2;
  wire       [7:0]    laji_1_Weight_Array_2_4_3;
  wire       [7:0]    laji_1_Weight_Array_2_4_4;
  wire       [7:0]    laji_1_Weight_Array_2_4_5;
  wire       [7:0]    laji_1_Weight_Array_2_4_6;
  wire       [7:0]    laji_1_Weight_Array_2_4_7;
  wire       [7:0]    laji_1_Weight_Array_2_4_8;
  wire       [7:0]    laji_1_Weight_Array_2_5_0;
  wire       [7:0]    laji_1_Weight_Array_2_5_1;
  wire       [7:0]    laji_1_Weight_Array_2_5_2;
  wire       [7:0]    laji_1_Weight_Array_2_5_3;
  wire       [7:0]    laji_1_Weight_Array_2_5_4;
  wire       [7:0]    laji_1_Weight_Array_2_5_5;
  wire       [7:0]    laji_1_Weight_Array_2_5_6;
  wire       [7:0]    laji_1_Weight_Array_2_5_7;
  wire       [7:0]    laji_1_Weight_Array_2_5_8;
  wire       [7:0]    laji_1_Weight_Array_2_6_0;
  wire       [7:0]    laji_1_Weight_Array_2_6_1;
  wire       [7:0]    laji_1_Weight_Array_2_6_2;
  wire       [7:0]    laji_1_Weight_Array_2_6_3;
  wire       [7:0]    laji_1_Weight_Array_2_6_4;
  wire       [7:0]    laji_1_Weight_Array_2_6_5;
  wire       [7:0]    laji_1_Weight_Array_2_6_6;
  wire       [7:0]    laji_1_Weight_Array_2_6_7;
  wire       [7:0]    laji_1_Weight_Array_2_6_8;
  wire       [7:0]    laji_1_Weight_Array_2_7_0;
  wire       [7:0]    laji_1_Weight_Array_2_7_1;
  wire       [7:0]    laji_1_Weight_Array_2_7_2;
  wire       [7:0]    laji_1_Weight_Array_2_7_3;
  wire       [7:0]    laji_1_Weight_Array_2_7_4;
  wire       [7:0]    laji_1_Weight_Array_2_7_5;
  wire       [7:0]    laji_1_Weight_Array_2_7_6;
  wire       [7:0]    laji_1_Weight_Array_2_7_7;
  wire       [7:0]    laji_1_Weight_Array_2_7_8;
  wire       [7:0]    laji_1_Weight_Array_3_0_0;
  wire       [7:0]    laji_1_Weight_Array_3_0_1;
  wire       [7:0]    laji_1_Weight_Array_3_0_2;
  wire       [7:0]    laji_1_Weight_Array_3_0_3;
  wire       [7:0]    laji_1_Weight_Array_3_0_4;
  wire       [7:0]    laji_1_Weight_Array_3_0_5;
  wire       [7:0]    laji_1_Weight_Array_3_0_6;
  wire       [7:0]    laji_1_Weight_Array_3_0_7;
  wire       [7:0]    laji_1_Weight_Array_3_0_8;
  wire       [7:0]    laji_1_Weight_Array_3_1_0;
  wire       [7:0]    laji_1_Weight_Array_3_1_1;
  wire       [7:0]    laji_1_Weight_Array_3_1_2;
  wire       [7:0]    laji_1_Weight_Array_3_1_3;
  wire       [7:0]    laji_1_Weight_Array_3_1_4;
  wire       [7:0]    laji_1_Weight_Array_3_1_5;
  wire       [7:0]    laji_1_Weight_Array_3_1_6;
  wire       [7:0]    laji_1_Weight_Array_3_1_7;
  wire       [7:0]    laji_1_Weight_Array_3_1_8;
  wire       [7:0]    laji_1_Weight_Array_3_2_0;
  wire       [7:0]    laji_1_Weight_Array_3_2_1;
  wire       [7:0]    laji_1_Weight_Array_3_2_2;
  wire       [7:0]    laji_1_Weight_Array_3_2_3;
  wire       [7:0]    laji_1_Weight_Array_3_2_4;
  wire       [7:0]    laji_1_Weight_Array_3_2_5;
  wire       [7:0]    laji_1_Weight_Array_3_2_6;
  wire       [7:0]    laji_1_Weight_Array_3_2_7;
  wire       [7:0]    laji_1_Weight_Array_3_2_8;
  wire       [7:0]    laji_1_Weight_Array_3_3_0;
  wire       [7:0]    laji_1_Weight_Array_3_3_1;
  wire       [7:0]    laji_1_Weight_Array_3_3_2;
  wire       [7:0]    laji_1_Weight_Array_3_3_3;
  wire       [7:0]    laji_1_Weight_Array_3_3_4;
  wire       [7:0]    laji_1_Weight_Array_3_3_5;
  wire       [7:0]    laji_1_Weight_Array_3_3_6;
  wire       [7:0]    laji_1_Weight_Array_3_3_7;
  wire       [7:0]    laji_1_Weight_Array_3_3_8;
  wire       [7:0]    laji_1_Weight_Array_3_4_0;
  wire       [7:0]    laji_1_Weight_Array_3_4_1;
  wire       [7:0]    laji_1_Weight_Array_3_4_2;
  wire       [7:0]    laji_1_Weight_Array_3_4_3;
  wire       [7:0]    laji_1_Weight_Array_3_4_4;
  wire       [7:0]    laji_1_Weight_Array_3_4_5;
  wire       [7:0]    laji_1_Weight_Array_3_4_6;
  wire       [7:0]    laji_1_Weight_Array_3_4_7;
  wire       [7:0]    laji_1_Weight_Array_3_4_8;
  wire       [7:0]    laji_1_Weight_Array_3_5_0;
  wire       [7:0]    laji_1_Weight_Array_3_5_1;
  wire       [7:0]    laji_1_Weight_Array_3_5_2;
  wire       [7:0]    laji_1_Weight_Array_3_5_3;
  wire       [7:0]    laji_1_Weight_Array_3_5_4;
  wire       [7:0]    laji_1_Weight_Array_3_5_5;
  wire       [7:0]    laji_1_Weight_Array_3_5_6;
  wire       [7:0]    laji_1_Weight_Array_3_5_7;
  wire       [7:0]    laji_1_Weight_Array_3_5_8;
  wire       [7:0]    laji_1_Weight_Array_3_6_0;
  wire       [7:0]    laji_1_Weight_Array_3_6_1;
  wire       [7:0]    laji_1_Weight_Array_3_6_2;
  wire       [7:0]    laji_1_Weight_Array_3_6_3;
  wire       [7:0]    laji_1_Weight_Array_3_6_4;
  wire       [7:0]    laji_1_Weight_Array_3_6_5;
  wire       [7:0]    laji_1_Weight_Array_3_6_6;
  wire       [7:0]    laji_1_Weight_Array_3_6_7;
  wire       [7:0]    laji_1_Weight_Array_3_6_8;
  wire       [7:0]    laji_1_Weight_Array_3_7_0;
  wire       [7:0]    laji_1_Weight_Array_3_7_1;
  wire       [7:0]    laji_1_Weight_Array_3_7_2;
  wire       [7:0]    laji_1_Weight_Array_3_7_3;
  wire       [7:0]    laji_1_Weight_Array_3_7_4;
  wire       [7:0]    laji_1_Weight_Array_3_7_5;
  wire       [7:0]    laji_1_Weight_Array_3_7_6;
  wire       [7:0]    laji_1_Weight_Array_3_7_7;
  wire       [7:0]    laji_1_Weight_Array_3_7_8;
  wire       [7:0]    laji_1_Weight_Array_4_0_0;
  wire       [7:0]    laji_1_Weight_Array_4_0_1;
  wire       [7:0]    laji_1_Weight_Array_4_0_2;
  wire       [7:0]    laji_1_Weight_Array_4_0_3;
  wire       [7:0]    laji_1_Weight_Array_4_0_4;
  wire       [7:0]    laji_1_Weight_Array_4_0_5;
  wire       [7:0]    laji_1_Weight_Array_4_0_6;
  wire       [7:0]    laji_1_Weight_Array_4_0_7;
  wire       [7:0]    laji_1_Weight_Array_4_0_8;
  wire       [7:0]    laji_1_Weight_Array_4_1_0;
  wire       [7:0]    laji_1_Weight_Array_4_1_1;
  wire       [7:0]    laji_1_Weight_Array_4_1_2;
  wire       [7:0]    laji_1_Weight_Array_4_1_3;
  wire       [7:0]    laji_1_Weight_Array_4_1_4;
  wire       [7:0]    laji_1_Weight_Array_4_1_5;
  wire       [7:0]    laji_1_Weight_Array_4_1_6;
  wire       [7:0]    laji_1_Weight_Array_4_1_7;
  wire       [7:0]    laji_1_Weight_Array_4_1_8;
  wire       [7:0]    laji_1_Weight_Array_4_2_0;
  wire       [7:0]    laji_1_Weight_Array_4_2_1;
  wire       [7:0]    laji_1_Weight_Array_4_2_2;
  wire       [7:0]    laji_1_Weight_Array_4_2_3;
  wire       [7:0]    laji_1_Weight_Array_4_2_4;
  wire       [7:0]    laji_1_Weight_Array_4_2_5;
  wire       [7:0]    laji_1_Weight_Array_4_2_6;
  wire       [7:0]    laji_1_Weight_Array_4_2_7;
  wire       [7:0]    laji_1_Weight_Array_4_2_8;
  wire       [7:0]    laji_1_Weight_Array_4_3_0;
  wire       [7:0]    laji_1_Weight_Array_4_3_1;
  wire       [7:0]    laji_1_Weight_Array_4_3_2;
  wire       [7:0]    laji_1_Weight_Array_4_3_3;
  wire       [7:0]    laji_1_Weight_Array_4_3_4;
  wire       [7:0]    laji_1_Weight_Array_4_3_5;
  wire       [7:0]    laji_1_Weight_Array_4_3_6;
  wire       [7:0]    laji_1_Weight_Array_4_3_7;
  wire       [7:0]    laji_1_Weight_Array_4_3_8;
  wire       [7:0]    laji_1_Weight_Array_4_4_0;
  wire       [7:0]    laji_1_Weight_Array_4_4_1;
  wire       [7:0]    laji_1_Weight_Array_4_4_2;
  wire       [7:0]    laji_1_Weight_Array_4_4_3;
  wire       [7:0]    laji_1_Weight_Array_4_4_4;
  wire       [7:0]    laji_1_Weight_Array_4_4_5;
  wire       [7:0]    laji_1_Weight_Array_4_4_6;
  wire       [7:0]    laji_1_Weight_Array_4_4_7;
  wire       [7:0]    laji_1_Weight_Array_4_4_8;
  wire       [7:0]    laji_1_Weight_Array_4_5_0;
  wire       [7:0]    laji_1_Weight_Array_4_5_1;
  wire       [7:0]    laji_1_Weight_Array_4_5_2;
  wire       [7:0]    laji_1_Weight_Array_4_5_3;
  wire       [7:0]    laji_1_Weight_Array_4_5_4;
  wire       [7:0]    laji_1_Weight_Array_4_5_5;
  wire       [7:0]    laji_1_Weight_Array_4_5_6;
  wire       [7:0]    laji_1_Weight_Array_4_5_7;
  wire       [7:0]    laji_1_Weight_Array_4_5_8;
  wire       [7:0]    laji_1_Weight_Array_4_6_0;
  wire       [7:0]    laji_1_Weight_Array_4_6_1;
  wire       [7:0]    laji_1_Weight_Array_4_6_2;
  wire       [7:0]    laji_1_Weight_Array_4_6_3;
  wire       [7:0]    laji_1_Weight_Array_4_6_4;
  wire       [7:0]    laji_1_Weight_Array_4_6_5;
  wire       [7:0]    laji_1_Weight_Array_4_6_6;
  wire       [7:0]    laji_1_Weight_Array_4_6_7;
  wire       [7:0]    laji_1_Weight_Array_4_6_8;
  wire       [7:0]    laji_1_Weight_Array_4_7_0;
  wire       [7:0]    laji_1_Weight_Array_4_7_1;
  wire       [7:0]    laji_1_Weight_Array_4_7_2;
  wire       [7:0]    laji_1_Weight_Array_4_7_3;
  wire       [7:0]    laji_1_Weight_Array_4_7_4;
  wire       [7:0]    laji_1_Weight_Array_4_7_5;
  wire       [7:0]    laji_1_Weight_Array_4_7_6;
  wire       [7:0]    laji_1_Weight_Array_4_7_7;
  wire       [7:0]    laji_1_Weight_Array_4_7_8;
  wire       [7:0]    laji_1_Weight_Array_5_0_0;
  wire       [7:0]    laji_1_Weight_Array_5_0_1;
  wire       [7:0]    laji_1_Weight_Array_5_0_2;
  wire       [7:0]    laji_1_Weight_Array_5_0_3;
  wire       [7:0]    laji_1_Weight_Array_5_0_4;
  wire       [7:0]    laji_1_Weight_Array_5_0_5;
  wire       [7:0]    laji_1_Weight_Array_5_0_6;
  wire       [7:0]    laji_1_Weight_Array_5_0_7;
  wire       [7:0]    laji_1_Weight_Array_5_0_8;
  wire       [7:0]    laji_1_Weight_Array_5_1_0;
  wire       [7:0]    laji_1_Weight_Array_5_1_1;
  wire       [7:0]    laji_1_Weight_Array_5_1_2;
  wire       [7:0]    laji_1_Weight_Array_5_1_3;
  wire       [7:0]    laji_1_Weight_Array_5_1_4;
  wire       [7:0]    laji_1_Weight_Array_5_1_5;
  wire       [7:0]    laji_1_Weight_Array_5_1_6;
  wire       [7:0]    laji_1_Weight_Array_5_1_7;
  wire       [7:0]    laji_1_Weight_Array_5_1_8;
  wire       [7:0]    laji_1_Weight_Array_5_2_0;
  wire       [7:0]    laji_1_Weight_Array_5_2_1;
  wire       [7:0]    laji_1_Weight_Array_5_2_2;
  wire       [7:0]    laji_1_Weight_Array_5_2_3;
  wire       [7:0]    laji_1_Weight_Array_5_2_4;
  wire       [7:0]    laji_1_Weight_Array_5_2_5;
  wire       [7:0]    laji_1_Weight_Array_5_2_6;
  wire       [7:0]    laji_1_Weight_Array_5_2_7;
  wire       [7:0]    laji_1_Weight_Array_5_2_8;
  wire       [7:0]    laji_1_Weight_Array_5_3_0;
  wire       [7:0]    laji_1_Weight_Array_5_3_1;
  wire       [7:0]    laji_1_Weight_Array_5_3_2;
  wire       [7:0]    laji_1_Weight_Array_5_3_3;
  wire       [7:0]    laji_1_Weight_Array_5_3_4;
  wire       [7:0]    laji_1_Weight_Array_5_3_5;
  wire       [7:0]    laji_1_Weight_Array_5_3_6;
  wire       [7:0]    laji_1_Weight_Array_5_3_7;
  wire       [7:0]    laji_1_Weight_Array_5_3_8;
  wire       [7:0]    laji_1_Weight_Array_5_4_0;
  wire       [7:0]    laji_1_Weight_Array_5_4_1;
  wire       [7:0]    laji_1_Weight_Array_5_4_2;
  wire       [7:0]    laji_1_Weight_Array_5_4_3;
  wire       [7:0]    laji_1_Weight_Array_5_4_4;
  wire       [7:0]    laji_1_Weight_Array_5_4_5;
  wire       [7:0]    laji_1_Weight_Array_5_4_6;
  wire       [7:0]    laji_1_Weight_Array_5_4_7;
  wire       [7:0]    laji_1_Weight_Array_5_4_8;
  wire       [7:0]    laji_1_Weight_Array_5_5_0;
  wire       [7:0]    laji_1_Weight_Array_5_5_1;
  wire       [7:0]    laji_1_Weight_Array_5_5_2;
  wire       [7:0]    laji_1_Weight_Array_5_5_3;
  wire       [7:0]    laji_1_Weight_Array_5_5_4;
  wire       [7:0]    laji_1_Weight_Array_5_5_5;
  wire       [7:0]    laji_1_Weight_Array_5_5_6;
  wire       [7:0]    laji_1_Weight_Array_5_5_7;
  wire       [7:0]    laji_1_Weight_Array_5_5_8;
  wire       [7:0]    laji_1_Weight_Array_5_6_0;
  wire       [7:0]    laji_1_Weight_Array_5_6_1;
  wire       [7:0]    laji_1_Weight_Array_5_6_2;
  wire       [7:0]    laji_1_Weight_Array_5_6_3;
  wire       [7:0]    laji_1_Weight_Array_5_6_4;
  wire       [7:0]    laji_1_Weight_Array_5_6_5;
  wire       [7:0]    laji_1_Weight_Array_5_6_6;
  wire       [7:0]    laji_1_Weight_Array_5_6_7;
  wire       [7:0]    laji_1_Weight_Array_5_6_8;
  wire       [7:0]    laji_1_Weight_Array_5_7_0;
  wire       [7:0]    laji_1_Weight_Array_5_7_1;
  wire       [7:0]    laji_1_Weight_Array_5_7_2;
  wire       [7:0]    laji_1_Weight_Array_5_7_3;
  wire       [7:0]    laji_1_Weight_Array_5_7_4;
  wire       [7:0]    laji_1_Weight_Array_5_7_5;
  wire       [7:0]    laji_1_Weight_Array_5_7_6;
  wire       [7:0]    laji_1_Weight_Array_5_7_7;
  wire       [7:0]    laji_1_Weight_Array_5_7_8;
  wire       [7:0]    laji_1_Weight_Array_6_0_0;
  wire       [7:0]    laji_1_Weight_Array_6_0_1;
  wire       [7:0]    laji_1_Weight_Array_6_0_2;
  wire       [7:0]    laji_1_Weight_Array_6_0_3;
  wire       [7:0]    laji_1_Weight_Array_6_0_4;
  wire       [7:0]    laji_1_Weight_Array_6_0_5;
  wire       [7:0]    laji_1_Weight_Array_6_0_6;
  wire       [7:0]    laji_1_Weight_Array_6_0_7;
  wire       [7:0]    laji_1_Weight_Array_6_0_8;
  wire       [7:0]    laji_1_Weight_Array_6_1_0;
  wire       [7:0]    laji_1_Weight_Array_6_1_1;
  wire       [7:0]    laji_1_Weight_Array_6_1_2;
  wire       [7:0]    laji_1_Weight_Array_6_1_3;
  wire       [7:0]    laji_1_Weight_Array_6_1_4;
  wire       [7:0]    laji_1_Weight_Array_6_1_5;
  wire       [7:0]    laji_1_Weight_Array_6_1_6;
  wire       [7:0]    laji_1_Weight_Array_6_1_7;
  wire       [7:0]    laji_1_Weight_Array_6_1_8;
  wire       [7:0]    laji_1_Weight_Array_6_2_0;
  wire       [7:0]    laji_1_Weight_Array_6_2_1;
  wire       [7:0]    laji_1_Weight_Array_6_2_2;
  wire       [7:0]    laji_1_Weight_Array_6_2_3;
  wire       [7:0]    laji_1_Weight_Array_6_2_4;
  wire       [7:0]    laji_1_Weight_Array_6_2_5;
  wire       [7:0]    laji_1_Weight_Array_6_2_6;
  wire       [7:0]    laji_1_Weight_Array_6_2_7;
  wire       [7:0]    laji_1_Weight_Array_6_2_8;
  wire       [7:0]    laji_1_Weight_Array_6_3_0;
  wire       [7:0]    laji_1_Weight_Array_6_3_1;
  wire       [7:0]    laji_1_Weight_Array_6_3_2;
  wire       [7:0]    laji_1_Weight_Array_6_3_3;
  wire       [7:0]    laji_1_Weight_Array_6_3_4;
  wire       [7:0]    laji_1_Weight_Array_6_3_5;
  wire       [7:0]    laji_1_Weight_Array_6_3_6;
  wire       [7:0]    laji_1_Weight_Array_6_3_7;
  wire       [7:0]    laji_1_Weight_Array_6_3_8;
  wire       [7:0]    laji_1_Weight_Array_6_4_0;
  wire       [7:0]    laji_1_Weight_Array_6_4_1;
  wire       [7:0]    laji_1_Weight_Array_6_4_2;
  wire       [7:0]    laji_1_Weight_Array_6_4_3;
  wire       [7:0]    laji_1_Weight_Array_6_4_4;
  wire       [7:0]    laji_1_Weight_Array_6_4_5;
  wire       [7:0]    laji_1_Weight_Array_6_4_6;
  wire       [7:0]    laji_1_Weight_Array_6_4_7;
  wire       [7:0]    laji_1_Weight_Array_6_4_8;
  wire       [7:0]    laji_1_Weight_Array_6_5_0;
  wire       [7:0]    laji_1_Weight_Array_6_5_1;
  wire       [7:0]    laji_1_Weight_Array_6_5_2;
  wire       [7:0]    laji_1_Weight_Array_6_5_3;
  wire       [7:0]    laji_1_Weight_Array_6_5_4;
  wire       [7:0]    laji_1_Weight_Array_6_5_5;
  wire       [7:0]    laji_1_Weight_Array_6_5_6;
  wire       [7:0]    laji_1_Weight_Array_6_5_7;
  wire       [7:0]    laji_1_Weight_Array_6_5_8;
  wire       [7:0]    laji_1_Weight_Array_6_6_0;
  wire       [7:0]    laji_1_Weight_Array_6_6_1;
  wire       [7:0]    laji_1_Weight_Array_6_6_2;
  wire       [7:0]    laji_1_Weight_Array_6_6_3;
  wire       [7:0]    laji_1_Weight_Array_6_6_4;
  wire       [7:0]    laji_1_Weight_Array_6_6_5;
  wire       [7:0]    laji_1_Weight_Array_6_6_6;
  wire       [7:0]    laji_1_Weight_Array_6_6_7;
  wire       [7:0]    laji_1_Weight_Array_6_6_8;
  wire       [7:0]    laji_1_Weight_Array_6_7_0;
  wire       [7:0]    laji_1_Weight_Array_6_7_1;
  wire       [7:0]    laji_1_Weight_Array_6_7_2;
  wire       [7:0]    laji_1_Weight_Array_6_7_3;
  wire       [7:0]    laji_1_Weight_Array_6_7_4;
  wire       [7:0]    laji_1_Weight_Array_6_7_5;
  wire       [7:0]    laji_1_Weight_Array_6_7_6;
  wire       [7:0]    laji_1_Weight_Array_6_7_7;
  wire       [7:0]    laji_1_Weight_Array_6_7_8;
  wire       [7:0]    laji_1_Weight_Array_7_0_0;
  wire       [7:0]    laji_1_Weight_Array_7_0_1;
  wire       [7:0]    laji_1_Weight_Array_7_0_2;
  wire       [7:0]    laji_1_Weight_Array_7_0_3;
  wire       [7:0]    laji_1_Weight_Array_7_0_4;
  wire       [7:0]    laji_1_Weight_Array_7_0_5;
  wire       [7:0]    laji_1_Weight_Array_7_0_6;
  wire       [7:0]    laji_1_Weight_Array_7_0_7;
  wire       [7:0]    laji_1_Weight_Array_7_0_8;
  wire       [7:0]    laji_1_Weight_Array_7_1_0;
  wire       [7:0]    laji_1_Weight_Array_7_1_1;
  wire       [7:0]    laji_1_Weight_Array_7_1_2;
  wire       [7:0]    laji_1_Weight_Array_7_1_3;
  wire       [7:0]    laji_1_Weight_Array_7_1_4;
  wire       [7:0]    laji_1_Weight_Array_7_1_5;
  wire       [7:0]    laji_1_Weight_Array_7_1_6;
  wire       [7:0]    laji_1_Weight_Array_7_1_7;
  wire       [7:0]    laji_1_Weight_Array_7_1_8;
  wire       [7:0]    laji_1_Weight_Array_7_2_0;
  wire       [7:0]    laji_1_Weight_Array_7_2_1;
  wire       [7:0]    laji_1_Weight_Array_7_2_2;
  wire       [7:0]    laji_1_Weight_Array_7_2_3;
  wire       [7:0]    laji_1_Weight_Array_7_2_4;
  wire       [7:0]    laji_1_Weight_Array_7_2_5;
  wire       [7:0]    laji_1_Weight_Array_7_2_6;
  wire       [7:0]    laji_1_Weight_Array_7_2_7;
  wire       [7:0]    laji_1_Weight_Array_7_2_8;
  wire       [7:0]    laji_1_Weight_Array_7_3_0;
  wire       [7:0]    laji_1_Weight_Array_7_3_1;
  wire       [7:0]    laji_1_Weight_Array_7_3_2;
  wire       [7:0]    laji_1_Weight_Array_7_3_3;
  wire       [7:0]    laji_1_Weight_Array_7_3_4;
  wire       [7:0]    laji_1_Weight_Array_7_3_5;
  wire       [7:0]    laji_1_Weight_Array_7_3_6;
  wire       [7:0]    laji_1_Weight_Array_7_3_7;
  wire       [7:0]    laji_1_Weight_Array_7_3_8;
  wire       [7:0]    laji_1_Weight_Array_7_4_0;
  wire       [7:0]    laji_1_Weight_Array_7_4_1;
  wire       [7:0]    laji_1_Weight_Array_7_4_2;
  wire       [7:0]    laji_1_Weight_Array_7_4_3;
  wire       [7:0]    laji_1_Weight_Array_7_4_4;
  wire       [7:0]    laji_1_Weight_Array_7_4_5;
  wire       [7:0]    laji_1_Weight_Array_7_4_6;
  wire       [7:0]    laji_1_Weight_Array_7_4_7;
  wire       [7:0]    laji_1_Weight_Array_7_4_8;
  wire       [7:0]    laji_1_Weight_Array_7_5_0;
  wire       [7:0]    laji_1_Weight_Array_7_5_1;
  wire       [7:0]    laji_1_Weight_Array_7_5_2;
  wire       [7:0]    laji_1_Weight_Array_7_5_3;
  wire       [7:0]    laji_1_Weight_Array_7_5_4;
  wire       [7:0]    laji_1_Weight_Array_7_5_5;
  wire       [7:0]    laji_1_Weight_Array_7_5_6;
  wire       [7:0]    laji_1_Weight_Array_7_5_7;
  wire       [7:0]    laji_1_Weight_Array_7_5_8;
  wire       [7:0]    laji_1_Weight_Array_7_6_0;
  wire       [7:0]    laji_1_Weight_Array_7_6_1;
  wire       [7:0]    laji_1_Weight_Array_7_6_2;
  wire       [7:0]    laji_1_Weight_Array_7_6_3;
  wire       [7:0]    laji_1_Weight_Array_7_6_4;
  wire       [7:0]    laji_1_Weight_Array_7_6_5;
  wire       [7:0]    laji_1_Weight_Array_7_6_6;
  wire       [7:0]    laji_1_Weight_Array_7_6_7;
  wire       [7:0]    laji_1_Weight_Array_7_6_8;
  wire       [7:0]    laji_1_Weight_Array_7_7_0;
  wire       [7:0]    laji_1_Weight_Array_7_7_1;
  wire       [7:0]    laji_1_Weight_Array_7_7_2;
  wire       [7:0]    laji_1_Weight_Array_7_7_3;
  wire       [7:0]    laji_1_Weight_Array_7_7_4;
  wire       [7:0]    laji_1_Weight_Array_7_7_5;
  wire       [7:0]    laji_1_Weight_Array_7_7_6;
  wire       [7:0]    laji_1_Weight_Array_7_7_7;
  wire       [7:0]    laji_1_Weight_Array_7_7_8;
  wire       [7:0]    laji_1_Feature_Array_0_0;
  wire       [7:0]    laji_1_Feature_Array_0_1;
  wire       [7:0]    laji_1_Feature_Array_0_2;
  wire       [7:0]    laji_1_Feature_Array_0_3;
  wire       [7:0]    laji_1_Feature_Array_0_4;
  wire       [7:0]    laji_1_Feature_Array_0_5;
  wire       [7:0]    laji_1_Feature_Array_0_6;
  wire       [7:0]    laji_1_Feature_Array_0_7;
  wire       [7:0]    laji_1_Feature_Array_0_8;
  wire       [7:0]    laji_1_Feature_Array_1_0;
  wire       [7:0]    laji_1_Feature_Array_1_1;
  wire       [7:0]    laji_1_Feature_Array_1_2;
  wire       [7:0]    laji_1_Feature_Array_1_3;
  wire       [7:0]    laji_1_Feature_Array_1_4;
  wire       [7:0]    laji_1_Feature_Array_1_5;
  wire       [7:0]    laji_1_Feature_Array_1_6;
  wire       [7:0]    laji_1_Feature_Array_1_7;
  wire       [7:0]    laji_1_Feature_Array_1_8;
  wire       [7:0]    laji_1_Feature_Array_2_0;
  wire       [7:0]    laji_1_Feature_Array_2_1;
  wire       [7:0]    laji_1_Feature_Array_2_2;
  wire       [7:0]    laji_1_Feature_Array_2_3;
  wire       [7:0]    laji_1_Feature_Array_2_4;
  wire       [7:0]    laji_1_Feature_Array_2_5;
  wire       [7:0]    laji_1_Feature_Array_2_6;
  wire       [7:0]    laji_1_Feature_Array_2_7;
  wire       [7:0]    laji_1_Feature_Array_2_8;
  wire       [7:0]    laji_1_Feature_Array_3_0;
  wire       [7:0]    laji_1_Feature_Array_3_1;
  wire       [7:0]    laji_1_Feature_Array_3_2;
  wire       [7:0]    laji_1_Feature_Array_3_3;
  wire       [7:0]    laji_1_Feature_Array_3_4;
  wire       [7:0]    laji_1_Feature_Array_3_5;
  wire       [7:0]    laji_1_Feature_Array_3_6;
  wire       [7:0]    laji_1_Feature_Array_3_7;
  wire       [7:0]    laji_1_Feature_Array_3_8;
  wire       [7:0]    laji_1_Feature_Array_4_0;
  wire       [7:0]    laji_1_Feature_Array_4_1;
  wire       [7:0]    laji_1_Feature_Array_4_2;
  wire       [7:0]    laji_1_Feature_Array_4_3;
  wire       [7:0]    laji_1_Feature_Array_4_4;
  wire       [7:0]    laji_1_Feature_Array_4_5;
  wire       [7:0]    laji_1_Feature_Array_4_6;
  wire       [7:0]    laji_1_Feature_Array_4_7;
  wire       [7:0]    laji_1_Feature_Array_4_8;
  wire       [7:0]    laji_1_Feature_Array_5_0;
  wire       [7:0]    laji_1_Feature_Array_5_1;
  wire       [7:0]    laji_1_Feature_Array_5_2;
  wire       [7:0]    laji_1_Feature_Array_5_3;
  wire       [7:0]    laji_1_Feature_Array_5_4;
  wire       [7:0]    laji_1_Feature_Array_5_5;
  wire       [7:0]    laji_1_Feature_Array_5_6;
  wire       [7:0]    laji_1_Feature_Array_5_7;
  wire       [7:0]    laji_1_Feature_Array_5_8;
  wire       [7:0]    laji_1_Feature_Array_6_0;
  wire       [7:0]    laji_1_Feature_Array_6_1;
  wire       [7:0]    laji_1_Feature_Array_6_2;
  wire       [7:0]    laji_1_Feature_Array_6_3;
  wire       [7:0]    laji_1_Feature_Array_6_4;
  wire       [7:0]    laji_1_Feature_Array_6_5;
  wire       [7:0]    laji_1_Feature_Array_6_6;
  wire       [7:0]    laji_1_Feature_Array_6_7;
  wire       [7:0]    laji_1_Feature_Array_6_8;
  wire       [7:0]    laji_1_Feature_Array_7_0;
  wire       [7:0]    laji_1_Feature_Array_7_1;
  wire       [7:0]    laji_1_Feature_Array_7_2;
  wire       [7:0]    laji_1_Feature_Array_7_3;
  wire       [7:0]    laji_1_Feature_Array_7_4;
  wire       [7:0]    laji_1_Feature_Array_7_5;
  wire       [7:0]    laji_1_Feature_Array_7_6;
  wire       [7:0]    laji_1_Feature_Array_7_7;
  wire       [7:0]    laji_1_Feature_Array_7_8;
  reg        [63:0]   _zz__zz_1_port1;
  reg        [63:0]   _zz__zz_2_port1;
  reg        [63:0]   _zz__zz_3_port1;
  reg        [63:0]   _zz__zz_4_port1;
  reg        [63:0]   _zz__zz_5_port1;
  reg        [63:0]   _zz__zz_6_port1;
  reg        [63:0]   _zz__zz_7_port1;
  reg        [63:0]   _zz__zz_8_port1;
  reg        [63:0]   _zz__zz_9_port1;
  wire                channelIncr_1_sData_ready;
  wire                channelIncr_1_mData_valid;
  wire       [63:0]   channelIncr_1_mData_payload;
  wire                dataGenerate_1_sData_ready;
  wire                dataGenerate_1_mData_mData_0_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_0_payload;
  wire                dataGenerate_1_mData_mData_1_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_1_payload;
  wire                dataGenerate_1_mData_mData_2_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_2_payload;
  wire                dataGenerate_1_mData_mData_3_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_3_payload;
  wire                dataGenerate_1_mData_mData_4_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_4_payload;
  wire                dataGenerate_1_mData_mData_5_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_5_payload;
  wire                dataGenerate_1_mData_mData_6_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_6_payload;
  wire                dataGenerate_1_mData_mData_7_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_7_payload;
  wire                dataGenerate_1_mData_mData_8_valid;
  wire       [63:0]   dataGenerate_1_mData_mData_8_payload;
  wire                convComputeCtrl_1_mDataValid;
  wire                convComputeCtrl_1_normValid;
  wire                convComputeCtrl_1_normPreValid;
  wire                convComputeCtrl_1_normEnd;
  wire       [5:0]    convComputeCtrl_1_featureMemReadAddr;
  wire       [5:0]    convComputeCtrl_1_featureMemWriteAddr;
  wire                convComputeCtrl_1_featureMemWriteReady;
  wire       [9:0]    convComputeCtrl_1_weightReadAddr_0;
  wire       [9:0]    convComputeCtrl_1_weightReadAddr_1;
  wire       [9:0]    convComputeCtrl_1_weightReadAddr_2;
  wire       [9:0]    convComputeCtrl_1_weightReadAddr_3;
  wire       [9:0]    convComputeCtrl_1_weightReadAddr_4;
  wire       [9:0]    convComputeCtrl_1_weightReadAddr_5;
  wire       [9:0]    convComputeCtrl_1_weightReadAddr_6;
  wire       [9:0]    convComputeCtrl_1_weightReadAddr_7;
  wire       [6:0]    convComputeCtrl_1_biasReadAddr;
  wire       [6:0]    convComputeCtrl_1_scaleReadAddr;
  wire       [6:0]    convComputeCtrl_1_shiftReadAddr;
  wire       [10:0]   convComputeCtrl_1_sCount;
  wire       [10:0]   convComputeCtrl_1_mCount;
  wire                convComputeCtrl_1_weightCE;
  wire                convComputeCtrl_1_featureCE;
  wire                convComputeCtrl_1_endEnd;
  wire                loadWeight_1_sData_ready;
  wire                loadWeight_1_quanData_ready;
  wire       [575:0]  loadWeight_1_weightRead_0_data;
  wire       [575:0]  loadWeight_1_weightRead_1_data;
  wire       [575:0]  loadWeight_1_weightRead_2_data;
  wire       [575:0]  loadWeight_1_weightRead_3_data;
  wire       [575:0]  loadWeight_1_weightRead_4_data;
  wire       [575:0]  loadWeight_1_weightRead_5_data;
  wire       [575:0]  loadWeight_1_weightRead_6_data;
  wire       [575:0]  loadWeight_1_weightRead_7_data;
  wire       [255:0]  loadWeight_1_biasRead_data;
  wire       [255:0]  loadWeight_1_scaleRead_data;
  wire       [255:0]  loadWeight_1_shiftRead_data;
  wire                loadWeight_1_copyWeightDone;
  wire                loadWeight_1_copyWeightEnd;
  wire                waXpmSyncFifo_9_sReady;
  wire                waXpmSyncFifo_9_mReady;
  wire       [63:0]   waXpmSyncFifo_9_dout;
  wire                waXpmSyncFifo_10_sReady;
  wire                waXpmSyncFifo_10_mReady;
  wire       [63:0]   waXpmSyncFifo_10_dout;
  wire                waXpmSyncFifo_11_sReady;
  wire                waXpmSyncFifo_11_mReady;
  wire       [63:0]   waXpmSyncFifo_11_dout;
  wire                waXpmSyncFifo_12_sReady;
  wire                waXpmSyncFifo_12_mReady;
  wire       [63:0]   waXpmSyncFifo_12_dout;
  wire                waXpmSyncFifo_13_sReady;
  wire                waXpmSyncFifo_13_mReady;
  wire       [63:0]   waXpmSyncFifo_13_dout;
  wire                waXpmSyncFifo_14_sReady;
  wire                waXpmSyncFifo_14_mReady;
  wire       [63:0]   waXpmSyncFifo_14_dout;
  wire                waXpmSyncFifo_15_sReady;
  wire                waXpmSyncFifo_15_mReady;
  wire       [63:0]   waXpmSyncFifo_15_dout;
  wire                waXpmSyncFifo_16_sReady;
  wire                waXpmSyncFifo_16_mReady;
  wire       [63:0]   waXpmSyncFifo_16_dout;
  wire                waXpmSyncFifo_17_sReady;
  wire                waXpmSyncFifo_17_mReady;
  wire       [63:0]   waXpmSyncFifo_17_dout;
  wire       [63:0]   _zz__zz_1_port;
  wire                _zz__zz_1_port_1;
  wire                _zz__zz_Feature_Array_0_0;
  wire       [63:0]   _zz__zz_2_port;
  wire                _zz__zz_2_port_1;
  wire                _zz__zz_Feature_Array_0_1;
  wire       [63:0]   _zz__zz_3_port;
  wire                _zz__zz_3_port_1;
  wire                _zz__zz_Feature_Array_0_2;
  wire       [63:0]   _zz__zz_4_port;
  wire                _zz__zz_4_port_1;
  wire                _zz__zz_Feature_Array_0_3;
  wire       [63:0]   _zz__zz_5_port;
  wire                _zz__zz_5_port_1;
  wire                _zz__zz_Feature_Array_0_4;
  wire       [63:0]   _zz__zz_6_port;
  wire                _zz__zz_6_port_1;
  wire                _zz__zz_Feature_Array_0_5;
  wire       [63:0]   _zz__zz_7_port;
  wire                _zz__zz_7_port_1;
  wire                _zz__zz_Feature_Array_0_6;
  wire       [63:0]   _zz__zz_8_port;
  wire                _zz__zz_8_port_1;
  wire                _zz__zz_Feature_Array_0_7;
  wire       [63:0]   _zz__zz_9_port;
  wire                _zz__zz_9_port_1;
  wire                _zz__zz_Feature_Array_0_8;
  reg        [1:0]    _zz_convType;
  wire       [63:0]   _zz_Feature_Array_0_0;
  wire       [63:0]   _zz_Feature_Array_0_1;
  wire       [63:0]   _zz_Feature_Array_0_2;
  wire       [63:0]   _zz_Feature_Array_0_3;
  wire       [63:0]   _zz_Feature_Array_0_4;
  wire       [63:0]   _zz_Feature_Array_0_5;
  wire       [63:0]   _zz_Feature_Array_0_6;
  wire       [63:0]   _zz_Feature_Array_0_7;
  wire       [63:0]   _zz_Feature_Array_0_8;
  reg [63:0] _zz_1 [0:63];
  reg [63:0] _zz_2 [0:63];
  reg [63:0] _zz_3 [0:63];
  reg [63:0] _zz_4 [0:63];
  reg [63:0] _zz_5 [0:63];
  reg [63:0] _zz_6 [0:63];
  reg [63:0] _zz_7 [0:63];
  reg [63:0] _zz_8 [0:63];
  reg [63:0] _zz_9 [0:63];

  assign _zz__zz_1_port = waXpmSyncFifo_9_dout;
  assign _zz__zz_Feature_Array_0_0 = 1'b1;
  assign _zz__zz_2_port = waXpmSyncFifo_10_dout;
  assign _zz__zz_Feature_Array_0_1 = 1'b1;
  assign _zz__zz_3_port = waXpmSyncFifo_11_dout;
  assign _zz__zz_Feature_Array_0_2 = 1'b1;
  assign _zz__zz_4_port = waXpmSyncFifo_12_dout;
  assign _zz__zz_Feature_Array_0_3 = 1'b1;
  assign _zz__zz_5_port = waXpmSyncFifo_13_dout;
  assign _zz__zz_Feature_Array_0_4 = 1'b1;
  assign _zz__zz_6_port = waXpmSyncFifo_14_dout;
  assign _zz__zz_Feature_Array_0_5 = 1'b1;
  assign _zz__zz_7_port = waXpmSyncFifo_15_dout;
  assign _zz__zz_Feature_Array_0_6 = 1'b1;
  assign _zz__zz_8_port = waXpmSyncFifo_16_dout;
  assign _zz__zz_Feature_Array_0_7 = 1'b1;
  assign _zz__zz_9_port = waXpmSyncFifo_17_dout;
  assign _zz__zz_Feature_Array_0_8 = 1'b1;
  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_1[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_1_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_0) begin
      _zz__zz_1_port1 <= _zz_1[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_2[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_2_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_1) begin
      _zz__zz_2_port1 <= _zz_2[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_3[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_3_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_2) begin
      _zz__zz_3_port1 <= _zz_3[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_4[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_4_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_3) begin
      _zz__zz_4_port1 <= _zz_4[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_5[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_5_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_4) begin
      _zz__zz_5_port1 <= _zz_5[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_6[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_6_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_5) begin
      _zz__zz_6_port1 <= _zz_6[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_7[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_7_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_6) begin
      _zz__zz_7_port1 <= _zz_7[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_8[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_8_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_7) begin
      _zz__zz_8_port1 <= _zz_8[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  always @(posedge clk) begin
    if(convComputeCtrl_1_featureMemWriteReady) begin
      _zz_9[convComputeCtrl_1_featureMemWriteAddr] <= _zz__zz_9_port;
    end
  end

  always @(posedge clk) begin
    if(_zz__zz_Feature_Array_0_8) begin
      _zz__zz_9_port1 <= _zz_9[convComputeCtrl_1_featureMemReadAddr];
    end
  end

  ChannelIncr channelIncr_1 (
    .sData_valid   (sFeatureFirstLayerData_valid       ), //i
    .sData_ready   (channelIncr_1_sData_ready          ), //o
    .sData_payload (sFeatureFirstLayerData_payload[7:0]), //i
    .mData_valid   (channelIncr_1_mData_valid          ), //o
    .mData_ready   (channelIncr_1_mData_ready          ), //i
    .mData_payload (channelIncr_1_mData_payload[63:0]  )  //o
  );
  DataGenerate dataGenerate_1 (
    .sData_valid           (dataGenerate_1_sData_valid                ), //i
    .sData_ready           (dataGenerate_1_sData_ready                ), //o
    .sData_payload         (dataGenerate_1_sData_payload[63:0]        ), //i
    .start                 (startCu                                   ), //i
    .enPadding             (enPadding                                 ), //i
    .channelIn             (channelIn[11:0]                           ), //i
    .rowNumIn              (rowNumIn[8:0]                             ), //i
    .colNumIn              (colNumIn[8:0]                             ), //i
    .zeroDara              (zeroDara[7:0]                             ), //i
    .zeroNum               (zeroNum                                   ), //i
    .mData_mData_0_valid   (dataGenerate_1_mData_mData_0_valid        ), //o
    .mData_mData_0_payload (dataGenerate_1_mData_mData_0_payload[63:0]), //o
    .mData_mData_1_valid   (dataGenerate_1_mData_mData_1_valid        ), //o
    .mData_mData_1_payload (dataGenerate_1_mData_mData_1_payload[63:0]), //o
    .mData_mData_2_valid   (dataGenerate_1_mData_mData_2_valid        ), //o
    .mData_mData_2_payload (dataGenerate_1_mData_mData_2_payload[63:0]), //o
    .mData_mData_3_valid   (dataGenerate_1_mData_mData_3_valid        ), //o
    .mData_mData_3_payload (dataGenerate_1_mData_mData_3_payload[63:0]), //o
    .mData_mData_4_valid   (dataGenerate_1_mData_mData_4_valid        ), //o
    .mData_mData_4_payload (dataGenerate_1_mData_mData_4_payload[63:0]), //o
    .mData_mData_5_valid   (dataGenerate_1_mData_mData_5_valid        ), //o
    .mData_mData_5_payload (dataGenerate_1_mData_mData_5_payload[63:0]), //o
    .mData_mData_6_valid   (dataGenerate_1_mData_mData_6_valid        ), //o
    .mData_mData_6_payload (dataGenerate_1_mData_mData_6_payload[63:0]), //o
    .mData_mData_7_valid   (dataGenerate_1_mData_mData_7_valid        ), //o
    .mData_mData_7_payload (dataGenerate_1_mData_mData_7_payload[63:0]), //o
    .mData_mData_8_valid   (dataGenerate_1_mData_mData_8_valid        ), //o
    .mData_mData_8_payload (dataGenerate_1_mData_mData_8_payload[63:0]), //o
    .mData_ready           (waXpmSyncFifo_9_sReady                    ), //i
    .convType              (_zz_convType[1:0]                         ), //i
    .reset                 (reset                                     ), //i
    .clk                   (clk                                       ), //i
    .softReset             (softReset                                 )  //i
  );
  ConvComputeCtrl convComputeCtrl_1 (
    .start                (startCu                                   ), //i
    .mDataValid           (convComputeCtrl_1_mDataValid              ), //o
    .mDataReady           (mDataReady                                ), //i
    .normValid            (convComputeCtrl_1_normValid               ), //o
    .normPreValid         (convComputeCtrl_1_normPreValid            ), //o
    .normEnd              (convComputeCtrl_1_normEnd                 ), //o
    .sDataReady           (waXpmSyncFifo_9_mReady                    ), //i
    .rowNumIn             (rowNumIn[8:0]                             ), //i
    .colNumIn             (colNumIn[8:0]                             ), //i
    .channelIn            (channelIn[11:0]                           ), //i
    .channelOut           (channelOut[11:0]                          ), //i
    .featureMemReadAddr   (convComputeCtrl_1_featureMemReadAddr[5:0] ), //o
    .featureMemWriteAddr  (convComputeCtrl_1_featureMemWriteAddr[5:0]), //o
    .featureMemWriteReady (convComputeCtrl_1_featureMemWriteReady    ), //o
    .weightReadAddr_0     (convComputeCtrl_1_weightReadAddr_0[9:0]   ), //o
    .weightReadAddr_1     (convComputeCtrl_1_weightReadAddr_1[9:0]   ), //o
    .weightReadAddr_2     (convComputeCtrl_1_weightReadAddr_2[9:0]   ), //o
    .weightReadAddr_3     (convComputeCtrl_1_weightReadAddr_3[9:0]   ), //o
    .weightReadAddr_4     (convComputeCtrl_1_weightReadAddr_4[9:0]   ), //o
    .weightReadAddr_5     (convComputeCtrl_1_weightReadAddr_5[9:0]   ), //o
    .weightReadAddr_6     (convComputeCtrl_1_weightReadAddr_6[9:0]   ), //o
    .weightReadAddr_7     (convComputeCtrl_1_weightReadAddr_7[9:0]   ), //o
    .biasReadAddr         (convComputeCtrl_1_biasReadAddr[6:0]       ), //o
    .scaleReadAddr        (convComputeCtrl_1_scaleReadAddr[6:0]      ), //o
    .shiftReadAddr        (convComputeCtrl_1_shiftReadAddr[6:0]      ), //o
    .activationEn         (enActivation                              ), //i
    .sCount               (convComputeCtrl_1_sCount[10:0]            ), //o
    .mCount               (convComputeCtrl_1_mCount[10:0]            ), //o
    .convType             (_zz_convType[1:0]                         ), //i
    .weightCE             (convComputeCtrl_1_weightCE                ), //o
    .featureCE            (convComputeCtrl_1_featureCE               ), //o
    .endEnd               (convComputeCtrl_1_endEnd                  ), //o
    .clk                  (clk                                       ), //i
    .reset                (reset                                     ), //i
    .softReset            (softReset                                 )  //i
  );
  LoadWeight loadWeight_1 (
    .start             (startPa                                ), //i
    .sData_valid       (sParaData_valid                        ), //i
    .sData_ready       (loadWeight_1_sData_ready               ), //o
    .sData_payload     (sParaData_payload[71:0]                ), //i
    .quanData_valid    (sQuanData_valid                        ), //i
    .quanData_ready    (loadWeight_1_quanData_ready            ), //o
    .quanData_payload  (sQuanData_payload[63:0]                ), //i
    .weightNum         (weightNum[12:0]                        ), //i
    .quanNum           (quanNum[8:0]                           ), //i
    .weightRead_0_addr (convComputeCtrl_1_weightReadAddr_0[9:0]), //i
    .weightRead_0_data (loadWeight_1_weightRead_0_data[575:0]  ), //o
    .weightRead_1_addr (convComputeCtrl_1_weightReadAddr_1[9:0]), //i
    .weightRead_1_data (loadWeight_1_weightRead_1_data[575:0]  ), //o
    .weightRead_2_addr (convComputeCtrl_1_weightReadAddr_2[9:0]), //i
    .weightRead_2_data (loadWeight_1_weightRead_2_data[575:0]  ), //o
    .weightRead_3_addr (convComputeCtrl_1_weightReadAddr_3[9:0]), //i
    .weightRead_3_data (loadWeight_1_weightRead_3_data[575:0]  ), //o
    .weightRead_4_addr (convComputeCtrl_1_weightReadAddr_4[9:0]), //i
    .weightRead_4_data (loadWeight_1_weightRead_4_data[575:0]  ), //o
    .weightRead_5_addr (convComputeCtrl_1_weightReadAddr_5[9:0]), //i
    .weightRead_5_data (loadWeight_1_weightRead_5_data[575:0]  ), //o
    .weightRead_6_addr (convComputeCtrl_1_weightReadAddr_6[9:0]), //i
    .weightRead_6_data (loadWeight_1_weightRead_6_data[575:0]  ), //o
    .weightRead_7_addr (convComputeCtrl_1_weightReadAddr_7[9:0]), //i
    .weightRead_7_data (loadWeight_1_weightRead_7_data[575:0]  ), //o
    .biasRead_addr     (convComputeCtrl_1_biasReadAddr[6:0]    ), //i
    .biasRead_data     (loadWeight_1_biasRead_data[255:0]      ), //o
    .scaleRead_addr    (convComputeCtrl_1_scaleReadAddr[6:0]   ), //i
    .scaleRead_data    (loadWeight_1_scaleRead_data[255:0]     ), //o
    .shiftRead_addr    (convComputeCtrl_1_shiftReadAddr[6:0]   ), //i
    .shiftRead_data    (loadWeight_1_shiftRead_data[255:0]     ), //o
    .copyWeightDone    (loadWeight_1_copyWeightDone            ), //o
    .convType          (convType[1:0]                          ), //i
    .channelIn         (channelIn[11:0]                        ), //i
    .channelOut        (channelOut[11:0]                       ), //i
    .copyWeightEnd     (loadWeight_1_copyWeightEnd             ), //o
    .clk               (clk                                    ), //i
    .reset             (reset                                  ), //i
    .softReset         (softReset                              )  //i
  );
  WaXpmSyncFifo waXpmSyncFifo_9 (
    .sCount         (waXpmSyncFifo_9_sCount[11:0]              ), //i
    .mCount         (waXpmSyncFifo_9_mCount[11:0]              ), //i
    .sReady         (waXpmSyncFifo_9_sReady                    ), //o
    .mReady         (waXpmSyncFifo_9_mReady                    ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_0_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_0_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_9_dout[63:0]                )  //o
  );
  WaXpmSyncFifo waXpmSyncFifo_10 (
    .sCount         (waXpmSyncFifo_10_sCount[11:0]             ), //i
    .mCount         (waXpmSyncFifo_10_mCount[11:0]             ), //i
    .sReady         (waXpmSyncFifo_10_sReady                   ), //o
    .mReady         (waXpmSyncFifo_10_mReady                   ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_1_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_1_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_10_dout[63:0]               )  //o
  );
  WaXpmSyncFifo waXpmSyncFifo_11 (
    .sCount         (waXpmSyncFifo_11_sCount[11:0]             ), //i
    .mCount         (waXpmSyncFifo_11_mCount[11:0]             ), //i
    .sReady         (waXpmSyncFifo_11_sReady                   ), //o
    .mReady         (waXpmSyncFifo_11_mReady                   ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_2_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_2_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_11_dout[63:0]               )  //o
  );
  WaXpmSyncFifo waXpmSyncFifo_12 (
    .sCount         (waXpmSyncFifo_12_sCount[11:0]             ), //i
    .mCount         (waXpmSyncFifo_12_mCount[11:0]             ), //i
    .sReady         (waXpmSyncFifo_12_sReady                   ), //o
    .mReady         (waXpmSyncFifo_12_mReady                   ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_3_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_3_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_12_dout[63:0]               )  //o
  );
  WaXpmSyncFifo waXpmSyncFifo_13 (
    .sCount         (waXpmSyncFifo_13_sCount[11:0]             ), //i
    .mCount         (waXpmSyncFifo_13_mCount[11:0]             ), //i
    .sReady         (waXpmSyncFifo_13_sReady                   ), //o
    .mReady         (waXpmSyncFifo_13_mReady                   ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_4_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_4_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_13_dout[63:0]               )  //o
  );
  WaXpmSyncFifo waXpmSyncFifo_14 (
    .sCount         (waXpmSyncFifo_14_sCount[11:0]             ), //i
    .mCount         (waXpmSyncFifo_14_mCount[11:0]             ), //i
    .sReady         (waXpmSyncFifo_14_sReady                   ), //o
    .mReady         (waXpmSyncFifo_14_mReady                   ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_5_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_5_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_14_dout[63:0]               )  //o
  );
  WaXpmSyncFifo waXpmSyncFifo_15 (
    .sCount         (waXpmSyncFifo_15_sCount[11:0]             ), //i
    .mCount         (waXpmSyncFifo_15_mCount[11:0]             ), //i
    .sReady         (waXpmSyncFifo_15_sReady                   ), //o
    .mReady         (waXpmSyncFifo_15_mReady                   ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_6_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_6_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_15_dout[63:0]               )  //o
  );
  WaXpmSyncFifo waXpmSyncFifo_16 (
    .sCount         (waXpmSyncFifo_16_sCount[11:0]             ), //i
    .mCount         (waXpmSyncFifo_16_mCount[11:0]             ), //i
    .sReady         (waXpmSyncFifo_16_sReady                   ), //o
    .mReady         (waXpmSyncFifo_16_mReady                   ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_7_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_7_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_16_dout[63:0]               )  //o
  );
  WaXpmSyncFifo waXpmSyncFifo_17 (
    .sCount         (waXpmSyncFifo_17_sCount[11:0]             ), //i
    .mCount         (waXpmSyncFifo_17_mCount[11:0]             ), //i
    .sReady         (waXpmSyncFifo_17_sReady                   ), //o
    .mReady         (waXpmSyncFifo_17_mReady                   ), //o
    .reset          (reset                                     ), //i
    .clk            (clk                                       ), //i
    .dataIn_valid   (dataGenerate_1_mData_mData_8_valid        ), //i
    .dataIn_payload (dataGenerate_1_mData_mData_8_payload[63:0]), //i
    .rd_en          (convComputeCtrl_1_featureMemWriteReady    ), //i
    .dout           (waXpmSyncFifo_17_dout[63:0]               )  //o
  );
  laji laji_1 (
    .Weight_CE          (convComputeCtrl_1_weightCE    ), //i
    .Feature_CE         (convComputeCtrl_1_featureCE   ), //i
    .Weight_Array_0_0_0 (laji_1_Weight_Array_0_0_0[7:0]), //i
    .Weight_Array_0_0_1 (laji_1_Weight_Array_0_0_1[7:0]), //i
    .Weight_Array_0_0_2 (laji_1_Weight_Array_0_0_2[7:0]), //i
    .Weight_Array_0_0_3 (laji_1_Weight_Array_0_0_3[7:0]), //i
    .Weight_Array_0_0_4 (laji_1_Weight_Array_0_0_4[7:0]), //i
    .Weight_Array_0_0_5 (laji_1_Weight_Array_0_0_5[7:0]), //i
    .Weight_Array_0_0_6 (laji_1_Weight_Array_0_0_6[7:0]), //i
    .Weight_Array_0_0_7 (laji_1_Weight_Array_0_0_7[7:0]), //i
    .Weight_Array_0_0_8 (laji_1_Weight_Array_0_0_8[7:0]), //i
    .Weight_Array_0_1_0 (laji_1_Weight_Array_0_1_0[7:0]), //i
    .Weight_Array_0_1_1 (laji_1_Weight_Array_0_1_1[7:0]), //i
    .Weight_Array_0_1_2 (laji_1_Weight_Array_0_1_2[7:0]), //i
    .Weight_Array_0_1_3 (laji_1_Weight_Array_0_1_3[7:0]), //i
    .Weight_Array_0_1_4 (laji_1_Weight_Array_0_1_4[7:0]), //i
    .Weight_Array_0_1_5 (laji_1_Weight_Array_0_1_5[7:0]), //i
    .Weight_Array_0_1_6 (laji_1_Weight_Array_0_1_6[7:0]), //i
    .Weight_Array_0_1_7 (laji_1_Weight_Array_0_1_7[7:0]), //i
    .Weight_Array_0_1_8 (laji_1_Weight_Array_0_1_8[7:0]), //i
    .Weight_Array_0_2_0 (laji_1_Weight_Array_0_2_0[7:0]), //i
    .Weight_Array_0_2_1 (laji_1_Weight_Array_0_2_1[7:0]), //i
    .Weight_Array_0_2_2 (laji_1_Weight_Array_0_2_2[7:0]), //i
    .Weight_Array_0_2_3 (laji_1_Weight_Array_0_2_3[7:0]), //i
    .Weight_Array_0_2_4 (laji_1_Weight_Array_0_2_4[7:0]), //i
    .Weight_Array_0_2_5 (laji_1_Weight_Array_0_2_5[7:0]), //i
    .Weight_Array_0_2_6 (laji_1_Weight_Array_0_2_6[7:0]), //i
    .Weight_Array_0_2_7 (laji_1_Weight_Array_0_2_7[7:0]), //i
    .Weight_Array_0_2_8 (laji_1_Weight_Array_0_2_8[7:0]), //i
    .Weight_Array_0_3_0 (laji_1_Weight_Array_0_3_0[7:0]), //i
    .Weight_Array_0_3_1 (laji_1_Weight_Array_0_3_1[7:0]), //i
    .Weight_Array_0_3_2 (laji_1_Weight_Array_0_3_2[7:0]), //i
    .Weight_Array_0_3_3 (laji_1_Weight_Array_0_3_3[7:0]), //i
    .Weight_Array_0_3_4 (laji_1_Weight_Array_0_3_4[7:0]), //i
    .Weight_Array_0_3_5 (laji_1_Weight_Array_0_3_5[7:0]), //i
    .Weight_Array_0_3_6 (laji_1_Weight_Array_0_3_6[7:0]), //i
    .Weight_Array_0_3_7 (laji_1_Weight_Array_0_3_7[7:0]), //i
    .Weight_Array_0_3_8 (laji_1_Weight_Array_0_3_8[7:0]), //i
    .Weight_Array_0_4_0 (laji_1_Weight_Array_0_4_0[7:0]), //i
    .Weight_Array_0_4_1 (laji_1_Weight_Array_0_4_1[7:0]), //i
    .Weight_Array_0_4_2 (laji_1_Weight_Array_0_4_2[7:0]), //i
    .Weight_Array_0_4_3 (laji_1_Weight_Array_0_4_3[7:0]), //i
    .Weight_Array_0_4_4 (laji_1_Weight_Array_0_4_4[7:0]), //i
    .Weight_Array_0_4_5 (laji_1_Weight_Array_0_4_5[7:0]), //i
    .Weight_Array_0_4_6 (laji_1_Weight_Array_0_4_6[7:0]), //i
    .Weight_Array_0_4_7 (laji_1_Weight_Array_0_4_7[7:0]), //i
    .Weight_Array_0_4_8 (laji_1_Weight_Array_0_4_8[7:0]), //i
    .Weight_Array_0_5_0 (laji_1_Weight_Array_0_5_0[7:0]), //i
    .Weight_Array_0_5_1 (laji_1_Weight_Array_0_5_1[7:0]), //i
    .Weight_Array_0_5_2 (laji_1_Weight_Array_0_5_2[7:0]), //i
    .Weight_Array_0_5_3 (laji_1_Weight_Array_0_5_3[7:0]), //i
    .Weight_Array_0_5_4 (laji_1_Weight_Array_0_5_4[7:0]), //i
    .Weight_Array_0_5_5 (laji_1_Weight_Array_0_5_5[7:0]), //i
    .Weight_Array_0_5_6 (laji_1_Weight_Array_0_5_6[7:0]), //i
    .Weight_Array_0_5_7 (laji_1_Weight_Array_0_5_7[7:0]), //i
    .Weight_Array_0_5_8 (laji_1_Weight_Array_0_5_8[7:0]), //i
    .Weight_Array_0_6_0 (laji_1_Weight_Array_0_6_0[7:0]), //i
    .Weight_Array_0_6_1 (laji_1_Weight_Array_0_6_1[7:0]), //i
    .Weight_Array_0_6_2 (laji_1_Weight_Array_0_6_2[7:0]), //i
    .Weight_Array_0_6_3 (laji_1_Weight_Array_0_6_3[7:0]), //i
    .Weight_Array_0_6_4 (laji_1_Weight_Array_0_6_4[7:0]), //i
    .Weight_Array_0_6_5 (laji_1_Weight_Array_0_6_5[7:0]), //i
    .Weight_Array_0_6_6 (laji_1_Weight_Array_0_6_6[7:0]), //i
    .Weight_Array_0_6_7 (laji_1_Weight_Array_0_6_7[7:0]), //i
    .Weight_Array_0_6_8 (laji_1_Weight_Array_0_6_8[7:0]), //i
    .Weight_Array_0_7_0 (laji_1_Weight_Array_0_7_0[7:0]), //i
    .Weight_Array_0_7_1 (laji_1_Weight_Array_0_7_1[7:0]), //i
    .Weight_Array_0_7_2 (laji_1_Weight_Array_0_7_2[7:0]), //i
    .Weight_Array_0_7_3 (laji_1_Weight_Array_0_7_3[7:0]), //i
    .Weight_Array_0_7_4 (laji_1_Weight_Array_0_7_4[7:0]), //i
    .Weight_Array_0_7_5 (laji_1_Weight_Array_0_7_5[7:0]), //i
    .Weight_Array_0_7_6 (laji_1_Weight_Array_0_7_6[7:0]), //i
    .Weight_Array_0_7_7 (laji_1_Weight_Array_0_7_7[7:0]), //i
    .Weight_Array_0_7_8 (laji_1_Weight_Array_0_7_8[7:0]), //i
    .Weight_Array_1_0_0 (laji_1_Weight_Array_1_0_0[7:0]), //i
    .Weight_Array_1_0_1 (laji_1_Weight_Array_1_0_1[7:0]), //i
    .Weight_Array_1_0_2 (laji_1_Weight_Array_1_0_2[7:0]), //i
    .Weight_Array_1_0_3 (laji_1_Weight_Array_1_0_3[7:0]), //i
    .Weight_Array_1_0_4 (laji_1_Weight_Array_1_0_4[7:0]), //i
    .Weight_Array_1_0_5 (laji_1_Weight_Array_1_0_5[7:0]), //i
    .Weight_Array_1_0_6 (laji_1_Weight_Array_1_0_6[7:0]), //i
    .Weight_Array_1_0_7 (laji_1_Weight_Array_1_0_7[7:0]), //i
    .Weight_Array_1_0_8 (laji_1_Weight_Array_1_0_8[7:0]), //i
    .Weight_Array_1_1_0 (laji_1_Weight_Array_1_1_0[7:0]), //i
    .Weight_Array_1_1_1 (laji_1_Weight_Array_1_1_1[7:0]), //i
    .Weight_Array_1_1_2 (laji_1_Weight_Array_1_1_2[7:0]), //i
    .Weight_Array_1_1_3 (laji_1_Weight_Array_1_1_3[7:0]), //i
    .Weight_Array_1_1_4 (laji_1_Weight_Array_1_1_4[7:0]), //i
    .Weight_Array_1_1_5 (laji_1_Weight_Array_1_1_5[7:0]), //i
    .Weight_Array_1_1_6 (laji_1_Weight_Array_1_1_6[7:0]), //i
    .Weight_Array_1_1_7 (laji_1_Weight_Array_1_1_7[7:0]), //i
    .Weight_Array_1_1_8 (laji_1_Weight_Array_1_1_8[7:0]), //i
    .Weight_Array_1_2_0 (laji_1_Weight_Array_1_2_0[7:0]), //i
    .Weight_Array_1_2_1 (laji_1_Weight_Array_1_2_1[7:0]), //i
    .Weight_Array_1_2_2 (laji_1_Weight_Array_1_2_2[7:0]), //i
    .Weight_Array_1_2_3 (laji_1_Weight_Array_1_2_3[7:0]), //i
    .Weight_Array_1_2_4 (laji_1_Weight_Array_1_2_4[7:0]), //i
    .Weight_Array_1_2_5 (laji_1_Weight_Array_1_2_5[7:0]), //i
    .Weight_Array_1_2_6 (laji_1_Weight_Array_1_2_6[7:0]), //i
    .Weight_Array_1_2_7 (laji_1_Weight_Array_1_2_7[7:0]), //i
    .Weight_Array_1_2_8 (laji_1_Weight_Array_1_2_8[7:0]), //i
    .Weight_Array_1_3_0 (laji_1_Weight_Array_1_3_0[7:0]), //i
    .Weight_Array_1_3_1 (laji_1_Weight_Array_1_3_1[7:0]), //i
    .Weight_Array_1_3_2 (laji_1_Weight_Array_1_3_2[7:0]), //i
    .Weight_Array_1_3_3 (laji_1_Weight_Array_1_3_3[7:0]), //i
    .Weight_Array_1_3_4 (laji_1_Weight_Array_1_3_4[7:0]), //i
    .Weight_Array_1_3_5 (laji_1_Weight_Array_1_3_5[7:0]), //i
    .Weight_Array_1_3_6 (laji_1_Weight_Array_1_3_6[7:0]), //i
    .Weight_Array_1_3_7 (laji_1_Weight_Array_1_3_7[7:0]), //i
    .Weight_Array_1_3_8 (laji_1_Weight_Array_1_3_8[7:0]), //i
    .Weight_Array_1_4_0 (laji_1_Weight_Array_1_4_0[7:0]), //i
    .Weight_Array_1_4_1 (laji_1_Weight_Array_1_4_1[7:0]), //i
    .Weight_Array_1_4_2 (laji_1_Weight_Array_1_4_2[7:0]), //i
    .Weight_Array_1_4_3 (laji_1_Weight_Array_1_4_3[7:0]), //i
    .Weight_Array_1_4_4 (laji_1_Weight_Array_1_4_4[7:0]), //i
    .Weight_Array_1_4_5 (laji_1_Weight_Array_1_4_5[7:0]), //i
    .Weight_Array_1_4_6 (laji_1_Weight_Array_1_4_6[7:0]), //i
    .Weight_Array_1_4_7 (laji_1_Weight_Array_1_4_7[7:0]), //i
    .Weight_Array_1_4_8 (laji_1_Weight_Array_1_4_8[7:0]), //i
    .Weight_Array_1_5_0 (laji_1_Weight_Array_1_5_0[7:0]), //i
    .Weight_Array_1_5_1 (laji_1_Weight_Array_1_5_1[7:0]), //i
    .Weight_Array_1_5_2 (laji_1_Weight_Array_1_5_2[7:0]), //i
    .Weight_Array_1_5_3 (laji_1_Weight_Array_1_5_3[7:0]), //i
    .Weight_Array_1_5_4 (laji_1_Weight_Array_1_5_4[7:0]), //i
    .Weight_Array_1_5_5 (laji_1_Weight_Array_1_5_5[7:0]), //i
    .Weight_Array_1_5_6 (laji_1_Weight_Array_1_5_6[7:0]), //i
    .Weight_Array_1_5_7 (laji_1_Weight_Array_1_5_7[7:0]), //i
    .Weight_Array_1_5_8 (laji_1_Weight_Array_1_5_8[7:0]), //i
    .Weight_Array_1_6_0 (laji_1_Weight_Array_1_6_0[7:0]), //i
    .Weight_Array_1_6_1 (laji_1_Weight_Array_1_6_1[7:0]), //i
    .Weight_Array_1_6_2 (laji_1_Weight_Array_1_6_2[7:0]), //i
    .Weight_Array_1_6_3 (laji_1_Weight_Array_1_6_3[7:0]), //i
    .Weight_Array_1_6_4 (laji_1_Weight_Array_1_6_4[7:0]), //i
    .Weight_Array_1_6_5 (laji_1_Weight_Array_1_6_5[7:0]), //i
    .Weight_Array_1_6_6 (laji_1_Weight_Array_1_6_6[7:0]), //i
    .Weight_Array_1_6_7 (laji_1_Weight_Array_1_6_7[7:0]), //i
    .Weight_Array_1_6_8 (laji_1_Weight_Array_1_6_8[7:0]), //i
    .Weight_Array_1_7_0 (laji_1_Weight_Array_1_7_0[7:0]), //i
    .Weight_Array_1_7_1 (laji_1_Weight_Array_1_7_1[7:0]), //i
    .Weight_Array_1_7_2 (laji_1_Weight_Array_1_7_2[7:0]), //i
    .Weight_Array_1_7_3 (laji_1_Weight_Array_1_7_3[7:0]), //i
    .Weight_Array_1_7_4 (laji_1_Weight_Array_1_7_4[7:0]), //i
    .Weight_Array_1_7_5 (laji_1_Weight_Array_1_7_5[7:0]), //i
    .Weight_Array_1_7_6 (laji_1_Weight_Array_1_7_6[7:0]), //i
    .Weight_Array_1_7_7 (laji_1_Weight_Array_1_7_7[7:0]), //i
    .Weight_Array_1_7_8 (laji_1_Weight_Array_1_7_8[7:0]), //i
    .Weight_Array_2_0_0 (laji_1_Weight_Array_2_0_0[7:0]), //i
    .Weight_Array_2_0_1 (laji_1_Weight_Array_2_0_1[7:0]), //i
    .Weight_Array_2_0_2 (laji_1_Weight_Array_2_0_2[7:0]), //i
    .Weight_Array_2_0_3 (laji_1_Weight_Array_2_0_3[7:0]), //i
    .Weight_Array_2_0_4 (laji_1_Weight_Array_2_0_4[7:0]), //i
    .Weight_Array_2_0_5 (laji_1_Weight_Array_2_0_5[7:0]), //i
    .Weight_Array_2_0_6 (laji_1_Weight_Array_2_0_6[7:0]), //i
    .Weight_Array_2_0_7 (laji_1_Weight_Array_2_0_7[7:0]), //i
    .Weight_Array_2_0_8 (laji_1_Weight_Array_2_0_8[7:0]), //i
    .Weight_Array_2_1_0 (laji_1_Weight_Array_2_1_0[7:0]), //i
    .Weight_Array_2_1_1 (laji_1_Weight_Array_2_1_1[7:0]), //i
    .Weight_Array_2_1_2 (laji_1_Weight_Array_2_1_2[7:0]), //i
    .Weight_Array_2_1_3 (laji_1_Weight_Array_2_1_3[7:0]), //i
    .Weight_Array_2_1_4 (laji_1_Weight_Array_2_1_4[7:0]), //i
    .Weight_Array_2_1_5 (laji_1_Weight_Array_2_1_5[7:0]), //i
    .Weight_Array_2_1_6 (laji_1_Weight_Array_2_1_6[7:0]), //i
    .Weight_Array_2_1_7 (laji_1_Weight_Array_2_1_7[7:0]), //i
    .Weight_Array_2_1_8 (laji_1_Weight_Array_2_1_8[7:0]), //i
    .Weight_Array_2_2_0 (laji_1_Weight_Array_2_2_0[7:0]), //i
    .Weight_Array_2_2_1 (laji_1_Weight_Array_2_2_1[7:0]), //i
    .Weight_Array_2_2_2 (laji_1_Weight_Array_2_2_2[7:0]), //i
    .Weight_Array_2_2_3 (laji_1_Weight_Array_2_2_3[7:0]), //i
    .Weight_Array_2_2_4 (laji_1_Weight_Array_2_2_4[7:0]), //i
    .Weight_Array_2_2_5 (laji_1_Weight_Array_2_2_5[7:0]), //i
    .Weight_Array_2_2_6 (laji_1_Weight_Array_2_2_6[7:0]), //i
    .Weight_Array_2_2_7 (laji_1_Weight_Array_2_2_7[7:0]), //i
    .Weight_Array_2_2_8 (laji_1_Weight_Array_2_2_8[7:0]), //i
    .Weight_Array_2_3_0 (laji_1_Weight_Array_2_3_0[7:0]), //i
    .Weight_Array_2_3_1 (laji_1_Weight_Array_2_3_1[7:0]), //i
    .Weight_Array_2_3_2 (laji_1_Weight_Array_2_3_2[7:0]), //i
    .Weight_Array_2_3_3 (laji_1_Weight_Array_2_3_3[7:0]), //i
    .Weight_Array_2_3_4 (laji_1_Weight_Array_2_3_4[7:0]), //i
    .Weight_Array_2_3_5 (laji_1_Weight_Array_2_3_5[7:0]), //i
    .Weight_Array_2_3_6 (laji_1_Weight_Array_2_3_6[7:0]), //i
    .Weight_Array_2_3_7 (laji_1_Weight_Array_2_3_7[7:0]), //i
    .Weight_Array_2_3_8 (laji_1_Weight_Array_2_3_8[7:0]), //i
    .Weight_Array_2_4_0 (laji_1_Weight_Array_2_4_0[7:0]), //i
    .Weight_Array_2_4_1 (laji_1_Weight_Array_2_4_1[7:0]), //i
    .Weight_Array_2_4_2 (laji_1_Weight_Array_2_4_2[7:0]), //i
    .Weight_Array_2_4_3 (laji_1_Weight_Array_2_4_3[7:0]), //i
    .Weight_Array_2_4_4 (laji_1_Weight_Array_2_4_4[7:0]), //i
    .Weight_Array_2_4_5 (laji_1_Weight_Array_2_4_5[7:0]), //i
    .Weight_Array_2_4_6 (laji_1_Weight_Array_2_4_6[7:0]), //i
    .Weight_Array_2_4_7 (laji_1_Weight_Array_2_4_7[7:0]), //i
    .Weight_Array_2_4_8 (laji_1_Weight_Array_2_4_8[7:0]), //i
    .Weight_Array_2_5_0 (laji_1_Weight_Array_2_5_0[7:0]), //i
    .Weight_Array_2_5_1 (laji_1_Weight_Array_2_5_1[7:0]), //i
    .Weight_Array_2_5_2 (laji_1_Weight_Array_2_5_2[7:0]), //i
    .Weight_Array_2_5_3 (laji_1_Weight_Array_2_5_3[7:0]), //i
    .Weight_Array_2_5_4 (laji_1_Weight_Array_2_5_4[7:0]), //i
    .Weight_Array_2_5_5 (laji_1_Weight_Array_2_5_5[7:0]), //i
    .Weight_Array_2_5_6 (laji_1_Weight_Array_2_5_6[7:0]), //i
    .Weight_Array_2_5_7 (laji_1_Weight_Array_2_5_7[7:0]), //i
    .Weight_Array_2_5_8 (laji_1_Weight_Array_2_5_8[7:0]), //i
    .Weight_Array_2_6_0 (laji_1_Weight_Array_2_6_0[7:0]), //i
    .Weight_Array_2_6_1 (laji_1_Weight_Array_2_6_1[7:0]), //i
    .Weight_Array_2_6_2 (laji_1_Weight_Array_2_6_2[7:0]), //i
    .Weight_Array_2_6_3 (laji_1_Weight_Array_2_6_3[7:0]), //i
    .Weight_Array_2_6_4 (laji_1_Weight_Array_2_6_4[7:0]), //i
    .Weight_Array_2_6_5 (laji_1_Weight_Array_2_6_5[7:0]), //i
    .Weight_Array_2_6_6 (laji_1_Weight_Array_2_6_6[7:0]), //i
    .Weight_Array_2_6_7 (laji_1_Weight_Array_2_6_7[7:0]), //i
    .Weight_Array_2_6_8 (laji_1_Weight_Array_2_6_8[7:0]), //i
    .Weight_Array_2_7_0 (laji_1_Weight_Array_2_7_0[7:0]), //i
    .Weight_Array_2_7_1 (laji_1_Weight_Array_2_7_1[7:0]), //i
    .Weight_Array_2_7_2 (laji_1_Weight_Array_2_7_2[7:0]), //i
    .Weight_Array_2_7_3 (laji_1_Weight_Array_2_7_3[7:0]), //i
    .Weight_Array_2_7_4 (laji_1_Weight_Array_2_7_4[7:0]), //i
    .Weight_Array_2_7_5 (laji_1_Weight_Array_2_7_5[7:0]), //i
    .Weight_Array_2_7_6 (laji_1_Weight_Array_2_7_6[7:0]), //i
    .Weight_Array_2_7_7 (laji_1_Weight_Array_2_7_7[7:0]), //i
    .Weight_Array_2_7_8 (laji_1_Weight_Array_2_7_8[7:0]), //i
    .Weight_Array_3_0_0 (laji_1_Weight_Array_3_0_0[7:0]), //i
    .Weight_Array_3_0_1 (laji_1_Weight_Array_3_0_1[7:0]), //i
    .Weight_Array_3_0_2 (laji_1_Weight_Array_3_0_2[7:0]), //i
    .Weight_Array_3_0_3 (laji_1_Weight_Array_3_0_3[7:0]), //i
    .Weight_Array_3_0_4 (laji_1_Weight_Array_3_0_4[7:0]), //i
    .Weight_Array_3_0_5 (laji_1_Weight_Array_3_0_5[7:0]), //i
    .Weight_Array_3_0_6 (laji_1_Weight_Array_3_0_6[7:0]), //i
    .Weight_Array_3_0_7 (laji_1_Weight_Array_3_0_7[7:0]), //i
    .Weight_Array_3_0_8 (laji_1_Weight_Array_3_0_8[7:0]), //i
    .Weight_Array_3_1_0 (laji_1_Weight_Array_3_1_0[7:0]), //i
    .Weight_Array_3_1_1 (laji_1_Weight_Array_3_1_1[7:0]), //i
    .Weight_Array_3_1_2 (laji_1_Weight_Array_3_1_2[7:0]), //i
    .Weight_Array_3_1_3 (laji_1_Weight_Array_3_1_3[7:0]), //i
    .Weight_Array_3_1_4 (laji_1_Weight_Array_3_1_4[7:0]), //i
    .Weight_Array_3_1_5 (laji_1_Weight_Array_3_1_5[7:0]), //i
    .Weight_Array_3_1_6 (laji_1_Weight_Array_3_1_6[7:0]), //i
    .Weight_Array_3_1_7 (laji_1_Weight_Array_3_1_7[7:0]), //i
    .Weight_Array_3_1_8 (laji_1_Weight_Array_3_1_8[7:0]), //i
    .Weight_Array_3_2_0 (laji_1_Weight_Array_3_2_0[7:0]), //i
    .Weight_Array_3_2_1 (laji_1_Weight_Array_3_2_1[7:0]), //i
    .Weight_Array_3_2_2 (laji_1_Weight_Array_3_2_2[7:0]), //i
    .Weight_Array_3_2_3 (laji_1_Weight_Array_3_2_3[7:0]), //i
    .Weight_Array_3_2_4 (laji_1_Weight_Array_3_2_4[7:0]), //i
    .Weight_Array_3_2_5 (laji_1_Weight_Array_3_2_5[7:0]), //i
    .Weight_Array_3_2_6 (laji_1_Weight_Array_3_2_6[7:0]), //i
    .Weight_Array_3_2_7 (laji_1_Weight_Array_3_2_7[7:0]), //i
    .Weight_Array_3_2_8 (laji_1_Weight_Array_3_2_8[7:0]), //i
    .Weight_Array_3_3_0 (laji_1_Weight_Array_3_3_0[7:0]), //i
    .Weight_Array_3_3_1 (laji_1_Weight_Array_3_3_1[7:0]), //i
    .Weight_Array_3_3_2 (laji_1_Weight_Array_3_3_2[7:0]), //i
    .Weight_Array_3_3_3 (laji_1_Weight_Array_3_3_3[7:0]), //i
    .Weight_Array_3_3_4 (laji_1_Weight_Array_3_3_4[7:0]), //i
    .Weight_Array_3_3_5 (laji_1_Weight_Array_3_3_5[7:0]), //i
    .Weight_Array_3_3_6 (laji_1_Weight_Array_3_3_6[7:0]), //i
    .Weight_Array_3_3_7 (laji_1_Weight_Array_3_3_7[7:0]), //i
    .Weight_Array_3_3_8 (laji_1_Weight_Array_3_3_8[7:0]), //i
    .Weight_Array_3_4_0 (laji_1_Weight_Array_3_4_0[7:0]), //i
    .Weight_Array_3_4_1 (laji_1_Weight_Array_3_4_1[7:0]), //i
    .Weight_Array_3_4_2 (laji_1_Weight_Array_3_4_2[7:0]), //i
    .Weight_Array_3_4_3 (laji_1_Weight_Array_3_4_3[7:0]), //i
    .Weight_Array_3_4_4 (laji_1_Weight_Array_3_4_4[7:0]), //i
    .Weight_Array_3_4_5 (laji_1_Weight_Array_3_4_5[7:0]), //i
    .Weight_Array_3_4_6 (laji_1_Weight_Array_3_4_6[7:0]), //i
    .Weight_Array_3_4_7 (laji_1_Weight_Array_3_4_7[7:0]), //i
    .Weight_Array_3_4_8 (laji_1_Weight_Array_3_4_8[7:0]), //i
    .Weight_Array_3_5_0 (laji_1_Weight_Array_3_5_0[7:0]), //i
    .Weight_Array_3_5_1 (laji_1_Weight_Array_3_5_1[7:0]), //i
    .Weight_Array_3_5_2 (laji_1_Weight_Array_3_5_2[7:0]), //i
    .Weight_Array_3_5_3 (laji_1_Weight_Array_3_5_3[7:0]), //i
    .Weight_Array_3_5_4 (laji_1_Weight_Array_3_5_4[7:0]), //i
    .Weight_Array_3_5_5 (laji_1_Weight_Array_3_5_5[7:0]), //i
    .Weight_Array_3_5_6 (laji_1_Weight_Array_3_5_6[7:0]), //i
    .Weight_Array_3_5_7 (laji_1_Weight_Array_3_5_7[7:0]), //i
    .Weight_Array_3_5_8 (laji_1_Weight_Array_3_5_8[7:0]), //i
    .Weight_Array_3_6_0 (laji_1_Weight_Array_3_6_0[7:0]), //i
    .Weight_Array_3_6_1 (laji_1_Weight_Array_3_6_1[7:0]), //i
    .Weight_Array_3_6_2 (laji_1_Weight_Array_3_6_2[7:0]), //i
    .Weight_Array_3_6_3 (laji_1_Weight_Array_3_6_3[7:0]), //i
    .Weight_Array_3_6_4 (laji_1_Weight_Array_3_6_4[7:0]), //i
    .Weight_Array_3_6_5 (laji_1_Weight_Array_3_6_5[7:0]), //i
    .Weight_Array_3_6_6 (laji_1_Weight_Array_3_6_6[7:0]), //i
    .Weight_Array_3_6_7 (laji_1_Weight_Array_3_6_7[7:0]), //i
    .Weight_Array_3_6_8 (laji_1_Weight_Array_3_6_8[7:0]), //i
    .Weight_Array_3_7_0 (laji_1_Weight_Array_3_7_0[7:0]), //i
    .Weight_Array_3_7_1 (laji_1_Weight_Array_3_7_1[7:0]), //i
    .Weight_Array_3_7_2 (laji_1_Weight_Array_3_7_2[7:0]), //i
    .Weight_Array_3_7_3 (laji_1_Weight_Array_3_7_3[7:0]), //i
    .Weight_Array_3_7_4 (laji_1_Weight_Array_3_7_4[7:0]), //i
    .Weight_Array_3_7_5 (laji_1_Weight_Array_3_7_5[7:0]), //i
    .Weight_Array_3_7_6 (laji_1_Weight_Array_3_7_6[7:0]), //i
    .Weight_Array_3_7_7 (laji_1_Weight_Array_3_7_7[7:0]), //i
    .Weight_Array_3_7_8 (laji_1_Weight_Array_3_7_8[7:0]), //i
    .Weight_Array_4_0_0 (laji_1_Weight_Array_4_0_0[7:0]), //i
    .Weight_Array_4_0_1 (laji_1_Weight_Array_4_0_1[7:0]), //i
    .Weight_Array_4_0_2 (laji_1_Weight_Array_4_0_2[7:0]), //i
    .Weight_Array_4_0_3 (laji_1_Weight_Array_4_0_3[7:0]), //i
    .Weight_Array_4_0_4 (laji_1_Weight_Array_4_0_4[7:0]), //i
    .Weight_Array_4_0_5 (laji_1_Weight_Array_4_0_5[7:0]), //i
    .Weight_Array_4_0_6 (laji_1_Weight_Array_4_0_6[7:0]), //i
    .Weight_Array_4_0_7 (laji_1_Weight_Array_4_0_7[7:0]), //i
    .Weight_Array_4_0_8 (laji_1_Weight_Array_4_0_8[7:0]), //i
    .Weight_Array_4_1_0 (laji_1_Weight_Array_4_1_0[7:0]), //i
    .Weight_Array_4_1_1 (laji_1_Weight_Array_4_1_1[7:0]), //i
    .Weight_Array_4_1_2 (laji_1_Weight_Array_4_1_2[7:0]), //i
    .Weight_Array_4_1_3 (laji_1_Weight_Array_4_1_3[7:0]), //i
    .Weight_Array_4_1_4 (laji_1_Weight_Array_4_1_4[7:0]), //i
    .Weight_Array_4_1_5 (laji_1_Weight_Array_4_1_5[7:0]), //i
    .Weight_Array_4_1_6 (laji_1_Weight_Array_4_1_6[7:0]), //i
    .Weight_Array_4_1_7 (laji_1_Weight_Array_4_1_7[7:0]), //i
    .Weight_Array_4_1_8 (laji_1_Weight_Array_4_1_8[7:0]), //i
    .Weight_Array_4_2_0 (laji_1_Weight_Array_4_2_0[7:0]), //i
    .Weight_Array_4_2_1 (laji_1_Weight_Array_4_2_1[7:0]), //i
    .Weight_Array_4_2_2 (laji_1_Weight_Array_4_2_2[7:0]), //i
    .Weight_Array_4_2_3 (laji_1_Weight_Array_4_2_3[7:0]), //i
    .Weight_Array_4_2_4 (laji_1_Weight_Array_4_2_4[7:0]), //i
    .Weight_Array_4_2_5 (laji_1_Weight_Array_4_2_5[7:0]), //i
    .Weight_Array_4_2_6 (laji_1_Weight_Array_4_2_6[7:0]), //i
    .Weight_Array_4_2_7 (laji_1_Weight_Array_4_2_7[7:0]), //i
    .Weight_Array_4_2_8 (laji_1_Weight_Array_4_2_8[7:0]), //i
    .Weight_Array_4_3_0 (laji_1_Weight_Array_4_3_0[7:0]), //i
    .Weight_Array_4_3_1 (laji_1_Weight_Array_4_3_1[7:0]), //i
    .Weight_Array_4_3_2 (laji_1_Weight_Array_4_3_2[7:0]), //i
    .Weight_Array_4_3_3 (laji_1_Weight_Array_4_3_3[7:0]), //i
    .Weight_Array_4_3_4 (laji_1_Weight_Array_4_3_4[7:0]), //i
    .Weight_Array_4_3_5 (laji_1_Weight_Array_4_3_5[7:0]), //i
    .Weight_Array_4_3_6 (laji_1_Weight_Array_4_3_6[7:0]), //i
    .Weight_Array_4_3_7 (laji_1_Weight_Array_4_3_7[7:0]), //i
    .Weight_Array_4_3_8 (laji_1_Weight_Array_4_3_8[7:0]), //i
    .Weight_Array_4_4_0 (laji_1_Weight_Array_4_4_0[7:0]), //i
    .Weight_Array_4_4_1 (laji_1_Weight_Array_4_4_1[7:0]), //i
    .Weight_Array_4_4_2 (laji_1_Weight_Array_4_4_2[7:0]), //i
    .Weight_Array_4_4_3 (laji_1_Weight_Array_4_4_3[7:0]), //i
    .Weight_Array_4_4_4 (laji_1_Weight_Array_4_4_4[7:0]), //i
    .Weight_Array_4_4_5 (laji_1_Weight_Array_4_4_5[7:0]), //i
    .Weight_Array_4_4_6 (laji_1_Weight_Array_4_4_6[7:0]), //i
    .Weight_Array_4_4_7 (laji_1_Weight_Array_4_4_7[7:0]), //i
    .Weight_Array_4_4_8 (laji_1_Weight_Array_4_4_8[7:0]), //i
    .Weight_Array_4_5_0 (laji_1_Weight_Array_4_5_0[7:0]), //i
    .Weight_Array_4_5_1 (laji_1_Weight_Array_4_5_1[7:0]), //i
    .Weight_Array_4_5_2 (laji_1_Weight_Array_4_5_2[7:0]), //i
    .Weight_Array_4_5_3 (laji_1_Weight_Array_4_5_3[7:0]), //i
    .Weight_Array_4_5_4 (laji_1_Weight_Array_4_5_4[7:0]), //i
    .Weight_Array_4_5_5 (laji_1_Weight_Array_4_5_5[7:0]), //i
    .Weight_Array_4_5_6 (laji_1_Weight_Array_4_5_6[7:0]), //i
    .Weight_Array_4_5_7 (laji_1_Weight_Array_4_5_7[7:0]), //i
    .Weight_Array_4_5_8 (laji_1_Weight_Array_4_5_8[7:0]), //i
    .Weight_Array_4_6_0 (laji_1_Weight_Array_4_6_0[7:0]), //i
    .Weight_Array_4_6_1 (laji_1_Weight_Array_4_6_1[7:0]), //i
    .Weight_Array_4_6_2 (laji_1_Weight_Array_4_6_2[7:0]), //i
    .Weight_Array_4_6_3 (laji_1_Weight_Array_4_6_3[7:0]), //i
    .Weight_Array_4_6_4 (laji_1_Weight_Array_4_6_4[7:0]), //i
    .Weight_Array_4_6_5 (laji_1_Weight_Array_4_6_5[7:0]), //i
    .Weight_Array_4_6_6 (laji_1_Weight_Array_4_6_6[7:0]), //i
    .Weight_Array_4_6_7 (laji_1_Weight_Array_4_6_7[7:0]), //i
    .Weight_Array_4_6_8 (laji_1_Weight_Array_4_6_8[7:0]), //i
    .Weight_Array_4_7_0 (laji_1_Weight_Array_4_7_0[7:0]), //i
    .Weight_Array_4_7_1 (laji_1_Weight_Array_4_7_1[7:0]), //i
    .Weight_Array_4_7_2 (laji_1_Weight_Array_4_7_2[7:0]), //i
    .Weight_Array_4_7_3 (laji_1_Weight_Array_4_7_3[7:0]), //i
    .Weight_Array_4_7_4 (laji_1_Weight_Array_4_7_4[7:0]), //i
    .Weight_Array_4_7_5 (laji_1_Weight_Array_4_7_5[7:0]), //i
    .Weight_Array_4_7_6 (laji_1_Weight_Array_4_7_6[7:0]), //i
    .Weight_Array_4_7_7 (laji_1_Weight_Array_4_7_7[7:0]), //i
    .Weight_Array_4_7_8 (laji_1_Weight_Array_4_7_8[7:0]), //i
    .Weight_Array_5_0_0 (laji_1_Weight_Array_5_0_0[7:0]), //i
    .Weight_Array_5_0_1 (laji_1_Weight_Array_5_0_1[7:0]), //i
    .Weight_Array_5_0_2 (laji_1_Weight_Array_5_0_2[7:0]), //i
    .Weight_Array_5_0_3 (laji_1_Weight_Array_5_0_3[7:0]), //i
    .Weight_Array_5_0_4 (laji_1_Weight_Array_5_0_4[7:0]), //i
    .Weight_Array_5_0_5 (laji_1_Weight_Array_5_0_5[7:0]), //i
    .Weight_Array_5_0_6 (laji_1_Weight_Array_5_0_6[7:0]), //i
    .Weight_Array_5_0_7 (laji_1_Weight_Array_5_0_7[7:0]), //i
    .Weight_Array_5_0_8 (laji_1_Weight_Array_5_0_8[7:0]), //i
    .Weight_Array_5_1_0 (laji_1_Weight_Array_5_1_0[7:0]), //i
    .Weight_Array_5_1_1 (laji_1_Weight_Array_5_1_1[7:0]), //i
    .Weight_Array_5_1_2 (laji_1_Weight_Array_5_1_2[7:0]), //i
    .Weight_Array_5_1_3 (laji_1_Weight_Array_5_1_3[7:0]), //i
    .Weight_Array_5_1_4 (laji_1_Weight_Array_5_1_4[7:0]), //i
    .Weight_Array_5_1_5 (laji_1_Weight_Array_5_1_5[7:0]), //i
    .Weight_Array_5_1_6 (laji_1_Weight_Array_5_1_6[7:0]), //i
    .Weight_Array_5_1_7 (laji_1_Weight_Array_5_1_7[7:0]), //i
    .Weight_Array_5_1_8 (laji_1_Weight_Array_5_1_8[7:0]), //i
    .Weight_Array_5_2_0 (laji_1_Weight_Array_5_2_0[7:0]), //i
    .Weight_Array_5_2_1 (laji_1_Weight_Array_5_2_1[7:0]), //i
    .Weight_Array_5_2_2 (laji_1_Weight_Array_5_2_2[7:0]), //i
    .Weight_Array_5_2_3 (laji_1_Weight_Array_5_2_3[7:0]), //i
    .Weight_Array_5_2_4 (laji_1_Weight_Array_5_2_4[7:0]), //i
    .Weight_Array_5_2_5 (laji_1_Weight_Array_5_2_5[7:0]), //i
    .Weight_Array_5_2_6 (laji_1_Weight_Array_5_2_6[7:0]), //i
    .Weight_Array_5_2_7 (laji_1_Weight_Array_5_2_7[7:0]), //i
    .Weight_Array_5_2_8 (laji_1_Weight_Array_5_2_8[7:0]), //i
    .Weight_Array_5_3_0 (laji_1_Weight_Array_5_3_0[7:0]), //i
    .Weight_Array_5_3_1 (laji_1_Weight_Array_5_3_1[7:0]), //i
    .Weight_Array_5_3_2 (laji_1_Weight_Array_5_3_2[7:0]), //i
    .Weight_Array_5_3_3 (laji_1_Weight_Array_5_3_3[7:0]), //i
    .Weight_Array_5_3_4 (laji_1_Weight_Array_5_3_4[7:0]), //i
    .Weight_Array_5_3_5 (laji_1_Weight_Array_5_3_5[7:0]), //i
    .Weight_Array_5_3_6 (laji_1_Weight_Array_5_3_6[7:0]), //i
    .Weight_Array_5_3_7 (laji_1_Weight_Array_5_3_7[7:0]), //i
    .Weight_Array_5_3_8 (laji_1_Weight_Array_5_3_8[7:0]), //i
    .Weight_Array_5_4_0 (laji_1_Weight_Array_5_4_0[7:0]), //i
    .Weight_Array_5_4_1 (laji_1_Weight_Array_5_4_1[7:0]), //i
    .Weight_Array_5_4_2 (laji_1_Weight_Array_5_4_2[7:0]), //i
    .Weight_Array_5_4_3 (laji_1_Weight_Array_5_4_3[7:0]), //i
    .Weight_Array_5_4_4 (laji_1_Weight_Array_5_4_4[7:0]), //i
    .Weight_Array_5_4_5 (laji_1_Weight_Array_5_4_5[7:0]), //i
    .Weight_Array_5_4_6 (laji_1_Weight_Array_5_4_6[7:0]), //i
    .Weight_Array_5_4_7 (laji_1_Weight_Array_5_4_7[7:0]), //i
    .Weight_Array_5_4_8 (laji_1_Weight_Array_5_4_8[7:0]), //i
    .Weight_Array_5_5_0 (laji_1_Weight_Array_5_5_0[7:0]), //i
    .Weight_Array_5_5_1 (laji_1_Weight_Array_5_5_1[7:0]), //i
    .Weight_Array_5_5_2 (laji_1_Weight_Array_5_5_2[7:0]), //i
    .Weight_Array_5_5_3 (laji_1_Weight_Array_5_5_3[7:0]), //i
    .Weight_Array_5_5_4 (laji_1_Weight_Array_5_5_4[7:0]), //i
    .Weight_Array_5_5_5 (laji_1_Weight_Array_5_5_5[7:0]), //i
    .Weight_Array_5_5_6 (laji_1_Weight_Array_5_5_6[7:0]), //i
    .Weight_Array_5_5_7 (laji_1_Weight_Array_5_5_7[7:0]), //i
    .Weight_Array_5_5_8 (laji_1_Weight_Array_5_5_8[7:0]), //i
    .Weight_Array_5_6_0 (laji_1_Weight_Array_5_6_0[7:0]), //i
    .Weight_Array_5_6_1 (laji_1_Weight_Array_5_6_1[7:0]), //i
    .Weight_Array_5_6_2 (laji_1_Weight_Array_5_6_2[7:0]), //i
    .Weight_Array_5_6_3 (laji_1_Weight_Array_5_6_3[7:0]), //i
    .Weight_Array_5_6_4 (laji_1_Weight_Array_5_6_4[7:0]), //i
    .Weight_Array_5_6_5 (laji_1_Weight_Array_5_6_5[7:0]), //i
    .Weight_Array_5_6_6 (laji_1_Weight_Array_5_6_6[7:0]), //i
    .Weight_Array_5_6_7 (laji_1_Weight_Array_5_6_7[7:0]), //i
    .Weight_Array_5_6_8 (laji_1_Weight_Array_5_6_8[7:0]), //i
    .Weight_Array_5_7_0 (laji_1_Weight_Array_5_7_0[7:0]), //i
    .Weight_Array_5_7_1 (laji_1_Weight_Array_5_7_1[7:0]), //i
    .Weight_Array_5_7_2 (laji_1_Weight_Array_5_7_2[7:0]), //i
    .Weight_Array_5_7_3 (laji_1_Weight_Array_5_7_3[7:0]), //i
    .Weight_Array_5_7_4 (laji_1_Weight_Array_5_7_4[7:0]), //i
    .Weight_Array_5_7_5 (laji_1_Weight_Array_5_7_5[7:0]), //i
    .Weight_Array_5_7_6 (laji_1_Weight_Array_5_7_6[7:0]), //i
    .Weight_Array_5_7_7 (laji_1_Weight_Array_5_7_7[7:0]), //i
    .Weight_Array_5_7_8 (laji_1_Weight_Array_5_7_8[7:0]), //i
    .Weight_Array_6_0_0 (laji_1_Weight_Array_6_0_0[7:0]), //i
    .Weight_Array_6_0_1 (laji_1_Weight_Array_6_0_1[7:0]), //i
    .Weight_Array_6_0_2 (laji_1_Weight_Array_6_0_2[7:0]), //i
    .Weight_Array_6_0_3 (laji_1_Weight_Array_6_0_3[7:0]), //i
    .Weight_Array_6_0_4 (laji_1_Weight_Array_6_0_4[7:0]), //i
    .Weight_Array_6_0_5 (laji_1_Weight_Array_6_0_5[7:0]), //i
    .Weight_Array_6_0_6 (laji_1_Weight_Array_6_0_6[7:0]), //i
    .Weight_Array_6_0_7 (laji_1_Weight_Array_6_0_7[7:0]), //i
    .Weight_Array_6_0_8 (laji_1_Weight_Array_6_0_8[7:0]), //i
    .Weight_Array_6_1_0 (laji_1_Weight_Array_6_1_0[7:0]), //i
    .Weight_Array_6_1_1 (laji_1_Weight_Array_6_1_1[7:0]), //i
    .Weight_Array_6_1_2 (laji_1_Weight_Array_6_1_2[7:0]), //i
    .Weight_Array_6_1_3 (laji_1_Weight_Array_6_1_3[7:0]), //i
    .Weight_Array_6_1_4 (laji_1_Weight_Array_6_1_4[7:0]), //i
    .Weight_Array_6_1_5 (laji_1_Weight_Array_6_1_5[7:0]), //i
    .Weight_Array_6_1_6 (laji_1_Weight_Array_6_1_6[7:0]), //i
    .Weight_Array_6_1_7 (laji_1_Weight_Array_6_1_7[7:0]), //i
    .Weight_Array_6_1_8 (laji_1_Weight_Array_6_1_8[7:0]), //i
    .Weight_Array_6_2_0 (laji_1_Weight_Array_6_2_0[7:0]), //i
    .Weight_Array_6_2_1 (laji_1_Weight_Array_6_2_1[7:0]), //i
    .Weight_Array_6_2_2 (laji_1_Weight_Array_6_2_2[7:0]), //i
    .Weight_Array_6_2_3 (laji_1_Weight_Array_6_2_3[7:0]), //i
    .Weight_Array_6_2_4 (laji_1_Weight_Array_6_2_4[7:0]), //i
    .Weight_Array_6_2_5 (laji_1_Weight_Array_6_2_5[7:0]), //i
    .Weight_Array_6_2_6 (laji_1_Weight_Array_6_2_6[7:0]), //i
    .Weight_Array_6_2_7 (laji_1_Weight_Array_6_2_7[7:0]), //i
    .Weight_Array_6_2_8 (laji_1_Weight_Array_6_2_8[7:0]), //i
    .Weight_Array_6_3_0 (laji_1_Weight_Array_6_3_0[7:0]), //i
    .Weight_Array_6_3_1 (laji_1_Weight_Array_6_3_1[7:0]), //i
    .Weight_Array_6_3_2 (laji_1_Weight_Array_6_3_2[7:0]), //i
    .Weight_Array_6_3_3 (laji_1_Weight_Array_6_3_3[7:0]), //i
    .Weight_Array_6_3_4 (laji_1_Weight_Array_6_3_4[7:0]), //i
    .Weight_Array_6_3_5 (laji_1_Weight_Array_6_3_5[7:0]), //i
    .Weight_Array_6_3_6 (laji_1_Weight_Array_6_3_6[7:0]), //i
    .Weight_Array_6_3_7 (laji_1_Weight_Array_6_3_7[7:0]), //i
    .Weight_Array_6_3_8 (laji_1_Weight_Array_6_3_8[7:0]), //i
    .Weight_Array_6_4_0 (laji_1_Weight_Array_6_4_0[7:0]), //i
    .Weight_Array_6_4_1 (laji_1_Weight_Array_6_4_1[7:0]), //i
    .Weight_Array_6_4_2 (laji_1_Weight_Array_6_4_2[7:0]), //i
    .Weight_Array_6_4_3 (laji_1_Weight_Array_6_4_3[7:0]), //i
    .Weight_Array_6_4_4 (laji_1_Weight_Array_6_4_4[7:0]), //i
    .Weight_Array_6_4_5 (laji_1_Weight_Array_6_4_5[7:0]), //i
    .Weight_Array_6_4_6 (laji_1_Weight_Array_6_4_6[7:0]), //i
    .Weight_Array_6_4_7 (laji_1_Weight_Array_6_4_7[7:0]), //i
    .Weight_Array_6_4_8 (laji_1_Weight_Array_6_4_8[7:0]), //i
    .Weight_Array_6_5_0 (laji_1_Weight_Array_6_5_0[7:0]), //i
    .Weight_Array_6_5_1 (laji_1_Weight_Array_6_5_1[7:0]), //i
    .Weight_Array_6_5_2 (laji_1_Weight_Array_6_5_2[7:0]), //i
    .Weight_Array_6_5_3 (laji_1_Weight_Array_6_5_3[7:0]), //i
    .Weight_Array_6_5_4 (laji_1_Weight_Array_6_5_4[7:0]), //i
    .Weight_Array_6_5_5 (laji_1_Weight_Array_6_5_5[7:0]), //i
    .Weight_Array_6_5_6 (laji_1_Weight_Array_6_5_6[7:0]), //i
    .Weight_Array_6_5_7 (laji_1_Weight_Array_6_5_7[7:0]), //i
    .Weight_Array_6_5_8 (laji_1_Weight_Array_6_5_8[7:0]), //i
    .Weight_Array_6_6_0 (laji_1_Weight_Array_6_6_0[7:0]), //i
    .Weight_Array_6_6_1 (laji_1_Weight_Array_6_6_1[7:0]), //i
    .Weight_Array_6_6_2 (laji_1_Weight_Array_6_6_2[7:0]), //i
    .Weight_Array_6_6_3 (laji_1_Weight_Array_6_6_3[7:0]), //i
    .Weight_Array_6_6_4 (laji_1_Weight_Array_6_6_4[7:0]), //i
    .Weight_Array_6_6_5 (laji_1_Weight_Array_6_6_5[7:0]), //i
    .Weight_Array_6_6_6 (laji_1_Weight_Array_6_6_6[7:0]), //i
    .Weight_Array_6_6_7 (laji_1_Weight_Array_6_6_7[7:0]), //i
    .Weight_Array_6_6_8 (laji_1_Weight_Array_6_6_8[7:0]), //i
    .Weight_Array_6_7_0 (laji_1_Weight_Array_6_7_0[7:0]), //i
    .Weight_Array_6_7_1 (laji_1_Weight_Array_6_7_1[7:0]), //i
    .Weight_Array_6_7_2 (laji_1_Weight_Array_6_7_2[7:0]), //i
    .Weight_Array_6_7_3 (laji_1_Weight_Array_6_7_3[7:0]), //i
    .Weight_Array_6_7_4 (laji_1_Weight_Array_6_7_4[7:0]), //i
    .Weight_Array_6_7_5 (laji_1_Weight_Array_6_7_5[7:0]), //i
    .Weight_Array_6_7_6 (laji_1_Weight_Array_6_7_6[7:0]), //i
    .Weight_Array_6_7_7 (laji_1_Weight_Array_6_7_7[7:0]), //i
    .Weight_Array_6_7_8 (laji_1_Weight_Array_6_7_8[7:0]), //i
    .Weight_Array_7_0_0 (laji_1_Weight_Array_7_0_0[7:0]), //i
    .Weight_Array_7_0_1 (laji_1_Weight_Array_7_0_1[7:0]), //i
    .Weight_Array_7_0_2 (laji_1_Weight_Array_7_0_2[7:0]), //i
    .Weight_Array_7_0_3 (laji_1_Weight_Array_7_0_3[7:0]), //i
    .Weight_Array_7_0_4 (laji_1_Weight_Array_7_0_4[7:0]), //i
    .Weight_Array_7_0_5 (laji_1_Weight_Array_7_0_5[7:0]), //i
    .Weight_Array_7_0_6 (laji_1_Weight_Array_7_0_6[7:0]), //i
    .Weight_Array_7_0_7 (laji_1_Weight_Array_7_0_7[7:0]), //i
    .Weight_Array_7_0_8 (laji_1_Weight_Array_7_0_8[7:0]), //i
    .Weight_Array_7_1_0 (laji_1_Weight_Array_7_1_0[7:0]), //i
    .Weight_Array_7_1_1 (laji_1_Weight_Array_7_1_1[7:0]), //i
    .Weight_Array_7_1_2 (laji_1_Weight_Array_7_1_2[7:0]), //i
    .Weight_Array_7_1_3 (laji_1_Weight_Array_7_1_3[7:0]), //i
    .Weight_Array_7_1_4 (laji_1_Weight_Array_7_1_4[7:0]), //i
    .Weight_Array_7_1_5 (laji_1_Weight_Array_7_1_5[7:0]), //i
    .Weight_Array_7_1_6 (laji_1_Weight_Array_7_1_6[7:0]), //i
    .Weight_Array_7_1_7 (laji_1_Weight_Array_7_1_7[7:0]), //i
    .Weight_Array_7_1_8 (laji_1_Weight_Array_7_1_8[7:0]), //i
    .Weight_Array_7_2_0 (laji_1_Weight_Array_7_2_0[7:0]), //i
    .Weight_Array_7_2_1 (laji_1_Weight_Array_7_2_1[7:0]), //i
    .Weight_Array_7_2_2 (laji_1_Weight_Array_7_2_2[7:0]), //i
    .Weight_Array_7_2_3 (laji_1_Weight_Array_7_2_3[7:0]), //i
    .Weight_Array_7_2_4 (laji_1_Weight_Array_7_2_4[7:0]), //i
    .Weight_Array_7_2_5 (laji_1_Weight_Array_7_2_5[7:0]), //i
    .Weight_Array_7_2_6 (laji_1_Weight_Array_7_2_6[7:0]), //i
    .Weight_Array_7_2_7 (laji_1_Weight_Array_7_2_7[7:0]), //i
    .Weight_Array_7_2_8 (laji_1_Weight_Array_7_2_8[7:0]), //i
    .Weight_Array_7_3_0 (laji_1_Weight_Array_7_3_0[7:0]), //i
    .Weight_Array_7_3_1 (laji_1_Weight_Array_7_3_1[7:0]), //i
    .Weight_Array_7_3_2 (laji_1_Weight_Array_7_3_2[7:0]), //i
    .Weight_Array_7_3_3 (laji_1_Weight_Array_7_3_3[7:0]), //i
    .Weight_Array_7_3_4 (laji_1_Weight_Array_7_3_4[7:0]), //i
    .Weight_Array_7_3_5 (laji_1_Weight_Array_7_3_5[7:0]), //i
    .Weight_Array_7_3_6 (laji_1_Weight_Array_7_3_6[7:0]), //i
    .Weight_Array_7_3_7 (laji_1_Weight_Array_7_3_7[7:0]), //i
    .Weight_Array_7_3_8 (laji_1_Weight_Array_7_3_8[7:0]), //i
    .Weight_Array_7_4_0 (laji_1_Weight_Array_7_4_0[7:0]), //i
    .Weight_Array_7_4_1 (laji_1_Weight_Array_7_4_1[7:0]), //i
    .Weight_Array_7_4_2 (laji_1_Weight_Array_7_4_2[7:0]), //i
    .Weight_Array_7_4_3 (laji_1_Weight_Array_7_4_3[7:0]), //i
    .Weight_Array_7_4_4 (laji_1_Weight_Array_7_4_4[7:0]), //i
    .Weight_Array_7_4_5 (laji_1_Weight_Array_7_4_5[7:0]), //i
    .Weight_Array_7_4_6 (laji_1_Weight_Array_7_4_6[7:0]), //i
    .Weight_Array_7_4_7 (laji_1_Weight_Array_7_4_7[7:0]), //i
    .Weight_Array_7_4_8 (laji_1_Weight_Array_7_4_8[7:0]), //i
    .Weight_Array_7_5_0 (laji_1_Weight_Array_7_5_0[7:0]), //i
    .Weight_Array_7_5_1 (laji_1_Weight_Array_7_5_1[7:0]), //i
    .Weight_Array_7_5_2 (laji_1_Weight_Array_7_5_2[7:0]), //i
    .Weight_Array_7_5_3 (laji_1_Weight_Array_7_5_3[7:0]), //i
    .Weight_Array_7_5_4 (laji_1_Weight_Array_7_5_4[7:0]), //i
    .Weight_Array_7_5_5 (laji_1_Weight_Array_7_5_5[7:0]), //i
    .Weight_Array_7_5_6 (laji_1_Weight_Array_7_5_6[7:0]), //i
    .Weight_Array_7_5_7 (laji_1_Weight_Array_7_5_7[7:0]), //i
    .Weight_Array_7_5_8 (laji_1_Weight_Array_7_5_8[7:0]), //i
    .Weight_Array_7_6_0 (laji_1_Weight_Array_7_6_0[7:0]), //i
    .Weight_Array_7_6_1 (laji_1_Weight_Array_7_6_1[7:0]), //i
    .Weight_Array_7_6_2 (laji_1_Weight_Array_7_6_2[7:0]), //i
    .Weight_Array_7_6_3 (laji_1_Weight_Array_7_6_3[7:0]), //i
    .Weight_Array_7_6_4 (laji_1_Weight_Array_7_6_4[7:0]), //i
    .Weight_Array_7_6_5 (laji_1_Weight_Array_7_6_5[7:0]), //i
    .Weight_Array_7_6_6 (laji_1_Weight_Array_7_6_6[7:0]), //i
    .Weight_Array_7_6_7 (laji_1_Weight_Array_7_6_7[7:0]), //i
    .Weight_Array_7_6_8 (laji_1_Weight_Array_7_6_8[7:0]), //i
    .Weight_Array_7_7_0 (laji_1_Weight_Array_7_7_0[7:0]), //i
    .Weight_Array_7_7_1 (laji_1_Weight_Array_7_7_1[7:0]), //i
    .Weight_Array_7_7_2 (laji_1_Weight_Array_7_7_2[7:0]), //i
    .Weight_Array_7_7_3 (laji_1_Weight_Array_7_7_3[7:0]), //i
    .Weight_Array_7_7_4 (laji_1_Weight_Array_7_7_4[7:0]), //i
    .Weight_Array_7_7_5 (laji_1_Weight_Array_7_7_5[7:0]), //i
    .Weight_Array_7_7_6 (laji_1_Weight_Array_7_7_6[7:0]), //i
    .Weight_Array_7_7_7 (laji_1_Weight_Array_7_7_7[7:0]), //i
    .Weight_Array_7_7_8 (laji_1_Weight_Array_7_7_8[7:0]), //i
    .Feature_Array_0_0  (laji_1_Feature_Array_0_0[7:0] ), //i
    .Feature_Array_0_1  (laji_1_Feature_Array_0_1[7:0] ), //i
    .Feature_Array_0_2  (laji_1_Feature_Array_0_2[7:0] ), //i
    .Feature_Array_0_3  (laji_1_Feature_Array_0_3[7:0] ), //i
    .Feature_Array_0_4  (laji_1_Feature_Array_0_4[7:0] ), //i
    .Feature_Array_0_5  (laji_1_Feature_Array_0_5[7:0] ), //i
    .Feature_Array_0_6  (laji_1_Feature_Array_0_6[7:0] ), //i
    .Feature_Array_0_7  (laji_1_Feature_Array_0_7[7:0] ), //i
    .Feature_Array_0_8  (laji_1_Feature_Array_0_8[7:0] ), //i
    .Feature_Array_1_0  (laji_1_Feature_Array_1_0[7:0] ), //i
    .Feature_Array_1_1  (laji_1_Feature_Array_1_1[7:0] ), //i
    .Feature_Array_1_2  (laji_1_Feature_Array_1_2[7:0] ), //i
    .Feature_Array_1_3  (laji_1_Feature_Array_1_3[7:0] ), //i
    .Feature_Array_1_4  (laji_1_Feature_Array_1_4[7:0] ), //i
    .Feature_Array_1_5  (laji_1_Feature_Array_1_5[7:0] ), //i
    .Feature_Array_1_6  (laji_1_Feature_Array_1_6[7:0] ), //i
    .Feature_Array_1_7  (laji_1_Feature_Array_1_7[7:0] ), //i
    .Feature_Array_1_8  (laji_1_Feature_Array_1_8[7:0] ), //i
    .Feature_Array_2_0  (laji_1_Feature_Array_2_0[7:0] ), //i
    .Feature_Array_2_1  (laji_1_Feature_Array_2_1[7:0] ), //i
    .Feature_Array_2_2  (laji_1_Feature_Array_2_2[7:0] ), //i
    .Feature_Array_2_3  (laji_1_Feature_Array_2_3[7:0] ), //i
    .Feature_Array_2_4  (laji_1_Feature_Array_2_4[7:0] ), //i
    .Feature_Array_2_5  (laji_1_Feature_Array_2_5[7:0] ), //i
    .Feature_Array_2_6  (laji_1_Feature_Array_2_6[7:0] ), //i
    .Feature_Array_2_7  (laji_1_Feature_Array_2_7[7:0] ), //i
    .Feature_Array_2_8  (laji_1_Feature_Array_2_8[7:0] ), //i
    .Feature_Array_3_0  (laji_1_Feature_Array_3_0[7:0] ), //i
    .Feature_Array_3_1  (laji_1_Feature_Array_3_1[7:0] ), //i
    .Feature_Array_3_2  (laji_1_Feature_Array_3_2[7:0] ), //i
    .Feature_Array_3_3  (laji_1_Feature_Array_3_3[7:0] ), //i
    .Feature_Array_3_4  (laji_1_Feature_Array_3_4[7:0] ), //i
    .Feature_Array_3_5  (laji_1_Feature_Array_3_5[7:0] ), //i
    .Feature_Array_3_6  (laji_1_Feature_Array_3_6[7:0] ), //i
    .Feature_Array_3_7  (laji_1_Feature_Array_3_7[7:0] ), //i
    .Feature_Array_3_8  (laji_1_Feature_Array_3_8[7:0] ), //i
    .Feature_Array_4_0  (laji_1_Feature_Array_4_0[7:0] ), //i
    .Feature_Array_4_1  (laji_1_Feature_Array_4_1[7:0] ), //i
    .Feature_Array_4_2  (laji_1_Feature_Array_4_2[7:0] ), //i
    .Feature_Array_4_3  (laji_1_Feature_Array_4_3[7:0] ), //i
    .Feature_Array_4_4  (laji_1_Feature_Array_4_4[7:0] ), //i
    .Feature_Array_4_5  (laji_1_Feature_Array_4_5[7:0] ), //i
    .Feature_Array_4_6  (laji_1_Feature_Array_4_6[7:0] ), //i
    .Feature_Array_4_7  (laji_1_Feature_Array_4_7[7:0] ), //i
    .Feature_Array_4_8  (laji_1_Feature_Array_4_8[7:0] ), //i
    .Feature_Array_5_0  (laji_1_Feature_Array_5_0[7:0] ), //i
    .Feature_Array_5_1  (laji_1_Feature_Array_5_1[7:0] ), //i
    .Feature_Array_5_2  (laji_1_Feature_Array_5_2[7:0] ), //i
    .Feature_Array_5_3  (laji_1_Feature_Array_5_3[7:0] ), //i
    .Feature_Array_5_4  (laji_1_Feature_Array_5_4[7:0] ), //i
    .Feature_Array_5_5  (laji_1_Feature_Array_5_5[7:0] ), //i
    .Feature_Array_5_6  (laji_1_Feature_Array_5_6[7:0] ), //i
    .Feature_Array_5_7  (laji_1_Feature_Array_5_7[7:0] ), //i
    .Feature_Array_5_8  (laji_1_Feature_Array_5_8[7:0] ), //i
    .Feature_Array_6_0  (laji_1_Feature_Array_6_0[7:0] ), //i
    .Feature_Array_6_1  (laji_1_Feature_Array_6_1[7:0] ), //i
    .Feature_Array_6_2  (laji_1_Feature_Array_6_2[7:0] ), //i
    .Feature_Array_6_3  (laji_1_Feature_Array_6_3[7:0] ), //i
    .Feature_Array_6_4  (laji_1_Feature_Array_6_4[7:0] ), //i
    .Feature_Array_6_5  (laji_1_Feature_Array_6_5[7:0] ), //i
    .Feature_Array_6_6  (laji_1_Feature_Array_6_6[7:0] ), //i
    .Feature_Array_6_7  (laji_1_Feature_Array_6_7[7:0] ), //i
    .Feature_Array_6_8  (laji_1_Feature_Array_6_8[7:0] ), //i
    .Feature_Array_7_0  (laji_1_Feature_Array_7_0[7:0] ), //i
    .Feature_Array_7_1  (laji_1_Feature_Array_7_1[7:0] ), //i
    .Feature_Array_7_2  (laji_1_Feature_Array_7_2[7:0] ), //i
    .Feature_Array_7_3  (laji_1_Feature_Array_7_3[7:0] ), //i
    .Feature_Array_7_4  (laji_1_Feature_Array_7_4[7:0] ), //i
    .Feature_Array_7_5  (laji_1_Feature_Array_7_5[7:0] ), //i
    .Feature_Array_7_6  (laji_1_Feature_Array_7_6[7:0] ), //i
    .Feature_Array_7_7  (laji_1_Feature_Array_7_7[7:0] ), //i
    .Feature_Array_7_8  (laji_1_Feature_Array_7_8[7:0] ), //i
    .clk                (clk                           ), //i
    .reset              (reset                         ), //i
    .softReset          (softReset                     )  //i
  );
  assign sFeatureFirstLayerData_ready = channelIncr_1_sData_ready;
  always @(*) begin
    if(firstLayer) begin
      dataGenerate_1_sData_valid = channelIncr_1_mData_valid;
    end else begin
      dataGenerate_1_sData_valid = sFeatureData_valid;
    end
  end

  always @(*) begin
    if(firstLayer) begin
      channelIncr_1_mData_ready = dataGenerate_1_sData_ready;
    end else begin
      channelIncr_1_mData_ready = 1'b0;
    end
  end

  always @(*) begin
    if(firstLayer) begin
      dataGenerate_1_sData_payload = channelIncr_1_mData_payload;
    end else begin
      dataGenerate_1_sData_payload = sFeatureData_payload;
    end
  end

  always @(*) begin
    if(firstLayer) begin
      sFeatureData_ready = 1'b0;
    end else begin
      sFeatureData_ready = dataGenerate_1_sData_ready;
    end
  end

  assign sParaData_ready = loadWeight_1_sData_ready;
  assign sQuanData_ready = loadWeight_1_quanData_ready;
  assign copyWeightDone = loadWeight_1_copyWeightDone;
  assign copyWeightEnd = loadWeight_1_copyWeightEnd;
  assign waXpmSyncFifo_9_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_9_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign waXpmSyncFifo_10_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_10_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign waXpmSyncFifo_11_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_11_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign waXpmSyncFifo_12_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_12_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign waXpmSyncFifo_13_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_13_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign waXpmSyncFifo_14_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_14_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign waXpmSyncFifo_15_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_15_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign waXpmSyncFifo_16_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_16_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign waXpmSyncFifo_17_sCount = {1'd0, convComputeCtrl_1_sCount};
  assign waXpmSyncFifo_17_mCount = {1'd0, convComputeCtrl_1_mCount};
  assign _zz_Feature_Array_0_0 = _zz__zz_1_port1;
  assign _zz_Feature_Array_0_1 = _zz__zz_2_port1;
  assign _zz_Feature_Array_0_2 = _zz__zz_3_port1;
  assign _zz_Feature_Array_0_3 = _zz__zz_4_port1;
  assign _zz_Feature_Array_0_4 = _zz__zz_5_port1;
  assign _zz_Feature_Array_0_5 = _zz__zz_6_port1;
  assign _zz_Feature_Array_0_6 = _zz__zz_7_port1;
  assign _zz_Feature_Array_0_7 = _zz__zz_8_port1;
  assign _zz_Feature_Array_0_8 = _zz__zz_9_port1;
  assign laji_1_Feature_Array_0_0 = _zz_Feature_Array_0_0[7 : 0];
  assign laji_1_Feature_Array_0_1 = _zz_Feature_Array_0_1[7 : 0];
  assign laji_1_Feature_Array_0_2 = _zz_Feature_Array_0_2[7 : 0];
  assign laji_1_Feature_Array_0_3 = _zz_Feature_Array_0_3[7 : 0];
  assign laji_1_Feature_Array_0_4 = _zz_Feature_Array_0_4[7 : 0];
  assign laji_1_Feature_Array_0_5 = _zz_Feature_Array_0_5[7 : 0];
  assign laji_1_Feature_Array_0_6 = _zz_Feature_Array_0_6[7 : 0];
  assign laji_1_Feature_Array_0_7 = _zz_Feature_Array_0_7[7 : 0];
  assign laji_1_Feature_Array_0_8 = _zz_Feature_Array_0_8[7 : 0];
  assign laji_1_Feature_Array_1_0 = _zz_Feature_Array_0_0[15 : 8];
  assign laji_1_Feature_Array_1_1 = _zz_Feature_Array_0_1[15 : 8];
  assign laji_1_Feature_Array_1_2 = _zz_Feature_Array_0_2[15 : 8];
  assign laji_1_Feature_Array_1_3 = _zz_Feature_Array_0_3[15 : 8];
  assign laji_1_Feature_Array_1_4 = _zz_Feature_Array_0_4[15 : 8];
  assign laji_1_Feature_Array_1_5 = _zz_Feature_Array_0_5[15 : 8];
  assign laji_1_Feature_Array_1_6 = _zz_Feature_Array_0_6[15 : 8];
  assign laji_1_Feature_Array_1_7 = _zz_Feature_Array_0_7[15 : 8];
  assign laji_1_Feature_Array_1_8 = _zz_Feature_Array_0_8[15 : 8];
  assign laji_1_Feature_Array_2_0 = _zz_Feature_Array_0_0[23 : 16];
  assign laji_1_Feature_Array_2_1 = _zz_Feature_Array_0_1[23 : 16];
  assign laji_1_Feature_Array_2_2 = _zz_Feature_Array_0_2[23 : 16];
  assign laji_1_Feature_Array_2_3 = _zz_Feature_Array_0_3[23 : 16];
  assign laji_1_Feature_Array_2_4 = _zz_Feature_Array_0_4[23 : 16];
  assign laji_1_Feature_Array_2_5 = _zz_Feature_Array_0_5[23 : 16];
  assign laji_1_Feature_Array_2_6 = _zz_Feature_Array_0_6[23 : 16];
  assign laji_1_Feature_Array_2_7 = _zz_Feature_Array_0_7[23 : 16];
  assign laji_1_Feature_Array_2_8 = _zz_Feature_Array_0_8[23 : 16];
  assign laji_1_Feature_Array_3_0 = _zz_Feature_Array_0_0[31 : 24];
  assign laji_1_Feature_Array_3_1 = _zz_Feature_Array_0_1[31 : 24];
  assign laji_1_Feature_Array_3_2 = _zz_Feature_Array_0_2[31 : 24];
  assign laji_1_Feature_Array_3_3 = _zz_Feature_Array_0_3[31 : 24];
  assign laji_1_Feature_Array_3_4 = _zz_Feature_Array_0_4[31 : 24];
  assign laji_1_Feature_Array_3_5 = _zz_Feature_Array_0_5[31 : 24];
  assign laji_1_Feature_Array_3_6 = _zz_Feature_Array_0_6[31 : 24];
  assign laji_1_Feature_Array_3_7 = _zz_Feature_Array_0_7[31 : 24];
  assign laji_1_Feature_Array_3_8 = _zz_Feature_Array_0_8[31 : 24];
  assign laji_1_Feature_Array_4_0 = _zz_Feature_Array_0_0[39 : 32];
  assign laji_1_Feature_Array_4_1 = _zz_Feature_Array_0_1[39 : 32];
  assign laji_1_Feature_Array_4_2 = _zz_Feature_Array_0_2[39 : 32];
  assign laji_1_Feature_Array_4_3 = _zz_Feature_Array_0_3[39 : 32];
  assign laji_1_Feature_Array_4_4 = _zz_Feature_Array_0_4[39 : 32];
  assign laji_1_Feature_Array_4_5 = _zz_Feature_Array_0_5[39 : 32];
  assign laji_1_Feature_Array_4_6 = _zz_Feature_Array_0_6[39 : 32];
  assign laji_1_Feature_Array_4_7 = _zz_Feature_Array_0_7[39 : 32];
  assign laji_1_Feature_Array_4_8 = _zz_Feature_Array_0_8[39 : 32];
  assign laji_1_Feature_Array_5_0 = _zz_Feature_Array_0_0[47 : 40];
  assign laji_1_Feature_Array_5_1 = _zz_Feature_Array_0_1[47 : 40];
  assign laji_1_Feature_Array_5_2 = _zz_Feature_Array_0_2[47 : 40];
  assign laji_1_Feature_Array_5_3 = _zz_Feature_Array_0_3[47 : 40];
  assign laji_1_Feature_Array_5_4 = _zz_Feature_Array_0_4[47 : 40];
  assign laji_1_Feature_Array_5_5 = _zz_Feature_Array_0_5[47 : 40];
  assign laji_1_Feature_Array_5_6 = _zz_Feature_Array_0_6[47 : 40];
  assign laji_1_Feature_Array_5_7 = _zz_Feature_Array_0_7[47 : 40];
  assign laji_1_Feature_Array_5_8 = _zz_Feature_Array_0_8[47 : 40];
  assign laji_1_Feature_Array_6_0 = _zz_Feature_Array_0_0[55 : 48];
  assign laji_1_Feature_Array_6_1 = _zz_Feature_Array_0_1[55 : 48];
  assign laji_1_Feature_Array_6_2 = _zz_Feature_Array_0_2[55 : 48];
  assign laji_1_Feature_Array_6_3 = _zz_Feature_Array_0_3[55 : 48];
  assign laji_1_Feature_Array_6_4 = _zz_Feature_Array_0_4[55 : 48];
  assign laji_1_Feature_Array_6_5 = _zz_Feature_Array_0_5[55 : 48];
  assign laji_1_Feature_Array_6_6 = _zz_Feature_Array_0_6[55 : 48];
  assign laji_1_Feature_Array_6_7 = _zz_Feature_Array_0_7[55 : 48];
  assign laji_1_Feature_Array_6_8 = _zz_Feature_Array_0_8[55 : 48];
  assign laji_1_Feature_Array_7_0 = _zz_Feature_Array_0_0[63 : 56];
  assign laji_1_Feature_Array_7_1 = _zz_Feature_Array_0_1[63 : 56];
  assign laji_1_Feature_Array_7_2 = _zz_Feature_Array_0_2[63 : 56];
  assign laji_1_Feature_Array_7_3 = _zz_Feature_Array_0_3[63 : 56];
  assign laji_1_Feature_Array_7_4 = _zz_Feature_Array_0_4[63 : 56];
  assign laji_1_Feature_Array_7_5 = _zz_Feature_Array_0_5[63 : 56];
  assign laji_1_Feature_Array_7_6 = _zz_Feature_Array_0_6[63 : 56];
  assign laji_1_Feature_Array_7_7 = _zz_Feature_Array_0_7[63 : 56];
  assign laji_1_Feature_Array_7_8 = _zz_Feature_Array_0_8[63 : 56];
  assign laji_1_Weight_Array_0_0_0 = loadWeight_1_weightRead_0_data[7 : 0];
  assign laji_1_Weight_Array_0_0_1 = loadWeight_1_weightRead_0_data[15 : 8];
  assign laji_1_Weight_Array_0_0_2 = loadWeight_1_weightRead_0_data[23 : 16];
  assign laji_1_Weight_Array_0_0_3 = loadWeight_1_weightRead_0_data[31 : 24];
  assign laji_1_Weight_Array_0_0_4 = loadWeight_1_weightRead_0_data[39 : 32];
  assign laji_1_Weight_Array_0_0_5 = loadWeight_1_weightRead_0_data[47 : 40];
  assign laji_1_Weight_Array_0_0_6 = loadWeight_1_weightRead_0_data[55 : 48];
  assign laji_1_Weight_Array_0_0_7 = loadWeight_1_weightRead_0_data[63 : 56];
  assign laji_1_Weight_Array_0_0_8 = loadWeight_1_weightRead_0_data[71 : 64];
  assign laji_1_Weight_Array_0_1_0 = loadWeight_1_weightRead_0_data[79 : 72];
  assign laji_1_Weight_Array_0_1_1 = loadWeight_1_weightRead_0_data[87 : 80];
  assign laji_1_Weight_Array_0_1_2 = loadWeight_1_weightRead_0_data[95 : 88];
  assign laji_1_Weight_Array_0_1_3 = loadWeight_1_weightRead_0_data[103 : 96];
  assign laji_1_Weight_Array_0_1_4 = loadWeight_1_weightRead_0_data[111 : 104];
  assign laji_1_Weight_Array_0_1_5 = loadWeight_1_weightRead_0_data[119 : 112];
  assign laji_1_Weight_Array_0_1_6 = loadWeight_1_weightRead_0_data[127 : 120];
  assign laji_1_Weight_Array_0_1_7 = loadWeight_1_weightRead_0_data[135 : 128];
  assign laji_1_Weight_Array_0_1_8 = loadWeight_1_weightRead_0_data[143 : 136];
  assign laji_1_Weight_Array_0_2_0 = loadWeight_1_weightRead_0_data[151 : 144];
  assign laji_1_Weight_Array_0_2_1 = loadWeight_1_weightRead_0_data[159 : 152];
  assign laji_1_Weight_Array_0_2_2 = loadWeight_1_weightRead_0_data[167 : 160];
  assign laji_1_Weight_Array_0_2_3 = loadWeight_1_weightRead_0_data[175 : 168];
  assign laji_1_Weight_Array_0_2_4 = loadWeight_1_weightRead_0_data[183 : 176];
  assign laji_1_Weight_Array_0_2_5 = loadWeight_1_weightRead_0_data[191 : 184];
  assign laji_1_Weight_Array_0_2_6 = loadWeight_1_weightRead_0_data[199 : 192];
  assign laji_1_Weight_Array_0_2_7 = loadWeight_1_weightRead_0_data[207 : 200];
  assign laji_1_Weight_Array_0_2_8 = loadWeight_1_weightRead_0_data[215 : 208];
  assign laji_1_Weight_Array_0_3_0 = loadWeight_1_weightRead_0_data[223 : 216];
  assign laji_1_Weight_Array_0_3_1 = loadWeight_1_weightRead_0_data[231 : 224];
  assign laji_1_Weight_Array_0_3_2 = loadWeight_1_weightRead_0_data[239 : 232];
  assign laji_1_Weight_Array_0_3_3 = loadWeight_1_weightRead_0_data[247 : 240];
  assign laji_1_Weight_Array_0_3_4 = loadWeight_1_weightRead_0_data[255 : 248];
  assign laji_1_Weight_Array_0_3_5 = loadWeight_1_weightRead_0_data[263 : 256];
  assign laji_1_Weight_Array_0_3_6 = loadWeight_1_weightRead_0_data[271 : 264];
  assign laji_1_Weight_Array_0_3_7 = loadWeight_1_weightRead_0_data[279 : 272];
  assign laji_1_Weight_Array_0_3_8 = loadWeight_1_weightRead_0_data[287 : 280];
  assign laji_1_Weight_Array_0_4_0 = loadWeight_1_weightRead_0_data[295 : 288];
  assign laji_1_Weight_Array_0_4_1 = loadWeight_1_weightRead_0_data[303 : 296];
  assign laji_1_Weight_Array_0_4_2 = loadWeight_1_weightRead_0_data[311 : 304];
  assign laji_1_Weight_Array_0_4_3 = loadWeight_1_weightRead_0_data[319 : 312];
  assign laji_1_Weight_Array_0_4_4 = loadWeight_1_weightRead_0_data[327 : 320];
  assign laji_1_Weight_Array_0_4_5 = loadWeight_1_weightRead_0_data[335 : 328];
  assign laji_1_Weight_Array_0_4_6 = loadWeight_1_weightRead_0_data[343 : 336];
  assign laji_1_Weight_Array_0_4_7 = loadWeight_1_weightRead_0_data[351 : 344];
  assign laji_1_Weight_Array_0_4_8 = loadWeight_1_weightRead_0_data[359 : 352];
  assign laji_1_Weight_Array_0_5_0 = loadWeight_1_weightRead_0_data[367 : 360];
  assign laji_1_Weight_Array_0_5_1 = loadWeight_1_weightRead_0_data[375 : 368];
  assign laji_1_Weight_Array_0_5_2 = loadWeight_1_weightRead_0_data[383 : 376];
  assign laji_1_Weight_Array_0_5_3 = loadWeight_1_weightRead_0_data[391 : 384];
  assign laji_1_Weight_Array_0_5_4 = loadWeight_1_weightRead_0_data[399 : 392];
  assign laji_1_Weight_Array_0_5_5 = loadWeight_1_weightRead_0_data[407 : 400];
  assign laji_1_Weight_Array_0_5_6 = loadWeight_1_weightRead_0_data[415 : 408];
  assign laji_1_Weight_Array_0_5_7 = loadWeight_1_weightRead_0_data[423 : 416];
  assign laji_1_Weight_Array_0_5_8 = loadWeight_1_weightRead_0_data[431 : 424];
  assign laji_1_Weight_Array_0_6_0 = loadWeight_1_weightRead_0_data[439 : 432];
  assign laji_1_Weight_Array_0_6_1 = loadWeight_1_weightRead_0_data[447 : 440];
  assign laji_1_Weight_Array_0_6_2 = loadWeight_1_weightRead_0_data[455 : 448];
  assign laji_1_Weight_Array_0_6_3 = loadWeight_1_weightRead_0_data[463 : 456];
  assign laji_1_Weight_Array_0_6_4 = loadWeight_1_weightRead_0_data[471 : 464];
  assign laji_1_Weight_Array_0_6_5 = loadWeight_1_weightRead_0_data[479 : 472];
  assign laji_1_Weight_Array_0_6_6 = loadWeight_1_weightRead_0_data[487 : 480];
  assign laji_1_Weight_Array_0_6_7 = loadWeight_1_weightRead_0_data[495 : 488];
  assign laji_1_Weight_Array_0_6_8 = loadWeight_1_weightRead_0_data[503 : 496];
  assign laji_1_Weight_Array_0_7_0 = loadWeight_1_weightRead_0_data[511 : 504];
  assign laji_1_Weight_Array_0_7_1 = loadWeight_1_weightRead_0_data[519 : 512];
  assign laji_1_Weight_Array_0_7_2 = loadWeight_1_weightRead_0_data[527 : 520];
  assign laji_1_Weight_Array_0_7_3 = loadWeight_1_weightRead_0_data[535 : 528];
  assign laji_1_Weight_Array_0_7_4 = loadWeight_1_weightRead_0_data[543 : 536];
  assign laji_1_Weight_Array_0_7_5 = loadWeight_1_weightRead_0_data[551 : 544];
  assign laji_1_Weight_Array_0_7_6 = loadWeight_1_weightRead_0_data[559 : 552];
  assign laji_1_Weight_Array_0_7_7 = loadWeight_1_weightRead_0_data[567 : 560];
  assign laji_1_Weight_Array_0_7_8 = loadWeight_1_weightRead_0_data[575 : 568];
  assign laji_1_Weight_Array_1_0_0 = loadWeight_1_weightRead_1_data[7 : 0];
  assign laji_1_Weight_Array_1_0_1 = loadWeight_1_weightRead_1_data[15 : 8];
  assign laji_1_Weight_Array_1_0_2 = loadWeight_1_weightRead_1_data[23 : 16];
  assign laji_1_Weight_Array_1_0_3 = loadWeight_1_weightRead_1_data[31 : 24];
  assign laji_1_Weight_Array_1_0_4 = loadWeight_1_weightRead_1_data[39 : 32];
  assign laji_1_Weight_Array_1_0_5 = loadWeight_1_weightRead_1_data[47 : 40];
  assign laji_1_Weight_Array_1_0_6 = loadWeight_1_weightRead_1_data[55 : 48];
  assign laji_1_Weight_Array_1_0_7 = loadWeight_1_weightRead_1_data[63 : 56];
  assign laji_1_Weight_Array_1_0_8 = loadWeight_1_weightRead_1_data[71 : 64];
  assign laji_1_Weight_Array_1_1_0 = loadWeight_1_weightRead_1_data[79 : 72];
  assign laji_1_Weight_Array_1_1_1 = loadWeight_1_weightRead_1_data[87 : 80];
  assign laji_1_Weight_Array_1_1_2 = loadWeight_1_weightRead_1_data[95 : 88];
  assign laji_1_Weight_Array_1_1_3 = loadWeight_1_weightRead_1_data[103 : 96];
  assign laji_1_Weight_Array_1_1_4 = loadWeight_1_weightRead_1_data[111 : 104];
  assign laji_1_Weight_Array_1_1_5 = loadWeight_1_weightRead_1_data[119 : 112];
  assign laji_1_Weight_Array_1_1_6 = loadWeight_1_weightRead_1_data[127 : 120];
  assign laji_1_Weight_Array_1_1_7 = loadWeight_1_weightRead_1_data[135 : 128];
  assign laji_1_Weight_Array_1_1_8 = loadWeight_1_weightRead_1_data[143 : 136];
  assign laji_1_Weight_Array_1_2_0 = loadWeight_1_weightRead_1_data[151 : 144];
  assign laji_1_Weight_Array_1_2_1 = loadWeight_1_weightRead_1_data[159 : 152];
  assign laji_1_Weight_Array_1_2_2 = loadWeight_1_weightRead_1_data[167 : 160];
  assign laji_1_Weight_Array_1_2_3 = loadWeight_1_weightRead_1_data[175 : 168];
  assign laji_1_Weight_Array_1_2_4 = loadWeight_1_weightRead_1_data[183 : 176];
  assign laji_1_Weight_Array_1_2_5 = loadWeight_1_weightRead_1_data[191 : 184];
  assign laji_1_Weight_Array_1_2_6 = loadWeight_1_weightRead_1_data[199 : 192];
  assign laji_1_Weight_Array_1_2_7 = loadWeight_1_weightRead_1_data[207 : 200];
  assign laji_1_Weight_Array_1_2_8 = loadWeight_1_weightRead_1_data[215 : 208];
  assign laji_1_Weight_Array_1_3_0 = loadWeight_1_weightRead_1_data[223 : 216];
  assign laji_1_Weight_Array_1_3_1 = loadWeight_1_weightRead_1_data[231 : 224];
  assign laji_1_Weight_Array_1_3_2 = loadWeight_1_weightRead_1_data[239 : 232];
  assign laji_1_Weight_Array_1_3_3 = loadWeight_1_weightRead_1_data[247 : 240];
  assign laji_1_Weight_Array_1_3_4 = loadWeight_1_weightRead_1_data[255 : 248];
  assign laji_1_Weight_Array_1_3_5 = loadWeight_1_weightRead_1_data[263 : 256];
  assign laji_1_Weight_Array_1_3_6 = loadWeight_1_weightRead_1_data[271 : 264];
  assign laji_1_Weight_Array_1_3_7 = loadWeight_1_weightRead_1_data[279 : 272];
  assign laji_1_Weight_Array_1_3_8 = loadWeight_1_weightRead_1_data[287 : 280];
  assign laji_1_Weight_Array_1_4_0 = loadWeight_1_weightRead_1_data[295 : 288];
  assign laji_1_Weight_Array_1_4_1 = loadWeight_1_weightRead_1_data[303 : 296];
  assign laji_1_Weight_Array_1_4_2 = loadWeight_1_weightRead_1_data[311 : 304];
  assign laji_1_Weight_Array_1_4_3 = loadWeight_1_weightRead_1_data[319 : 312];
  assign laji_1_Weight_Array_1_4_4 = loadWeight_1_weightRead_1_data[327 : 320];
  assign laji_1_Weight_Array_1_4_5 = loadWeight_1_weightRead_1_data[335 : 328];
  assign laji_1_Weight_Array_1_4_6 = loadWeight_1_weightRead_1_data[343 : 336];
  assign laji_1_Weight_Array_1_4_7 = loadWeight_1_weightRead_1_data[351 : 344];
  assign laji_1_Weight_Array_1_4_8 = loadWeight_1_weightRead_1_data[359 : 352];
  assign laji_1_Weight_Array_1_5_0 = loadWeight_1_weightRead_1_data[367 : 360];
  assign laji_1_Weight_Array_1_5_1 = loadWeight_1_weightRead_1_data[375 : 368];
  assign laji_1_Weight_Array_1_5_2 = loadWeight_1_weightRead_1_data[383 : 376];
  assign laji_1_Weight_Array_1_5_3 = loadWeight_1_weightRead_1_data[391 : 384];
  assign laji_1_Weight_Array_1_5_4 = loadWeight_1_weightRead_1_data[399 : 392];
  assign laji_1_Weight_Array_1_5_5 = loadWeight_1_weightRead_1_data[407 : 400];
  assign laji_1_Weight_Array_1_5_6 = loadWeight_1_weightRead_1_data[415 : 408];
  assign laji_1_Weight_Array_1_5_7 = loadWeight_1_weightRead_1_data[423 : 416];
  assign laji_1_Weight_Array_1_5_8 = loadWeight_1_weightRead_1_data[431 : 424];
  assign laji_1_Weight_Array_1_6_0 = loadWeight_1_weightRead_1_data[439 : 432];
  assign laji_1_Weight_Array_1_6_1 = loadWeight_1_weightRead_1_data[447 : 440];
  assign laji_1_Weight_Array_1_6_2 = loadWeight_1_weightRead_1_data[455 : 448];
  assign laji_1_Weight_Array_1_6_3 = loadWeight_1_weightRead_1_data[463 : 456];
  assign laji_1_Weight_Array_1_6_4 = loadWeight_1_weightRead_1_data[471 : 464];
  assign laji_1_Weight_Array_1_6_5 = loadWeight_1_weightRead_1_data[479 : 472];
  assign laji_1_Weight_Array_1_6_6 = loadWeight_1_weightRead_1_data[487 : 480];
  assign laji_1_Weight_Array_1_6_7 = loadWeight_1_weightRead_1_data[495 : 488];
  assign laji_1_Weight_Array_1_6_8 = loadWeight_1_weightRead_1_data[503 : 496];
  assign laji_1_Weight_Array_1_7_0 = loadWeight_1_weightRead_1_data[511 : 504];
  assign laji_1_Weight_Array_1_7_1 = loadWeight_1_weightRead_1_data[519 : 512];
  assign laji_1_Weight_Array_1_7_2 = loadWeight_1_weightRead_1_data[527 : 520];
  assign laji_1_Weight_Array_1_7_3 = loadWeight_1_weightRead_1_data[535 : 528];
  assign laji_1_Weight_Array_1_7_4 = loadWeight_1_weightRead_1_data[543 : 536];
  assign laji_1_Weight_Array_1_7_5 = loadWeight_1_weightRead_1_data[551 : 544];
  assign laji_1_Weight_Array_1_7_6 = loadWeight_1_weightRead_1_data[559 : 552];
  assign laji_1_Weight_Array_1_7_7 = loadWeight_1_weightRead_1_data[567 : 560];
  assign laji_1_Weight_Array_1_7_8 = loadWeight_1_weightRead_1_data[575 : 568];
  assign laji_1_Weight_Array_2_0_0 = loadWeight_1_weightRead_2_data[7 : 0];
  assign laji_1_Weight_Array_2_0_1 = loadWeight_1_weightRead_2_data[15 : 8];
  assign laji_1_Weight_Array_2_0_2 = loadWeight_1_weightRead_2_data[23 : 16];
  assign laji_1_Weight_Array_2_0_3 = loadWeight_1_weightRead_2_data[31 : 24];
  assign laji_1_Weight_Array_2_0_4 = loadWeight_1_weightRead_2_data[39 : 32];
  assign laji_1_Weight_Array_2_0_5 = loadWeight_1_weightRead_2_data[47 : 40];
  assign laji_1_Weight_Array_2_0_6 = loadWeight_1_weightRead_2_data[55 : 48];
  assign laji_1_Weight_Array_2_0_7 = loadWeight_1_weightRead_2_data[63 : 56];
  assign laji_1_Weight_Array_2_0_8 = loadWeight_1_weightRead_2_data[71 : 64];
  assign laji_1_Weight_Array_2_1_0 = loadWeight_1_weightRead_2_data[79 : 72];
  assign laji_1_Weight_Array_2_1_1 = loadWeight_1_weightRead_2_data[87 : 80];
  assign laji_1_Weight_Array_2_1_2 = loadWeight_1_weightRead_2_data[95 : 88];
  assign laji_1_Weight_Array_2_1_3 = loadWeight_1_weightRead_2_data[103 : 96];
  assign laji_1_Weight_Array_2_1_4 = loadWeight_1_weightRead_2_data[111 : 104];
  assign laji_1_Weight_Array_2_1_5 = loadWeight_1_weightRead_2_data[119 : 112];
  assign laji_1_Weight_Array_2_1_6 = loadWeight_1_weightRead_2_data[127 : 120];
  assign laji_1_Weight_Array_2_1_7 = loadWeight_1_weightRead_2_data[135 : 128];
  assign laji_1_Weight_Array_2_1_8 = loadWeight_1_weightRead_2_data[143 : 136];
  assign laji_1_Weight_Array_2_2_0 = loadWeight_1_weightRead_2_data[151 : 144];
  assign laji_1_Weight_Array_2_2_1 = loadWeight_1_weightRead_2_data[159 : 152];
  assign laji_1_Weight_Array_2_2_2 = loadWeight_1_weightRead_2_data[167 : 160];
  assign laji_1_Weight_Array_2_2_3 = loadWeight_1_weightRead_2_data[175 : 168];
  assign laji_1_Weight_Array_2_2_4 = loadWeight_1_weightRead_2_data[183 : 176];
  assign laji_1_Weight_Array_2_2_5 = loadWeight_1_weightRead_2_data[191 : 184];
  assign laji_1_Weight_Array_2_2_6 = loadWeight_1_weightRead_2_data[199 : 192];
  assign laji_1_Weight_Array_2_2_7 = loadWeight_1_weightRead_2_data[207 : 200];
  assign laji_1_Weight_Array_2_2_8 = loadWeight_1_weightRead_2_data[215 : 208];
  assign laji_1_Weight_Array_2_3_0 = loadWeight_1_weightRead_2_data[223 : 216];
  assign laji_1_Weight_Array_2_3_1 = loadWeight_1_weightRead_2_data[231 : 224];
  assign laji_1_Weight_Array_2_3_2 = loadWeight_1_weightRead_2_data[239 : 232];
  assign laji_1_Weight_Array_2_3_3 = loadWeight_1_weightRead_2_data[247 : 240];
  assign laji_1_Weight_Array_2_3_4 = loadWeight_1_weightRead_2_data[255 : 248];
  assign laji_1_Weight_Array_2_3_5 = loadWeight_1_weightRead_2_data[263 : 256];
  assign laji_1_Weight_Array_2_3_6 = loadWeight_1_weightRead_2_data[271 : 264];
  assign laji_1_Weight_Array_2_3_7 = loadWeight_1_weightRead_2_data[279 : 272];
  assign laji_1_Weight_Array_2_3_8 = loadWeight_1_weightRead_2_data[287 : 280];
  assign laji_1_Weight_Array_2_4_0 = loadWeight_1_weightRead_2_data[295 : 288];
  assign laji_1_Weight_Array_2_4_1 = loadWeight_1_weightRead_2_data[303 : 296];
  assign laji_1_Weight_Array_2_4_2 = loadWeight_1_weightRead_2_data[311 : 304];
  assign laji_1_Weight_Array_2_4_3 = loadWeight_1_weightRead_2_data[319 : 312];
  assign laji_1_Weight_Array_2_4_4 = loadWeight_1_weightRead_2_data[327 : 320];
  assign laji_1_Weight_Array_2_4_5 = loadWeight_1_weightRead_2_data[335 : 328];
  assign laji_1_Weight_Array_2_4_6 = loadWeight_1_weightRead_2_data[343 : 336];
  assign laji_1_Weight_Array_2_4_7 = loadWeight_1_weightRead_2_data[351 : 344];
  assign laji_1_Weight_Array_2_4_8 = loadWeight_1_weightRead_2_data[359 : 352];
  assign laji_1_Weight_Array_2_5_0 = loadWeight_1_weightRead_2_data[367 : 360];
  assign laji_1_Weight_Array_2_5_1 = loadWeight_1_weightRead_2_data[375 : 368];
  assign laji_1_Weight_Array_2_5_2 = loadWeight_1_weightRead_2_data[383 : 376];
  assign laji_1_Weight_Array_2_5_3 = loadWeight_1_weightRead_2_data[391 : 384];
  assign laji_1_Weight_Array_2_5_4 = loadWeight_1_weightRead_2_data[399 : 392];
  assign laji_1_Weight_Array_2_5_5 = loadWeight_1_weightRead_2_data[407 : 400];
  assign laji_1_Weight_Array_2_5_6 = loadWeight_1_weightRead_2_data[415 : 408];
  assign laji_1_Weight_Array_2_5_7 = loadWeight_1_weightRead_2_data[423 : 416];
  assign laji_1_Weight_Array_2_5_8 = loadWeight_1_weightRead_2_data[431 : 424];
  assign laji_1_Weight_Array_2_6_0 = loadWeight_1_weightRead_2_data[439 : 432];
  assign laji_1_Weight_Array_2_6_1 = loadWeight_1_weightRead_2_data[447 : 440];
  assign laji_1_Weight_Array_2_6_2 = loadWeight_1_weightRead_2_data[455 : 448];
  assign laji_1_Weight_Array_2_6_3 = loadWeight_1_weightRead_2_data[463 : 456];
  assign laji_1_Weight_Array_2_6_4 = loadWeight_1_weightRead_2_data[471 : 464];
  assign laji_1_Weight_Array_2_6_5 = loadWeight_1_weightRead_2_data[479 : 472];
  assign laji_1_Weight_Array_2_6_6 = loadWeight_1_weightRead_2_data[487 : 480];
  assign laji_1_Weight_Array_2_6_7 = loadWeight_1_weightRead_2_data[495 : 488];
  assign laji_1_Weight_Array_2_6_8 = loadWeight_1_weightRead_2_data[503 : 496];
  assign laji_1_Weight_Array_2_7_0 = loadWeight_1_weightRead_2_data[511 : 504];
  assign laji_1_Weight_Array_2_7_1 = loadWeight_1_weightRead_2_data[519 : 512];
  assign laji_1_Weight_Array_2_7_2 = loadWeight_1_weightRead_2_data[527 : 520];
  assign laji_1_Weight_Array_2_7_3 = loadWeight_1_weightRead_2_data[535 : 528];
  assign laji_1_Weight_Array_2_7_4 = loadWeight_1_weightRead_2_data[543 : 536];
  assign laji_1_Weight_Array_2_7_5 = loadWeight_1_weightRead_2_data[551 : 544];
  assign laji_1_Weight_Array_2_7_6 = loadWeight_1_weightRead_2_data[559 : 552];
  assign laji_1_Weight_Array_2_7_7 = loadWeight_1_weightRead_2_data[567 : 560];
  assign laji_1_Weight_Array_2_7_8 = loadWeight_1_weightRead_2_data[575 : 568];
  assign laji_1_Weight_Array_3_0_0 = loadWeight_1_weightRead_3_data[7 : 0];
  assign laji_1_Weight_Array_3_0_1 = loadWeight_1_weightRead_3_data[15 : 8];
  assign laji_1_Weight_Array_3_0_2 = loadWeight_1_weightRead_3_data[23 : 16];
  assign laji_1_Weight_Array_3_0_3 = loadWeight_1_weightRead_3_data[31 : 24];
  assign laji_1_Weight_Array_3_0_4 = loadWeight_1_weightRead_3_data[39 : 32];
  assign laji_1_Weight_Array_3_0_5 = loadWeight_1_weightRead_3_data[47 : 40];
  assign laji_1_Weight_Array_3_0_6 = loadWeight_1_weightRead_3_data[55 : 48];
  assign laji_1_Weight_Array_3_0_7 = loadWeight_1_weightRead_3_data[63 : 56];
  assign laji_1_Weight_Array_3_0_8 = loadWeight_1_weightRead_3_data[71 : 64];
  assign laji_1_Weight_Array_3_1_0 = loadWeight_1_weightRead_3_data[79 : 72];
  assign laji_1_Weight_Array_3_1_1 = loadWeight_1_weightRead_3_data[87 : 80];
  assign laji_1_Weight_Array_3_1_2 = loadWeight_1_weightRead_3_data[95 : 88];
  assign laji_1_Weight_Array_3_1_3 = loadWeight_1_weightRead_3_data[103 : 96];
  assign laji_1_Weight_Array_3_1_4 = loadWeight_1_weightRead_3_data[111 : 104];
  assign laji_1_Weight_Array_3_1_5 = loadWeight_1_weightRead_3_data[119 : 112];
  assign laji_1_Weight_Array_3_1_6 = loadWeight_1_weightRead_3_data[127 : 120];
  assign laji_1_Weight_Array_3_1_7 = loadWeight_1_weightRead_3_data[135 : 128];
  assign laji_1_Weight_Array_3_1_8 = loadWeight_1_weightRead_3_data[143 : 136];
  assign laji_1_Weight_Array_3_2_0 = loadWeight_1_weightRead_3_data[151 : 144];
  assign laji_1_Weight_Array_3_2_1 = loadWeight_1_weightRead_3_data[159 : 152];
  assign laji_1_Weight_Array_3_2_2 = loadWeight_1_weightRead_3_data[167 : 160];
  assign laji_1_Weight_Array_3_2_3 = loadWeight_1_weightRead_3_data[175 : 168];
  assign laji_1_Weight_Array_3_2_4 = loadWeight_1_weightRead_3_data[183 : 176];
  assign laji_1_Weight_Array_3_2_5 = loadWeight_1_weightRead_3_data[191 : 184];
  assign laji_1_Weight_Array_3_2_6 = loadWeight_1_weightRead_3_data[199 : 192];
  assign laji_1_Weight_Array_3_2_7 = loadWeight_1_weightRead_3_data[207 : 200];
  assign laji_1_Weight_Array_3_2_8 = loadWeight_1_weightRead_3_data[215 : 208];
  assign laji_1_Weight_Array_3_3_0 = loadWeight_1_weightRead_3_data[223 : 216];
  assign laji_1_Weight_Array_3_3_1 = loadWeight_1_weightRead_3_data[231 : 224];
  assign laji_1_Weight_Array_3_3_2 = loadWeight_1_weightRead_3_data[239 : 232];
  assign laji_1_Weight_Array_3_3_3 = loadWeight_1_weightRead_3_data[247 : 240];
  assign laji_1_Weight_Array_3_3_4 = loadWeight_1_weightRead_3_data[255 : 248];
  assign laji_1_Weight_Array_3_3_5 = loadWeight_1_weightRead_3_data[263 : 256];
  assign laji_1_Weight_Array_3_3_6 = loadWeight_1_weightRead_3_data[271 : 264];
  assign laji_1_Weight_Array_3_3_7 = loadWeight_1_weightRead_3_data[279 : 272];
  assign laji_1_Weight_Array_3_3_8 = loadWeight_1_weightRead_3_data[287 : 280];
  assign laji_1_Weight_Array_3_4_0 = loadWeight_1_weightRead_3_data[295 : 288];
  assign laji_1_Weight_Array_3_4_1 = loadWeight_1_weightRead_3_data[303 : 296];
  assign laji_1_Weight_Array_3_4_2 = loadWeight_1_weightRead_3_data[311 : 304];
  assign laji_1_Weight_Array_3_4_3 = loadWeight_1_weightRead_3_data[319 : 312];
  assign laji_1_Weight_Array_3_4_4 = loadWeight_1_weightRead_3_data[327 : 320];
  assign laji_1_Weight_Array_3_4_5 = loadWeight_1_weightRead_3_data[335 : 328];
  assign laji_1_Weight_Array_3_4_6 = loadWeight_1_weightRead_3_data[343 : 336];
  assign laji_1_Weight_Array_3_4_7 = loadWeight_1_weightRead_3_data[351 : 344];
  assign laji_1_Weight_Array_3_4_8 = loadWeight_1_weightRead_3_data[359 : 352];
  assign laji_1_Weight_Array_3_5_0 = loadWeight_1_weightRead_3_data[367 : 360];
  assign laji_1_Weight_Array_3_5_1 = loadWeight_1_weightRead_3_data[375 : 368];
  assign laji_1_Weight_Array_3_5_2 = loadWeight_1_weightRead_3_data[383 : 376];
  assign laji_1_Weight_Array_3_5_3 = loadWeight_1_weightRead_3_data[391 : 384];
  assign laji_1_Weight_Array_3_5_4 = loadWeight_1_weightRead_3_data[399 : 392];
  assign laji_1_Weight_Array_3_5_5 = loadWeight_1_weightRead_3_data[407 : 400];
  assign laji_1_Weight_Array_3_5_6 = loadWeight_1_weightRead_3_data[415 : 408];
  assign laji_1_Weight_Array_3_5_7 = loadWeight_1_weightRead_3_data[423 : 416];
  assign laji_1_Weight_Array_3_5_8 = loadWeight_1_weightRead_3_data[431 : 424];
  assign laji_1_Weight_Array_3_6_0 = loadWeight_1_weightRead_3_data[439 : 432];
  assign laji_1_Weight_Array_3_6_1 = loadWeight_1_weightRead_3_data[447 : 440];
  assign laji_1_Weight_Array_3_6_2 = loadWeight_1_weightRead_3_data[455 : 448];
  assign laji_1_Weight_Array_3_6_3 = loadWeight_1_weightRead_3_data[463 : 456];
  assign laji_1_Weight_Array_3_6_4 = loadWeight_1_weightRead_3_data[471 : 464];
  assign laji_1_Weight_Array_3_6_5 = loadWeight_1_weightRead_3_data[479 : 472];
  assign laji_1_Weight_Array_3_6_6 = loadWeight_1_weightRead_3_data[487 : 480];
  assign laji_1_Weight_Array_3_6_7 = loadWeight_1_weightRead_3_data[495 : 488];
  assign laji_1_Weight_Array_3_6_8 = loadWeight_1_weightRead_3_data[503 : 496];
  assign laji_1_Weight_Array_3_7_0 = loadWeight_1_weightRead_3_data[511 : 504];
  assign laji_1_Weight_Array_3_7_1 = loadWeight_1_weightRead_3_data[519 : 512];
  assign laji_1_Weight_Array_3_7_2 = loadWeight_1_weightRead_3_data[527 : 520];
  assign laji_1_Weight_Array_3_7_3 = loadWeight_1_weightRead_3_data[535 : 528];
  assign laji_1_Weight_Array_3_7_4 = loadWeight_1_weightRead_3_data[543 : 536];
  assign laji_1_Weight_Array_3_7_5 = loadWeight_1_weightRead_3_data[551 : 544];
  assign laji_1_Weight_Array_3_7_6 = loadWeight_1_weightRead_3_data[559 : 552];
  assign laji_1_Weight_Array_3_7_7 = loadWeight_1_weightRead_3_data[567 : 560];
  assign laji_1_Weight_Array_3_7_8 = loadWeight_1_weightRead_3_data[575 : 568];
  assign laji_1_Weight_Array_4_0_0 = loadWeight_1_weightRead_4_data[7 : 0];
  assign laji_1_Weight_Array_4_0_1 = loadWeight_1_weightRead_4_data[15 : 8];
  assign laji_1_Weight_Array_4_0_2 = loadWeight_1_weightRead_4_data[23 : 16];
  assign laji_1_Weight_Array_4_0_3 = loadWeight_1_weightRead_4_data[31 : 24];
  assign laji_1_Weight_Array_4_0_4 = loadWeight_1_weightRead_4_data[39 : 32];
  assign laji_1_Weight_Array_4_0_5 = loadWeight_1_weightRead_4_data[47 : 40];
  assign laji_1_Weight_Array_4_0_6 = loadWeight_1_weightRead_4_data[55 : 48];
  assign laji_1_Weight_Array_4_0_7 = loadWeight_1_weightRead_4_data[63 : 56];
  assign laji_1_Weight_Array_4_0_8 = loadWeight_1_weightRead_4_data[71 : 64];
  assign laji_1_Weight_Array_4_1_0 = loadWeight_1_weightRead_4_data[79 : 72];
  assign laji_1_Weight_Array_4_1_1 = loadWeight_1_weightRead_4_data[87 : 80];
  assign laji_1_Weight_Array_4_1_2 = loadWeight_1_weightRead_4_data[95 : 88];
  assign laji_1_Weight_Array_4_1_3 = loadWeight_1_weightRead_4_data[103 : 96];
  assign laji_1_Weight_Array_4_1_4 = loadWeight_1_weightRead_4_data[111 : 104];
  assign laji_1_Weight_Array_4_1_5 = loadWeight_1_weightRead_4_data[119 : 112];
  assign laji_1_Weight_Array_4_1_6 = loadWeight_1_weightRead_4_data[127 : 120];
  assign laji_1_Weight_Array_4_1_7 = loadWeight_1_weightRead_4_data[135 : 128];
  assign laji_1_Weight_Array_4_1_8 = loadWeight_1_weightRead_4_data[143 : 136];
  assign laji_1_Weight_Array_4_2_0 = loadWeight_1_weightRead_4_data[151 : 144];
  assign laji_1_Weight_Array_4_2_1 = loadWeight_1_weightRead_4_data[159 : 152];
  assign laji_1_Weight_Array_4_2_2 = loadWeight_1_weightRead_4_data[167 : 160];
  assign laji_1_Weight_Array_4_2_3 = loadWeight_1_weightRead_4_data[175 : 168];
  assign laji_1_Weight_Array_4_2_4 = loadWeight_1_weightRead_4_data[183 : 176];
  assign laji_1_Weight_Array_4_2_5 = loadWeight_1_weightRead_4_data[191 : 184];
  assign laji_1_Weight_Array_4_2_6 = loadWeight_1_weightRead_4_data[199 : 192];
  assign laji_1_Weight_Array_4_2_7 = loadWeight_1_weightRead_4_data[207 : 200];
  assign laji_1_Weight_Array_4_2_8 = loadWeight_1_weightRead_4_data[215 : 208];
  assign laji_1_Weight_Array_4_3_0 = loadWeight_1_weightRead_4_data[223 : 216];
  assign laji_1_Weight_Array_4_3_1 = loadWeight_1_weightRead_4_data[231 : 224];
  assign laji_1_Weight_Array_4_3_2 = loadWeight_1_weightRead_4_data[239 : 232];
  assign laji_1_Weight_Array_4_3_3 = loadWeight_1_weightRead_4_data[247 : 240];
  assign laji_1_Weight_Array_4_3_4 = loadWeight_1_weightRead_4_data[255 : 248];
  assign laji_1_Weight_Array_4_3_5 = loadWeight_1_weightRead_4_data[263 : 256];
  assign laji_1_Weight_Array_4_3_6 = loadWeight_1_weightRead_4_data[271 : 264];
  assign laji_1_Weight_Array_4_3_7 = loadWeight_1_weightRead_4_data[279 : 272];
  assign laji_1_Weight_Array_4_3_8 = loadWeight_1_weightRead_4_data[287 : 280];
  assign laji_1_Weight_Array_4_4_0 = loadWeight_1_weightRead_4_data[295 : 288];
  assign laji_1_Weight_Array_4_4_1 = loadWeight_1_weightRead_4_data[303 : 296];
  assign laji_1_Weight_Array_4_4_2 = loadWeight_1_weightRead_4_data[311 : 304];
  assign laji_1_Weight_Array_4_4_3 = loadWeight_1_weightRead_4_data[319 : 312];
  assign laji_1_Weight_Array_4_4_4 = loadWeight_1_weightRead_4_data[327 : 320];
  assign laji_1_Weight_Array_4_4_5 = loadWeight_1_weightRead_4_data[335 : 328];
  assign laji_1_Weight_Array_4_4_6 = loadWeight_1_weightRead_4_data[343 : 336];
  assign laji_1_Weight_Array_4_4_7 = loadWeight_1_weightRead_4_data[351 : 344];
  assign laji_1_Weight_Array_4_4_8 = loadWeight_1_weightRead_4_data[359 : 352];
  assign laji_1_Weight_Array_4_5_0 = loadWeight_1_weightRead_4_data[367 : 360];
  assign laji_1_Weight_Array_4_5_1 = loadWeight_1_weightRead_4_data[375 : 368];
  assign laji_1_Weight_Array_4_5_2 = loadWeight_1_weightRead_4_data[383 : 376];
  assign laji_1_Weight_Array_4_5_3 = loadWeight_1_weightRead_4_data[391 : 384];
  assign laji_1_Weight_Array_4_5_4 = loadWeight_1_weightRead_4_data[399 : 392];
  assign laji_1_Weight_Array_4_5_5 = loadWeight_1_weightRead_4_data[407 : 400];
  assign laji_1_Weight_Array_4_5_6 = loadWeight_1_weightRead_4_data[415 : 408];
  assign laji_1_Weight_Array_4_5_7 = loadWeight_1_weightRead_4_data[423 : 416];
  assign laji_1_Weight_Array_4_5_8 = loadWeight_1_weightRead_4_data[431 : 424];
  assign laji_1_Weight_Array_4_6_0 = loadWeight_1_weightRead_4_data[439 : 432];
  assign laji_1_Weight_Array_4_6_1 = loadWeight_1_weightRead_4_data[447 : 440];
  assign laji_1_Weight_Array_4_6_2 = loadWeight_1_weightRead_4_data[455 : 448];
  assign laji_1_Weight_Array_4_6_3 = loadWeight_1_weightRead_4_data[463 : 456];
  assign laji_1_Weight_Array_4_6_4 = loadWeight_1_weightRead_4_data[471 : 464];
  assign laji_1_Weight_Array_4_6_5 = loadWeight_1_weightRead_4_data[479 : 472];
  assign laji_1_Weight_Array_4_6_6 = loadWeight_1_weightRead_4_data[487 : 480];
  assign laji_1_Weight_Array_4_6_7 = loadWeight_1_weightRead_4_data[495 : 488];
  assign laji_1_Weight_Array_4_6_8 = loadWeight_1_weightRead_4_data[503 : 496];
  assign laji_1_Weight_Array_4_7_0 = loadWeight_1_weightRead_4_data[511 : 504];
  assign laji_1_Weight_Array_4_7_1 = loadWeight_1_weightRead_4_data[519 : 512];
  assign laji_1_Weight_Array_4_7_2 = loadWeight_1_weightRead_4_data[527 : 520];
  assign laji_1_Weight_Array_4_7_3 = loadWeight_1_weightRead_4_data[535 : 528];
  assign laji_1_Weight_Array_4_7_4 = loadWeight_1_weightRead_4_data[543 : 536];
  assign laji_1_Weight_Array_4_7_5 = loadWeight_1_weightRead_4_data[551 : 544];
  assign laji_1_Weight_Array_4_7_6 = loadWeight_1_weightRead_4_data[559 : 552];
  assign laji_1_Weight_Array_4_7_7 = loadWeight_1_weightRead_4_data[567 : 560];
  assign laji_1_Weight_Array_4_7_8 = loadWeight_1_weightRead_4_data[575 : 568];
  assign laji_1_Weight_Array_5_0_0 = loadWeight_1_weightRead_5_data[7 : 0];
  assign laji_1_Weight_Array_5_0_1 = loadWeight_1_weightRead_5_data[15 : 8];
  assign laji_1_Weight_Array_5_0_2 = loadWeight_1_weightRead_5_data[23 : 16];
  assign laji_1_Weight_Array_5_0_3 = loadWeight_1_weightRead_5_data[31 : 24];
  assign laji_1_Weight_Array_5_0_4 = loadWeight_1_weightRead_5_data[39 : 32];
  assign laji_1_Weight_Array_5_0_5 = loadWeight_1_weightRead_5_data[47 : 40];
  assign laji_1_Weight_Array_5_0_6 = loadWeight_1_weightRead_5_data[55 : 48];
  assign laji_1_Weight_Array_5_0_7 = loadWeight_1_weightRead_5_data[63 : 56];
  assign laji_1_Weight_Array_5_0_8 = loadWeight_1_weightRead_5_data[71 : 64];
  assign laji_1_Weight_Array_5_1_0 = loadWeight_1_weightRead_5_data[79 : 72];
  assign laji_1_Weight_Array_5_1_1 = loadWeight_1_weightRead_5_data[87 : 80];
  assign laji_1_Weight_Array_5_1_2 = loadWeight_1_weightRead_5_data[95 : 88];
  assign laji_1_Weight_Array_5_1_3 = loadWeight_1_weightRead_5_data[103 : 96];
  assign laji_1_Weight_Array_5_1_4 = loadWeight_1_weightRead_5_data[111 : 104];
  assign laji_1_Weight_Array_5_1_5 = loadWeight_1_weightRead_5_data[119 : 112];
  assign laji_1_Weight_Array_5_1_6 = loadWeight_1_weightRead_5_data[127 : 120];
  assign laji_1_Weight_Array_5_1_7 = loadWeight_1_weightRead_5_data[135 : 128];
  assign laji_1_Weight_Array_5_1_8 = loadWeight_1_weightRead_5_data[143 : 136];
  assign laji_1_Weight_Array_5_2_0 = loadWeight_1_weightRead_5_data[151 : 144];
  assign laji_1_Weight_Array_5_2_1 = loadWeight_1_weightRead_5_data[159 : 152];
  assign laji_1_Weight_Array_5_2_2 = loadWeight_1_weightRead_5_data[167 : 160];
  assign laji_1_Weight_Array_5_2_3 = loadWeight_1_weightRead_5_data[175 : 168];
  assign laji_1_Weight_Array_5_2_4 = loadWeight_1_weightRead_5_data[183 : 176];
  assign laji_1_Weight_Array_5_2_5 = loadWeight_1_weightRead_5_data[191 : 184];
  assign laji_1_Weight_Array_5_2_6 = loadWeight_1_weightRead_5_data[199 : 192];
  assign laji_1_Weight_Array_5_2_7 = loadWeight_1_weightRead_5_data[207 : 200];
  assign laji_1_Weight_Array_5_2_8 = loadWeight_1_weightRead_5_data[215 : 208];
  assign laji_1_Weight_Array_5_3_0 = loadWeight_1_weightRead_5_data[223 : 216];
  assign laji_1_Weight_Array_5_3_1 = loadWeight_1_weightRead_5_data[231 : 224];
  assign laji_1_Weight_Array_5_3_2 = loadWeight_1_weightRead_5_data[239 : 232];
  assign laji_1_Weight_Array_5_3_3 = loadWeight_1_weightRead_5_data[247 : 240];
  assign laji_1_Weight_Array_5_3_4 = loadWeight_1_weightRead_5_data[255 : 248];
  assign laji_1_Weight_Array_5_3_5 = loadWeight_1_weightRead_5_data[263 : 256];
  assign laji_1_Weight_Array_5_3_6 = loadWeight_1_weightRead_5_data[271 : 264];
  assign laji_1_Weight_Array_5_3_7 = loadWeight_1_weightRead_5_data[279 : 272];
  assign laji_1_Weight_Array_5_3_8 = loadWeight_1_weightRead_5_data[287 : 280];
  assign laji_1_Weight_Array_5_4_0 = loadWeight_1_weightRead_5_data[295 : 288];
  assign laji_1_Weight_Array_5_4_1 = loadWeight_1_weightRead_5_data[303 : 296];
  assign laji_1_Weight_Array_5_4_2 = loadWeight_1_weightRead_5_data[311 : 304];
  assign laji_1_Weight_Array_5_4_3 = loadWeight_1_weightRead_5_data[319 : 312];
  assign laji_1_Weight_Array_5_4_4 = loadWeight_1_weightRead_5_data[327 : 320];
  assign laji_1_Weight_Array_5_4_5 = loadWeight_1_weightRead_5_data[335 : 328];
  assign laji_1_Weight_Array_5_4_6 = loadWeight_1_weightRead_5_data[343 : 336];
  assign laji_1_Weight_Array_5_4_7 = loadWeight_1_weightRead_5_data[351 : 344];
  assign laji_1_Weight_Array_5_4_8 = loadWeight_1_weightRead_5_data[359 : 352];
  assign laji_1_Weight_Array_5_5_0 = loadWeight_1_weightRead_5_data[367 : 360];
  assign laji_1_Weight_Array_5_5_1 = loadWeight_1_weightRead_5_data[375 : 368];
  assign laji_1_Weight_Array_5_5_2 = loadWeight_1_weightRead_5_data[383 : 376];
  assign laji_1_Weight_Array_5_5_3 = loadWeight_1_weightRead_5_data[391 : 384];
  assign laji_1_Weight_Array_5_5_4 = loadWeight_1_weightRead_5_data[399 : 392];
  assign laji_1_Weight_Array_5_5_5 = loadWeight_1_weightRead_5_data[407 : 400];
  assign laji_1_Weight_Array_5_5_6 = loadWeight_1_weightRead_5_data[415 : 408];
  assign laji_1_Weight_Array_5_5_7 = loadWeight_1_weightRead_5_data[423 : 416];
  assign laji_1_Weight_Array_5_5_8 = loadWeight_1_weightRead_5_data[431 : 424];
  assign laji_1_Weight_Array_5_6_0 = loadWeight_1_weightRead_5_data[439 : 432];
  assign laji_1_Weight_Array_5_6_1 = loadWeight_1_weightRead_5_data[447 : 440];
  assign laji_1_Weight_Array_5_6_2 = loadWeight_1_weightRead_5_data[455 : 448];
  assign laji_1_Weight_Array_5_6_3 = loadWeight_1_weightRead_5_data[463 : 456];
  assign laji_1_Weight_Array_5_6_4 = loadWeight_1_weightRead_5_data[471 : 464];
  assign laji_1_Weight_Array_5_6_5 = loadWeight_1_weightRead_5_data[479 : 472];
  assign laji_1_Weight_Array_5_6_6 = loadWeight_1_weightRead_5_data[487 : 480];
  assign laji_1_Weight_Array_5_6_7 = loadWeight_1_weightRead_5_data[495 : 488];
  assign laji_1_Weight_Array_5_6_8 = loadWeight_1_weightRead_5_data[503 : 496];
  assign laji_1_Weight_Array_5_7_0 = loadWeight_1_weightRead_5_data[511 : 504];
  assign laji_1_Weight_Array_5_7_1 = loadWeight_1_weightRead_5_data[519 : 512];
  assign laji_1_Weight_Array_5_7_2 = loadWeight_1_weightRead_5_data[527 : 520];
  assign laji_1_Weight_Array_5_7_3 = loadWeight_1_weightRead_5_data[535 : 528];
  assign laji_1_Weight_Array_5_7_4 = loadWeight_1_weightRead_5_data[543 : 536];
  assign laji_1_Weight_Array_5_7_5 = loadWeight_1_weightRead_5_data[551 : 544];
  assign laji_1_Weight_Array_5_7_6 = loadWeight_1_weightRead_5_data[559 : 552];
  assign laji_1_Weight_Array_5_7_7 = loadWeight_1_weightRead_5_data[567 : 560];
  assign laji_1_Weight_Array_5_7_8 = loadWeight_1_weightRead_5_data[575 : 568];
  assign laji_1_Weight_Array_6_0_0 = loadWeight_1_weightRead_6_data[7 : 0];
  assign laji_1_Weight_Array_6_0_1 = loadWeight_1_weightRead_6_data[15 : 8];
  assign laji_1_Weight_Array_6_0_2 = loadWeight_1_weightRead_6_data[23 : 16];
  assign laji_1_Weight_Array_6_0_3 = loadWeight_1_weightRead_6_data[31 : 24];
  assign laji_1_Weight_Array_6_0_4 = loadWeight_1_weightRead_6_data[39 : 32];
  assign laji_1_Weight_Array_6_0_5 = loadWeight_1_weightRead_6_data[47 : 40];
  assign laji_1_Weight_Array_6_0_6 = loadWeight_1_weightRead_6_data[55 : 48];
  assign laji_1_Weight_Array_6_0_7 = loadWeight_1_weightRead_6_data[63 : 56];
  assign laji_1_Weight_Array_6_0_8 = loadWeight_1_weightRead_6_data[71 : 64];
  assign laji_1_Weight_Array_6_1_0 = loadWeight_1_weightRead_6_data[79 : 72];
  assign laji_1_Weight_Array_6_1_1 = loadWeight_1_weightRead_6_data[87 : 80];
  assign laji_1_Weight_Array_6_1_2 = loadWeight_1_weightRead_6_data[95 : 88];
  assign laji_1_Weight_Array_6_1_3 = loadWeight_1_weightRead_6_data[103 : 96];
  assign laji_1_Weight_Array_6_1_4 = loadWeight_1_weightRead_6_data[111 : 104];
  assign laji_1_Weight_Array_6_1_5 = loadWeight_1_weightRead_6_data[119 : 112];
  assign laji_1_Weight_Array_6_1_6 = loadWeight_1_weightRead_6_data[127 : 120];
  assign laji_1_Weight_Array_6_1_7 = loadWeight_1_weightRead_6_data[135 : 128];
  assign laji_1_Weight_Array_6_1_8 = loadWeight_1_weightRead_6_data[143 : 136];
  assign laji_1_Weight_Array_6_2_0 = loadWeight_1_weightRead_6_data[151 : 144];
  assign laji_1_Weight_Array_6_2_1 = loadWeight_1_weightRead_6_data[159 : 152];
  assign laji_1_Weight_Array_6_2_2 = loadWeight_1_weightRead_6_data[167 : 160];
  assign laji_1_Weight_Array_6_2_3 = loadWeight_1_weightRead_6_data[175 : 168];
  assign laji_1_Weight_Array_6_2_4 = loadWeight_1_weightRead_6_data[183 : 176];
  assign laji_1_Weight_Array_6_2_5 = loadWeight_1_weightRead_6_data[191 : 184];
  assign laji_1_Weight_Array_6_2_6 = loadWeight_1_weightRead_6_data[199 : 192];
  assign laji_1_Weight_Array_6_2_7 = loadWeight_1_weightRead_6_data[207 : 200];
  assign laji_1_Weight_Array_6_2_8 = loadWeight_1_weightRead_6_data[215 : 208];
  assign laji_1_Weight_Array_6_3_0 = loadWeight_1_weightRead_6_data[223 : 216];
  assign laji_1_Weight_Array_6_3_1 = loadWeight_1_weightRead_6_data[231 : 224];
  assign laji_1_Weight_Array_6_3_2 = loadWeight_1_weightRead_6_data[239 : 232];
  assign laji_1_Weight_Array_6_3_3 = loadWeight_1_weightRead_6_data[247 : 240];
  assign laji_1_Weight_Array_6_3_4 = loadWeight_1_weightRead_6_data[255 : 248];
  assign laji_1_Weight_Array_6_3_5 = loadWeight_1_weightRead_6_data[263 : 256];
  assign laji_1_Weight_Array_6_3_6 = loadWeight_1_weightRead_6_data[271 : 264];
  assign laji_1_Weight_Array_6_3_7 = loadWeight_1_weightRead_6_data[279 : 272];
  assign laji_1_Weight_Array_6_3_8 = loadWeight_1_weightRead_6_data[287 : 280];
  assign laji_1_Weight_Array_6_4_0 = loadWeight_1_weightRead_6_data[295 : 288];
  assign laji_1_Weight_Array_6_4_1 = loadWeight_1_weightRead_6_data[303 : 296];
  assign laji_1_Weight_Array_6_4_2 = loadWeight_1_weightRead_6_data[311 : 304];
  assign laji_1_Weight_Array_6_4_3 = loadWeight_1_weightRead_6_data[319 : 312];
  assign laji_1_Weight_Array_6_4_4 = loadWeight_1_weightRead_6_data[327 : 320];
  assign laji_1_Weight_Array_6_4_5 = loadWeight_1_weightRead_6_data[335 : 328];
  assign laji_1_Weight_Array_6_4_6 = loadWeight_1_weightRead_6_data[343 : 336];
  assign laji_1_Weight_Array_6_4_7 = loadWeight_1_weightRead_6_data[351 : 344];
  assign laji_1_Weight_Array_6_4_8 = loadWeight_1_weightRead_6_data[359 : 352];
  assign laji_1_Weight_Array_6_5_0 = loadWeight_1_weightRead_6_data[367 : 360];
  assign laji_1_Weight_Array_6_5_1 = loadWeight_1_weightRead_6_data[375 : 368];
  assign laji_1_Weight_Array_6_5_2 = loadWeight_1_weightRead_6_data[383 : 376];
  assign laji_1_Weight_Array_6_5_3 = loadWeight_1_weightRead_6_data[391 : 384];
  assign laji_1_Weight_Array_6_5_4 = loadWeight_1_weightRead_6_data[399 : 392];
  assign laji_1_Weight_Array_6_5_5 = loadWeight_1_weightRead_6_data[407 : 400];
  assign laji_1_Weight_Array_6_5_6 = loadWeight_1_weightRead_6_data[415 : 408];
  assign laji_1_Weight_Array_6_5_7 = loadWeight_1_weightRead_6_data[423 : 416];
  assign laji_1_Weight_Array_6_5_8 = loadWeight_1_weightRead_6_data[431 : 424];
  assign laji_1_Weight_Array_6_6_0 = loadWeight_1_weightRead_6_data[439 : 432];
  assign laji_1_Weight_Array_6_6_1 = loadWeight_1_weightRead_6_data[447 : 440];
  assign laji_1_Weight_Array_6_6_2 = loadWeight_1_weightRead_6_data[455 : 448];
  assign laji_1_Weight_Array_6_6_3 = loadWeight_1_weightRead_6_data[463 : 456];
  assign laji_1_Weight_Array_6_6_4 = loadWeight_1_weightRead_6_data[471 : 464];
  assign laji_1_Weight_Array_6_6_5 = loadWeight_1_weightRead_6_data[479 : 472];
  assign laji_1_Weight_Array_6_6_6 = loadWeight_1_weightRead_6_data[487 : 480];
  assign laji_1_Weight_Array_6_6_7 = loadWeight_1_weightRead_6_data[495 : 488];
  assign laji_1_Weight_Array_6_6_8 = loadWeight_1_weightRead_6_data[503 : 496];
  assign laji_1_Weight_Array_6_7_0 = loadWeight_1_weightRead_6_data[511 : 504];
  assign laji_1_Weight_Array_6_7_1 = loadWeight_1_weightRead_6_data[519 : 512];
  assign laji_1_Weight_Array_6_7_2 = loadWeight_1_weightRead_6_data[527 : 520];
  assign laji_1_Weight_Array_6_7_3 = loadWeight_1_weightRead_6_data[535 : 528];
  assign laji_1_Weight_Array_6_7_4 = loadWeight_1_weightRead_6_data[543 : 536];
  assign laji_1_Weight_Array_6_7_5 = loadWeight_1_weightRead_6_data[551 : 544];
  assign laji_1_Weight_Array_6_7_6 = loadWeight_1_weightRead_6_data[559 : 552];
  assign laji_1_Weight_Array_6_7_7 = loadWeight_1_weightRead_6_data[567 : 560];
  assign laji_1_Weight_Array_6_7_8 = loadWeight_1_weightRead_6_data[575 : 568];
  assign laji_1_Weight_Array_7_0_0 = loadWeight_1_weightRead_7_data[7 : 0];
  assign laji_1_Weight_Array_7_0_1 = loadWeight_1_weightRead_7_data[15 : 8];
  assign laji_1_Weight_Array_7_0_2 = loadWeight_1_weightRead_7_data[23 : 16];
  assign laji_1_Weight_Array_7_0_3 = loadWeight_1_weightRead_7_data[31 : 24];
  assign laji_1_Weight_Array_7_0_4 = loadWeight_1_weightRead_7_data[39 : 32];
  assign laji_1_Weight_Array_7_0_5 = loadWeight_1_weightRead_7_data[47 : 40];
  assign laji_1_Weight_Array_7_0_6 = loadWeight_1_weightRead_7_data[55 : 48];
  assign laji_1_Weight_Array_7_0_7 = loadWeight_1_weightRead_7_data[63 : 56];
  assign laji_1_Weight_Array_7_0_8 = loadWeight_1_weightRead_7_data[71 : 64];
  assign laji_1_Weight_Array_7_1_0 = loadWeight_1_weightRead_7_data[79 : 72];
  assign laji_1_Weight_Array_7_1_1 = loadWeight_1_weightRead_7_data[87 : 80];
  assign laji_1_Weight_Array_7_1_2 = loadWeight_1_weightRead_7_data[95 : 88];
  assign laji_1_Weight_Array_7_1_3 = loadWeight_1_weightRead_7_data[103 : 96];
  assign laji_1_Weight_Array_7_1_4 = loadWeight_1_weightRead_7_data[111 : 104];
  assign laji_1_Weight_Array_7_1_5 = loadWeight_1_weightRead_7_data[119 : 112];
  assign laji_1_Weight_Array_7_1_6 = loadWeight_1_weightRead_7_data[127 : 120];
  assign laji_1_Weight_Array_7_1_7 = loadWeight_1_weightRead_7_data[135 : 128];
  assign laji_1_Weight_Array_7_1_8 = loadWeight_1_weightRead_7_data[143 : 136];
  assign laji_1_Weight_Array_7_2_0 = loadWeight_1_weightRead_7_data[151 : 144];
  assign laji_1_Weight_Array_7_2_1 = loadWeight_1_weightRead_7_data[159 : 152];
  assign laji_1_Weight_Array_7_2_2 = loadWeight_1_weightRead_7_data[167 : 160];
  assign laji_1_Weight_Array_7_2_3 = loadWeight_1_weightRead_7_data[175 : 168];
  assign laji_1_Weight_Array_7_2_4 = loadWeight_1_weightRead_7_data[183 : 176];
  assign laji_1_Weight_Array_7_2_5 = loadWeight_1_weightRead_7_data[191 : 184];
  assign laji_1_Weight_Array_7_2_6 = loadWeight_1_weightRead_7_data[199 : 192];
  assign laji_1_Weight_Array_7_2_7 = loadWeight_1_weightRead_7_data[207 : 200];
  assign laji_1_Weight_Array_7_2_8 = loadWeight_1_weightRead_7_data[215 : 208];
  assign laji_1_Weight_Array_7_3_0 = loadWeight_1_weightRead_7_data[223 : 216];
  assign laji_1_Weight_Array_7_3_1 = loadWeight_1_weightRead_7_data[231 : 224];
  assign laji_1_Weight_Array_7_3_2 = loadWeight_1_weightRead_7_data[239 : 232];
  assign laji_1_Weight_Array_7_3_3 = loadWeight_1_weightRead_7_data[247 : 240];
  assign laji_1_Weight_Array_7_3_4 = loadWeight_1_weightRead_7_data[255 : 248];
  assign laji_1_Weight_Array_7_3_5 = loadWeight_1_weightRead_7_data[263 : 256];
  assign laji_1_Weight_Array_7_3_6 = loadWeight_1_weightRead_7_data[271 : 264];
  assign laji_1_Weight_Array_7_3_7 = loadWeight_1_weightRead_7_data[279 : 272];
  assign laji_1_Weight_Array_7_3_8 = loadWeight_1_weightRead_7_data[287 : 280];
  assign laji_1_Weight_Array_7_4_0 = loadWeight_1_weightRead_7_data[295 : 288];
  assign laji_1_Weight_Array_7_4_1 = loadWeight_1_weightRead_7_data[303 : 296];
  assign laji_1_Weight_Array_7_4_2 = loadWeight_1_weightRead_7_data[311 : 304];
  assign laji_1_Weight_Array_7_4_3 = loadWeight_1_weightRead_7_data[319 : 312];
  assign laji_1_Weight_Array_7_4_4 = loadWeight_1_weightRead_7_data[327 : 320];
  assign laji_1_Weight_Array_7_4_5 = loadWeight_1_weightRead_7_data[335 : 328];
  assign laji_1_Weight_Array_7_4_6 = loadWeight_1_weightRead_7_data[343 : 336];
  assign laji_1_Weight_Array_7_4_7 = loadWeight_1_weightRead_7_data[351 : 344];
  assign laji_1_Weight_Array_7_4_8 = loadWeight_1_weightRead_7_data[359 : 352];
  assign laji_1_Weight_Array_7_5_0 = loadWeight_1_weightRead_7_data[367 : 360];
  assign laji_1_Weight_Array_7_5_1 = loadWeight_1_weightRead_7_data[375 : 368];
  assign laji_1_Weight_Array_7_5_2 = loadWeight_1_weightRead_7_data[383 : 376];
  assign laji_1_Weight_Array_7_5_3 = loadWeight_1_weightRead_7_data[391 : 384];
  assign laji_1_Weight_Array_7_5_4 = loadWeight_1_weightRead_7_data[399 : 392];
  assign laji_1_Weight_Array_7_5_5 = loadWeight_1_weightRead_7_data[407 : 400];
  assign laji_1_Weight_Array_7_5_6 = loadWeight_1_weightRead_7_data[415 : 408];
  assign laji_1_Weight_Array_7_5_7 = loadWeight_1_weightRead_7_data[423 : 416];
  assign laji_1_Weight_Array_7_5_8 = loadWeight_1_weightRead_7_data[431 : 424];
  assign laji_1_Weight_Array_7_6_0 = loadWeight_1_weightRead_7_data[439 : 432];
  assign laji_1_Weight_Array_7_6_1 = loadWeight_1_weightRead_7_data[447 : 440];
  assign laji_1_Weight_Array_7_6_2 = loadWeight_1_weightRead_7_data[455 : 448];
  assign laji_1_Weight_Array_7_6_3 = loadWeight_1_weightRead_7_data[463 : 456];
  assign laji_1_Weight_Array_7_6_4 = loadWeight_1_weightRead_7_data[471 : 464];
  assign laji_1_Weight_Array_7_6_5 = loadWeight_1_weightRead_7_data[479 : 472];
  assign laji_1_Weight_Array_7_6_6 = loadWeight_1_weightRead_7_data[487 : 480];
  assign laji_1_Weight_Array_7_6_7 = loadWeight_1_weightRead_7_data[495 : 488];
  assign laji_1_Weight_Array_7_6_8 = loadWeight_1_weightRead_7_data[503 : 496];
  assign laji_1_Weight_Array_7_7_0 = loadWeight_1_weightRead_7_data[511 : 504];
  assign laji_1_Weight_Array_7_7_1 = loadWeight_1_weightRead_7_data[519 : 512];
  assign laji_1_Weight_Array_7_7_2 = loadWeight_1_weightRead_7_data[527 : 520];
  assign laji_1_Weight_Array_7_7_3 = loadWeight_1_weightRead_7_data[535 : 528];
  assign laji_1_Weight_Array_7_7_4 = loadWeight_1_weightRead_7_data[543 : 536];
  assign laji_1_Weight_Array_7_7_5 = loadWeight_1_weightRead_7_data[551 : 544];
  assign laji_1_Weight_Array_7_7_6 = loadWeight_1_weightRead_7_data[559 : 552];
  assign laji_1_Weight_Array_7_7_7 = loadWeight_1_weightRead_7_data[567 : 560];
  assign laji_1_Weight_Array_7_7_8 = loadWeight_1_weightRead_7_data[575 : 568];
  assign computedown = convComputeCtrl_1_endEnd;
  always @(posedge clk) begin
    if(startPa) begin
      _zz_convType <= convType;
    end
  end


endmodule
