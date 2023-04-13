// Generator : SpinalHDL v1.7.3    git head : ed8004c489ee8a38c2cab309d0447b543fe9d5b8
// Component : PEmul
// Date      : 13/04/2023, 09:24:14

`timescale 1ns/1ps module PEmul (
              input             [7:0] a       ,  //feature
              input             [7:0] b       ,  //weight
              output           [31:0] p      ,
              input             CLK
          );

          wire signed       [7:0]   bin;
          assign bin = $signed(b);

          
          PEMul PEMul_inst (
            .CLK(CLK),  // input wire CLK
            .A(a),      // input wire [7 : 0] A
            .B(bin),      // input wire [7 : 0] B
            .P(p)      // output wire [31 : 0] P
          );

endmodule
      