// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : DataGenerate
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module DataGenerate (
  input               sData_valid,
  output reg          sData_ready,
  input      [63:0]   sData_payload,
  input               start,
  input               enPadding,
  input      [11:0]   channelIn,
  input      [8:0]    rowNumIn,
  input      [8:0]    colNumIn,
  input      [7:0]    zeroDara,
  input      [0:0]    zeroNum,
  output reg          mData_mData_0_valid,
  output reg [63:0]   mData_mData_0_payload,
  output reg          mData_mData_1_valid,
  output reg [63:0]   mData_mData_1_payload,
  output reg          mData_mData_2_valid,
  output reg [63:0]   mData_mData_2_payload,
  output reg          mData_mData_3_valid,
  output reg [63:0]   mData_mData_3_payload,
  output reg          mData_mData_4_valid,
  output reg [63:0]   mData_mData_4_payload,
  output reg          mData_mData_5_valid,
  output reg [63:0]   mData_mData_5_payload,
  output reg          mData_mData_6_valid,
  output reg [63:0]   mData_mData_6_payload,
  output reg          mData_mData_7_valid,
  output reg [63:0]   mData_mData_7_payload,
  output reg          mData_mData_8_valid,
  output reg [63:0]   mData_mData_8_payload,
  input               mData_ready,
  input      [1:0]    convType,
  input               reset,
  input               clk,
  input               softReset
);

  reg                 padding_1_sData_valid;
  reg        [63:0]   padding_1_sData_payload;
  reg                 padding_1_start;
  reg                 featureGenerate_1_mData_ready;
  reg                 featureWidthConvert_1_sData_valid;
  reg        [63:0]   featureWidthConvert_1_sData_payload;
  reg                 featureWidthConvert_1_mData_ready;
  reg                 featureWidthConvert_1_start;
  reg                 featureConv11Convert_1_io_sData_valid;
  reg        [63:0]   featureConv11Convert_1_io_sData_payload;
  reg                 featureConv11Convert_1_io_mData_ready;
  reg                 featureConv11Convert_1_io_start;
  wire                padding_1_sData_ready;
  wire                padding_1_mData_valid;
  wire       [63:0]   padding_1_mData_payload;
  wire       [8:0]    padding_1_rowNumOut;
  wire       [8:0]    padding_1_colNumOut;
  wire                padding_1_last;
  wire                featureGenerate_1_sData_ready;
  wire                featureGenerate_1_mData_mData_0_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_0_payload;
  wire                featureGenerate_1_mData_mData_1_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_1_payload;
  wire                featureGenerate_1_mData_mData_2_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_2_payload;
  wire                featureGenerate_1_mData_mData_3_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_3_payload;
  wire                featureGenerate_1_mData_mData_4_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_4_payload;
  wire                featureGenerate_1_mData_mData_5_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_5_payload;
  wire                featureGenerate_1_mData_mData_6_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_6_payload;
  wire                featureGenerate_1_mData_mData_7_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_7_payload;
  wire                featureGenerate_1_mData_mData_8_valid;
  wire       [63:0]   featureGenerate_1_mData_mData_8_payload;
  wire                featureWidthConvert_1_sData_ready;
  wire                featureWidthConvert_1_mData_mData_0_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_0_payload;
  wire                featureWidthConvert_1_mData_mData_1_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_1_payload;
  wire                featureWidthConvert_1_mData_mData_2_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_2_payload;
  wire                featureWidthConvert_1_mData_mData_3_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_3_payload;
  wire                featureWidthConvert_1_mData_mData_4_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_4_payload;
  wire                featureWidthConvert_1_mData_mData_5_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_5_payload;
  wire                featureWidthConvert_1_mData_mData_6_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_6_payload;
  wire                featureWidthConvert_1_mData_mData_7_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_7_payload;
  wire                featureWidthConvert_1_mData_mData_8_valid;
  wire       [63:0]   featureWidthConvert_1_mData_mData_8_payload;
  wire                featureConv11Convert_1_io_sData_ready;
  wire                featureConv11Convert_1_io_mData_mData_0_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_0_payload;
  wire                featureConv11Convert_1_io_mData_mData_1_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_1_payload;
  wire                featureConv11Convert_1_io_mData_mData_2_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_2_payload;
  wire                featureConv11Convert_1_io_mData_mData_3_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_3_payload;
  wire                featureConv11Convert_1_io_mData_mData_4_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_4_payload;
  wire                featureConv11Convert_1_io_mData_mData_5_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_5_payload;
  wire                featureConv11Convert_1_io_mData_mData_6_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_6_payload;
  wire                featureConv11Convert_1_io_mData_mData_7_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_7_payload;
  wire                featureConv11Convert_1_io_mData_mData_8_valid;
  wire       [63:0]   featureConv11Convert_1_io_mData_mData_8_payload;

  Padding padding_1 (
    .sData_valid   (padding_1_sData_valid        ), //i
    .sData_ready   (padding_1_sData_ready        ), //o
    .sData_payload (padding_1_sData_payload[63:0]), //i
    .mData_valid   (padding_1_mData_valid        ), //o
    .mData_ready   (featureGenerate_1_sData_ready), //i
    .mData_payload (padding_1_mData_payload[63:0]), //o
    .enPadding     (enPadding                    ), //i
    .channelIn     (channelIn[11:0]              ), //i
    .start         (padding_1_start              ), //i
    .rowNumIn      (rowNumIn[8:0]                ), //i
    .rowNumOut     (padding_1_rowNumOut[8:0]     ), //o
    .colNumIn      (colNumIn[8:0]                ), //i
    .colNumOut     (padding_1_colNumOut[8:0]     ), //o
    .zeroDara      (zeroDara[7:0]                ), //i
    .zeroNum       (zeroNum                      ), //i
    .last          (padding_1_last               ), //o
    .clk           (clk                          ), //i
    .reset         (reset                        ), //i
    .softReset     (softReset                    )  //i
  );
  FeatureGenerate featureGenerate_1 (
    .sData_valid           (padding_1_mData_valid                        ), //i
    .sData_ready           (featureGenerate_1_sData_ready                ), //o
    .sData_payload         (padding_1_mData_payload[63:0]                ), //i
    .mData_mData_0_valid   (featureGenerate_1_mData_mData_0_valid        ), //o
    .mData_mData_0_payload (featureGenerate_1_mData_mData_0_payload[63:0]), //o
    .mData_mData_1_valid   (featureGenerate_1_mData_mData_1_valid        ), //o
    .mData_mData_1_payload (featureGenerate_1_mData_mData_1_payload[63:0]), //o
    .mData_mData_2_valid   (featureGenerate_1_mData_mData_2_valid        ), //o
    .mData_mData_2_payload (featureGenerate_1_mData_mData_2_payload[63:0]), //o
    .mData_mData_3_valid   (featureGenerate_1_mData_mData_3_valid        ), //o
    .mData_mData_3_payload (featureGenerate_1_mData_mData_3_payload[63:0]), //o
    .mData_mData_4_valid   (featureGenerate_1_mData_mData_4_valid        ), //o
    .mData_mData_4_payload (featureGenerate_1_mData_mData_4_payload[63:0]), //o
    .mData_mData_5_valid   (featureGenerate_1_mData_mData_5_valid        ), //o
    .mData_mData_5_payload (featureGenerate_1_mData_mData_5_payload[63:0]), //o
    .mData_mData_6_valid   (featureGenerate_1_mData_mData_6_valid        ), //o
    .mData_mData_6_payload (featureGenerate_1_mData_mData_6_payload[63:0]), //o
    .mData_mData_7_valid   (featureGenerate_1_mData_mData_7_valid        ), //o
    .mData_mData_7_payload (featureGenerate_1_mData_mData_7_payload[63:0]), //o
    .mData_mData_8_valid   (featureGenerate_1_mData_mData_8_valid        ), //o
    .mData_mData_8_payload (featureGenerate_1_mData_mData_8_payload[63:0]), //o
    .mData_ready           (featureGenerate_1_mData_ready                ), //i
    .rowNumIn              (padding_1_rowNumOut[8:0]                     ), //i
    .colNumIn              (padding_1_colNumOut[8:0]                     ), //i
    .start                 (padding_1_start                              ), //i
    .channelIn             (channelIn[11:0]                              ), //i
    .clk                   (clk                                          ), //i
    .reset                 (reset                                        ), //i
    .softReset             (softReset                                    )  //i
  );
  FeatureWidthConvert featureWidthConvert_1 (
    .sData_valid           (featureWidthConvert_1_sData_valid                ), //i
    .sData_ready           (featureWidthConvert_1_sData_ready                ), //o
    .sData_payload         (featureWidthConvert_1_sData_payload[63:0]        ), //i
    .mData_mData_0_valid   (featureWidthConvert_1_mData_mData_0_valid        ), //o
    .mData_mData_0_payload (featureWidthConvert_1_mData_mData_0_payload[63:0]), //o
    .mData_mData_1_valid   (featureWidthConvert_1_mData_mData_1_valid        ), //o
    .mData_mData_1_payload (featureWidthConvert_1_mData_mData_1_payload[63:0]), //o
    .mData_mData_2_valid   (featureWidthConvert_1_mData_mData_2_valid        ), //o
    .mData_mData_2_payload (featureWidthConvert_1_mData_mData_2_payload[63:0]), //o
    .mData_mData_3_valid   (featureWidthConvert_1_mData_mData_3_valid        ), //o
    .mData_mData_3_payload (featureWidthConvert_1_mData_mData_3_payload[63:0]), //o
    .mData_mData_4_valid   (featureWidthConvert_1_mData_mData_4_valid        ), //o
    .mData_mData_4_payload (featureWidthConvert_1_mData_mData_4_payload[63:0]), //o
    .mData_mData_5_valid   (featureWidthConvert_1_mData_mData_5_valid        ), //o
    .mData_mData_5_payload (featureWidthConvert_1_mData_mData_5_payload[63:0]), //o
    .mData_mData_6_valid   (featureWidthConvert_1_mData_mData_6_valid        ), //o
    .mData_mData_6_payload (featureWidthConvert_1_mData_mData_6_payload[63:0]), //o
    .mData_mData_7_valid   (featureWidthConvert_1_mData_mData_7_valid        ), //o
    .mData_mData_7_payload (featureWidthConvert_1_mData_mData_7_payload[63:0]), //o
    .mData_mData_8_valid   (featureWidthConvert_1_mData_mData_8_valid        ), //o
    .mData_mData_8_payload (featureWidthConvert_1_mData_mData_8_payload[63:0]), //o
    .mData_ready           (featureWidthConvert_1_mData_ready                ), //i
    .rowNumIn              (rowNumIn[8:0]                                    ), //i
    .colNumIn              (colNumIn[8:0]                                    ), //i
    .start                 (featureWidthConvert_1_start                      ), //i
    .channelIn             (channelIn[11:0]                                  ), //i
    .reset                 (reset                                            ), //i
    .clk                   (clk                                              ), //i
    .softReset             (softReset                                        )  //i
  );
  FeatureConv11Convert featureConv11Convert_1 (
    .io_sData_valid           (featureConv11Convert_1_io_sData_valid                ), //i
    .io_sData_ready           (featureConv11Convert_1_io_sData_ready                ), //o
    .io_sData_payload         (featureConv11Convert_1_io_sData_payload[63:0]        ), //i
    .io_mData_mData_0_valid   (featureConv11Convert_1_io_mData_mData_0_valid        ), //o
    .io_mData_mData_0_payload (featureConv11Convert_1_io_mData_mData_0_payload[63:0]), //o
    .io_mData_mData_1_valid   (featureConv11Convert_1_io_mData_mData_1_valid        ), //o
    .io_mData_mData_1_payload (featureConv11Convert_1_io_mData_mData_1_payload[63:0]), //o
    .io_mData_mData_2_valid   (featureConv11Convert_1_io_mData_mData_2_valid        ), //o
    .io_mData_mData_2_payload (featureConv11Convert_1_io_mData_mData_2_payload[63:0]), //o
    .io_mData_mData_3_valid   (featureConv11Convert_1_io_mData_mData_3_valid        ), //o
    .io_mData_mData_3_payload (featureConv11Convert_1_io_mData_mData_3_payload[63:0]), //o
    .io_mData_mData_4_valid   (featureConv11Convert_1_io_mData_mData_4_valid        ), //o
    .io_mData_mData_4_payload (featureConv11Convert_1_io_mData_mData_4_payload[63:0]), //o
    .io_mData_mData_5_valid   (featureConv11Convert_1_io_mData_mData_5_valid        ), //o
    .io_mData_mData_5_payload (featureConv11Convert_1_io_mData_mData_5_payload[63:0]), //o
    .io_mData_mData_6_valid   (featureConv11Convert_1_io_mData_mData_6_valid        ), //o
    .io_mData_mData_6_payload (featureConv11Convert_1_io_mData_mData_6_payload[63:0]), //o
    .io_mData_mData_7_valid   (featureConv11Convert_1_io_mData_mData_7_valid        ), //o
    .io_mData_mData_7_payload (featureConv11Convert_1_io_mData_mData_7_payload[63:0]), //o
    .io_mData_mData_8_valid   (featureConv11Convert_1_io_mData_mData_8_valid        ), //o
    .io_mData_mData_8_payload (featureConv11Convert_1_io_mData_mData_8_payload[63:0]), //o
    .io_mData_ready           (featureConv11Convert_1_io_mData_ready                ), //i
    .io_rowNumIn              (rowNumIn[8:0]                                        ), //i
    .io_colNumIn              (colNumIn[8:0]                                        ), //i
    .io_start                 (featureConv11Convert_1_io_start                      ), //i
    .io_channelIn             (channelIn[11:0]                                      ), //i
    .clk                      (clk                                                  ), //i
    .reset                    (reset                                                ), //i
    .softReset                (softReset                                            )  //i
  );
  always @(*) begin
    case(convType)
      2'b00 : begin
        padding_1_sData_valid = sData_valid;
      end
      2'b01 : begin
        padding_1_sData_valid = 1'b0;
      end
      2'b10 : begin
        padding_1_sData_valid = 1'b0;
      end
      default : begin
        padding_1_sData_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        sData_ready = padding_1_sData_ready;
      end
      2'b01 : begin
        sData_ready = featureWidthConvert_1_sData_ready;
      end
      2'b10 : begin
        sData_ready = featureConv11Convert_1_io_sData_ready;
      end
      default : begin
        sData_ready = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        padding_1_sData_payload = sData_payload;
      end
      2'b01 : begin
        padding_1_sData_payload = 64'h0;
      end
      2'b10 : begin
        padding_1_sData_payload = 64'h0;
      end
      default : begin
        padding_1_sData_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        padding_1_start = start;
      end
      2'b01 : begin
        padding_1_start = 1'b0;
      end
      2'b10 : begin
        padding_1_start = 1'b0;
      end
      default : begin
        padding_1_start = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_0_valid = featureGenerate_1_mData_mData_0_valid;
      end
      2'b01 : begin
        mData_mData_0_valid = featureWidthConvert_1_mData_mData_0_valid;
      end
      2'b10 : begin
        mData_mData_0_valid = featureConv11Convert_1_io_mData_mData_0_valid;
      end
      default : begin
        mData_mData_0_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_0_payload = featureGenerate_1_mData_mData_0_payload;
      end
      2'b01 : begin
        mData_mData_0_payload = featureWidthConvert_1_mData_mData_0_payload;
      end
      2'b10 : begin
        mData_mData_0_payload = featureConv11Convert_1_io_mData_mData_0_payload;
      end
      default : begin
        mData_mData_0_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_1_valid = featureGenerate_1_mData_mData_1_valid;
      end
      2'b01 : begin
        mData_mData_1_valid = featureWidthConvert_1_mData_mData_1_valid;
      end
      2'b10 : begin
        mData_mData_1_valid = featureConv11Convert_1_io_mData_mData_1_valid;
      end
      default : begin
        mData_mData_1_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_1_payload = featureGenerate_1_mData_mData_1_payload;
      end
      2'b01 : begin
        mData_mData_1_payload = featureWidthConvert_1_mData_mData_1_payload;
      end
      2'b10 : begin
        mData_mData_1_payload = featureConv11Convert_1_io_mData_mData_1_payload;
      end
      default : begin
        mData_mData_1_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_2_valid = featureGenerate_1_mData_mData_2_valid;
      end
      2'b01 : begin
        mData_mData_2_valid = featureWidthConvert_1_mData_mData_2_valid;
      end
      2'b10 : begin
        mData_mData_2_valid = featureConv11Convert_1_io_mData_mData_2_valid;
      end
      default : begin
        mData_mData_2_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_2_payload = featureGenerate_1_mData_mData_2_payload;
      end
      2'b01 : begin
        mData_mData_2_payload = featureWidthConvert_1_mData_mData_2_payload;
      end
      2'b10 : begin
        mData_mData_2_payload = featureConv11Convert_1_io_mData_mData_2_payload;
      end
      default : begin
        mData_mData_2_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_3_valid = featureGenerate_1_mData_mData_3_valid;
      end
      2'b01 : begin
        mData_mData_3_valid = featureWidthConvert_1_mData_mData_3_valid;
      end
      2'b10 : begin
        mData_mData_3_valid = featureConv11Convert_1_io_mData_mData_3_valid;
      end
      default : begin
        mData_mData_3_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_3_payload = featureGenerate_1_mData_mData_3_payload;
      end
      2'b01 : begin
        mData_mData_3_payload = featureWidthConvert_1_mData_mData_3_payload;
      end
      2'b10 : begin
        mData_mData_3_payload = featureConv11Convert_1_io_mData_mData_3_payload;
      end
      default : begin
        mData_mData_3_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_4_valid = featureGenerate_1_mData_mData_4_valid;
      end
      2'b01 : begin
        mData_mData_4_valid = featureWidthConvert_1_mData_mData_4_valid;
      end
      2'b10 : begin
        mData_mData_4_valid = featureConv11Convert_1_io_mData_mData_4_valid;
      end
      default : begin
        mData_mData_4_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_4_payload = featureGenerate_1_mData_mData_4_payload;
      end
      2'b01 : begin
        mData_mData_4_payload = featureWidthConvert_1_mData_mData_4_payload;
      end
      2'b10 : begin
        mData_mData_4_payload = featureConv11Convert_1_io_mData_mData_4_payload;
      end
      default : begin
        mData_mData_4_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_5_valid = featureGenerate_1_mData_mData_5_valid;
      end
      2'b01 : begin
        mData_mData_5_valid = featureWidthConvert_1_mData_mData_5_valid;
      end
      2'b10 : begin
        mData_mData_5_valid = featureConv11Convert_1_io_mData_mData_5_valid;
      end
      default : begin
        mData_mData_5_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_5_payload = featureGenerate_1_mData_mData_5_payload;
      end
      2'b01 : begin
        mData_mData_5_payload = featureWidthConvert_1_mData_mData_5_payload;
      end
      2'b10 : begin
        mData_mData_5_payload = featureConv11Convert_1_io_mData_mData_5_payload;
      end
      default : begin
        mData_mData_5_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_6_valid = featureGenerate_1_mData_mData_6_valid;
      end
      2'b01 : begin
        mData_mData_6_valid = featureWidthConvert_1_mData_mData_6_valid;
      end
      2'b10 : begin
        mData_mData_6_valid = featureConv11Convert_1_io_mData_mData_6_valid;
      end
      default : begin
        mData_mData_6_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_6_payload = featureGenerate_1_mData_mData_6_payload;
      end
      2'b01 : begin
        mData_mData_6_payload = featureWidthConvert_1_mData_mData_6_payload;
      end
      2'b10 : begin
        mData_mData_6_payload = featureConv11Convert_1_io_mData_mData_6_payload;
      end
      default : begin
        mData_mData_6_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_7_valid = featureGenerate_1_mData_mData_7_valid;
      end
      2'b01 : begin
        mData_mData_7_valid = featureWidthConvert_1_mData_mData_7_valid;
      end
      2'b10 : begin
        mData_mData_7_valid = featureConv11Convert_1_io_mData_mData_7_valid;
      end
      default : begin
        mData_mData_7_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_7_payload = featureGenerate_1_mData_mData_7_payload;
      end
      2'b01 : begin
        mData_mData_7_payload = featureWidthConvert_1_mData_mData_7_payload;
      end
      2'b10 : begin
        mData_mData_7_payload = featureConv11Convert_1_io_mData_mData_7_payload;
      end
      default : begin
        mData_mData_7_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_8_valid = featureGenerate_1_mData_mData_8_valid;
      end
      2'b01 : begin
        mData_mData_8_valid = featureWidthConvert_1_mData_mData_8_valid;
      end
      2'b10 : begin
        mData_mData_8_valid = featureConv11Convert_1_io_mData_mData_8_valid;
      end
      default : begin
        mData_mData_8_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        mData_mData_8_payload = featureGenerate_1_mData_mData_8_payload;
      end
      2'b01 : begin
        mData_mData_8_payload = featureWidthConvert_1_mData_mData_8_payload;
      end
      2'b10 : begin
        mData_mData_8_payload = featureConv11Convert_1_io_mData_mData_8_payload;
      end
      default : begin
        mData_mData_8_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureGenerate_1_mData_ready = mData_ready;
      end
      2'b01 : begin
        featureGenerate_1_mData_ready = 1'b0;
      end
      2'b10 : begin
        featureGenerate_1_mData_ready = 1'b0;
      end
      default : begin
        featureGenerate_1_mData_ready = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureWidthConvert_1_sData_valid = 1'b0;
      end
      2'b01 : begin
        featureWidthConvert_1_sData_valid = sData_valid;
      end
      2'b10 : begin
        featureWidthConvert_1_sData_valid = 1'b0;
      end
      default : begin
        featureWidthConvert_1_sData_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureWidthConvert_1_sData_payload = 64'h0;
      end
      2'b01 : begin
        featureWidthConvert_1_sData_payload = sData_payload;
      end
      2'b10 : begin
        featureWidthConvert_1_sData_payload = 64'h0;
      end
      default : begin
        featureWidthConvert_1_sData_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureWidthConvert_1_mData_ready = 1'b0;
      end
      2'b01 : begin
        featureWidthConvert_1_mData_ready = mData_ready;
      end
      2'b10 : begin
        featureWidthConvert_1_mData_ready = 1'b0;
      end
      default : begin
        featureWidthConvert_1_mData_ready = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureWidthConvert_1_start = 1'b0;
      end
      2'b01 : begin
        featureWidthConvert_1_start = start;
      end
      2'b10 : begin
        featureWidthConvert_1_start = 1'b0;
      end
      default : begin
        featureWidthConvert_1_start = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureConv11Convert_1_io_sData_valid = 1'b0;
      end
      2'b01 : begin
        featureConv11Convert_1_io_sData_valid = 1'b0;
      end
      2'b10 : begin
        featureConv11Convert_1_io_sData_valid = sData_valid;
      end
      default : begin
        featureConv11Convert_1_io_sData_valid = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureConv11Convert_1_io_sData_payload = 64'h0;
      end
      2'b01 : begin
        featureConv11Convert_1_io_sData_payload = 64'h0;
      end
      2'b10 : begin
        featureConv11Convert_1_io_sData_payload = sData_payload;
      end
      default : begin
        featureConv11Convert_1_io_sData_payload = 64'h0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureConv11Convert_1_io_mData_ready = 1'b0;
      end
      2'b01 : begin
        featureConv11Convert_1_io_mData_ready = 1'b0;
      end
      2'b10 : begin
        featureConv11Convert_1_io_mData_ready = mData_ready;
      end
      default : begin
        featureConv11Convert_1_io_mData_ready = 1'b0;
      end
    endcase
  end

  always @(*) begin
    case(convType)
      2'b00 : begin
        featureConv11Convert_1_io_start = 1'b0;
      end
      2'b01 : begin
        featureConv11Convert_1_io_start = 1'b0;
      end
      2'b10 : begin
        featureConv11Convert_1_io_start = start;
      end
      default : begin
        featureConv11Convert_1_io_start = 1'b0;
      end
    endcase
  end


endmodule
