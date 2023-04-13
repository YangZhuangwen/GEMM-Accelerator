// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : FeatureGenerate
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module FeatureGenerate (
  input               sData_valid,
  output reg          sData_ready,
  input      [63:0]   sData_payload,
  output              mData_mData_0_valid,
  output     [63:0]   mData_mData_0_payload,
  output              mData_mData_1_valid,
  output     [63:0]   mData_mData_1_payload,
  output              mData_mData_2_valid,
  output     [63:0]   mData_mData_2_payload,
  output              mData_mData_3_valid,
  output     [63:0]   mData_mData_3_payload,
  output              mData_mData_4_valid,
  output     [63:0]   mData_mData_4_payload,
  output              mData_mData_5_valid,
  output     [63:0]   mData_mData_5_payload,
  output              mData_mData_6_valid,
  output     [63:0]   mData_mData_6_payload,
  output              mData_mData_7_valid,
  output     [63:0]   mData_mData_7_payload,
  output              mData_mData_8_valid,
  output     [63:0]   mData_mData_8_payload,
  input               mData_ready,
  input      [8:0]    rowNumIn,
  input      [8:0]    colNumIn,
  input               start,
  input      [11:0]   channelIn,
  input               clk,
  input               reset,
  input               softReset
);
  localparam FeatureGenerateEnum_IDLE = 6'd1;
  localparam FeatureGenerateEnum_INIT = 6'd2;
  localparam FeatureGenerateEnum_WAIT_1 = 6'd4;
  localparam FeatureGenerateEnum_FIFO_READY = 6'd8;
  localparam FeatureGenerateEnum_WR = 6'd16;
  localparam FeatureGenerateEnum_END_1 = 6'd32;

  reg        [63:0]   _zz_mem_0_port1;
  reg        [63:0]   _zz_mem_1_port1;
  wire       [17:0]   _zz_when_FeatureGenerate_l109;
  wire       [17:0]   _zz_when_FeatureGenerate_l109_1;
  wire       [63:0]   _zz_mem_0_port;
  wire                _zz_mem_0_port_1;
  wire                _zz_rdData_0;
  wire       [63:0]   _zz_mem_1_port;
  wire                _zz_mem_1_port_1;
  wire                _zz_rdData_1;
  wire       [11:0]   _zz_when_WaCounter_l16_1;
  wire       [8:0]    _zz_when_WaCounter_l16_1_1;
  wire       [8:0]    _zz_when_WaCounter_l16_2;
  wire       [8:0]    _zz_when_WaCounter_l16_3;
  wire       [8:0]    _zz_when_FeatureGenerate_l156;
  wire       [8:0]    _zz_when_FeatureGenerate_l165;
  reg        [8:0]    channelTimes;
  reg        [17:0]   totalCnt;
  wire                fsm_initEnd;
  wire                fsm_waitEnd;
  wire                fsm_wrEnd;
  wire                fsm_endEnd;
  wire                fsm_wait2;
  wire                fsm_fifoReady;
  reg        [5:0]    fsm_currentState;
  reg        [5:0]    fsm_nextState;
  reg        [10:0]   rdAddr;
  wire       [63:0]   wrData_0;
  wire       [63:0]   wrData_1;
  wire       [63:0]   rdData_0;
  wire       [63:0]   rdData_1;
  reg        [10:0]   wrAddr;
  wire                sData_fire;
  wire                when_FeatureGenerate_l109;
  reg        [63:0]   sData_payload_regNext;
  wire                sData_fire_1;
  reg                 sData_fire_1_regNext;
  wire                sData_fire_2;
  reg                 sData_fire_2_regNext;
  wire                when_WaCounter_l21;
  reg        [2:0]    initCount_count;
  reg                 initCount_valid;
  wire                when_WaCounter_l16;
  wire                sData_fire_3;
  reg        [11:0]   channelCnt_count;
  reg                 channelCnt_valid;
  wire                when_WaCounter_l16_1;
  wire                sData_fire_4;
  wire                when_WaCounter_l21_1;
  reg        [8:0]    columnCnt_count;
  reg                 columnCnt_valid;
  wire                when_WaCounter_l16_2;
  wire                when_WaCounter_l21_2;
  reg        [8:0]    rowCnt_count;
  reg                 rowCnt_valid;
  wire                when_WaCounter_l16_3;
  wire                when_FeatureGenerate_l137;
  reg                 valid_0;
  reg                 valid_1;
  reg                 valid_2;
  reg                 valid_3;
  reg                 valid_4;
  reg                 valid_5;
  reg                 valid_6;
  reg                 valid_7;
  reg                 valid_8;
  reg                 valid_0_delay_1;
  reg                 valid_0_delay_2;
  reg                 valid_0_delay_3;
  reg                 valid_3_delay_1;
  reg                 valid_3_delay_2;
  reg                 valid_3_delay_3;
  reg                 valid_6_delay_1;
  reg                 valid_6_delay_2;
  reg                 valid_6_delay_3;
  reg                 valid_1_delay_1;
  reg                 valid_1_delay_2;
  reg                 valid_4_delay_1;
  reg                 valid_4_delay_2;
  reg                 valid_7_delay_1;
  reg                 valid_7_delay_2;
  reg                 valid_2_delay_1;
  reg                 valid_5_delay_1;
  reg                 valid_8_delay_1;
  wire                when_FeatureGenerate_l155;
  wire                when_FeatureGenerate_l156;
  wire                when_FeatureGenerate_l165;
  wire                when_FeatureGenerate_l174;
  reg        [63:0]   mData_mData_1_payload_regNext;
  reg        [63:0]   mData_mData_2_payload_regNext;
  reg        [63:0]   rdData_1_regNext;
  reg        [63:0]   mData_mData_4_payload_regNext;
  reg        [63:0]   mData_mData_5_payload_regNext;
  reg        [63:0]   rdData_0_regNext;
  reg        [63:0]   mData_mData_7_payload_regNext;
  reg        [63:0]   mData_mData_8_payload_regNext;
  reg        [63:0]   sData_payload_regNext_1;
  reg        [63:0]   sData_payload_regNext_1_regNext;
  `ifndef SYNTHESIS
  reg [79:0] fsm_currentState_string;
  reg [79:0] fsm_nextState_string;
  `endif

  (* ram_style = "block" *) reg [63:0] mem_0 [0:2047];
  (* ram_style = "block" *) reg [63:0] mem_1 [0:2047];

  assign _zz_when_FeatureGenerate_l109 = {7'd0, rdAddr};
  assign _zz_when_FeatureGenerate_l109_1 = (totalCnt - 18'h00001);
  assign _zz_when_WaCounter_l16_1_1 = (channelTimes - 9'h001);
  assign _zz_when_WaCounter_l16_1 = {3'd0, _zz_when_WaCounter_l16_1_1};
  assign _zz_when_WaCounter_l16_2 = (colNumIn - 9'h001);
  assign _zz_when_WaCounter_l16_3 = (rowNumIn - 9'h001);
  assign _zz_when_FeatureGenerate_l156 = (colNumIn - 9'h002);
  assign _zz_when_FeatureGenerate_l165 = (colNumIn - 9'h001);
  assign _zz_mem_0_port = wrData_0;
  assign _zz_rdData_0 = 1'b1;
  assign _zz_mem_1_port = wrData_1;
  assign _zz_rdData_1 = 1'b1;
  always @(posedge clk) begin
    if(sData_fire_1_regNext) begin
      mem_0[wrAddr] <= _zz_mem_0_port;
    end
  end

  always @(posedge clk) begin
    if(_zz_rdData_0) begin
      _zz_mem_0_port1 <= mem_0[rdAddr];
    end
  end

  always @(posedge clk) begin
    if(sData_fire_2_regNext) begin
      mem_1[wrAddr] <= _zz_mem_1_port;
    end
  end

  always @(posedge clk) begin
    if(_zz_rdData_1) begin
      _zz_mem_1_port1 <= mem_1[rdAddr];
    end
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_currentState)
      FeatureGenerateEnum_IDLE : fsm_currentState_string = "IDLE      ";
      FeatureGenerateEnum_INIT : fsm_currentState_string = "INIT      ";
      FeatureGenerateEnum_WAIT_1 : fsm_currentState_string = "WAIT_1    ";
      FeatureGenerateEnum_FIFO_READY : fsm_currentState_string = "FIFO_READY";
      FeatureGenerateEnum_WR : fsm_currentState_string = "WR        ";
      FeatureGenerateEnum_END_1 : fsm_currentState_string = "END_1     ";
      default : fsm_currentState_string = "??????????";
    endcase
  end
  always @(*) begin
    case(fsm_nextState)
      FeatureGenerateEnum_IDLE : fsm_nextState_string = "IDLE      ";
      FeatureGenerateEnum_INIT : fsm_nextState_string = "INIT      ";
      FeatureGenerateEnum_WAIT_1 : fsm_nextState_string = "WAIT_1    ";
      FeatureGenerateEnum_FIFO_READY : fsm_nextState_string = "FIFO_READY";
      FeatureGenerateEnum_WR : fsm_nextState_string = "WR        ";
      FeatureGenerateEnum_END_1 : fsm_nextState_string = "END_1     ";
      default : fsm_nextState_string = "??????????";
    endcase
  end
  `endif

  always @(*) begin
    (* parallel_case *)
    case(1) // synthesis parallel_case
      (((fsm_currentState) & FeatureGenerateEnum_IDLE) == FeatureGenerateEnum_IDLE) : begin
        if(start) begin
          fsm_nextState = FeatureGenerateEnum_INIT;
        end else begin
          fsm_nextState = FeatureGenerateEnum_IDLE;
        end
      end
      (((fsm_currentState) & FeatureGenerateEnum_INIT) == FeatureGenerateEnum_INIT) : begin
        if(fsm_initEnd) begin
          fsm_nextState = FeatureGenerateEnum_WAIT_1;
        end else begin
          fsm_nextState = FeatureGenerateEnum_INIT;
        end
      end
      (((fsm_currentState) & FeatureGenerateEnum_WAIT_1) == FeatureGenerateEnum_WAIT_1) : begin
        if(fsm_waitEnd) begin
          fsm_nextState = FeatureGenerateEnum_END_1;
        end else begin
          fsm_nextState = FeatureGenerateEnum_WAIT_1;
        end
      end
      (((fsm_currentState) & FeatureGenerateEnum_FIFO_READY) == FeatureGenerateEnum_FIFO_READY) : begin
        if(fsm_fifoReady) begin
          fsm_nextState = FeatureGenerateEnum_WR;
        end else begin
          fsm_nextState = FeatureGenerateEnum_FIFO_READY;
        end
      end
      (((fsm_currentState) & FeatureGenerateEnum_WR) == FeatureGenerateEnum_WR) : begin
        if(fsm_wrEnd) begin
          fsm_nextState = FeatureGenerateEnum_END_1;
        end else begin
          fsm_nextState = FeatureGenerateEnum_WR;
        end
      end
      default : begin
        if(fsm_wait2) begin
          fsm_nextState = FeatureGenerateEnum_WAIT_1;
        end else begin
          if(fsm_endEnd) begin
            fsm_nextState = FeatureGenerateEnum_IDLE;
          end else begin
            fsm_nextState = FeatureGenerateEnum_FIFO_READY;
          end
        end
      end
    endcase
  end

  assign fsm_fifoReady = mData_ready;
  assign sData_fire = (sData_valid && sData_ready);
  assign when_FeatureGenerate_l109 = (_zz_when_FeatureGenerate_l109 == _zz_when_FeatureGenerate_l109_1);
  assign wrData_0 = sData_payload_regNext;
  assign wrData_1 = rdData_0;
  assign sData_fire_1 = (sData_valid && sData_ready);
  assign rdData_0 = _zz_mem_0_port1;
  assign sData_fire_2 = (sData_valid && sData_ready);
  assign rdData_1 = _zz_mem_1_port1;
  assign when_WaCounter_l21 = ((fsm_currentState & FeatureGenerateEnum_INIT) != 6'b000000);
  assign when_WaCounter_l16 = ((initCount_count == 3'b101) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16) begin
      initCount_valid = 1'b1;
    end else begin
      initCount_valid = 1'b0;
    end
  end

  assign fsm_initEnd = initCount_valid;
  assign sData_fire_3 = (sData_valid && sData_ready);
  assign when_WaCounter_l16_1 = ((channelCnt_count == _zz_when_WaCounter_l16_1) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_1) begin
      channelCnt_valid = 1'b1;
    end else begin
      channelCnt_valid = 1'b0;
    end
  end

  assign sData_fire_4 = (sData_valid && sData_ready);
  assign when_WaCounter_l21_1 = (channelCnt_valid && sData_fire_4);
  assign when_WaCounter_l16_2 = ((columnCnt_count == _zz_when_WaCounter_l16_2) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_2) begin
      columnCnt_valid = 1'b1;
    end else begin
      columnCnt_valid = 1'b0;
    end
  end

  assign when_WaCounter_l21_2 = ((fsm_currentState & FeatureGenerateEnum_END_1) != 6'b000000);
  assign when_WaCounter_l16_3 = ((rowCnt_count == _zz_when_WaCounter_l16_3) && 1'b1);
  always @(*) begin
    if(when_WaCounter_l16_3) begin
      rowCnt_valid = 1'b1;
    end else begin
      rowCnt_valid = 1'b0;
    end
  end

  assign fsm_waitEnd = (channelCnt_valid && columnCnt_valid);
  assign fsm_wrEnd = (channelCnt_valid && columnCnt_valid);
  assign fsm_endEnd = rowCnt_valid;
  assign fsm_wait2 = (rowCnt_count < 9'h001);
  assign when_FeatureGenerate_l137 = (((fsm_currentState & FeatureGenerateEnum_WAIT_1) != 6'b000000) || ((fsm_currentState & FeatureGenerateEnum_WR) != 6'b000000));
  always @(*) begin
    if(when_FeatureGenerate_l137) begin
      sData_ready = 1'b1;
    end else begin
      sData_ready = 1'b0;
    end
  end

  assign mData_mData_0_valid = valid_0_delay_3;
  assign mData_mData_3_valid = valid_3_delay_3;
  assign mData_mData_6_valid = valid_6_delay_3;
  assign mData_mData_1_valid = valid_1_delay_2;
  assign mData_mData_4_valid = valid_4_delay_2;
  assign mData_mData_7_valid = valid_7_delay_2;
  assign mData_mData_2_valid = valid_2_delay_1;
  assign mData_mData_5_valid = valid_5_delay_1;
  assign mData_mData_8_valid = valid_8_delay_1;
  assign when_FeatureGenerate_l155 = ((fsm_currentState & FeatureGenerateEnum_WR) != 6'b000000);
  assign when_FeatureGenerate_l156 = (columnCnt_count < _zz_when_FeatureGenerate_l156);
  assign when_FeatureGenerate_l165 = ((9'h0 < columnCnt_count) && (columnCnt_count < _zz_when_FeatureGenerate_l165));
  assign when_FeatureGenerate_l174 = ((9'h001 < columnCnt_count) && (columnCnt_count < colNumIn));
  assign mData_mData_0_payload = mData_mData_1_payload_regNext;
  assign mData_mData_1_payload = mData_mData_2_payload_regNext;
  assign mData_mData_2_payload = rdData_1_regNext;
  assign mData_mData_3_payload = mData_mData_4_payload_regNext;
  assign mData_mData_4_payload = mData_mData_5_payload_regNext;
  assign mData_mData_5_payload = rdData_0_regNext;
  assign mData_mData_6_payload = mData_mData_7_payload_regNext;
  assign mData_mData_7_payload = mData_mData_8_payload_regNext;
  assign mData_mData_8_payload = sData_payload_regNext_1_regNext;
  always @(posedge clk) begin
    if(reset || softReset) begin
      channelTimes <= 9'h0;
      fsm_currentState <= FeatureGenerateEnum_IDLE;
      rdAddr <= 11'h0;
      initCount_count <= 3'b000;
      channelCnt_count <= 12'h0;
      columnCnt_count <= 9'h0;
      rowCnt_count <= 9'h0;
      valid_0 <= 1'b0;
      valid_1 <= 1'b0;
      valid_2 <= 1'b0;
      valid_3 <= 1'b0;
      valid_4 <= 1'b0;
      valid_5 <= 1'b0;
      valid_6 <= 1'b0;
      valid_7 <= 1'b0;
      valid_8 <= 1'b0;
    end else begin
      channelTimes <= (channelIn >>> 3);
      fsm_currentState <= fsm_nextState;
      if(sData_fire) begin
        if(when_FeatureGenerate_l109) begin
          rdAddr <= 11'h0;
        end else begin
          rdAddr <= (rdAddr + 11'h001);
        end
      end
      if(when_WaCounter_l21) begin
        initCount_count <= (initCount_count + 3'b001);
        if(initCount_valid) begin
          initCount_count <= 3'b000;
        end
      end
      if(sData_fire_3) begin
        channelCnt_count <= (channelCnt_count + 12'h001);
        if(channelCnt_valid) begin
          channelCnt_count <= 12'h0;
        end
      end
      if(when_WaCounter_l21_1) begin
        columnCnt_count <= (columnCnt_count + 9'h001);
        if(columnCnt_valid) begin
          columnCnt_count <= 9'h0;
        end
      end
      if(when_WaCounter_l21_2) begin
        rowCnt_count <= (rowCnt_count + 9'h001);
        if(rowCnt_valid) begin
          rowCnt_count <= 9'h0;
        end
      end
      if(when_FeatureGenerate_l155) begin
        if(when_FeatureGenerate_l156) begin
          valid_0 <= 1'b1;
          valid_3 <= 1'b1;
          valid_6 <= 1'b1;
        end else begin
          valid_0 <= 1'b0;
          valid_3 <= 1'b0;
          valid_6 <= 1'b0;
        end
        if(when_FeatureGenerate_l165) begin
          valid_1 <= 1'b1;
          valid_4 <= 1'b1;
          valid_7 <= 1'b1;
        end else begin
          valid_1 <= 1'b0;
          valid_4 <= 1'b0;
          valid_7 <= 1'b0;
        end
        if(when_FeatureGenerate_l174) begin
          valid_2 <= 1'b1;
          valid_5 <= 1'b1;
          valid_8 <= 1'b1;
        end else begin
          valid_2 <= 1'b0;
          valid_5 <= 1'b0;
          valid_8 <= 1'b0;
        end
      end else begin
        valid_0 <= 1'b0;
        valid_1 <= 1'b0;
        valid_2 <= 1'b0;
        valid_3 <= 1'b0;
        valid_4 <= 1'b0;
        valid_5 <= 1'b0;
        valid_6 <= 1'b0;
        valid_7 <= 1'b0;
        valid_8 <= 1'b0;
      end
    end
  end

  always @(posedge clk) begin
    totalCnt <= (channelTimes * colNumIn);
    wrAddr <= rdAddr;
    sData_payload_regNext <= sData_payload;
    sData_fire_1_regNext <= sData_fire_1;
    sData_fire_2_regNext <= sData_fire_2;
    valid_0_delay_1 <= valid_0;
    valid_0_delay_2 <= valid_0_delay_1;
    valid_0_delay_3 <= valid_0_delay_2;
    valid_3_delay_1 <= valid_3;
    valid_3_delay_2 <= valid_3_delay_1;
    valid_3_delay_3 <= valid_3_delay_2;
    valid_6_delay_1 <= valid_6;
    valid_6_delay_2 <= valid_6_delay_1;
    valid_6_delay_3 <= valid_6_delay_2;
    valid_1_delay_1 <= valid_1;
    valid_1_delay_2 <= valid_1_delay_1;
    valid_4_delay_1 <= valid_4;
    valid_4_delay_2 <= valid_4_delay_1;
    valid_7_delay_1 <= valid_7;
    valid_7_delay_2 <= valid_7_delay_1;
    valid_2_delay_1 <= valid_2;
    valid_5_delay_1 <= valid_5;
    valid_8_delay_1 <= valid_8;
    mData_mData_1_payload_regNext <= mData_mData_1_payload;
    mData_mData_2_payload_regNext <= mData_mData_2_payload;
    rdData_1_regNext <= rdData_1;
    mData_mData_4_payload_regNext <= mData_mData_4_payload;
    mData_mData_5_payload_regNext <= mData_mData_5_payload;
    rdData_0_regNext <= rdData_0;
    mData_mData_7_payload_regNext <= mData_mData_7_payload;
    mData_mData_8_payload_regNext <= mData_mData_8_payload;
    sData_payload_regNext_1 <= sData_payload;
    sData_payload_regNext_1_regNext <= sData_payload_regNext_1;
  end


endmodule
