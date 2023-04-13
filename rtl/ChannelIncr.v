// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : ChannelIncr
// Date      : 13/04/2023, 09:24:15

`timescale 1ns/1ps 
module ChannelIncr (
  input               sData_valid,
  output              sData_ready,
  input      [7:0]    sData_payload,
  output              mData_valid,
  input               mData_ready,
  output     [63:0]   mData_payload
);


  assign sData_ready = mData_ready;
  assign mData_valid = sData_valid;
  assign mData_payload = {56'd0, sData_payload};

endmodule
