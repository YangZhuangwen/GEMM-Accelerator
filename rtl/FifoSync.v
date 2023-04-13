// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : FifoSync
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module FifoSync (
  output              full,
  input               wr_en,
  input      [63:0]   din,
  output              empty,
  output     [63:0]   dout,
  input               rd_en,
  output     [11:0]   wr_data_count,
  output     [11:0]   rd_data_count,
  output              data_valid,
  output              rd_rst_busy,
  output              wr_rst_busy,
  input               reset,
  input               clk
);

  wire                xpm_fifo_sync_1_almost_empty;
  wire                xpm_fifo_sync_1_almost_full;
  wire                xpm_fifo_sync_1_data_valid;
  wire                xpm_fifo_sync_1_dbiterr;
  wire       [63:0]   xpm_fifo_sync_1_dout;
  wire                xpm_fifo_sync_1_empty;
  wire                xpm_fifo_sync_1_full;
  wire                xpm_fifo_sync_1_overflow;
  wire                xpm_fifo_sync_1_prog_empty;
  wire                xpm_fifo_sync_1_prog_full;
  wire       [11:0]   xpm_fifo_sync_1_rd_data_count;
  wire                xpm_fifo_sync_1_rd_rst_busy;
  wire                xpm_fifo_sync_1_sbiterr;
  wire                xpm_fifo_sync_1_underflow;
  wire                xpm_fifo_sync_1_wr_ack;
  wire       [11:0]   xpm_fifo_sync_1_wr_data_count;
  wire                xpm_fifo_sync_1_wr_rst_busy;
  wire                almost_empty;
  wire                almost_full;
  wire                dbiterr;
  wire                overflow;
  wire                prog_empty;
  wire                prog_full;
  wire                sbiterr;
  wire                underflow;
  wire                wr_ack;
  wire                injectdbiterr;
  wire                injectsbiterr;
  wire                sleep;

  xpm_fifo_sync #(
    .CASCADE_HEIGHT(0),
    .DOUT_RESET_VALUE(0),
    .ECC_MODE("no_ecc"),
    .FIFO_MEMORY_TYPE("block"),
    .FIFO_READ_LATENCY(0),
    .FIFO_WRITE_DEPTH(2048),
    .FULL_RESET_VALUE(0),
    .PROG_EMPTY_THRESH(5),
    .PROG_FULL_THRESH(2043),
    .RD_DATA_COUNT_WIDTH(12),
    .READ_DATA_WIDTH(64),
    .READ_MODE("fwft"),
    .SIM_ASSERT_CHK(0),
    .USE_ADV_FEATURES("0707"),
    .WAKEUP_TIME(0),
    .WRITE_DATA_WIDTH(64),
    .WR_DATA_COUNT_WIDTH(12)
  ) xpm_fifo_sync_1 (
    .almost_empty  (xpm_fifo_sync_1_almost_empty       ), //o
    .almost_full   (xpm_fifo_sync_1_almost_full        ), //o
    .data_valid    (xpm_fifo_sync_1_data_valid         ), //o
    .dbiterr       (xpm_fifo_sync_1_dbiterr            ), //o
    .dout          (xpm_fifo_sync_1_dout[63:0]         ), //o
    .empty         (xpm_fifo_sync_1_empty              ), //o
    .full          (xpm_fifo_sync_1_full               ), //o
    .overflow      (xpm_fifo_sync_1_overflow           ), //o
    .prog_empty    (xpm_fifo_sync_1_prog_empty         ), //o
    .prog_full     (xpm_fifo_sync_1_prog_full          ), //o
    .rd_data_count (xpm_fifo_sync_1_rd_data_count[11:0]), //o
    .rd_rst_busy   (xpm_fifo_sync_1_rd_rst_busy        ), //o
    .sbiterr       (xpm_fifo_sync_1_sbiterr            ), //o
    .underflow     (xpm_fifo_sync_1_underflow          ), //o
    .wr_ack        (xpm_fifo_sync_1_wr_ack             ), //o
    .wr_data_count (xpm_fifo_sync_1_wr_data_count[11:0]), //o
    .wr_rst_busy   (xpm_fifo_sync_1_wr_rst_busy        ), //o
    .din           (din[63:0]                          ), //i
    .injectdbiterr (injectdbiterr                      ), //i
    .injectsbiterr (injectsbiterr                      ), //i
    .rd_en         (rd_en                              ), //i
    .rst           (reset                              ), //i
    .sleep         (sleep                              ), //i
    .wr_clk        (clk                                ), //i
    .wr_en         (wr_en                              )  //i
  );
  assign injectdbiterr = 1'b0;
  assign injectsbiterr = 1'b0;
  assign sleep = 1'b0;
  assign almost_empty = xpm_fifo_sync_1_almost_empty;
  assign almost_full = xpm_fifo_sync_1_almost_full;
  assign data_valid = xpm_fifo_sync_1_data_valid;
  assign dbiterr = xpm_fifo_sync_1_dbiterr;
  assign dout = xpm_fifo_sync_1_dout;
  assign empty = xpm_fifo_sync_1_empty;
  assign full = xpm_fifo_sync_1_full;
  assign overflow = xpm_fifo_sync_1_overflow;
  assign prog_empty = xpm_fifo_sync_1_prog_empty;
  assign prog_full = xpm_fifo_sync_1_prog_full;
  assign rd_data_count = xpm_fifo_sync_1_rd_data_count;
  assign rd_rst_busy = xpm_fifo_sync_1_rd_rst_busy;
  assign sbiterr = xpm_fifo_sync_1_sbiterr;
  assign underflow = xpm_fifo_sync_1_underflow;
  assign wr_ack = xpm_fifo_sync_1_wr_ack;
  assign wr_data_count = xpm_fifo_sync_1_wr_data_count;
  assign wr_rst_busy = xpm_fifo_sync_1_wr_rst_busy;

endmodule
