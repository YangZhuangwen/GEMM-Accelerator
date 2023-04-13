// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : WaStreamFifo
// Date      : 13/04/2023, 09:24:14

`timescale 1ns/1ps 
module WaStreamFifo (
  input               push_valid,
  output              push_ready,
  input      [63:0]   push_payload,
  output              pop_valid,
  input               pop_ready,
  output     [63:0]   pop_payload,
  input               flush,
  output reg [2:0]    occupancy,
  output reg [2:0]    availability,
  output reg          almost_full,
  input               clk,
  input               reset,
  input               softReset
);

  reg        [63:0]   _zz_logic_ram_port0;
  wire       [2:0]    _zz_logic_pushPtr_valueNext;
  wire       [0:0]    _zz_logic_pushPtr_valueNext_1;
  wire       [2:0]    _zz_logic_popPtr_valueNext;
  wire       [0:0]    _zz_logic_popPtr_valueNext_1;
  wire                _zz_logic_ram_port;
  wire                _zz_pop_payload;
  wire       [63:0]   _zz_logic_ram_port_1;
  wire       [2:0]    _zz_occupancy;
  wire       [2:0]    _zz_availability;
  wire       [2:0]    _zz_availability_1;
  wire       [2:0]    _zz_availability_2;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [2:0]    logic_pushPtr_valueNext;
  reg        [2:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [2:0]    logic_popPtr_valueNext;
  reg        [2:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_pop_valid;
  wire                when_Stream_l1075;
  wire       [2:0]    logic_ptrDif;
  wire                when_WaFifo_l23;
  reg [63:0] logic_ram [0:4];

  assign _zz_logic_pushPtr_valueNext_1 = logic_pushPtr_willIncrement;
  assign _zz_logic_pushPtr_valueNext = {2'd0, _zz_logic_pushPtr_valueNext_1};
  assign _zz_logic_popPtr_valueNext_1 = logic_popPtr_willIncrement;
  assign _zz_logic_popPtr_valueNext = {2'd0, _zz_logic_popPtr_valueNext_1};
  assign _zz_occupancy = (3'b101 + logic_ptrDif);
  assign _zz_availability = (3'b101 + _zz_availability_1);
  assign _zz_availability_1 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_availability_2 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_pop_payload = 1'b1;
  assign _zz_logic_ram_port_1 = push_payload;
  always @(posedge clk) begin
    if(_zz_pop_payload) begin
      _zz_logic_ram_port0 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @(posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= _zz_logic_ram_port_1;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing) begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willClear = 1'b0;
    if(flush) begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 3'b100);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @(*) begin
    if(logic_pushPtr_willOverflow) begin
      logic_pushPtr_valueNext = 3'b000;
    end else begin
      logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_logic_pushPtr_valueNext);
    end
    if(logic_pushPtr_willClear) begin
      logic_pushPtr_valueNext = 3'b000;
    end
  end

  always @(*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping) begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_popPtr_willClear = 1'b0;
    if(flush) begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 3'b100);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @(*) begin
    if(logic_popPtr_willOverflow) begin
      logic_popPtr_valueNext = 3'b000;
    end else begin
      logic_popPtr_valueNext = (logic_popPtr_value + _zz_logic_popPtr_valueNext);
    end
    if(logic_popPtr_willClear) begin
      logic_popPtr_valueNext = 3'b000;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (push_valid && push_ready);
  assign logic_popping = (pop_valid && pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign push_ready = (! logic_full);
  assign pop_valid = ((! logic_empty) && (! (_zz_pop_valid && (! logic_full))));
  assign pop_payload = _zz_logic_ram_port0;
  assign when_Stream_l1075 = (logic_pushing != logic_popping);
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  always @(*) begin
    if(logic_ptrMatch) begin
      occupancy = (logic_risingOccupancy ? 3'b101 : 3'b000);
    end else begin
      occupancy = ((logic_popPtr_value < logic_pushPtr_value) ? logic_ptrDif : _zz_occupancy);
    end
  end

  always @(*) begin
    if(logic_ptrMatch) begin
      availability = (logic_risingOccupancy ? 3'b000 : 3'b101);
    end else begin
      availability = ((logic_popPtr_value < logic_pushPtr_value) ? _zz_availability : _zz_availability_2);
    end
  end

  assign when_WaFifo_l23 = (availability <= 3'b001);
  always @(*) begin
    if(when_WaFifo_l23) begin
      almost_full = 1'b1;
    end else begin
      almost_full = 1'b0;
    end
  end

  always @(posedge clk) begin
    if(reset || softReset) begin
      logic_pushPtr_value <= 3'b000;
      logic_popPtr_value <= 3'b000;
      logic_risingOccupancy <= 1'b0;
      _zz_pop_valid <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_pop_valid <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if(when_Stream_l1075) begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(flush) begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule
