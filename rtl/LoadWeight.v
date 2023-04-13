// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : LoadWeight
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module LoadWeight (
  input               start,
  input               sData_valid,
  output reg          sData_ready,
  input      [71:0]   sData_payload,
  input               quanData_valid,
  output reg          quanData_ready,
  input      [63:0]   quanData_payload,
  input      [12:0]   weightNum,
  input      [8:0]    quanNum,
  input      [9:0]    weightRead_0_addr,
  output     [575:0]  weightRead_0_data,
  input      [9:0]    weightRead_1_addr,
  output     [575:0]  weightRead_1_data,
  input      [9:0]    weightRead_2_addr,
  output     [575:0]  weightRead_2_data,
  input      [9:0]    weightRead_3_addr,
  output     [575:0]  weightRead_3_data,
  input      [9:0]    weightRead_4_addr,
  output     [575:0]  weightRead_4_data,
  input      [9:0]    weightRead_5_addr,
  output     [575:0]  weightRead_5_data,
  input      [9:0]    weightRead_6_addr,
  output     [575:0]  weightRead_6_data,
  input      [9:0]    weightRead_7_addr,
  output     [575:0]  weightRead_7_data,
  input      [6:0]    biasRead_addr,
  output     [255:0]  biasRead_data,
  input      [6:0]    scaleRead_addr,
  output     [255:0]  scaleRead_data,
  input      [6:0]    shiftRead_addr,
  output     [255:0]  shiftRead_data,
  output reg          copyWeightDone,
  input      [1:0]    convType,
  input      [11:0]   channelIn,
  input      [11:0]   channelOut,
  output              copyWeightEnd,
  input               clk,
  input               reset,
  input               softReset
);
  localparam LoadWeightEnum_IDLE = 6'd1;
  localparam LoadWeightEnum_INIT = 6'd2;
  localparam LoadWeightEnum_COPY_WEIGHT = 6'd4;
  localparam LoadWeightEnum_COPY_BIAS = 6'd8;
  localparam LoadWeightEnum_COPY_SCALE = 6'd16;
  localparam LoadWeightEnum_COPY_SHIFT = 6'd32;

  wire       [12:0]   weightRam_0_addra;
  wire       [9:0]    weightRam_0_addrb;
  wire       [0:0]    weightRam_0_wea;
  wire       [12:0]   weightRam_1_addra;
  wire       [9:0]    weightRam_1_addrb;
  wire       [0:0]    weightRam_1_wea;
  wire       [12:0]   weightRam_2_addra;
  wire       [9:0]    weightRam_2_addrb;
  wire       [0:0]    weightRam_2_wea;
  wire       [12:0]   weightRam_3_addra;
  wire       [9:0]    weightRam_3_addrb;
  wire       [0:0]    weightRam_3_wea;
  wire       [12:0]   weightRam_4_addra;
  wire       [9:0]    weightRam_4_addrb;
  wire       [0:0]    weightRam_4_wea;
  wire       [12:0]   weightRam_5_addra;
  wire       [9:0]    weightRam_5_addrb;
  wire       [0:0]    weightRam_5_wea;
  wire       [12:0]   weightRam_6_addra;
  wire       [9:0]    weightRam_6_addrb;
  wire       [0:0]    weightRam_6_wea;
  wire       [12:0]   weightRam_7_addra;
  wire       [9:0]    weightRam_7_addrb;
  wire       [0:0]    weightRam_7_wea;
  wire       [8:0]    copyBias_ram_addra;
  wire       [6:0]    copyBias_ram_addrb;
  wire       [63:0]   copyBias_ram_dina;
  wire       [0:0]    copyBias_ram_wea;
  wire       [8:0]    copyScale_ram_addra;
  wire       [6:0]    copyScale_ram_addrb;
  wire       [63:0]   copyScale_ram_dina;
  wire       [0:0]    copyScale_ram_wea;
  wire       [8:0]    copyShift_ram_addra;
  wire       [6:0]    copyShift_ram_addrb;
  wire       [63:0]   copyShift_ram_dina;
  wire       [0:0]    copyShift_ram_wea;
  wire       [575:0]  weightRam_0_doutb;
  wire       [575:0]  weightRam_1_doutb;
  wire       [575:0]  weightRam_2_doutb;
  wire       [575:0]  weightRam_3_doutb;
  wire       [575:0]  weightRam_4_doutb;
  wire       [575:0]  weightRam_5_doutb;
  wire       [575:0]  weightRam_6_doutb;
  wire       [575:0]  weightRam_7_doutb;
  wire       [255:0]  copyBias_ram_doutb;
  wire       [255:0]  copyScale_ram_doutb;
  wire       [255:0]  copyShift_ram_doutb;
  wire       [20:0]   _zz_when_WaCounter_l16_1;
  wire       [20:0]   _zz_when_WaCounter_l16_1_1;
  wire       [20:0]   _zz_when_WaCounter_l16_1_2;
  wire       [8:0]    _zz_when_WaCounter_l16_1_3;
  wire       [11:0]   _zz_when_WaCounter_l16_3;
  wire       [11:0]   _zz_when_WaCounter_l16_3_1;
  wire       [11:0]   _zz_when_WaCounter_l16_4;
  wire       [12:0]   _zz_when_Weight_l233;
  wire       [12:0]   _zz_when_Weight_l233_1;
  wire       [12:0]   _zz_when_Weight_l233_2;
  wire       [12:0]   _zz_when_Weight_l233_3;
  wire       [12:0]   _zz_when_Weight_l233_4;
  wire       [12:0]   _zz_when_Weight_l233_5;
  wire       [12:0]   _zz_when_Weight_l233_6;
  wire       [12:0]   _zz_when_Weight_l233_7;
  wire       [8:0]    _zz_when_WaCounter_l16_8;
  wire       [8:0]    _zz_when_WaCounter_l16_9;
  wire       [8:0]    _zz_when_WaCounter_l16_10;
  wire       [8:0]    channelInTimes;
  wire                fsm_initEnd;
  reg                 fsm_copyWeightEnd;
  wire                fsm_copyBiasEnd;
  wire                fsm_copyScaleEnd;
  wire                fsm_copyShiftEnd;
  reg        [5:0]    fsm_currentState;
  reg        [5:0]    fsm_nextState;
  wire                when_WaCounter_l21;
  reg        [2:0]    init_count;
  reg                 init_valid;
  wire                when_WaCounter_l16;
  wire                sData_fire;
  wire                when_WaCounter_l21_1;
  reg        [12:0]   copyWeightCnt_count;
  reg                 copyWeightCnt_valid;
  wire                when_WaCounter_l16_1;
  reg        [3:0]    copyWeightAllCnt_count;
  reg                 copyWeightAllCnt_valid;
  wire                when_WaCounter_l16_2;
  wire                sData_fire_1;
  wire                when_WaCounter_l21_2;
  reg        [8:0]    channelInCnt_count;
  reg                 channelInCnt_valid;
  wire                when_WaCounter_l16_3;
  reg        [11:0]   channelOutCnt_count;
  reg                 channelOutCnt_valid;
  wire                when_WaCounter_l16_4;
  wire                sData_fire_2;
  wire                when_WaCounter_l21_3;
  reg        [2:0]    computeChannelOut_count;
  reg                 computeChannelOut_valid;
  wire                when_WaCounter_l16_5;
  reg        [2:0]    times_count;
  reg                 times_valid;
  wire                when_WaCounter_l16_6;
  wire                when_Weight_l120;
  wire                when_Weight_l127;
  wire                when_Weight_l129;
  wire                when_Weight_l131;
  reg                 copyWeightEnd_reg;
  wire                when_Weight_l142;
  wire                when_Weight_l147;
  reg                 weav_0;
  reg                 weav_1;
  reg                 weav_2;
  reg                 weav_3;
  reg                 weav_4;
  reg                 weav_5;
  reg                 weav_6;
  reg                 weav_7;
  wire                sData_fire_3;
  wire                when_WaCounter_l21_4;
  reg        [2:0]    indexCnt_count;
  reg                 indexCnt_valid;
  wire                when_WaCounter_l16_7;
  wire                sData_fire_4;
  wire                when_Weight_l198;
  wire                sData_fire_5;
  wire                when_Weight_l198_1;
  wire                sData_fire_6;
  wire                when_Weight_l198_2;
  wire                sData_fire_7;
  wire                when_Weight_l198_3;
  wire                sData_fire_8;
  wire                when_Weight_l198_4;
  wire                sData_fire_9;
  wire                when_Weight_l198_5;
  wire                sData_fire_10;
  wire                when_Weight_l198_6;
  wire                sData_fire_11;
  wire                when_Weight_l198_7;
  reg        [12:0]   addr_0;
  reg        [12:0]   addr_1;
  reg        [12:0]   addr_2;
  reg        [12:0]   addr_3;
  reg        [12:0]   addr_4;
  reg        [12:0]   addr_5;
  reg        [12:0]   addr_6;
  reg        [12:0]   addr_7;
  wire                when_Weight_l233;
  wire                when_Weight_l233_1;
  wire                when_Weight_l233_2;
  wire                when_Weight_l233_3;
  wire                when_Weight_l233_4;
  wire                when_Weight_l233_5;
  wire                when_Weight_l233_6;
  wire                when_Weight_l233_7;
  reg        [71:0]   sDataReg;
  wire       [71:0]   weightRamRead_0_0;
  wire       [71:0]   weightRamRead_0_1;
  wire       [71:0]   weightRamRead_0_2;
  wire       [71:0]   weightRamRead_0_3;
  wire       [71:0]   weightRamRead_0_4;
  wire       [71:0]   weightRamRead_0_5;
  wire       [71:0]   weightRamRead_0_6;
  wire       [71:0]   weightRamRead_0_7;
  wire       [71:0]   weightRamRead_1_0;
  wire       [71:0]   weightRamRead_1_1;
  wire       [71:0]   weightRamRead_1_2;
  wire       [71:0]   weightRamRead_1_3;
  wire       [71:0]   weightRamRead_1_4;
  wire       [71:0]   weightRamRead_1_5;
  wire       [71:0]   weightRamRead_1_6;
  wire       [71:0]   weightRamRead_1_7;
  wire       [71:0]   weightRamRead_2_0;
  wire       [71:0]   weightRamRead_2_1;
  wire       [71:0]   weightRamRead_2_2;
  wire       [71:0]   weightRamRead_2_3;
  wire       [71:0]   weightRamRead_2_4;
  wire       [71:0]   weightRamRead_2_5;
  wire       [71:0]   weightRamRead_2_6;
  wire       [71:0]   weightRamRead_2_7;
  wire       [71:0]   weightRamRead_3_0;
  wire       [71:0]   weightRamRead_3_1;
  wire       [71:0]   weightRamRead_3_2;
  wire       [71:0]   weightRamRead_3_3;
  wire       [71:0]   weightRamRead_3_4;
  wire       [71:0]   weightRamRead_3_5;
  wire       [71:0]   weightRamRead_3_6;
  wire       [71:0]   weightRamRead_3_7;
  wire       [71:0]   weightRamRead_4_0;
  wire       [71:0]   weightRamRead_4_1;
  wire       [71:0]   weightRamRead_4_2;
  wire       [71:0]   weightRamRead_4_3;
  wire       [71:0]   weightRamRead_4_4;
  wire       [71:0]   weightRamRead_4_5;
  wire       [71:0]   weightRamRead_4_6;
  wire       [71:0]   weightRamRead_4_7;
  wire       [71:0]   weightRamRead_5_0;
  wire       [71:0]   weightRamRead_5_1;
  wire       [71:0]   weightRamRead_5_2;
  wire       [71:0]   weightRamRead_5_3;
  wire       [71:0]   weightRamRead_5_4;
  wire       [71:0]   weightRamRead_5_5;
  wire       [71:0]   weightRamRead_5_6;
  wire       [71:0]   weightRamRead_5_7;
  wire       [71:0]   weightRamRead_6_0;
  wire       [71:0]   weightRamRead_6_1;
  wire       [71:0]   weightRamRead_6_2;
  wire       [71:0]   weightRamRead_6_3;
  wire       [71:0]   weightRamRead_6_4;
  wire       [71:0]   weightRamRead_6_5;
  wire       [71:0]   weightRamRead_6_6;
  wire       [71:0]   weightRamRead_6_7;
  wire       [71:0]   weightRamRead_7_0;
  wire       [71:0]   weightRamRead_7_1;
  wire       [71:0]   weightRamRead_7_2;
  wire       [71:0]   weightRamRead_7_3;
  wire       [71:0]   weightRamRead_7_4;
  wire       [71:0]   weightRamRead_7_5;
  wire       [71:0]   weightRamRead_7_6;
  wire       [71:0]   weightRamRead_7_7;
  wire                quanData_fire;
  wire                when_WaCounter_l21_5;
  wire                quanData_fire_1;
  reg        [8:0]    copyBias_copyCnt_count;
  reg                 copyBias_copyCnt_valid;
  wire                when_WaCounter_l16_8;
  wire                quanData_fire_2;
  wire                when_WaCounter_l21_6;
  wire                quanData_fire_3;
  reg        [8:0]    copyScale_copyCnt_count;
  reg                 copyScale_copyCnt_valid;
  wire                when_WaCounter_l16_9;
  wire                quanData_fire_4;
  wire                when_WaCounter_l21_7;
  wire                quanData_fire_5;
  reg        [8:0]    copyShift_copyCnt_count;
  reg                 copyShift_copyCnt_valid;
  wire                when_WaCounter_l16_10;
  wire                when_WaUtil_l29;
  `ifndef SYNTHESIS
  reg [87:0] fsm_currentState_string;
  reg [87:0] fsm_nextState_string;
  `endif


  assign _zz_when_WaCounter_l16_1 = {8'd0, copyWeightCnt_count};
  assign _zz_when_WaCounter_l16_1_1 = (_zz_when_WaCounter_l16_1_2 - 21'h000001);
  assign _zz_when_WaCounter_l16_1_2 = (channelIn * _zz_when_WaCounter_l16_1_3);
  assign _zz_when_WaCounter_l16_1_3 = (channelOut >>> 3);
  assign _zz_when_WaCounter_l16_3 = {3'd0, channelInCnt_count};
  assign _zz_when_WaCounter_l16_3_1 = (channelOut / 4'b1000);
  assign _zz_when_WaCounter_l16_4 = (channelOut - 12'h001);
  assign _zz_when_Weight_l233 = (weightNum - 13'h0001);
  assign _zz_when_Weight_l233_1 = (weightNum - 13'h0001);
  assign _zz_when_Weight_l233_2 = (weightNum - 13'h0001);
  assign _zz_when_Weight_l233_3 = (weightNum - 13'h0001);
  assign _zz_when_Weight_l233_4 = (weightNum - 13'h0001);
  assign _zz_when_Weight_l233_5 = (weightNum - 13'h0001);
  assign _zz_when_Weight_l233_6 = (weightNum - 13'h0001);
  assign _zz_when_Weight_l233_7 = (weightNum - 13'h0001);
  assign _zz_when_WaCounter_l16_8 = (quanNum - 9'h001);
  assign _zz_when_WaCounter_l16_9 = (quanNum - 9'h001);
  assign _zz_when_WaCounter_l16_10 = (quanNum - 9'h001);
  sdpram weightRam_0 (
    .doutb (weightRam_0_doutb[575:0]), //o
    .addra (weightRam_0_addra[12:0] ), //i
    .addrb (weightRam_0_addrb[9:0]  ), //i
    .dina  (sDataReg[71:0]          ), //i
    .ena   (1'b1                    ), //i
    .enb   (1'b1                    ), //i
    .wea   (weightRam_0_wea         ), //i
    .clk   (clk                     )  //i
  );
  sdpram weightRam_1 (
    .doutb (weightRam_1_doutb[575:0]), //o
    .addra (weightRam_1_addra[12:0] ), //i
    .addrb (weightRam_1_addrb[9:0]  ), //i
    .dina  (sDataReg[71:0]          ), //i
    .ena   (1'b1                    ), //i
    .enb   (1'b1                    ), //i
    .wea   (weightRam_1_wea         ), //i
    .clk   (clk                     )  //i
  );
  sdpram weightRam_2 (
    .doutb (weightRam_2_doutb[575:0]), //o
    .addra (weightRam_2_addra[12:0] ), //i
    .addrb (weightRam_2_addrb[9:0]  ), //i
    .dina  (sDataReg[71:0]          ), //i
    .ena   (1'b1                    ), //i
    .enb   (1'b1                    ), //i
    .wea   (weightRam_2_wea         ), //i
    .clk   (clk                     )  //i
  );
  sdpram weightRam_3 (
    .doutb (weightRam_3_doutb[575:0]), //o
    .addra (weightRam_3_addra[12:0] ), //i
    .addrb (weightRam_3_addrb[9:0]  ), //i
    .dina  (sDataReg[71:0]          ), //i
    .ena   (1'b1                    ), //i
    .enb   (1'b1                    ), //i
    .wea   (weightRam_3_wea         ), //i
    .clk   (clk                     )  //i
  );
  sdpram weightRam_4 (
    .doutb (weightRam_4_doutb[575:0]), //o
    .addra (weightRam_4_addra[12:0] ), //i
    .addrb (weightRam_4_addrb[9:0]  ), //i
    .dina  (sDataReg[71:0]          ), //i
    .ena   (1'b1                    ), //i
    .enb   (1'b1                    ), //i
    .wea   (weightRam_4_wea         ), //i
    .clk   (clk                     )  //i
  );
  sdpram weightRam_5 (
    .doutb (weightRam_5_doutb[575:0]), //o
    .addra (weightRam_5_addra[12:0] ), //i
    .addrb (weightRam_5_addrb[9:0]  ), //i
    .dina  (sDataReg[71:0]          ), //i
    .ena   (1'b1                    ), //i
    .enb   (1'b1                    ), //i
    .wea   (weightRam_5_wea         ), //i
    .clk   (clk                     )  //i
  );
  sdpram weightRam_6 (
    .doutb (weightRam_6_doutb[575:0]), //o
    .addra (weightRam_6_addra[12:0] ), //i
    .addrb (weightRam_6_addrb[9:0]  ), //i
    .dina  (sDataReg[71:0]          ), //i
    .ena   (1'b1                    ), //i
    .enb   (1'b1                    ), //i
    .wea   (weightRam_6_wea         ), //i
    .clk   (clk                     )  //i
  );
  sdpram weightRam_7 (
    .doutb (weightRam_7_doutb[575:0]), //o
    .addra (weightRam_7_addra[12:0] ), //i
    .addrb (weightRam_7_addrb[9:0]  ), //i
    .dina  (sDataReg[71:0]          ), //i
    .ena   (1'b1                    ), //i
    .enb   (1'b1                    ), //i
    .wea   (weightRam_7_wea         ), //i
    .clk   (clk                     )  //i
  );
  sdpram_8 copyBias_ram (
    .doutb (copyBias_ram_doutb[255:0]), //o
    .addra (copyBias_ram_addra[8:0]  ), //i
    .addrb (copyBias_ram_addrb[6:0]  ), //i
    .dina  (copyBias_ram_dina[63:0]  ), //i
    .ena   (1'b1                     ), //i
    .enb   (1'b1                     ), //i
    .wea   (copyBias_ram_wea         ), //i
    .clk   (clk                      )  //i
  );
  sdpram_8 copyScale_ram (
    .doutb (copyScale_ram_doutb[255:0]), //o
    .addra (copyScale_ram_addra[8:0]  ), //i
    .addrb (copyScale_ram_addrb[6:0]  ), //i
    .dina  (copyScale_ram_dina[63:0]  ), //i
    .ena   (1'b1                      ), //i
    .enb   (1'b1                      ), //i
    .wea   (copyScale_ram_wea         ), //i
    .clk   (clk                       )  //i
  );
  sdpram_8 copyShift_ram (
    .doutb (copyShift_ram_doutb[255:0]), //o
    .addra (copyShift_ram_addra[8:0]  ), //i
    .addrb (copyShift_ram_addrb[6:0]  ), //i
    .dina  (copyShift_ram_dina[63:0]  ), //i
    .ena   (1'b1                      ), //i
    .enb   (1'b1                      ), //i
    .wea   (copyShift_ram_wea         ), //i
    .clk   (clk                       )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_currentState)
      LoadWeightEnum_IDLE : fsm_currentState_string = "IDLE       ";
      LoadWeightEnum_INIT : fsm_currentState_string = "INIT       ";
      LoadWeightEnum_COPY_WEIGHT : fsm_currentState_string = "COPY_WEIGHT";
      LoadWeightEnum_COPY_BIAS : fsm_currentState_string = "COPY_BIAS  ";
      LoadWeightEnum_COPY_SCALE : fsm_currentState_string = "COPY_SCALE ";
      LoadWeightEnum_COPY_SHIFT : fsm_currentState_string = "COPY_SHIFT ";
      default : fsm_currentState_string = "???????????";
    endcase
  end
  always @(*) begin
    case(fsm_nextState)
      LoadWeightEnum_IDLE : fsm_nextState_string = "IDLE       ";
      LoadWeightEnum_INIT : fsm_nextState_string = "INIT       ";
      LoadWeightEnum_COPY_WEIGHT : fsm_nextState_string = "COPY_WEIGHT";
      LoadWeightEnum_COPY_BIAS : fsm_nextState_string = "COPY_BIAS  ";
      LoadWeightEnum_COPY_SCALE : fsm_nextState_string = "COPY_SCALE ";
      LoadWeightEnum_COPY_SHIFT : fsm_nextState_string = "COPY_SHIFT ";
      default : fsm_nextState_string = "???????????";
    endcase
  end
  `endif

  assign channelInTimes = (channelIn >>> 3);
  always @(*) begin
    (* parallel_case *)
    case(1) // synthesis parallel_case
      (((fsm_currentState) & LoadWeightEnum_IDLE) == LoadWeightEnum_IDLE) : begin
        if(start) begin
          fsm_nextState = LoadWeightEnum_INIT;
        end else begin
          fsm_nextState = LoadWeightEnum_IDLE;
        end
      end
      (((fsm_currentState) & LoadWeightEnum_INIT) == LoadWeightEnum_INIT) : begin
        if(fsm_initEnd) begin
          fsm_nextState = LoadWeightEnum_COPY_WEIGHT;
        end else begin
          fsm_nextState = LoadWeightEnum_INIT;
        end
      end
      (((fsm_currentState) & LoadWeightEnum_COPY_WEIGHT) == LoadWeightEnum_COPY_WEIGHT) : begin
        if(fsm_copyWeightEnd) begin
          fsm_nextState = LoadWeightEnum_COPY_BIAS;
        end else begin
          fsm_nextState = LoadWeightEnum_COPY_WEIGHT;
        end
      end
      (((fsm_currentState) & LoadWeightEnum_COPY_BIAS) == LoadWeightEnum_COPY_BIAS) : begin
        if(fsm_copyBiasEnd) begin
          fsm_nextState = LoadWeightEnum_COPY_SCALE;
        end else begin
          fsm_nextState = LoadWeightEnum_COPY_BIAS;
        end
      end
      (((fsm_currentState) & LoadWeightEnum_COPY_SCALE) == LoadWeightEnum_COPY_SCALE) : begin
        if(fsm_copyScaleEnd) begin
          fsm_nextState = LoadWeightEnum_COPY_SHIFT;
        end else begin
          fsm_nextState = LoadWeightEnum_COPY_SCALE;
        end
      end
      default : begin
        if(fsm_copyShiftEnd) begin
          fsm_nextState = LoadWeightEnum_IDLE;
        end else begin
          fsm_nextState = LoadWeightEnum_COPY_SHIFT;
        end
      end
    endcase
  end

  assign when_WaCounter_l21 = ((fsm_currentState & LoadWeightEnum_INIT) != 6'b000000);
  assign when_WaCounter_l16 = ((init_count == 3'b101) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16) begin
      init_valid = 1'b1;
    end else begin
      init_valid = 1'b0;
    end
  end

  assign fsm_initEnd = init_valid;
  assign sData_fire = (sData_valid && sData_ready);
  assign when_WaCounter_l21_1 = (((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000) && sData_fire);
  assign when_WaCounter_l16_1 = ((_zz_when_WaCounter_l16_1 == _zz_when_WaCounter_l16_1_1) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_1) begin
      copyWeightCnt_valid = 1'b1;
    end else begin
      copyWeightCnt_valid = 1'b0;
    end
    if(when_Weight_l120) begin
      copyWeightCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l16_2 = ((copyWeightAllCnt_count == 4'b0111) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_2) begin
      copyWeightAllCnt_valid = 1'b1;
    end else begin
      copyWeightAllCnt_valid = 1'b0;
    end
    if(when_Weight_l120) begin
      copyWeightAllCnt_valid = 1'b0;
    end
  end

  assign sData_fire_1 = (sData_valid && sData_ready);
  assign when_WaCounter_l21_2 = (((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000) && sData_fire_1);
  assign when_WaCounter_l16_3 = ((_zz_when_WaCounter_l16_3 == _zz_when_WaCounter_l16_3_1) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_3) begin
      channelInCnt_valid = 1'b1;
    end else begin
      channelInCnt_valid = 1'b0;
    end
    if(when_Weight_l120) begin
      channelInCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l16_4 = ((channelOutCnt_count == _zz_when_WaCounter_l16_4) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_4) begin
      channelOutCnt_valid = 1'b1;
    end else begin
      channelOutCnt_valid = 1'b0;
    end
    if(when_Weight_l120) begin
      channelOutCnt_valid = 1'b0;
    end
  end

  assign sData_fire_2 = (sData_valid && sData_ready);
  assign when_WaCounter_l21_3 = (((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000) && sData_fire_2);
  assign when_WaCounter_l16_5 = ((computeChannelOut_count == 3'b111) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_5) begin
      computeChannelOut_valid = 1'b1;
    end else begin
      computeChannelOut_valid = 1'b0;
    end
  end

  assign when_WaCounter_l16_6 = ((times_count == 3'b111) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_6) begin
      times_valid = 1'b1;
    end else begin
      times_valid = 1'b0;
    end
  end

  assign when_Weight_l120 = ((fsm_currentState & LoadWeightEnum_IDLE) != 6'b000000);
  assign when_Weight_l127 = (convType == 2'b00);
  always @(*) begin
    if(when_Weight_l127) begin
      fsm_copyWeightEnd = (copyWeightCnt_valid && copyWeightAllCnt_valid);
    end else begin
      if(when_Weight_l129) begin
        fsm_copyWeightEnd = (channelInCnt_valid && channelOutCnt_valid);
      end else begin
        if(when_Weight_l131) begin
          fsm_copyWeightEnd = copyWeightCnt_valid;
        end else begin
          fsm_copyWeightEnd = 1'b0;
        end
      end
    end
  end

  assign when_Weight_l129 = (convType == 2'b01);
  assign when_Weight_l131 = (convType == 2'b10);
  assign copyWeightEnd = fsm_copyWeightEnd;
  assign when_Weight_l142 = ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000);
  always @(*) begin
    if(when_Weight_l142) begin
      sData_ready = 1'b1;
    end else begin
      sData_ready = 1'b0;
    end
  end

  assign when_Weight_l147 = ((((fsm_currentState & LoadWeightEnum_COPY_SHIFT) != 6'b000000) || ((fsm_currentState & LoadWeightEnum_COPY_BIAS) != 6'b000000)) || ((fsm_currentState & LoadWeightEnum_COPY_SCALE) != 6'b000000));
  always @(*) begin
    if(when_Weight_l147) begin
      quanData_ready = 1'b1;
    end else begin
      quanData_ready = 1'b0;
    end
  end

  assign sData_fire_3 = (sData_valid && sData_ready);
  assign when_WaCounter_l21_4 = (((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000) && sData_fire_3);
  assign when_WaCounter_l16_7 = ((indexCnt_count == 3'b111) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_7) begin
      indexCnt_valid = 1'b1;
    end else begin
      indexCnt_valid = 1'b0;
    end
  end

  assign sData_fire_4 = (sData_valid && sData_ready);
  assign when_Weight_l198 = (((3'b000 == indexCnt_count) && ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000)) && sData_fire_4);
  assign sData_fire_5 = (sData_valid && sData_ready);
  assign when_Weight_l198_1 = (((3'b001 == indexCnt_count) && ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000)) && sData_fire_5);
  assign sData_fire_6 = (sData_valid && sData_ready);
  assign when_Weight_l198_2 = (((3'b010 == indexCnt_count) && ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000)) && sData_fire_6);
  assign sData_fire_7 = (sData_valid && sData_ready);
  assign when_Weight_l198_3 = (((3'b011 == indexCnt_count) && ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000)) && sData_fire_7);
  assign sData_fire_8 = (sData_valid && sData_ready);
  assign when_Weight_l198_4 = (((3'b100 == indexCnt_count) && ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000)) && sData_fire_8);
  assign sData_fire_9 = (sData_valid && sData_ready);
  assign when_Weight_l198_5 = (((3'b101 == indexCnt_count) && ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000)) && sData_fire_9);
  assign sData_fire_10 = (sData_valid && sData_ready);
  assign when_Weight_l198_6 = (((3'b110 == indexCnt_count) && ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000)) && sData_fire_10);
  assign sData_fire_11 = (sData_valid && sData_ready);
  assign when_Weight_l198_7 = (((3'b111 == indexCnt_count) && ((fsm_currentState & LoadWeightEnum_COPY_WEIGHT) != 6'b000000)) && sData_fire_11);
  assign when_Weight_l233 = (addr_0 == _zz_when_Weight_l233);
  assign when_Weight_l233_1 = (addr_1 == _zz_when_Weight_l233_1);
  assign when_Weight_l233_2 = (addr_2 == _zz_when_Weight_l233_2);
  assign when_Weight_l233_3 = (addr_3 == _zz_when_Weight_l233_3);
  assign when_Weight_l233_4 = (addr_4 == _zz_when_Weight_l233_4);
  assign when_Weight_l233_5 = (addr_5 == _zz_when_Weight_l233_5);
  assign when_Weight_l233_6 = (addr_6 == _zz_when_Weight_l233_6);
  assign when_Weight_l233_7 = (addr_7 == _zz_when_Weight_l233_7);
  assign weightRam_0_wea = weav_0;
  assign weightRam_0_addra = addr_0;
  assign weightRam_0_addrb = weightRead_0_addr;
  assign weightRead_0_data = weightRam_0_doutb;
  assign weightRam_1_wea = weav_1;
  assign weightRam_1_addra = addr_1;
  assign weightRam_1_addrb = weightRead_1_addr;
  assign weightRead_1_data = weightRam_1_doutb;
  assign weightRam_2_wea = weav_2;
  assign weightRam_2_addra = addr_2;
  assign weightRam_2_addrb = weightRead_2_addr;
  assign weightRead_2_data = weightRam_2_doutb;
  assign weightRam_3_wea = weav_3;
  assign weightRam_3_addra = addr_3;
  assign weightRam_3_addrb = weightRead_3_addr;
  assign weightRead_3_data = weightRam_3_doutb;
  assign weightRam_4_wea = weav_4;
  assign weightRam_4_addra = addr_4;
  assign weightRam_4_addrb = weightRead_4_addr;
  assign weightRead_4_data = weightRam_4_doutb;
  assign weightRam_5_wea = weav_5;
  assign weightRam_5_addra = addr_5;
  assign weightRam_5_addrb = weightRead_5_addr;
  assign weightRead_5_data = weightRam_5_doutb;
  assign weightRam_6_wea = weav_6;
  assign weightRam_6_addra = addr_6;
  assign weightRam_6_addrb = weightRead_6_addr;
  assign weightRead_6_data = weightRam_6_doutb;
  assign weightRam_7_wea = weav_7;
  assign weightRam_7_addra = addr_7;
  assign weightRam_7_addrb = weightRead_7_addr;
  assign weightRead_7_data = weightRam_7_doutb;
  assign weightRamRead_0_0 = weightRead_0_data[71 : 0];
  assign weightRamRead_0_1 = weightRead_0_data[143 : 72];
  assign weightRamRead_0_2 = weightRead_0_data[215 : 144];
  assign weightRamRead_0_3 = weightRead_0_data[287 : 216];
  assign weightRamRead_0_4 = weightRead_0_data[359 : 288];
  assign weightRamRead_0_5 = weightRead_0_data[431 : 360];
  assign weightRamRead_0_6 = weightRead_0_data[503 : 432];
  assign weightRamRead_0_7 = weightRead_0_data[575 : 504];
  assign weightRamRead_1_0 = weightRead_1_data[71 : 0];
  assign weightRamRead_1_1 = weightRead_1_data[143 : 72];
  assign weightRamRead_1_2 = weightRead_1_data[215 : 144];
  assign weightRamRead_1_3 = weightRead_1_data[287 : 216];
  assign weightRamRead_1_4 = weightRead_1_data[359 : 288];
  assign weightRamRead_1_5 = weightRead_1_data[431 : 360];
  assign weightRamRead_1_6 = weightRead_1_data[503 : 432];
  assign weightRamRead_1_7 = weightRead_1_data[575 : 504];
  assign weightRamRead_2_0 = weightRead_2_data[71 : 0];
  assign weightRamRead_2_1 = weightRead_2_data[143 : 72];
  assign weightRamRead_2_2 = weightRead_2_data[215 : 144];
  assign weightRamRead_2_3 = weightRead_2_data[287 : 216];
  assign weightRamRead_2_4 = weightRead_2_data[359 : 288];
  assign weightRamRead_2_5 = weightRead_2_data[431 : 360];
  assign weightRamRead_2_6 = weightRead_2_data[503 : 432];
  assign weightRamRead_2_7 = weightRead_2_data[575 : 504];
  assign weightRamRead_3_0 = weightRead_3_data[71 : 0];
  assign weightRamRead_3_1 = weightRead_3_data[143 : 72];
  assign weightRamRead_3_2 = weightRead_3_data[215 : 144];
  assign weightRamRead_3_3 = weightRead_3_data[287 : 216];
  assign weightRamRead_3_4 = weightRead_3_data[359 : 288];
  assign weightRamRead_3_5 = weightRead_3_data[431 : 360];
  assign weightRamRead_3_6 = weightRead_3_data[503 : 432];
  assign weightRamRead_3_7 = weightRead_3_data[575 : 504];
  assign weightRamRead_4_0 = weightRead_4_data[71 : 0];
  assign weightRamRead_4_1 = weightRead_4_data[143 : 72];
  assign weightRamRead_4_2 = weightRead_4_data[215 : 144];
  assign weightRamRead_4_3 = weightRead_4_data[287 : 216];
  assign weightRamRead_4_4 = weightRead_4_data[359 : 288];
  assign weightRamRead_4_5 = weightRead_4_data[431 : 360];
  assign weightRamRead_4_6 = weightRead_4_data[503 : 432];
  assign weightRamRead_4_7 = weightRead_4_data[575 : 504];
  assign weightRamRead_5_0 = weightRead_5_data[71 : 0];
  assign weightRamRead_5_1 = weightRead_5_data[143 : 72];
  assign weightRamRead_5_2 = weightRead_5_data[215 : 144];
  assign weightRamRead_5_3 = weightRead_5_data[287 : 216];
  assign weightRamRead_5_4 = weightRead_5_data[359 : 288];
  assign weightRamRead_5_5 = weightRead_5_data[431 : 360];
  assign weightRamRead_5_6 = weightRead_5_data[503 : 432];
  assign weightRamRead_5_7 = weightRead_5_data[575 : 504];
  assign weightRamRead_6_0 = weightRead_6_data[71 : 0];
  assign weightRamRead_6_1 = weightRead_6_data[143 : 72];
  assign weightRamRead_6_2 = weightRead_6_data[215 : 144];
  assign weightRamRead_6_3 = weightRead_6_data[287 : 216];
  assign weightRamRead_6_4 = weightRead_6_data[359 : 288];
  assign weightRamRead_6_5 = weightRead_6_data[431 : 360];
  assign weightRamRead_6_6 = weightRead_6_data[503 : 432];
  assign weightRamRead_6_7 = weightRead_6_data[575 : 504];
  assign weightRamRead_7_0 = weightRead_7_data[71 : 0];
  assign weightRamRead_7_1 = weightRead_7_data[143 : 72];
  assign weightRamRead_7_2 = weightRead_7_data[215 : 144];
  assign weightRamRead_7_3 = weightRead_7_data[287 : 216];
  assign weightRamRead_7_4 = weightRead_7_data[359 : 288];
  assign weightRamRead_7_5 = weightRead_7_data[431 : 360];
  assign weightRamRead_7_6 = weightRead_7_data[503 : 432];
  assign weightRamRead_7_7 = weightRead_7_data[575 : 504];
  assign quanData_fire = (quanData_valid && quanData_ready);
  assign when_WaCounter_l21_5 = (((fsm_currentState & LoadWeightEnum_COPY_BIAS) != 6'b000000) && quanData_fire);
  assign quanData_fire_1 = (quanData_valid && quanData_ready);
  assign when_WaCounter_l16_8 = ((copyBias_copyCnt_count == _zz_when_WaCounter_l16_8) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_8) begin
      copyBias_copyCnt_valid = 1'b1;
    end else begin
      copyBias_copyCnt_valid = 1'b0;
    end
  end

  assign copyBias_ram_wea = (((fsm_currentState & LoadWeightEnum_COPY_BIAS) != 6'b000000) && quanData_fire_1);
  assign copyBias_ram_dina = quanData_payload;
  assign copyBias_ram_addra = copyBias_copyCnt_count;
  assign copyBias_ram_addrb = biasRead_addr;
  assign biasRead_data = copyBias_ram_doutb;
  assign fsm_copyBiasEnd = copyBias_copyCnt_valid;
  assign quanData_fire_2 = (quanData_valid && quanData_ready);
  assign when_WaCounter_l21_6 = (((fsm_currentState & LoadWeightEnum_COPY_SCALE) != 6'b000000) && quanData_fire_2);
  assign quanData_fire_3 = (quanData_valid && quanData_ready);
  assign when_WaCounter_l16_9 = ((copyScale_copyCnt_count == _zz_when_WaCounter_l16_9) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_9) begin
      copyScale_copyCnt_valid = 1'b1;
    end else begin
      copyScale_copyCnt_valid = 1'b0;
    end
  end

  assign copyScale_ram_wea = (((fsm_currentState & LoadWeightEnum_COPY_SCALE) != 6'b000000) && quanData_fire_3);
  assign copyScale_ram_dina = quanData_payload;
  assign copyScale_ram_addra = copyScale_copyCnt_count;
  assign copyScale_ram_addrb = scaleRead_addr;
  assign scaleRead_data = copyScale_ram_doutb;
  assign fsm_copyScaleEnd = copyScale_copyCnt_valid;
  assign quanData_fire_4 = (quanData_valid && quanData_ready);
  assign when_WaCounter_l21_7 = (((fsm_currentState & LoadWeightEnum_COPY_SHIFT) != 6'b000000) && quanData_fire_4);
  assign quanData_fire_5 = (quanData_valid && quanData_ready);
  assign when_WaCounter_l16_10 = ((copyShift_copyCnt_count == _zz_when_WaCounter_l16_10) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_10) begin
      copyShift_copyCnt_valid = 1'b1;
    end else begin
      copyShift_copyCnt_valid = 1'b0;
    end
  end

  assign copyShift_ram_wea = (((fsm_currentState & LoadWeightEnum_COPY_SHIFT) != 6'b000000) && quanData_fire_5);
  assign copyShift_ram_dina = quanData_payload;
  assign copyShift_ram_addra = copyShift_copyCnt_count;
  assign copyShift_ram_addrb = shiftRead_addr;
  assign shiftRead_data = copyShift_ram_doutb;
  assign fsm_copyShiftEnd = copyShift_copyCnt_valid;
  assign when_WaUtil_l29 = (((fsm_currentState & LoadWeightEnum_COPY_SHIFT) != 6'b000000) && ((fsm_nextState & LoadWeightEnum_IDLE) != 6'b000000));
  always @(*) begin
    if(when_WaUtil_l29) begin
      copyWeightDone = 1'b1;
    end else begin
      copyWeightDone = 1'b0;
    end
  end

  always @(posedge clk) begin
    if(reset || softReset) begin
      fsm_currentState <= LoadWeightEnum_IDLE;
      init_count <= 3'b000;
      copyWeightCnt_count <= 13'h0;
      copyWeightAllCnt_count <= 4'b0000;
      channelInCnt_count <= 9'h0;
      channelOutCnt_count <= 12'h0;
      computeChannelOut_count <= 3'b000;
      times_count <= 3'b000;
      copyWeightEnd_reg <= 1'b0;
      weav_0 <= 1'b0;
      weav_1 <= 1'b0;
      weav_2 <= 1'b0;
      weav_3 <= 1'b0;
      weav_4 <= 1'b0;
      weav_5 <= 1'b0;
      weav_6 <= 1'b0;
      weav_7 <= 1'b0;
      indexCnt_count <= 3'b000;
      addr_0 <= 13'h0;
      addr_1 <= 13'h0;
      addr_2 <= 13'h0;
      addr_3 <= 13'h0;
      addr_4 <= 13'h0;
      addr_5 <= 13'h0;
      addr_6 <= 13'h0;
      addr_7 <= 13'h0;
      sDataReg <= 72'h0;
      copyBias_copyCnt_count <= 9'h0;
      copyScale_copyCnt_count <= 9'h0;
      copyShift_copyCnt_count <= 9'h0;
    end else begin
      fsm_currentState <= fsm_nextState;
      if(when_WaCounter_l21) begin
        init_count <= (init_count + 3'b001);
        if(init_valid) begin
          init_count <= 3'b000;
        end
      end
      if(when_WaCounter_l21_1) begin
        copyWeightCnt_count <= (copyWeightCnt_count + 13'h0001);
        if(copyWeightCnt_valid) begin
          copyWeightCnt_count <= 13'h0;
        end
      end
      if(copyWeightCnt_valid) begin
        copyWeightAllCnt_count <= (copyWeightAllCnt_count + 4'b0001);
        if(copyWeightAllCnt_valid) begin
          copyWeightAllCnt_count <= 4'b0000;
        end
      end
      if(when_WaCounter_l21_2) begin
        channelInCnt_count <= (channelInCnt_count + 9'h001);
        if(channelInCnt_valid) begin
          channelInCnt_count <= 9'h0;
        end
      end
      if(channelInCnt_valid) begin
        channelOutCnt_count <= (channelOutCnt_count + 12'h001);
        if(channelOutCnt_valid) begin
          channelOutCnt_count <= 12'h0;
        end
      end
      if(when_WaCounter_l21_3) begin
        computeChannelOut_count <= (computeChannelOut_count + 3'b001);
        if(computeChannelOut_valid) begin
          computeChannelOut_count <= 3'b000;
        end
      end
      if(computeChannelOut_valid) begin
        times_count <= (times_count + 3'b001);
        if(times_valid) begin
          times_count <= 3'b000;
        end
      end
      if(when_Weight_l120) begin
        copyWeightCnt_count <= 13'h0;
        copyWeightAllCnt_count <= 4'b0000;
        channelInCnt_count <= 9'h0;
        channelOutCnt_count <= 12'h0;
      end
      if(fsm_copyWeightEnd) begin
        copyWeightCnt_count <= 13'h0;
        copyWeightAllCnt_count <= 4'b0000;
      end
      copyWeightEnd_reg <= fsm_copyWeightEnd;
      if(when_WaCounter_l21_4) begin
        indexCnt_count <= (indexCnt_count + 3'b001);
        if(indexCnt_valid) begin
          indexCnt_count <= 3'b000;
        end
      end
      if(when_Weight_l198) begin
        weav_0 <= 1'b1;
      end else begin
        weav_0 <= 1'b0;
      end
      if(when_Weight_l198_1) begin
        weav_1 <= 1'b1;
      end else begin
        weav_1 <= 1'b0;
      end
      if(when_Weight_l198_2) begin
        weav_2 <= 1'b1;
      end else begin
        weav_2 <= 1'b0;
      end
      if(when_Weight_l198_3) begin
        weav_3 <= 1'b1;
      end else begin
        weav_3 <= 1'b0;
      end
      if(when_Weight_l198_4) begin
        weav_4 <= 1'b1;
      end else begin
        weav_4 <= 1'b0;
      end
      if(when_Weight_l198_5) begin
        weav_5 <= 1'b1;
      end else begin
        weav_5 <= 1'b0;
      end
      if(when_Weight_l198_6) begin
        weav_6 <= 1'b1;
      end else begin
        weav_6 <= 1'b0;
      end
      if(when_Weight_l198_7) begin
        weav_7 <= 1'b1;
      end else begin
        weav_7 <= 1'b0;
      end
      if(weav_0) begin
        if(when_Weight_l233) begin
          addr_0 <= 13'h0;
        end else begin
          addr_0 <= (addr_0 + 13'h0001);
        end
      end
      if(weav_1) begin
        if(when_Weight_l233_1) begin
          addr_1 <= 13'h0;
        end else begin
          addr_1 <= (addr_1 + 13'h0001);
        end
      end
      if(weav_2) begin
        if(when_Weight_l233_2) begin
          addr_2 <= 13'h0;
        end else begin
          addr_2 <= (addr_2 + 13'h0001);
        end
      end
      if(weav_3) begin
        if(when_Weight_l233_3) begin
          addr_3 <= 13'h0;
        end else begin
          addr_3 <= (addr_3 + 13'h0001);
        end
      end
      if(weav_4) begin
        if(when_Weight_l233_4) begin
          addr_4 <= 13'h0;
        end else begin
          addr_4 <= (addr_4 + 13'h0001);
        end
      end
      if(weav_5) begin
        if(when_Weight_l233_5) begin
          addr_5 <= 13'h0;
        end else begin
          addr_5 <= (addr_5 + 13'h0001);
        end
      end
      if(weav_6) begin
        if(when_Weight_l233_6) begin
          addr_6 <= 13'h0;
        end else begin
          addr_6 <= (addr_6 + 13'h0001);
        end
      end
      if(weav_7) begin
        if(when_Weight_l233_7) begin
          addr_7 <= 13'h0;
        end else begin
          addr_7 <= (addr_7 + 13'h0001);
        end
      end
      sDataReg <= sData_payload;
      if(when_WaCounter_l21_5) begin
        copyBias_copyCnt_count <= (copyBias_copyCnt_count + 9'h001);
        if(copyBias_copyCnt_valid) begin
          copyBias_copyCnt_count <= 9'h0;
        end
      end
      if(when_WaCounter_l21_6) begin
        copyScale_copyCnt_count <= (copyScale_copyCnt_count + 9'h001);
        if(copyScale_copyCnt_valid) begin
          copyScale_copyCnt_count <= 9'h0;
        end
      end
      if(when_WaCounter_l21_7) begin
        copyShift_copyCnt_count <= (copyShift_copyCnt_count + 9'h001);
        if(copyShift_copyCnt_valid) begin
          copyShift_copyCnt_count <= 9'h0;
        end
      end
      if(fsm_copyShiftEnd) begin
        copyShift_copyCnt_count <= 9'h0;
      end
    end
  end


endmodule
