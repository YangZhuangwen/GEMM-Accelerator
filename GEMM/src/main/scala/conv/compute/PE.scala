package conv.compute

import config.Config._
import org.apache.commons.io.FileUtils
import spinal.core._
import spinal.lib._


class PE(componentName: String, dataWidthIn: Int, dataWidthOut: Int) extends BlackBox {

  val clk = in Bool()
  val CE = in Bool()
  val SCLR = in Bool()
  val a = in UInt (dataWidthIn bits)
  val b = in UInt (dataWidthIn bits)
  val pe_out = out UInt (dataWidthOut bits)
  val acout = out UInt (dataWidthIn bits)
  val bcout = out UInt (dataWidthIn bits)

  this.mapClockDomain(clock = clk)


  setInlineVerilog(
    """module PE(
        	input clk,
        	input	CE,
        	input SCLR,
        	input	[7:0]	a,
        	input	[7:0]	b,
        	output	[31:0]	pe_out,
        	output	 [7:0]	acout,
        	output   [7:0]	bcout
        );
	    wire signed	[7:0]	a_in;
	    assign a_in = $signed(a);""" + "\r\n          " + componentName + " " + componentName + "_u" +
      """ (
            .CLK(clk),      // input wire CLK
            .CE(CE),        // input wire CE
            .A(a_in),          // input wire [7 : 0] A
            .B({1'b0,b}),          // input wire [8 : 0] B
            .ACOUT(acout),  // output wire [29 : 0] ACOUT
            .BCOUT(bcout),  // output wire [17 : 0] BCOUT
            .P(pe_out),          // output wire [47 : 0] P
            .SCLR(SCLR)  // input wire SCLR
	        );

endmodule
      """.stripMargin)


}

object PE {
  private var genClk = true

  def genTcl(componentName: String): Unit = {
    import java.io._
    val createDspCmd = s"set dspExit [lsearch -exact [get_ips $componentName] $componentName]\n" +
      s"if { $$dspExit <0} {\n" +
      s"create_ip -name dsp_macro -vendor xilinx.com -library ip -version 1.0 -module_name $componentName\n" +
      s"}\n" + s"set_property -dict [list CONFIG.Component_Name {peee} CONFIG.instruction1 {A*B+P} CONFIG.pipeline_options {By_Tier} CONFIG.tier_4 {true} CONFIG.tier_5 {true} CONFIG.a_width {8} CONFIG.b_width {8} CONFIG.has_acout {true} CONFIG.has_bcout {true} CONFIG.has_ce {true} CONFIG.has_sclr {true} CONFIG.tier_6 {true} CONFIG.areg_3 {false} CONFIG.areg_4 {true} CONFIG.breg_3 {false} CONFIG.breg_4 {true} CONFIG.creg_3 {false} CONFIG.creg_4 {false} CONFIG.creg_5 {false} CONFIG.mreg_5 {true} CONFIG.preg_6 {true} CONFIG.d_width {18} CONFIG.a_binarywidth {0} CONFIG.b_binarywidth {0} CONFIG.concat_width {48} CONFIG.concat_binarywidth {0} CONFIG.c_width {48} CONFIG.c_binarywidth {0} CONFIG.pcin_binarywidth {0} CONFIG.p_full_width {48} CONFIG.p_width {48}] [get_ips $componentName]"

    FileUtils.forceMkdir(new File(filePath + File.separator + "tcl"))
    val tclHeader = new PrintWriter(new File(filePath + File.separator + "tcl" + File.separator + s"generate$componentName.tcl"))
    tclHeader.write(createDspCmd)
    tclHeader.write("\r\n")
    tclHeader.close()
  }

  def apply(componentName: String, myClockDomain: ClockDomain = null, genericTcl: Boolean = false, dataWidthIn: Int, dataWidthOut: Int) = {
    if (genericTcl) {
      genTcl(componentName)
    }
    val pe = new PE(componentName, dataWidthIn, dataWidthOut)
    pe
  }
}
