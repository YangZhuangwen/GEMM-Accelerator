// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : lajiPE
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module lajiPE (
  input               weight_CE,
  input               feature_CE,
  input      [7:0]    weight_0,
  input      [7:0]    weight_1,
  input      [7:0]    weight_2,
  input      [7:0]    weight_3,
  input      [7:0]    weight_4,
  input      [7:0]    weight_5,
  input      [7:0]    weight_6,
  input      [7:0]    weight_7,
  input      [7:0]    weight_8,
  input      [7:0]    feature_0,
  input      [7:0]    feature_1,
  input      [7:0]    feature_2,
  input      [7:0]    feature_3,
  input      [7:0]    feature_4,
  input      [7:0]    feature_5,
  input      [7:0]    feature_6,
  input      [7:0]    feature_7,
  input      [7:0]    feature_8,
  output reg [7:0]    feature_out_0,
  output reg [7:0]    feature_out_1,
  output reg [7:0]    feature_out_2,
  output reg [7:0]    feature_out_3,
  output reg [7:0]    feature_out_4,
  output reg [7:0]    feature_out_5,
  output reg [7:0]    feature_out_6,
  output reg [7:0]    feature_out_7,
  output reg [7:0]    feature_out_8,
  input               clk,
  input               reset,
  input               softReset
);

  reg        [7:0]    pEmul_1_a;
  reg        [7:0]    pEmul_1_b;
  reg        [7:0]    pEmul_2_a;
  reg        [7:0]    pEmul_2_b;
  reg        [7:0]    pEmul_3_a;
  reg        [7:0]    pEmul_3_b;
  reg        [7:0]    pEmul_4_a;
  reg        [7:0]    pEmul_4_b;
  reg        [7:0]    pEmul_5_a;
  reg        [7:0]    pEmul_5_b;
  reg        [7:0]    pEmul_6_a;
  reg        [7:0]    pEmul_6_b;
  reg        [7:0]    pEmul_7_a;
  reg        [7:0]    pEmul_7_b;
  reg        [7:0]    pEmul_8_a;
  reg        [7:0]    pEmul_8_b;
  reg        [7:0]    pEmul_9_a;
  reg        [7:0]    pEmul_9_b;
  wire       [31:0]   pEmul_1_p;
  wire       [31:0]   pEmul_2_p;
  wire       [31:0]   pEmul_3_p;
  wire       [31:0]   pEmul_4_p;
  wire       [31:0]   pEmul_5_p;
  wire       [31:0]   pEmul_6_p;
  wire       [31:0]   pEmul_7_p;
  wire       [31:0]   pEmul_8_p;
  wire       [31:0]   pEmul_9_p;
  reg        [7:0]    weight_reg_0;
  reg        [7:0]    weight_reg_1;
  reg        [7:0]    weight_reg_2;
  reg        [7:0]    weight_reg_3;
  reg        [7:0]    weight_reg_4;
  reg        [7:0]    weight_reg_5;
  reg        [7:0]    weight_reg_6;
  reg        [7:0]    weight_reg_7;
  reg        [7:0]    weight_reg_8;
  wire       [31:0]   mulOut_0;
  wire       [31:0]   mulOut_1;
  wire       [31:0]   mulOut_2;
  wire       [31:0]   mulOut_3;
  wire       [31:0]   mulOut_4;
  wire       [31:0]   mulOut_5;
  wire       [31:0]   mulOut_6;
  wire       [31:0]   mulOut_7;
  wire       [31:0]   mulOut_8;

  PEmul pEmul_1 (
    .a   (pEmul_1_a[7:0] ), //i
    .b   (pEmul_1_b[7:0] ), //i
    .p   (pEmul_1_p[31:0]), //o
    .CLK (clk            )  //i
  );
  PEmul pEmul_2 (
    .a   (pEmul_2_a[7:0] ), //i
    .b   (pEmul_2_b[7:0] ), //i
    .p   (pEmul_2_p[31:0]), //o
    .CLK (clk            )  //i
  );
  PEmul pEmul_3 (
    .a   (pEmul_3_a[7:0] ), //i
    .b   (pEmul_3_b[7:0] ), //i
    .p   (pEmul_3_p[31:0]), //o
    .CLK (clk            )  //i
  );
  PEmul pEmul_4 (
    .a   (pEmul_4_a[7:0] ), //i
    .b   (pEmul_4_b[7:0] ), //i
    .p   (pEmul_4_p[31:0]), //o
    .CLK (clk            )  //i
  );
  PEmul pEmul_5 (
    .a   (pEmul_5_a[7:0] ), //i
    .b   (pEmul_5_b[7:0] ), //i
    .p   (pEmul_5_p[31:0]), //o
    .CLK (clk            )  //i
  );
  PEmul pEmul_6 (
    .a   (pEmul_6_a[7:0] ), //i
    .b   (pEmul_6_b[7:0] ), //i
    .p   (pEmul_6_p[31:0]), //o
    .CLK (clk            )  //i
  );
  PEmul pEmul_7 (
    .a   (pEmul_7_a[7:0] ), //i
    .b   (pEmul_7_b[7:0] ), //i
    .p   (pEmul_7_p[31:0]), //o
    .CLK (clk            )  //i
  );
  PEmul pEmul_8 (
    .a   (pEmul_8_a[7:0] ), //i
    .b   (pEmul_8_b[7:0] ), //i
    .p   (pEmul_8_p[31:0]), //o
    .CLK (clk            )  //i
  );
  PEmul pEmul_9 (
    .a   (pEmul_9_a[7:0] ), //i
    .b   (pEmul_9_b[7:0] ), //i
    .p   (pEmul_9_p[31:0]), //o
    .CLK (clk            )  //i
  );
  always @(*) begin
    if(feature_CE) begin
      pEmul_1_a = feature_0;
    end else begin
      pEmul_1_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_1_b = weight_reg_0;
    end else begin
      pEmul_1_b = 8'h0;
    end
  end

  assign mulOut_0 = pEmul_1_p;
  always @(*) begin
    if(feature_CE) begin
      pEmul_2_a = feature_1;
    end else begin
      pEmul_2_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_2_b = weight_reg_1;
    end else begin
      pEmul_2_b = 8'h0;
    end
  end

  assign mulOut_1 = pEmul_2_p;
  always @(*) begin
    if(feature_CE) begin
      pEmul_3_a = feature_2;
    end else begin
      pEmul_3_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_3_b = weight_reg_2;
    end else begin
      pEmul_3_b = 8'h0;
    end
  end

  assign mulOut_2 = pEmul_3_p;
  always @(*) begin
    if(feature_CE) begin
      pEmul_4_a = feature_3;
    end else begin
      pEmul_4_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_4_b = weight_reg_3;
    end else begin
      pEmul_4_b = 8'h0;
    end
  end

  assign mulOut_3 = pEmul_4_p;
  always @(*) begin
    if(feature_CE) begin
      pEmul_5_a = feature_4;
    end else begin
      pEmul_5_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_5_b = weight_reg_4;
    end else begin
      pEmul_5_b = 8'h0;
    end
  end

  assign mulOut_4 = pEmul_5_p;
  always @(*) begin
    if(feature_CE) begin
      pEmul_6_a = feature_5;
    end else begin
      pEmul_6_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_6_b = weight_reg_5;
    end else begin
      pEmul_6_b = 8'h0;
    end
  end

  assign mulOut_5 = pEmul_6_p;
  always @(*) begin
    if(feature_CE) begin
      pEmul_7_a = feature_6;
    end else begin
      pEmul_7_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_7_b = weight_reg_6;
    end else begin
      pEmul_7_b = 8'h0;
    end
  end

  assign mulOut_6 = pEmul_7_p;
  always @(*) begin
    if(feature_CE) begin
      pEmul_8_a = feature_7;
    end else begin
      pEmul_8_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_8_b = weight_reg_7;
    end else begin
      pEmul_8_b = 8'h0;
    end
  end

  assign mulOut_7 = pEmul_8_p;
  always @(*) begin
    if(feature_CE) begin
      pEmul_9_a = feature_8;
    end else begin
      pEmul_9_a = 8'h0;
    end
  end

  always @(*) begin
    if(feature_CE) begin
      pEmul_9_b = weight_reg_8;
    end else begin
      pEmul_9_b = 8'h0;
    end
  end

  assign mulOut_8 = pEmul_9_p;
  always @(posedge clk) begin
    if(reset || softReset) begin
      feature_out_0 <= 8'h0;
      feature_out_1 <= 8'h0;
      feature_out_2 <= 8'h0;
      feature_out_3 <= 8'h0;
      feature_out_4 <= 8'h0;
      feature_out_5 <= 8'h0;
      feature_out_6 <= 8'h0;
      feature_out_7 <= 8'h0;
      feature_out_8 <= 8'h0;
      weight_reg_0 <= 8'h0;
      weight_reg_1 <= 8'h0;
      weight_reg_2 <= 8'h0;
      weight_reg_3 <= 8'h0;
      weight_reg_4 <= 8'h0;
      weight_reg_5 <= 8'h0;
      weight_reg_6 <= 8'h0;
      weight_reg_7 <= 8'h0;
      weight_reg_8 <= 8'h0;
    end else begin
      if(weight_CE) begin
        weight_reg_0 <= weight_0;
        weight_reg_1 <= weight_1;
        weight_reg_2 <= weight_2;
        weight_reg_3 <= weight_3;
        weight_reg_4 <= weight_4;
        weight_reg_5 <= weight_5;
        weight_reg_6 <= weight_6;
        weight_reg_7 <= weight_7;
        weight_reg_8 <= weight_8;
      end else begin
        weight_reg_0 <= 8'h0;
        weight_reg_1 <= 8'h0;
        weight_reg_2 <= 8'h0;
        weight_reg_3 <= 8'h0;
        weight_reg_4 <= 8'h0;
        weight_reg_5 <= 8'h0;
        weight_reg_6 <= 8'h0;
        weight_reg_7 <= 8'h0;
        weight_reg_8 <= 8'h0;
      end
      if(feature_CE) begin
        feature_out_0 <= feature_0;
        feature_out_1 <= feature_1;
        feature_out_2 <= feature_2;
        feature_out_3 <= feature_3;
        feature_out_4 <= feature_4;
        feature_out_5 <= feature_5;
        feature_out_6 <= feature_6;
        feature_out_7 <= feature_7;
        feature_out_8 <= feature_8;
      end
    end
  end


endmodule
