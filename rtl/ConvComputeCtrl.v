// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : ConvComputeCtrl
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module ConvComputeCtrl (
  input               start,
  output reg          mDataValid,
  input               mDataReady,
  output              normValid,
  output              normPreValid,
  output reg          normEnd,
  input               sDataReady,
  input      [8:0]    rowNumIn,
  input      [8:0]    colNumIn,
  input      [11:0]   channelIn,
  input      [11:0]   channelOut,
  output     [5:0]    featureMemReadAddr,
  output     [5:0]    featureMemWriteAddr,
  output reg          featureMemWriteReady,
  output     [9:0]    weightReadAddr_0,
  output     [9:0]    weightReadAddr_1,
  output     [9:0]    weightReadAddr_2,
  output     [9:0]    weightReadAddr_3,
  output     [9:0]    weightReadAddr_4,
  output     [9:0]    weightReadAddr_5,
  output     [9:0]    weightReadAddr_6,
  output     [9:0]    weightReadAddr_7,
  output     [6:0]    biasReadAddr,
  output     [6:0]    scaleReadAddr,
  output     [6:0]    shiftReadAddr,
  input               activationEn,
  output     [10:0]   sCount,
  output     [10:0]   mCount,
  input      [1:0]    convType,
  output              weightCE,
  output              featureCE,
  output              endEnd,
  input               clk,
  input               reset,
  input               softReset
);
  localparam ConvComputeCtrlEnum_IDLE = 6'd1;
  localparam ConvComputeCtrlEnum_INIT = 6'd2;
  localparam ConvComputeCtrlEnum_DATA_READY = 6'd4;
  localparam ConvComputeCtrlEnum_FIFO_READY = 6'd8;
  localparam ConvComputeCtrlEnum_COMPUTE = 6'd16;
  localparam ConvComputeCtrlEnum_END_1 = 6'd32;

  wire       [8:0]    _zz_temp;
  wire       [5:0]    _zz_temp_1;
  wire       [31:0]   _zz_when_WaCounter_l21_2;
  wire       [29:0]   _zz_when_WaCounter_l21_2_1;
  wire       [20:0]   _zz_when_WaCounter_l21_2_2;
  wire       [11:0]   _zz_when_WaCounter_l16_2;
  wire       [11:0]   _zz_when_WaCounter_l16_3;
  wire       [8:0]    _zz_when_WaCounter_l16_3_1;
  wire       [8:0]    _zz_when_WaCounter_l16_4;
  wire       [8:0]    _zz_when_WaCounter_l16_5;
  wire       [31:0]   _zz_when_WaUtil_l29_1;
  wire       [29:0]   _zz_when_WaUtil_l29_1_1;
  wire       [20:0]   _zz_when_WaUtil_l29_1_2;
  wire       [31:0]   _zz_when_ConvComputeCtrl_l217;
  wire       [29:0]   _zz_when_ConvComputeCtrl_l217_1;
  wire       [29:0]   _zz_when_ConvComputeCtrl_l217_2;
  wire       [20:0]   _zz_when_ConvComputeCtrl_l217_3;
  wire       [31:0]   _zz_when_ConvComputeCtrl_l217_1_1;
  wire       [29:0]   _zz_when_ConvComputeCtrl_l217_1_2;
  wire       [29:0]   _zz_when_ConvComputeCtrl_l217_1_3;
  wire       [20:0]   _zz_when_ConvComputeCtrl_l217_1_4;
  wire       [31:0]   _zz_when_ConvComputeCtrl_l201;
  wire       [29:0]   _zz_when_ConvComputeCtrl_l201_1;
  wire       [20:0]   _zz_when_ConvComputeCtrl_l201_2;
  wire       [31:0]   _zz_when_ConvComputeCtrl_l201_1_1;
  wire       [29:0]   _zz_when_ConvComputeCtrl_l201_1_2;
  wire       [20:0]   _zz_when_ConvComputeCtrl_l201_1_3;
  wire       [8:0]    _zz_when_WaCounter_l16_6;
  wire       [8:0]    _zz_when_WaCounter_l16_6_1;
  wire                convComputeCtrlFsm_start;
  wire                convComputeCtrlFsm_dataReady;
  wire                convComputeCtrlFsm_fifoReady;
  reg                 convComputeCtrlFsm_initEnd;
  reg                 convComputeCtrlFsm_computeEnd;
  reg                 convComputeCtrlFsm_endEnd;
  reg        [5:0]    convComputeCtrlFsm_currentState;
  reg        [5:0]    convComputeCtrlFsm_nextState;
  wire                when_WaCounter_l21;
  reg        [2:0]    initCnt_count;
  reg                 initCnt_valid;
  wire                when_WaCounter_l16;
  reg        [11:0]   temp;
  reg        [11:0]   channelInTimes;
  wire                when_WaCounter_l21_1;
  reg        [31:0]   ctrlCnt_count;
  reg                 ctrlCnt_valid;
  wire                when_WaCounter_l16_1;
  reg        [8:0]    channelOutTimes;
  wire                when_WaCounter_l21_2;
  reg        [11:0]   channelInCnt_count;
  reg                 channelInCnt_valid;
  wire                when_WaCounter_l16_2;
  wire                when_WaCounter_l21_3;
  reg        [11:0]   channelOutCnt_count;
  reg                 channelOutCnt_valid;
  wire                when_WaCounter_l16_3;
  wire                when_WaCounter_l21_4;
  reg        [8:0]    columnCnt_count;
  reg                 columnCnt_valid;
  wire                when_WaCounter_l16_4;
  wire                when_WaCounter_l21_5;
  reg        [8:0]    rowCnt_count;
  reg                 rowCnt_valid;
  wire                when_WaCounter_l16_5;
  wire                when_ConvComputeCtrl_l162;
  wire                when_ConvComputeCtrl_l168;
  reg                 _zz_computeEndDly;
  reg                 _zz_computeEndDly_1;
  reg                 _zz_computeEndDly_2;
  reg                 _zz_computeEndDly_3;
  reg                 _zz_computeEndDly_4;
  reg                 _zz_computeEndDly_5;
  reg                 _zz_computeEndDly_6;
  reg                 _zz_computeEndDly_7;
  reg                 computeEndDly;
  wire                when_WaUtil_l29;
  wire                when_WaUtil_l29_1;
  (* max_fanout = "50" *) reg        [5:0]    featureMemWriteAddr_1;
  wire                when_ConvComputeCtrl_l188;
  (* max_fanout = "50" , max_fanout = "50" *) reg                 weightCETemp;
  wire                when_ConvComputeCtrl_l217;
  (* max_fanout = "50" *) reg                 featureCETemp;
  wire                when_ConvComputeCtrl_l217_1;
  (* max_fanout = "50" *) reg                 featureCETemp_delay_1;
  (* max_fanout = "50" *) reg        [5:0]    featureMemReadAddrTemp;
  wire                when_ConvComputeCtrl_l201;
  reg        [5:0]    featureMemReadAddrTemp_delay_1;
  (* max_fanout = "50" *) reg        [5:0]    featureMemReadAddrTemp_delay_2;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr_0_1;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr_1_1;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr_2_1;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr_3_1;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr_4_1;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr_5_1;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr_6_1;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr_7_1;
  (* max_fanout = "50" *) reg        [9:0]    weightReadAddr1;
  wire                when_ConvComputeCtrl_l202;
  wire                when_ConvComputeCtrl_l201_1;
  reg                 channelTimesAdd;
  wire                when_WaUtil_l29_2;
  reg                 channelTimesAdd_delay_1;
  reg                 channelTimesAdd_delay_2;
  reg                 channelTimesAdd_delay_3;
  reg                 channelTimesAdd_delay_4;
  reg                 channelTimesAdd_delay_5;
  reg                 channelTimesAdd_delay_6;
  reg                 channelTimesAdd_delay_7;
  reg                 channelTimesAdd_delay_8;
  reg                 channelTimesAdd_delay_9;
  reg                 channelTimesAdd_delay_10;
  reg                 channelTimesAdd_delay_11;
  reg                 channelTimesAdd_delay_12;
  reg                 normValidTemp;
  wire                when_WaUtil_l29_3;
  wire                normValidTempQ_0;
  reg                 normValidTempQ_1;
  reg                 normValidTempQ_2;
  reg                 normValidTempQ_3;
  reg                 normValidTempQ_4;
  reg                 normValidTempQ_5;
  reg                 normValidTempQ_6;
  reg                 normValidTempQ_7;
  reg                 normValidTempQ_8;
  reg                 normValidTempQ_9;
  reg                 normValidTempQ_10;
  reg                 normValidTempQ_11;
  reg                 normValidTempQ_12;
  reg                 normValidTempQ_13;
  reg                 normValidTempQ_14;
  reg                 normValidTempQ_15;
  reg                 normValidTempQ_16;
  reg                 normValidTempQ_17;
  reg                 normValidTempQ_18;
  reg                 normValidTempQ_19;
  reg                 normValidTempQ_20;
  reg                 normValidTempQ_21;
  reg                 normValidTempQ_22;
  reg                 normValidTempQ_23;
  reg                 normValidTempQ_24;
  reg                 normValidTempQ_25;
  reg                 normValidTempQ_26;
  reg                 normValidTempQ_27;
  reg                 normValidTempQ_28;
  reg                 normValidTempQ_29;
  reg                 normValidTempQ_30;
  reg                 normValidTempQ_31;
  reg                 normValidTempQ_32;
  reg                 normValidTempQ_33;
  reg                 normValidTempQ_34;
  reg                 normValidTempQ_35;
  reg                 normValidTempQ_36;
  reg        [20:0]   _zz_sCount;
  reg        [6:0]    biasAddrCnt_count;
  reg                 biasAddrCnt_valid;
  wire                when_WaCounter_l16_6;
  wire       [6:0]    quanDelayTemp_0;
  reg        [6:0]    quanDelayTemp_1;
  reg        [6:0]    quanDelayTemp_2;
  reg        [6:0]    quanDelayTemp_3;
  reg        [6:0]    quanDelayTemp_4;
  reg        [6:0]    quanDelayTemp_5;
  reg        [6:0]    quanDelayTemp_6;
  reg        [6:0]    quanDelayTemp_7;
  reg        [6:0]    quanDelayTemp_8;
  reg        [6:0]    quanDelayTemp_9;
  reg        [6:0]    quanDelayTemp_10;
  `ifndef SYNTHESIS
  reg [79:0] convComputeCtrlFsm_currentState_string;
  reg [79:0] convComputeCtrlFsm_nextState_string;
  `endif


  assign _zz_temp = (channelIn >>> 3);
  assign _zz_temp_1 = (channelIn >>> 6);
  assign _zz_when_WaCounter_l21_2_1 = (_zz_when_WaCounter_l21_2_2 * colNumIn);
  assign _zz_when_WaCounter_l21_2 = {2'd0, _zz_when_WaCounter_l21_2_1};
  assign _zz_when_WaCounter_l21_2_2 = (channelInTimes * channelOutTimes);
  assign _zz_when_WaCounter_l16_2 = (channelInTimes - 12'h001);
  assign _zz_when_WaCounter_l16_3_1 = (channelOutTimes - 9'h001);
  assign _zz_when_WaCounter_l16_3 = {3'd0, _zz_when_WaCounter_l16_3_1};
  assign _zz_when_WaCounter_l16_4 = (colNumIn - 9'h001);
  assign _zz_when_WaCounter_l16_5 = (rowNumIn - 9'h001);
  assign _zz_when_WaUtil_l29_1_1 = (_zz_when_WaUtil_l29_1_2 * colNumIn);
  assign _zz_when_WaUtil_l29_1 = {2'd0, _zz_when_WaUtil_l29_1_1};
  assign _zz_when_WaUtil_l29_1_2 = (channelInTimes * channelOutTimes);
  assign _zz_when_ConvComputeCtrl_l217_1 = (_zz_when_ConvComputeCtrl_l217_2 + 30'h00000001);
  assign _zz_when_ConvComputeCtrl_l217 = {2'd0, _zz_when_ConvComputeCtrl_l217_1};
  assign _zz_when_ConvComputeCtrl_l217_2 = (_zz_when_ConvComputeCtrl_l217_3 * colNumIn);
  assign _zz_when_ConvComputeCtrl_l217_3 = (channelInTimes * channelOutTimes);
  assign _zz_when_ConvComputeCtrl_l217_1_2 = (_zz_when_ConvComputeCtrl_l217_1_3 + 30'h00000001);
  assign _zz_when_ConvComputeCtrl_l217_1_1 = {2'd0, _zz_when_ConvComputeCtrl_l217_1_2};
  assign _zz_when_ConvComputeCtrl_l217_1_3 = (_zz_when_ConvComputeCtrl_l217_1_4 * colNumIn);
  assign _zz_when_ConvComputeCtrl_l217_1_4 = (channelInTimes * channelOutTimes);
  assign _zz_when_ConvComputeCtrl_l201_1 = (_zz_when_ConvComputeCtrl_l201_2 * colNumIn);
  assign _zz_when_ConvComputeCtrl_l201 = {2'd0, _zz_when_ConvComputeCtrl_l201_1};
  assign _zz_when_ConvComputeCtrl_l201_2 = (channelInTimes * channelOutTimes);
  assign _zz_when_ConvComputeCtrl_l201_1_2 = (_zz_when_ConvComputeCtrl_l201_1_3 * colNumIn);
  assign _zz_when_ConvComputeCtrl_l201_1_1 = {2'd0, _zz_when_ConvComputeCtrl_l201_1_2};
  assign _zz_when_ConvComputeCtrl_l201_1_3 = (channelInTimes * channelOutTimes);
  assign _zz_when_WaCounter_l16_6 = {2'd0, biasAddrCnt_count};
  assign _zz_when_WaCounter_l16_6_1 = (channelOutTimes - 9'h001);
  `ifndef SYNTHESIS
  always @(*) begin
    case(convComputeCtrlFsm_currentState)
      ConvComputeCtrlEnum_IDLE : convComputeCtrlFsm_currentState_string = "IDLE      ";
      ConvComputeCtrlEnum_INIT : convComputeCtrlFsm_currentState_string = "INIT      ";
      ConvComputeCtrlEnum_DATA_READY : convComputeCtrlFsm_currentState_string = "DATA_READY";
      ConvComputeCtrlEnum_FIFO_READY : convComputeCtrlFsm_currentState_string = "FIFO_READY";
      ConvComputeCtrlEnum_COMPUTE : convComputeCtrlFsm_currentState_string = "COMPUTE   ";
      ConvComputeCtrlEnum_END_1 : convComputeCtrlFsm_currentState_string = "END_1     ";
      default : convComputeCtrlFsm_currentState_string = "??????????";
    endcase
  end
  always @(*) begin
    case(convComputeCtrlFsm_nextState)
      ConvComputeCtrlEnum_IDLE : convComputeCtrlFsm_nextState_string = "IDLE      ";
      ConvComputeCtrlEnum_INIT : convComputeCtrlFsm_nextState_string = "INIT      ";
      ConvComputeCtrlEnum_DATA_READY : convComputeCtrlFsm_nextState_string = "DATA_READY";
      ConvComputeCtrlEnum_FIFO_READY : convComputeCtrlFsm_nextState_string = "FIFO_READY";
      ConvComputeCtrlEnum_COMPUTE : convComputeCtrlFsm_nextState_string = "COMPUTE   ";
      ConvComputeCtrlEnum_END_1 : convComputeCtrlFsm_nextState_string = "END_1     ";
      default : convComputeCtrlFsm_nextState_string = "??????????";
    endcase
  end
  `endif

  always @(*) begin
    (* parallel_case *)
    case(1) // synthesis parallel_case
      (((convComputeCtrlFsm_currentState) & ConvComputeCtrlEnum_IDLE) == ConvComputeCtrlEnum_IDLE) : begin
        if(convComputeCtrlFsm_start) begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_INIT;
        end else begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_IDLE;
        end
      end
      (((convComputeCtrlFsm_currentState) & ConvComputeCtrlEnum_INIT) == ConvComputeCtrlEnum_INIT) : begin
        if(convComputeCtrlFsm_initEnd) begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_DATA_READY;
        end else begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_INIT;
        end
      end
      (((convComputeCtrlFsm_currentState) & ConvComputeCtrlEnum_DATA_READY) == ConvComputeCtrlEnum_DATA_READY) : begin
        if(convComputeCtrlFsm_dataReady) begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_FIFO_READY;
        end else begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_DATA_READY;
        end
      end
      (((convComputeCtrlFsm_currentState) & ConvComputeCtrlEnum_FIFO_READY) == ConvComputeCtrlEnum_FIFO_READY) : begin
        if(convComputeCtrlFsm_fifoReady) begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_COMPUTE;
        end else begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_FIFO_READY;
        end
      end
      (((convComputeCtrlFsm_currentState) & ConvComputeCtrlEnum_COMPUTE) == ConvComputeCtrlEnum_COMPUTE) : begin
        if(convComputeCtrlFsm_computeEnd) begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_END_1;
        end else begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_COMPUTE;
        end
      end
      default : begin
        if(convComputeCtrlFsm_endEnd) begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_IDLE;
        end else begin
          convComputeCtrlFsm_nextState = ConvComputeCtrlEnum_DATA_READY;
        end
      end
    endcase
  end

  assign convComputeCtrlFsm_start = start;
  assign convComputeCtrlFsm_dataReady = sDataReady;
  assign convComputeCtrlFsm_fifoReady = mDataReady;
  assign when_WaCounter_l21 = ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_INIT) != 6'b000000);
  assign when_WaCounter_l16 = ((initCnt_count == 3'b111) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16) begin
      initCnt_valid = 1'b1;
    end else begin
      initCnt_valid = 1'b0;
    end
  end

  always @(*) begin
    case(convType)
      2'b00, 2'b10 : begin
        temp = {3'd0, _zz_temp};
      end
      2'b01 : begin
        temp = {6'd0, _zz_temp_1};
      end
      default : begin
        temp = 12'h0;
      end
    endcase
  end

  assign when_WaCounter_l21_1 = ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000);
  assign when_WaCounter_l16_1 = ((ctrlCnt_count == 32'h00140007) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_1) begin
      ctrlCnt_valid = 1'b1;
    end else begin
      ctrlCnt_valid = 1'b0;
    end
    if(when_ConvComputeCtrl_l162) begin
      ctrlCnt_valid = 1'b0;
    end
    if(when_ConvComputeCtrl_l168) begin
      ctrlCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l21_2 = (((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && (ctrlCnt_count < _zz_when_WaCounter_l21_2));
  assign when_WaCounter_l16_2 = ((channelInCnt_count == _zz_when_WaCounter_l16_2) && ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000));
  always @(*) begin
    if(when_WaCounter_l16_2) begin
      channelInCnt_valid = 1'b1;
    end else begin
      channelInCnt_valid = 1'b0;
    end
    if(when_ConvComputeCtrl_l162) begin
      channelInCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l21_3 = (((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && channelInCnt_valid);
  assign when_WaCounter_l16_3 = ((channelOutCnt_count == _zz_when_WaCounter_l16_3) && ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000));
  always @(*) begin
    if(when_WaCounter_l16_3) begin
      channelOutCnt_valid = 1'b1;
    end else begin
      channelOutCnt_valid = 1'b0;
    end
    if(when_ConvComputeCtrl_l162) begin
      channelOutCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l21_4 = (channelInCnt_valid && channelOutCnt_valid);
  assign when_WaCounter_l16_4 = ((columnCnt_count == _zz_when_WaCounter_l16_4) && ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000));
  always @(*) begin
    if(when_WaCounter_l16_4) begin
      columnCnt_valid = 1'b1;
    end else begin
      columnCnt_valid = 1'b0;
    end
    if(when_ConvComputeCtrl_l162) begin
      columnCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l21_5 = ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_END_1) != 6'b000000);
  assign when_WaCounter_l16_5 = ((rowCnt_count == _zz_when_WaCounter_l16_5) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_5) begin
      rowCnt_valid = 1'b1;
    end else begin
      rowCnt_valid = 1'b0;
    end
  end

  assign when_ConvComputeCtrl_l162 = ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_IDLE) != 6'b000000);
  assign when_ConvComputeCtrl_l168 = ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_END_1) != 6'b000000);
  always @(*) begin
    if(computeEndDly) begin
      convComputeCtrlFsm_computeEnd = 1'b1;
    end else begin
      convComputeCtrlFsm_computeEnd = 1'b0;
    end
  end

  always @(*) begin
    if(rowCnt_valid) begin
      convComputeCtrlFsm_endEnd = 1'b1;
    end else begin
      convComputeCtrlFsm_endEnd = 1'b0;
    end
  end

  assign endEnd = (convComputeCtrlFsm_endEnd && ((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_END_1) != 6'b000000));
  assign when_WaUtil_l29 = (((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_END_1) != 6'b000000) && ((convComputeCtrlFsm_nextState & ConvComputeCtrlEnum_IDLE) != 6'b000000));
  always @(*) begin
    if(when_WaUtil_l29) begin
      normEnd = 1'b1;
    end else begin
      normEnd = 1'b0;
    end
  end

  always @(*) begin
    if(initCnt_valid) begin
      convComputeCtrlFsm_initEnd = 1'b1;
    end else begin
      convComputeCtrlFsm_initEnd = 1'b0;
    end
  end

  assign when_WaUtil_l29_1 = ((((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && (channelOutCnt_count == 12'h0)) && (ctrlCnt_count < _zz_when_WaUtil_l29_1));
  assign featureMemWriteAddr = featureMemWriteAddr_1;
  assign when_ConvComputeCtrl_l188 = ((channelOutCnt_count == 12'h0) && (channelInCnt_count == 12'h0));
  assign when_ConvComputeCtrl_l217 = ((((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && (32'h0 < ctrlCnt_count)) && (ctrlCnt_count < _zz_when_ConvComputeCtrl_l217));
  assign weightCE = weightCETemp;
  assign when_ConvComputeCtrl_l217_1 = ((((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && (32'h0 < ctrlCnt_count)) && (ctrlCnt_count < _zz_when_ConvComputeCtrl_l217_1_1));
  assign featureCE = featureCETemp_delay_1;
  assign when_ConvComputeCtrl_l201 = (((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && (ctrlCnt_count < _zz_when_ConvComputeCtrl_l201));
  assign featureMemReadAddr = featureMemReadAddrTemp_delay_2;
  assign when_ConvComputeCtrl_l202 = (channelInCnt_valid && channelOutCnt_valid);
  assign when_ConvComputeCtrl_l201_1 = (((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && (ctrlCnt_count < _zz_when_ConvComputeCtrl_l201_1_1));
  assign weightReadAddr_0 = weightReadAddr_0_1;
  assign weightReadAddr_1 = weightReadAddr_1_1;
  assign weightReadAddr_2 = weightReadAddr_2_1;
  assign weightReadAddr_3 = weightReadAddr_3_1;
  assign weightReadAddr_4 = weightReadAddr_4_1;
  assign weightReadAddr_5 = weightReadAddr_5_1;
  assign weightReadAddr_6 = weightReadAddr_6_1;
  assign weightReadAddr_7 = weightReadAddr_7_1;
  assign when_WaUtil_l29_2 = (((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && (channelInCnt_count == 12'h0));
  assign normPreValid = channelTimesAdd_delay_12;
  assign when_WaUtil_l29_3 = (((convComputeCtrlFsm_currentState & ConvComputeCtrlEnum_COMPUTE) != 6'b000000) && channelInCnt_valid);
  assign normValidTempQ_0 = normValidTemp;
  assign normValid = normValidTempQ_13;
  assign sCount = _zz_sCount[10:0];
  assign mCount = sCount;
  assign when_WaCounter_l16_6 = ((_zz_when_WaCounter_l16_6 == _zz_when_WaCounter_l16_6_1) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_6) begin
      biasAddrCnt_valid = 1'b1;
    end else begin
      biasAddrCnt_valid = 1'b0;
    end
  end

  assign biasReadAddr = biasAddrCnt_count;
  assign quanDelayTemp_0 = biasReadAddr;
  assign scaleReadAddr = biasAddrCnt_count;
  assign shiftReadAddr = biasAddrCnt_count;
  always @(*) begin
    if(activationEn) begin
      mDataValid = normValidTempQ_36;
    end else begin
      mDataValid = normValidTempQ_28;
    end
  end

  always @(posedge clk) begin
    if(reset || softReset) begin
      featureMemWriteReady <= 1'b0;
      convComputeCtrlFsm_currentState <= ConvComputeCtrlEnum_IDLE;
      initCnt_count <= 3'b000;
      ctrlCnt_count <= 32'h0;
      channelInCnt_count <= 12'h0;
      channelOutCnt_count <= 12'h0;
      columnCnt_count <= 9'h0;
      rowCnt_count <= 9'h0;
      featureMemWriteAddr_1 <= 6'h0;
      weightCETemp <= 1'b0;
      featureCETemp <= 1'b0;
      featureMemReadAddrTemp <= 6'h0;
      weightReadAddr_0_1 <= 10'h0;
      weightReadAddr_1_1 <= 10'h0;
      weightReadAddr_2_1 <= 10'h0;
      weightReadAddr_3_1 <= 10'h0;
      weightReadAddr_4_1 <= 10'h0;
      weightReadAddr_5_1 <= 10'h0;
      weightReadAddr_6_1 <= 10'h0;
      weightReadAddr_7_1 <= 10'h0;
      weightReadAddr1 <= 10'h0;
      channelTimesAdd <= 1'b0;
      normValidTemp <= 1'b0;
      biasAddrCnt_count <= 7'h0;
    end else begin
      convComputeCtrlFsm_currentState <= convComputeCtrlFsm_nextState;
      if(when_WaCounter_l21) begin
        initCnt_count <= (initCnt_count + 3'b001);
        if(initCnt_valid) begin
          initCnt_count <= 3'b000;
        end
      end
      if(when_WaCounter_l21_1) begin
        ctrlCnt_count <= (ctrlCnt_count + 32'h00000001);
        if(ctrlCnt_valid) begin
          ctrlCnt_count <= 32'h0;
        end
      end
      if(when_WaCounter_l21_2) begin
        channelInCnt_count <= (channelInCnt_count + 12'h001);
        if(channelInCnt_valid) begin
          channelInCnt_count <= 12'h0;
        end
      end
      if(when_WaCounter_l21_3) begin
        channelOutCnt_count <= (channelOutCnt_count + 12'h001);
        if(channelOutCnt_valid) begin
          channelOutCnt_count <= 12'h0;
        end
      end
      if(when_WaCounter_l21_4) begin
        columnCnt_count <= (columnCnt_count + 9'h001);
        if(columnCnt_valid) begin
          columnCnt_count <= 9'h0;
        end
      end
      if(when_WaCounter_l21_5) begin
        rowCnt_count <= (rowCnt_count + 9'h001);
        if(rowCnt_valid) begin
          rowCnt_count <= 9'h0;
        end
      end
      if(when_ConvComputeCtrl_l162) begin
        channelInCnt_count <= 12'h0;
        channelOutCnt_count <= 12'h0;
        columnCnt_count <= 9'h0;
        ctrlCnt_count <= 32'h0;
      end
      if(when_ConvComputeCtrl_l168) begin
        ctrlCnt_count <= 32'h0;
      end
      if(when_WaUtil_l29_1) begin
        featureMemWriteReady <= 1'b1;
      end else begin
        featureMemWriteReady <= 1'b0;
      end
      if(when_ConvComputeCtrl_l188) begin
        featureMemWriteAddr_1 <= 6'h0;
      end else begin
        if(featureMemWriteReady) begin
          featureMemWriteAddr_1 <= (featureMemWriteAddr_1 + 6'h01);
        end else begin
          featureMemWriteAddr_1 <= 6'h0;
        end
      end
      if(when_ConvComputeCtrl_l217) begin
        weightCETemp <= 1'b1;
      end else begin
        weightCETemp <= 1'b0;
      end
      if(when_ConvComputeCtrl_l217_1) begin
        featureCETemp <= 1'b1;
      end else begin
        featureCETemp <= 1'b0;
      end
      if(when_ConvComputeCtrl_l201) begin
        if(channelInCnt_valid) begin
          featureMemReadAddrTemp <= 6'h0;
        end else begin
          featureMemReadAddrTemp <= (featureMemReadAddrTemp + 6'h01);
        end
      end else begin
        featureMemReadAddrTemp <= 6'h0;
      end
      if(when_ConvComputeCtrl_l201_1) begin
        if(when_ConvComputeCtrl_l202) begin
          weightReadAddr1 <= 10'h0;
        end else begin
          weightReadAddr1 <= (weightReadAddr1 + 10'h001);
        end
      end else begin
        weightReadAddr1 <= 10'h0;
      end
      weightReadAddr_0_1 <= weightReadAddr1;
      weightReadAddr_1_1 <= weightReadAddr_0_1;
      weightReadAddr_2_1 <= weightReadAddr_1_1;
      weightReadAddr_3_1 <= weightReadAddr_2_1;
      weightReadAddr_4_1 <= weightReadAddr_3_1;
      weightReadAddr_5_1 <= weightReadAddr_4_1;
      weightReadAddr_6_1 <= weightReadAddr_5_1;
      weightReadAddr_7_1 <= weightReadAddr_6_1;
      if(when_WaUtil_l29_2) begin
        channelTimesAdd <= 1'b1;
      end else begin
        channelTimesAdd <= 1'b0;
      end
      if(when_WaUtil_l29_3) begin
        normValidTemp <= 1'b1;
      end else begin
        normValidTemp <= 1'b0;
      end
      if(normValidTempQ_12) begin
        biasAddrCnt_count <= (biasAddrCnt_count + 7'h01);
        if(biasAddrCnt_valid) begin
          biasAddrCnt_count <= 7'h0;
        end
      end
    end
  end

  always @(posedge clk) begin
    channelInTimes <= temp;
    channelOutTimes <= (channelOut >>> 3);
    _zz_computeEndDly <= ((channelInCnt_valid && channelOutCnt_valid) && columnCnt_valid);
    _zz_computeEndDly_1 <= _zz_computeEndDly;
    _zz_computeEndDly_2 <= _zz_computeEndDly_1;
    _zz_computeEndDly_3 <= _zz_computeEndDly_2;
    _zz_computeEndDly_4 <= _zz_computeEndDly_3;
    _zz_computeEndDly_5 <= _zz_computeEndDly_4;
    _zz_computeEndDly_6 <= _zz_computeEndDly_5;
    _zz_computeEndDly_7 <= _zz_computeEndDly_6;
    computeEndDly <= _zz_computeEndDly_7;
    featureCETemp_delay_1 <= featureCETemp;
    featureMemReadAddrTemp_delay_1 <= featureMemReadAddrTemp;
    featureMemReadAddrTemp_delay_2 <= featureMemReadAddrTemp_delay_1;
    channelTimesAdd_delay_1 <= channelTimesAdd;
    channelTimesAdd_delay_2 <= channelTimesAdd_delay_1;
    channelTimesAdd_delay_3 <= channelTimesAdd_delay_2;
    channelTimesAdd_delay_4 <= channelTimesAdd_delay_3;
    channelTimesAdd_delay_5 <= channelTimesAdd_delay_4;
    channelTimesAdd_delay_6 <= channelTimesAdd_delay_5;
    channelTimesAdd_delay_7 <= channelTimesAdd_delay_6;
    channelTimesAdd_delay_8 <= channelTimesAdd_delay_7;
    channelTimesAdd_delay_9 <= channelTimesAdd_delay_8;
    channelTimesAdd_delay_10 <= channelTimesAdd_delay_9;
    channelTimesAdd_delay_11 <= channelTimesAdd_delay_10;
    channelTimesAdd_delay_12 <= channelTimesAdd_delay_11;
    normValidTempQ_1 <= normValidTempQ_0;
    normValidTempQ_2 <= normValidTempQ_1;
    normValidTempQ_3 <= normValidTempQ_2;
    normValidTempQ_4 <= normValidTempQ_3;
    normValidTempQ_5 <= normValidTempQ_4;
    normValidTempQ_6 <= normValidTempQ_5;
    normValidTempQ_7 <= normValidTempQ_6;
    normValidTempQ_8 <= normValidTempQ_7;
    normValidTempQ_9 <= normValidTempQ_8;
    normValidTempQ_10 <= normValidTempQ_9;
    normValidTempQ_11 <= normValidTempQ_10;
    normValidTempQ_12 <= normValidTempQ_11;
    normValidTempQ_13 <= normValidTempQ_12;
    normValidTempQ_14 <= normValidTempQ_13;
    normValidTempQ_15 <= normValidTempQ_14;
    normValidTempQ_16 <= normValidTempQ_15;
    normValidTempQ_17 <= normValidTempQ_16;
    normValidTempQ_18 <= normValidTempQ_17;
    normValidTempQ_19 <= normValidTempQ_18;
    normValidTempQ_20 <= normValidTempQ_19;
    normValidTempQ_21 <= normValidTempQ_20;
    normValidTempQ_22 <= normValidTempQ_21;
    normValidTempQ_23 <= normValidTempQ_22;
    normValidTempQ_24 <= normValidTempQ_23;
    normValidTempQ_25 <= normValidTempQ_24;
    normValidTempQ_26 <= normValidTempQ_25;
    normValidTempQ_27 <= normValidTempQ_26;
    normValidTempQ_28 <= normValidTempQ_27;
    normValidTempQ_29 <= normValidTempQ_28;
    normValidTempQ_30 <= normValidTempQ_29;
    normValidTempQ_31 <= normValidTempQ_30;
    normValidTempQ_32 <= normValidTempQ_31;
    normValidTempQ_33 <= normValidTempQ_32;
    normValidTempQ_34 <= normValidTempQ_33;
    normValidTempQ_35 <= normValidTempQ_34;
    normValidTempQ_36 <= normValidTempQ_35;
    _zz_sCount <= (colNumIn * channelInTimes);
    quanDelayTemp_1 <= quanDelayTemp_0;
    quanDelayTemp_2 <= quanDelayTemp_1;
    quanDelayTemp_3 <= quanDelayTemp_2;
    quanDelayTemp_4 <= quanDelayTemp_3;
    quanDelayTemp_5 <= quanDelayTemp_4;
    quanDelayTemp_6 <= quanDelayTemp_5;
    quanDelayTemp_7 <= quanDelayTemp_6;
    quanDelayTemp_8 <= quanDelayTemp_7;
    quanDelayTemp_9 <= quanDelayTemp_8;
    quanDelayTemp_10 <= quanDelayTemp_9;
  end


endmodule
