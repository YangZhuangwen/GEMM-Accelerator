// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : WaXpmSyncFifo
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module WaXpmSyncFifo (
  input      [11:0]   sCount,
  input      [11:0]   mCount,
  output reg          sReady,
  output reg          mReady,
  input               reset,
  input               clk,
  input               dataIn_valid,
  input      [63:0]   dataIn_payload,
  input               rd_en,
  output     [63:0]   dout
);

  wire                fifo_full;
  wire                fifo_empty;
  wire       [63:0]   fifo_dout;
  wire       [11:0]   fifo_wr_data_count;
  wire       [11:0]   fifo_rd_data_count;
  wire                fifo_data_valid;
  wire                fifo_rd_rst_busy;
  wire                fifo_wr_rst_busy;
  wire       [11:0]   _zz_when_WaFifo_l64;
  wire                when_WaFifo_l64;
  wire                when_WaFifo_l69;

  assign _zz_when_WaFifo_l64 = (fifo_wr_data_count + sCount);
  FifoSync fifo (
    .full          (fifo_full               ), //o
    .wr_en         (dataIn_valid            ), //i
    .din           (dataIn_payload[63:0]    ), //i
    .empty         (fifo_empty              ), //o
    .dout          (fifo_dout[63:0]         ), //o
    .rd_en         (rd_en                   ), //i
    .wr_data_count (fifo_wr_data_count[11:0]), //o
    .rd_data_count (fifo_rd_data_count[11:0]), //o
    .data_valid    (fifo_data_valid         ), //o
    .rd_rst_busy   (fifo_rd_rst_busy        ), //o
    .wr_rst_busy   (fifo_wr_rst_busy        ), //o
    .reset         (reset                   ), //i
    .clk           (clk                     )  //i
  );
  assign dout = fifo_dout;
  assign when_WaFifo_l64 = (_zz_when_WaFifo_l64 < 12'h7f6);
  always @(*) begin
    if(when_WaFifo_l64) begin
      sReady = 1'b1;
    end else begin
      sReady = 1'b0;
    end
  end

  assign when_WaFifo_l69 = (mCount <= fifo_rd_data_count);
  always @(*) begin
    if(when_WaFifo_l69) begin
      mReady = 1'b1;
    end else begin
      mReady = 1'b0;
    end
  end


endmodule
