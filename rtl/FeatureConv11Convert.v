// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : FeatureConv11Convert
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module FeatureConv11Convert (
  input               io_sData_valid,
  output reg          io_sData_ready,
  input      [63:0]   io_sData_payload,
  output              io_mData_mData_0_valid,
  output     [63:0]   io_mData_mData_0_payload,
  output              io_mData_mData_1_valid,
  output     [63:0]   io_mData_mData_1_payload,
  output              io_mData_mData_2_valid,
  output     [63:0]   io_mData_mData_2_payload,
  output              io_mData_mData_3_valid,
  output     [63:0]   io_mData_mData_3_payload,
  output              io_mData_mData_4_valid,
  output     [63:0]   io_mData_mData_4_payload,
  output              io_mData_mData_5_valid,
  output     [63:0]   io_mData_mData_5_payload,
  output              io_mData_mData_6_valid,
  output     [63:0]   io_mData_mData_6_payload,
  output              io_mData_mData_7_valid,
  output     [63:0]   io_mData_mData_7_payload,
  output              io_mData_mData_8_valid,
  output     [63:0]   io_mData_mData_8_payload,
  input               io_mData_ready,
  input      [8:0]    io_rowNumIn,
  input      [8:0]    io_colNumIn,
  input               io_start,
  input      [11:0]   io_channelIn,
  input               clk,
  input               reset,
  input               softReset
);
  localparam FeatureWidthConvertEnum_IDLE = 5'd1;
  localparam FeatureWidthConvertEnum_INIT = 5'd2;
  localparam FeatureWidthConvertEnum_FIFO_READY = 5'd4;
  localparam FeatureWidthConvertEnum_SEND = 5'd8;
  localparam FeatureWidthConvertEnum_END_1 = 5'd16;

  wire       [11:0]   _zz_when_WaCounter_l16_1;
  wire       [8:0]    _zz_when_WaCounter_l16_1_1;
  wire       [8:0]    _zz_when_WaCounter_l16_2;
  wire       [8:0]    _zz_when_WaCounter_l16_3;
  wire                fsm_initEnd;
  wire                fsm_fifoReady;
  wire                fsm_sendEnd;
  reg                 fsm_last;
  reg        [4:0]    fsm_currentState;
  reg        [4:0]    fsm_nextState;
  wire                when_WaCounter_l21;
  reg        [2:0]    initCnt_count;
  reg                 initCnt_valid;
  wire                when_WaCounter_l16;
  reg        [8:0]    channelInTimes;
  wire                io_sData_fire;
  reg        [11:0]   channelCnt_count;
  reg                 channelCnt_valid;
  wire                when_WaCounter_l16_1;
  reg        [8:0]    columnCnt_count;
  reg                 columnCnt_valid;
  wire                when_WaCounter_l16_2;
  wire                when_WaCounter_l21_1;
  reg        [8:0]    rowCnt_count;
  reg                 rowCnt_valid;
  wire                when_WaCounter_l16_3;
  wire                io_sData_fire_1;
  wire                io_sData_fire_2;
  wire                io_sData_fire_3;
  wire                io_sData_fire_4;
  wire                io_sData_fire_5;
  wire                io_sData_fire_6;
  wire                io_sData_fire_7;
  wire                io_sData_fire_8;
  wire                io_sData_fire_9;
  wire                when_FeatureConv11Convert_l97;
  `ifndef SYNTHESIS
  reg [79:0] fsm_currentState_string;
  reg [79:0] fsm_nextState_string;
  `endif


  assign _zz_when_WaCounter_l16_1_1 = (channelInTimes - 9'h001);
  assign _zz_when_WaCounter_l16_1 = {3'd0, _zz_when_WaCounter_l16_1_1};
  assign _zz_when_WaCounter_l16_2 = (io_colNumIn - 9'h001);
  assign _zz_when_WaCounter_l16_3 = (io_rowNumIn - 9'h001);
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_currentState)
      FeatureWidthConvertEnum_IDLE : fsm_currentState_string = "IDLE      ";
      FeatureWidthConvertEnum_INIT : fsm_currentState_string = "INIT      ";
      FeatureWidthConvertEnum_FIFO_READY : fsm_currentState_string = "FIFO_READY";
      FeatureWidthConvertEnum_SEND : fsm_currentState_string = "SEND      ";
      FeatureWidthConvertEnum_END_1 : fsm_currentState_string = "END_1     ";
      default : fsm_currentState_string = "??????????";
    endcase
  end
  always @(*) begin
    case(fsm_nextState)
      FeatureWidthConvertEnum_IDLE : fsm_nextState_string = "IDLE      ";
      FeatureWidthConvertEnum_INIT : fsm_nextState_string = "INIT      ";
      FeatureWidthConvertEnum_FIFO_READY : fsm_nextState_string = "FIFO_READY";
      FeatureWidthConvertEnum_SEND : fsm_nextState_string = "SEND      ";
      FeatureWidthConvertEnum_END_1 : fsm_nextState_string = "END_1     ";
      default : fsm_nextState_string = "??????????";
    endcase
  end
  `endif

  always @(*) begin
    (* parallel_case *)
    case(1) // synthesis parallel_case
      (((fsm_currentState) & FeatureWidthConvertEnum_IDLE) == FeatureWidthConvertEnum_IDLE) : begin
        if(io_start) begin
          fsm_nextState = FeatureWidthConvertEnum_INIT;
        end else begin
          fsm_nextState = FeatureWidthConvertEnum_IDLE;
        end
      end
      (((fsm_currentState) & FeatureWidthConvertEnum_INIT) == FeatureWidthConvertEnum_INIT) : begin
        if(fsm_initEnd) begin
          fsm_nextState = FeatureWidthConvertEnum_FIFO_READY;
        end else begin
          fsm_nextState = FeatureWidthConvertEnum_INIT;
        end
      end
      (((fsm_currentState) & FeatureWidthConvertEnum_FIFO_READY) == FeatureWidthConvertEnum_FIFO_READY) : begin
        if(fsm_fifoReady) begin
          fsm_nextState = FeatureWidthConvertEnum_SEND;
        end else begin
          fsm_nextState = FeatureWidthConvertEnum_FIFO_READY;
        end
      end
      (((fsm_currentState) & FeatureWidthConvertEnum_SEND) == FeatureWidthConvertEnum_SEND) : begin
        if(fsm_sendEnd) begin
          fsm_nextState = FeatureWidthConvertEnum_END_1;
        end else begin
          fsm_nextState = FeatureWidthConvertEnum_SEND;
        end
      end
      default : begin
        if(fsm_last) begin
          fsm_nextState = FeatureWidthConvertEnum_IDLE;
        end else begin
          fsm_nextState = FeatureWidthConvertEnum_FIFO_READY;
        end
      end
    endcase
  end

  assign when_WaCounter_l21 = ((fsm_currentState & FeatureWidthConvertEnum_INIT) != 5'b00000);
  assign when_WaCounter_l16 = ((initCnt_count == 3'b111) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16) begin
      initCnt_valid = 1'b1;
    end else begin
      initCnt_valid = 1'b0;
    end
  end

  assign fsm_initEnd = initCnt_valid;
  assign io_sData_fire = (io_sData_valid && io_sData_ready);
  assign when_WaCounter_l16_1 = ((channelCnt_count == _zz_when_WaCounter_l16_1) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_1) begin
      channelCnt_valid = 1'b1;
    end else begin
      channelCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l16_2 = ((columnCnt_count == _zz_when_WaCounter_l16_2) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_2) begin
      columnCnt_valid = 1'b1;
    end else begin
      columnCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l21_1 = ((fsm_currentState & FeatureWidthConvertEnum_END_1) != 5'b00000);
  assign when_WaCounter_l16_3 = ((rowCnt_count == _zz_when_WaCounter_l16_3) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_3) begin
      rowCnt_valid = 1'b1;
    end else begin
      rowCnt_valid = 1'b0;
    end
  end

  assign fsm_fifoReady = io_mData_ready;
  assign fsm_sendEnd = (channelCnt_valid && columnCnt_valid);
  assign io_mData_mData_1_payload = 64'h0;
  assign io_sData_fire_1 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_1_valid = io_sData_fire_1;
  assign io_mData_mData_2_payload = 64'h0;
  assign io_sData_fire_2 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_2_valid = io_sData_fire_2;
  assign io_mData_mData_3_payload = 64'h0;
  assign io_sData_fire_3 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_3_valid = io_sData_fire_3;
  assign io_mData_mData_4_payload = 64'h0;
  assign io_sData_fire_4 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_4_valid = io_sData_fire_4;
  assign io_mData_mData_5_payload = 64'h0;
  assign io_sData_fire_5 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_5_valid = io_sData_fire_5;
  assign io_mData_mData_6_payload = 64'h0;
  assign io_sData_fire_6 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_6_valid = io_sData_fire_6;
  assign io_mData_mData_7_payload = 64'h0;
  assign io_sData_fire_7 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_7_valid = io_sData_fire_7;
  assign io_mData_mData_8_payload = 64'h0;
  assign io_sData_fire_8 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_8_valid = io_sData_fire_8;
  assign io_mData_mData_0_payload = io_sData_payload;
  assign io_sData_fire_9 = (io_sData_valid && io_sData_ready);
  assign io_mData_mData_0_valid = io_sData_fire_9;
  assign when_FeatureConv11Convert_l97 = ((fsm_currentState & FeatureWidthConvertEnum_SEND) != 5'b00000);
  always @(*) begin
    if(when_FeatureConv11Convert_l97) begin
      io_sData_ready = 1'b1;
    end else begin
      io_sData_ready = 1'b0;
    end
  end

  always @(posedge clk) begin
    if(reset || softReset) begin
      fsm_last <= 1'b0;
      fsm_currentState <= FeatureWidthConvertEnum_IDLE;
      initCnt_count <= 3'b000;
      channelCnt_count <= 12'h0;
      columnCnt_count <= 9'h0;
      rowCnt_count <= 9'h0;
    end else begin
      fsm_currentState <= fsm_nextState;
      if(when_WaCounter_l21) begin
        initCnt_count <= (initCnt_count + 3'b001);
        if(initCnt_valid) begin
          initCnt_count <= 3'b000;
        end
      end
      if(io_sData_fire) begin
        channelCnt_count <= (channelCnt_count + 12'h001);
        if(channelCnt_valid) begin
          channelCnt_count <= 12'h0;
        end
      end
      if(channelCnt_valid) begin
        columnCnt_count <= (columnCnt_count + 9'h001);
        if(columnCnt_valid) begin
          columnCnt_count <= 9'h0;
        end
      end
      if(when_WaCounter_l21_1) begin
        rowCnt_count <= (rowCnt_count + 9'h001);
        if(rowCnt_valid) begin
          rowCnt_count <= 9'h0;
        end
      end
      fsm_last <= ((rowCnt_valid && channelCnt_valid) && columnCnt_valid);
    end
  end

  always @(posedge clk) begin
    channelInTimes <= (io_channelIn >>> 3);
  end


endmodule
