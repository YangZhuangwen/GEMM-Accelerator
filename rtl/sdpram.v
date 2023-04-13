// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : sdpram
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module sdpram (
  output     [575:0]  doutb,
  input      [12:0]   addra,
  input      [9:0]    addrb,
  input      [71:0]   dina,
  input               ena,
  input               enb,
  input      [0:0]    wea,
  input               clk
);

  wire                temp_dbiterrb;
  wire       [575:0]  temp_doutb;
  wire                temp_sbiterrb;
  wire                dbiterrb;
  wire                sbiterrb;
  wire                injectdbiterra;
  wire                injectsbiterra;
  wire                regceb;
  wire                rstb;
  wire                sleep;

  xpm_memory_sdpram #(
    .ADDR_WIDTH_A(13),
    .ADDR_WIDTH_B(10),
    .AUTO_SLEEP_TIME(0),
    .BYTE_WRITE_WIDTH_A(72),
    .CASCADE_HEIGHT(0),
    .CLOCKING_MODE("common_clock"),
    .ECC_MODE("no_ecc"),
    .MEMORY_INIT_FILE("none"),
    .MEMORY_INIT_PARAM("0"),
    .MEMORY_OPTIMIZATION("true"),
    .MEMORY_PRIMITIVE("block"),
    .MEMORY_SIZE(589824),
    .MESSAGE_CONTROL(0),
    .READ_DATA_WIDTH_B(576),
    .READ_LATENCY_B(1),
    .READ_RESET_VALUE_B("0"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_ASSERT_CHK(0),
    .USE_EMBEDDED_CONSTRAINT(0),
    .USE_MEM_INIT(1),
    .WAKEUP_TIME("disable_sleep"),
    .WRITE_DATA_WIDTH_A(72),
    .WRITE_MODE_B("read_first"),
    .USE_MEM_INIT_MMI(0),
    .WRITE_PROTECT(1)
  ) temp (
    .dbiterrb       (temp_dbiterrb    ), //o
    .doutb          (temp_doutb[575:0]), //o
    .sbiterrb       (temp_sbiterrb    ), //o
    .addra          (addra[12:0]      ), //i
    .addrb          (addrb[9:0]       ), //i
    .clka           (clk              ), //i
    .clkb           (clk              ), //i
    .dina           (dina[71:0]       ), //i
    .ena            (ena              ), //i
    .enb            (enb              ), //i
    .injectdbiterra (injectdbiterra   ), //i
    .injectsbiterra (injectsbiterra   ), //i
    .regceb         (regceb           ), //i
    .rstb           (rstb             ), //i
    .sleep          (sleep            ), //i
    .wea            (wea              )  //i
  );
  assign injectdbiterra = 1'b0;
  assign injectsbiterra = 1'b0;
  assign regceb = 1'b1;
  assign rstb = 1'b0;
  assign sleep = 1'b0;
  assign dbiterrb = temp_dbiterrb;
  assign doutb = temp_doutb;
  assign sbiterrb = temp_sbiterrb;

endmodule
