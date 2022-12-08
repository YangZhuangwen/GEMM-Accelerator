package conv.compute

import config.Config._
import spinal.core._

class Systolic_Array(Array_Size: Int, Tile_Size: Int, dataWidthIn: Int, dataWidthOut: Int) extends Component {
  val io = new Bundle {
    val start = in Bool()
    val last = in Bool()
    val A_Array = in UInt (Array_Size * Tile_Size * dataWidthIn bits)
    val B_Array = in UInt (Array_Size * Tile_Size * dataWidthIn bits)
    val Array_OUT = out UInt (Tile_Size * Tile_Size * dataWidthOut bits)
  }
  noIoPrefix()
  val Array_temp = Vec(UInt(Tile_Size * Tile_Size * dataWidthOut bits), Array_Size)
  val SCLR = Reg(Bool()) init false
  val last1 = Reg(Bool()) init false
  val last2 = Reg(Bool()) init false
  val CE = Reg(Bool()) init false
  val add_en = Reg(Bool()) init false
  CE := io.start
  last1 := io.last
  last2 := last1
  SCLR := last2

  (0 to Array_Size - 1).foreach { i =>
    val tile = new Tile(Tile_Size, dataWidthIn, dataWidthOut)
    tile.io.CE <> CE
    tile.io.SCLR <> SCLR
    tile.io.A <> io.A_Array((i + 1) * Tile_Size * dataWidthIn - 1 downto i * Tile_Size * dataWidthIn)
    tile.io.B <> io.B_Array((i + 1) * Tile_Size * dataWidthIn - 1 downto i * Tile_Size * dataWidthIn)
    tile.io.Tile_OUT <> Array_temp(i)
  }
  io.Array_OUT := Array_temp(0) //这里应该是把8个阵列相加再赋出去

  /*
   * 这里缺少把8个阵列逐级相加的代码，还没想好
   */
}

object Systolic_Array extends App {
  val clkcfg = ClockDomainConfig(resetKind = SYNC, resetActiveLevel = HIGH) //同步高复位
  SpinalConfig(
    targetDirectory = "./" + filePath,
    headerWithDate = true,
    defaultConfigForClockDomains = clkcfg
  ).generateVerilog(new Systolic_Array(8, 8, 8, 32))
}