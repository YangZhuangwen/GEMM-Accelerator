package conv.compute

import config.Config._
import spinal.core._

class Tile(Tile_Size: Int, dataWidthIn: Int, dataWidthOut: Int) extends Component {
  val io = new Bundle {
    val CE = in Bool()
    val SCLR = in Bool()
    val A = in UInt (Tile_Size * dataWidthIn bits)
    val B = in UInt (Tile_Size * dataWidthIn bits)
    //    val Tile_OUT = out UInt (Tile_Size * Tile_Size * dataWidthOut bits)
    val Tile_OUT = out UInt (Tile_Size * Tile_Size * dataWidthOut bits)
  }
  noIoPrefix()
  val CE_srl = Reg(Bits((Tile_Size * 2 - 2) bits)) init 0
  CE_srl(0) := io.CE
  (0 to Tile_Size * 2 - 4).foreach { i =>
    CE_srl(i + 1) := CE_srl(i)
  }
  val SCLR_srl = Reg(Bits((Tile_Size * 2 - 2) bits)) init 0
  SCLR_srl(0) := io.SCLR
  (0 to Tile_Size * 2 - 4).foreach { i =>
    SCLR_srl(i + 1) := SCLR_srl(i)
  }
  val ACOUT = Vec(Vec(UInt(dataWidthIn bits), Tile_Size), Tile_Size)
  val BCOUT = Vec(Vec(UInt(dataWidthIn bits), Tile_Size), Tile_Size)

  val pe_00 = PE("pe", myClockDomain = this.clockDomain, genericTcl = true, dataWidthIn, dataWidthOut)
  pe_00.CE <> io.CE
  pe_00.SCLR <> io.SCLR
  pe_00.a <> io.A(dataWidthIn - 1 downto 0)
  pe_00.b <> io.B(dataWidthIn - 1 downto 0)
  pe_00.pe_out <> io.Tile_OUT(dataWidthOut - 1 downto 0)
  pe_00.acout <> ACOUT(0)(0)
  pe_00.bcout <> BCOUT(0)(0)

  (1 to Tile_Size - 1).foreach { i =>
    val pe_righttop = PE("pe", myClockDomain = this.clockDomain, genericTcl = false, dataWidthIn, dataWidthOut)
    pe_righttop.CE <> CE_srl(i - 1)
    pe_righttop.SCLR <> SCLR_srl(i - 1)
    pe_righttop.a <> ACOUT(0)(i - 1)
    pe_righttop.b <> io.B((i + 1) * dataWidthIn - 1 downto i * dataWidthIn)
    pe_righttop.pe_out <> io.Tile_OUT((i + 1) * dataWidthOut - 1 downto i * dataWidthOut)
    pe_righttop.acout <> ACOUT(0)(i)
    pe_righttop.bcout <> BCOUT(0)(i)
  }

  (1 to Tile_Size - 1).foreach { i =>
    val pe_leftbottom = PE("pe", myClockDomain = this.clockDomain, genericTcl = false, dataWidthIn, dataWidthOut)
    pe_leftbottom.CE <> CE_srl(i - 1)
    pe_leftbottom.SCLR <> SCLR_srl(i - 1)
    pe_leftbottom.a <> io.A((i + 1) * dataWidthIn - 1 downto i * dataWidthIn)
    pe_leftbottom.b <> BCOUT(i - 1)(0)
    pe_leftbottom.pe_out <> io.Tile_OUT((i * Tile_Size + 1) * dataWidthOut - 1 downto i * Tile_Size * dataWidthOut)
    pe_leftbottom.acout <> ACOUT(i)(0)
    pe_leftbottom.bcout <> BCOUT(i)(0)
  }

  (1 to Tile_Size - 1).foreach { i =>
    (1 to Tile_Size - 1).foreach { j =>
      val pe_rest = PE("pe", myClockDomain = this.clockDomain, genericTcl = false, dataWidthIn, dataWidthOut)
      pe_rest.CE <> CE_srl(i + j - 1)
      pe_rest.SCLR <> SCLR_srl(i + j - 1)
      pe_rest.a <> ACOUT(i)(j - 1)
      pe_rest.b <> BCOUT(i - 1)(j)
      pe_rest.pe_out <> io.Tile_OUT((j * Tile_Size + i + 1) * dataWidthOut - 1 downto (j * Tile_Size + i) * dataWidthOut)
      pe_rest.acout <> ACOUT(i)(j)
      pe_rest.bcout <> BCOUT(i)(j)
    }
  }

}

object Tile extends App {
  val clkcfg = ClockDomainConfig(resetKind = SYNC, resetActiveLevel = HIGH) //同步高复位
  SpinalConfig(
    targetDirectory = "./" + filePath,
    headerWithDate = true,
    defaultConfigForClockDomains = clkcfg
  ).generateVerilog(new Tile(8, 8, 32))
}