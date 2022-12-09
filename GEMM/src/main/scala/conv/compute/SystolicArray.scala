package conv.compute

import config.Config._
import conv.compute.ADD_RANGE._
import spinal.core._


class SystolicArray(Array_Size: Int, Tile_Size: Int, dataWidthIn: Int, dataWidthOut: Int) extends Component {
  val io = new Bundle {
    val start = in Bool() //next clock push dataIn of pe00
    val last = in Bool() //this clock push last dataIn of pe00
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
  /*
   * 把8个阵列逐级相加,写死的代码
   * 这里用的是when-elsewhen-otherwise，没有用分立的when语句，否则otherwise不好写
   */
  val cnt = Reg(Bits(Array_Size * 2 - 1 bits)) init 0
  cnt(0) := last2
  (0 to Array_Size * 2 - 3).foreach { i =>
    cnt(i + 1) := cnt(i)
  }
  when(cnt(0)) {
    io.Array_OUT := ((pe00) -> (Array_temp(0)(pe00) + Array_temp(1)(pe00) + Array_temp(2)(pe00) + Array_temp(3)(pe00)
      + Array_temp(4)(pe00) + Array_temp(5)(pe00) + Array_temp(6)(pe00) + Array_temp(7)(pe00)).resize(32),
      default -> false)
  }.elsewhen(cnt(1)) {
    io.Array_OUT := ((pe01) -> (Array_temp(0)(pe01) + Array_temp(1)(pe01) + Array_temp(2)(pe01) + Array_temp(3)(pe01)
      + Array_temp(4)(pe01) + Array_temp(5)(pe01) + Array_temp(6)(pe01) + Array_temp(7)(pe01)).resize(32),
      (pe10) -> (Array_temp(0)(pe10) + Array_temp(1)(pe10) + Array_temp(2)(pe10) + Array_temp(3)(pe10)
        + Array_temp(4)(pe10) + Array_temp(5)(pe10) + Array_temp(6)(pe10) + Array_temp(7)(pe10)).resize(32),
      default -> false)
  }.elsewhen(cnt(2)) {
    io.Array_OUT := ((pe02) -> (Array_temp(0)(pe02) + Array_temp(1)(pe02) + Array_temp(2)(pe02) + Array_temp(3)(pe02)
      + Array_temp(4)(pe02) + Array_temp(5)(pe02) + Array_temp(6)(pe02) + Array_temp(7)(pe02)).resize(32),
      (pe20) -> (Array_temp(0)(pe20) + Array_temp(1)(pe20) + Array_temp(2)(pe20) + Array_temp(3)(pe20)
        + Array_temp(4)(pe20) + Array_temp(5)(pe20) + Array_temp(6)(pe20) + Array_temp(7)(pe20)).resize(32),
      (pe11) -> (Array_temp(0)(pe11) + Array_temp(1)(pe11) + Array_temp(2)(pe11) + Array_temp(3)(pe11)
        + Array_temp(4)(pe11) + Array_temp(5)(pe11) + Array_temp(6)(pe11) + Array_temp(7)(pe11)).resize(32),
      default -> false)
  }.elsewhen(cnt(3)) {
    io.Array_OUT := ((pe03) -> (Array_temp(0)(pe03) + Array_temp(1)(pe03) + Array_temp(2)(pe03) + Array_temp(3)(pe03)
      + Array_temp(4)(pe03) + Array_temp(5)(pe03) + Array_temp(6)(pe03) + Array_temp(7)(pe03)).resize(32),
      (pe30) -> (Array_temp(0)(pe30) + Array_temp(1)(pe30) + Array_temp(2)(pe30) + Array_temp(3)(pe30)
        + Array_temp(4)(pe30) + Array_temp(5)(pe30) + Array_temp(6)(pe30) + Array_temp(7)(pe30)).resize(32),
      (pe12) -> (Array_temp(0)(pe12) + Array_temp(1)(pe12) + Array_temp(2)(pe12) + Array_temp(3)(pe12)
        + Array_temp(4)(pe12) + Array_temp(5)(pe12) + Array_temp(6)(pe12) + Array_temp(7)(pe12)).resize(32),
      (pe21) -> (Array_temp(0)(pe21) + Array_temp(1)(pe21) + Array_temp(2)(pe21) + Array_temp(3)(pe21)
        + Array_temp(4)(pe21) + Array_temp(5)(pe21) + Array_temp(6)(pe21) + Array_temp(7)(pe21)).resize(32),
      default -> false)
  }.elsewhen(cnt(4)) {
    io.Array_OUT := ((pe04) -> (Array_temp(0)(pe04) + Array_temp(1)(pe04) + Array_temp(2)(pe04) + Array_temp(3)(pe04)
      + Array_temp(4)(pe04) + Array_temp(5)(pe04) + Array_temp(6)(pe04) + Array_temp(7)(pe04)).resize(32),
      (pe40) -> (Array_temp(0)(pe40) + Array_temp(1)(pe40) + Array_temp(2)(pe40) + Array_temp(3)(pe40)
        + Array_temp(4)(pe40) + Array_temp(5)(pe40) + Array_temp(6)(pe40) + Array_temp(7)(pe40)).resize(32),
      (pe13) -> (Array_temp(0)(pe13) + Array_temp(1)(pe13) + Array_temp(2)(pe13) + Array_temp(3)(pe13)
        + Array_temp(4)(pe13) + Array_temp(5)(pe13) + Array_temp(6)(pe13) + Array_temp(7)(pe13)).resize(32),
      (pe31) -> (Array_temp(0)(pe31) + Array_temp(1)(pe31) + Array_temp(2)(pe31) + Array_temp(3)(pe31)
        + Array_temp(4)(pe31) + Array_temp(5)(pe31) + Array_temp(6)(pe31) + Array_temp(7)(pe31)).resize(32),
      (pe22) -> (Array_temp(0)(pe22) + Array_temp(1)(pe22) + Array_temp(2)(pe22) + Array_temp(3)(pe22)
        + Array_temp(4)(pe22) + Array_temp(5)(pe22) + Array_temp(6)(pe22) + Array_temp(7)(pe22)).resize(32),
      default -> false)
  }.elsewhen(cnt(5)) {
    io.Array_OUT := ((pe05) -> (Array_temp(0)(pe05) + Array_temp(1)(pe05) + Array_temp(2)(pe05) + Array_temp(3)(pe05)
      + Array_temp(4)(pe05) + Array_temp(5)(pe05) + Array_temp(6)(pe05) + Array_temp(7)(pe05)).resize(32),
      (pe50) -> (Array_temp(0)(pe50) + Array_temp(1)(pe50) + Array_temp(2)(pe50) + Array_temp(3)(pe50)
        + Array_temp(4)(pe50) + Array_temp(5)(pe50) + Array_temp(6)(pe50) + Array_temp(7)(pe50)).resize(32),
      (pe14) -> (Array_temp(0)(pe14) + Array_temp(1)(pe14) + Array_temp(2)(pe14) + Array_temp(3)(pe14)
        + Array_temp(4)(pe14) + Array_temp(5)(pe14) + Array_temp(6)(pe14) + Array_temp(7)(pe14)).resize(32),
      (pe41) -> (Array_temp(0)(pe41) + Array_temp(1)(pe41) + Array_temp(2)(pe41) + Array_temp(3)(pe41)
        + Array_temp(4)(pe41) + Array_temp(5)(pe41) + Array_temp(6)(pe41) + Array_temp(7)(pe41)).resize(32),
      (pe23) -> (Array_temp(0)(pe23) + Array_temp(1)(pe23) + Array_temp(2)(pe23) + Array_temp(3)(pe23)
        + Array_temp(4)(pe23) + Array_temp(5)(pe23) + Array_temp(6)(pe23) + Array_temp(7)(pe23)).resize(32),
      (pe32) -> (Array_temp(0)(pe32) + Array_temp(1)(pe32) + Array_temp(2)(pe32) + Array_temp(3)(pe32)
        + Array_temp(4)(pe32) + Array_temp(5)(pe32) + Array_temp(6)(pe32) + Array_temp(7)(pe32)).resize(32),
      default -> false)
  }.elsewhen(cnt(6)) {
    io.Array_OUT := ((pe06) -> (Array_temp(0)(pe06) + Array_temp(1)(pe06) + Array_temp(2)(pe06) + Array_temp(3)(pe06)
      + Array_temp(4)(pe06) + Array_temp(5)(pe06) + Array_temp(6)(pe06) + Array_temp(7)(pe06)).resize(32),
      (pe60) -> (Array_temp(0)(pe60) + Array_temp(1)(pe60) + Array_temp(2)(pe60) + Array_temp(3)(pe60)
        + Array_temp(4)(pe60) + Array_temp(5)(pe60) + Array_temp(6)(pe60) + Array_temp(7)(pe60)).resize(32),
      (pe15) -> (Array_temp(0)(pe15) + Array_temp(1)(pe15) + Array_temp(2)(pe15) + Array_temp(3)(pe15)
        + Array_temp(4)(pe15) + Array_temp(5)(pe15) + Array_temp(6)(pe15) + Array_temp(7)(pe15)).resize(32),
      (pe51) -> (Array_temp(0)(pe51) + Array_temp(1)(pe51) + Array_temp(2)(pe51) + Array_temp(3)(pe51)
        + Array_temp(4)(pe51) + Array_temp(5)(pe51) + Array_temp(6)(pe51) + Array_temp(7)(pe51)).resize(32),
      (pe24) -> (Array_temp(0)(pe24) + Array_temp(1)(pe24) + Array_temp(2)(pe24) + Array_temp(3)(pe24)
        + Array_temp(4)(pe24) + Array_temp(5)(pe24) + Array_temp(6)(pe24) + Array_temp(7)(pe24)).resize(32),
      (pe42) -> (Array_temp(0)(pe42) + Array_temp(1)(pe42) + Array_temp(2)(pe42) + Array_temp(3)(pe42)
        + Array_temp(4)(pe42) + Array_temp(5)(pe42) + Array_temp(6)(pe42) + Array_temp(7)(pe42)).resize(32),
      (pe33) -> (Array_temp(0)(pe33) + Array_temp(1)(pe33) + Array_temp(2)(pe33) + Array_temp(3)(pe33)
        + Array_temp(4)(pe33) + Array_temp(5)(pe33) + Array_temp(6)(pe33) + Array_temp(7)(pe33)).resize(32),
      default -> false)
  }.elsewhen(cnt(7)) {
    io.Array_OUT := ((pe07) -> (Array_temp(0)(pe07) + Array_temp(1)(pe07) + Array_temp(2)(pe07) + Array_temp(3)(pe07)
      + Array_temp(4)(pe07) + Array_temp(5)(pe07) + Array_temp(6)(pe07) + Array_temp(7)(pe07)).resize(32),
      (pe70) -> (Array_temp(0)(pe70) + Array_temp(1)(pe70) + Array_temp(2)(pe70) + Array_temp(3)(pe70)
        + Array_temp(4)(pe70) + Array_temp(5)(pe70) + Array_temp(6)(pe70) + Array_temp(7)(pe70)).resize(32),
      (pe16) -> (Array_temp(0)(pe16) + Array_temp(1)(pe16) + Array_temp(2)(pe16) + Array_temp(3)(pe16)
        + Array_temp(4)(pe16) + Array_temp(5)(pe16) + Array_temp(6)(pe16) + Array_temp(7)(pe16)).resize(32),
      (pe61) -> (Array_temp(0)(pe61) + Array_temp(1)(pe61) + Array_temp(2)(pe61) + Array_temp(3)(pe61)
        + Array_temp(4)(pe61) + Array_temp(5)(pe61) + Array_temp(6)(pe61) + Array_temp(7)(pe61)).resize(32),
      (pe25) -> (Array_temp(0)(pe25) + Array_temp(1)(pe25) + Array_temp(2)(pe25) + Array_temp(3)(pe25)
        + Array_temp(4)(pe25) + Array_temp(5)(pe25) + Array_temp(6)(pe25) + Array_temp(7)(pe25)).resize(32),
      (pe52) -> (Array_temp(0)(pe52) + Array_temp(1)(pe52) + Array_temp(2)(pe52) + Array_temp(3)(pe52)
        + Array_temp(4)(pe52) + Array_temp(5)(pe52) + Array_temp(6)(pe52) + Array_temp(7)(pe52)).resize(32),
      (pe34) -> (Array_temp(0)(pe34) + Array_temp(1)(pe34) + Array_temp(2)(pe34) + Array_temp(3)(pe34)
        + Array_temp(4)(pe34) + Array_temp(5)(pe34) + Array_temp(6)(pe34) + Array_temp(7)(pe34)).resize(32),
      (pe43) -> (Array_temp(0)(pe43) + Array_temp(1)(pe43) + Array_temp(2)(pe43) + Array_temp(3)(pe43)
        + Array_temp(4)(pe43) + Array_temp(5)(pe43) + Array_temp(6)(pe43) + Array_temp(7)(pe43)).resize(32),
      default -> false)
  }.elsewhen(cnt(8)) {
    io.Array_OUT := ((pe17) -> (Array_temp(0)(pe17) + Array_temp(1)(pe17) + Array_temp(2)(pe17) + Array_temp(3)(pe17)
      + Array_temp(4)(pe17) + Array_temp(5)(pe17) + Array_temp(6)(pe17) + Array_temp(7)(pe17)).resize(32),
      (pe26) -> (Array_temp(0)(pe26) + Array_temp(1)(pe26) + Array_temp(2)(pe26) + Array_temp(3)(pe26)
        + Array_temp(4)(pe26) + Array_temp(5)(pe26) + Array_temp(6)(pe26) + Array_temp(7)(pe26)).resize(32),
      (pe35) -> (Array_temp(0)(pe35) + Array_temp(1)(pe35) + Array_temp(2)(pe35) + Array_temp(3)(pe35)
        + Array_temp(4)(pe35) + Array_temp(5)(pe35) + Array_temp(6)(pe35) + Array_temp(7)(pe35)).resize(32),
      (pe44) -> (Array_temp(0)(pe44) + Array_temp(1)(pe44) + Array_temp(2)(pe44) + Array_temp(3)(pe44)
        + Array_temp(4)(pe44) + Array_temp(5)(pe44) + Array_temp(6)(pe44) + Array_temp(7)(pe44)).resize(32),
      (pe53) -> (Array_temp(0)(pe53) + Array_temp(1)(pe53) + Array_temp(2)(pe53) + Array_temp(3)(pe53)
        + Array_temp(4)(pe53) + Array_temp(5)(pe53) + Array_temp(6)(pe53) + Array_temp(7)(pe53)).resize(32),
      (pe62) -> (Array_temp(0)(pe62) + Array_temp(1)(pe62) + Array_temp(2)(pe62) + Array_temp(3)(pe62)
        + Array_temp(4)(pe62) + Array_temp(5)(pe62) + Array_temp(6)(pe62) + Array_temp(7)(pe62)).resize(32),
      (pe71) -> (Array_temp(0)(pe71) + Array_temp(1)(pe71) + Array_temp(2)(pe71) + Array_temp(3)(pe71)
        + Array_temp(4)(pe71) + Array_temp(5)(pe71) + Array_temp(6)(pe71) + Array_temp(7)(pe71)).resize(32),
      default -> false)
  }.elsewhen(cnt(9)) {
    io.Array_OUT := ((pe27) -> (Array_temp(0)(pe27) + Array_temp(1)(pe27) + Array_temp(2)(pe27) + Array_temp(3)(pe27)
      + Array_temp(4)(pe27) + Array_temp(5)(pe27) + Array_temp(6)(pe27) + Array_temp(7)(pe27)).resize(32),
      (pe36) -> (Array_temp(0)(pe36) + Array_temp(1)(pe36) + Array_temp(2)(pe36) + Array_temp(3)(pe36)
        + Array_temp(4)(pe36) + Array_temp(5)(pe36) + Array_temp(6)(pe36) + Array_temp(7)(pe36)).resize(32),
      (pe45) -> (Array_temp(0)(pe45) + Array_temp(1)(pe45) + Array_temp(2)(pe45) + Array_temp(3)(pe45)
        + Array_temp(4)(pe45) + Array_temp(5)(pe45) + Array_temp(6)(pe45) + Array_temp(7)(pe45)).resize(32),
      (pe54) -> (Array_temp(0)(pe54) + Array_temp(1)(pe54) + Array_temp(2)(pe54) + Array_temp(3)(pe54)
        + Array_temp(4)(pe54) + Array_temp(5)(pe54) + Array_temp(6)(pe54) + Array_temp(7)(pe54)).resize(32),
      (pe63) -> (Array_temp(0)(pe63) + Array_temp(1)(pe63) + Array_temp(2)(pe63) + Array_temp(3)(pe63)
        + Array_temp(4)(pe63) + Array_temp(5)(pe63) + Array_temp(6)(pe63) + Array_temp(7)(pe63)).resize(32),
      (pe72) -> (Array_temp(0)(pe72) + Array_temp(1)(pe72) + Array_temp(2)(pe72) + Array_temp(3)(pe72)
        + Array_temp(4)(pe72) + Array_temp(5)(pe72) + Array_temp(6)(pe72) + Array_temp(7)(pe72)).resize(32),
      default -> false)
  }.elsewhen(cnt(10)) {
    io.Array_OUT := ((pe37) -> (Array_temp(0)(pe37) + Array_temp(1)(pe37) + Array_temp(2)(pe37) + Array_temp(3)(pe37)
      + Array_temp(4)(pe37) + Array_temp(5)(pe37) + Array_temp(6)(pe37) + Array_temp(7)(pe37)).resize(32),
      (pe46) -> (Array_temp(0)(pe46) + Array_temp(1)(pe46) + Array_temp(2)(pe46) + Array_temp(3)(pe46)
        + Array_temp(4)(pe46) + Array_temp(5)(pe46) + Array_temp(6)(pe46) + Array_temp(7)(pe46)).resize(32),
      (pe55) -> (Array_temp(0)(pe55) + Array_temp(1)(pe55) + Array_temp(2)(pe55) + Array_temp(3)(pe55)
        + Array_temp(4)(pe55) + Array_temp(5)(pe55) + Array_temp(6)(pe55) + Array_temp(7)(pe55)).resize(32),
      (pe64) -> (Array_temp(0)(pe64) + Array_temp(1)(pe64) + Array_temp(2)(pe64) + Array_temp(3)(pe64)
        + Array_temp(4)(pe64) + Array_temp(5)(pe64) + Array_temp(6)(pe64) + Array_temp(7)(pe64)).resize(32),
      (pe73) -> (Array_temp(0)(pe73) + Array_temp(1)(pe73) + Array_temp(2)(pe73) + Array_temp(3)(pe73)
        + Array_temp(4)(pe73) + Array_temp(5)(pe73) + Array_temp(6)(pe73) + Array_temp(7)(pe73)).resize(32),
      default -> false)
  }.elsewhen(cnt(11)) {
    io.Array_OUT := ((pe47) -> (Array_temp(0)(pe47) + Array_temp(1)(pe47) + Array_temp(2)(pe47) + Array_temp(3)(pe47)
      + Array_temp(4)(pe47) + Array_temp(5)(pe47) + Array_temp(6)(pe47) + Array_temp(7)(pe47)).resize(32),
      (pe56) -> (Array_temp(0)(pe56) + Array_temp(1)(pe56) + Array_temp(2)(pe56) + Array_temp(3)(pe56)
        + Array_temp(4)(pe56) + Array_temp(5)(pe56) + Array_temp(6)(pe56) + Array_temp(7)(pe56)).resize(32),
      (pe65) -> (Array_temp(0)(pe65) + Array_temp(1)(pe65) + Array_temp(2)(pe65) + Array_temp(3)(pe65)
        + Array_temp(4)(pe65) + Array_temp(5)(pe65) + Array_temp(6)(pe65) + Array_temp(7)(pe65)).resize(32),
      (pe74) -> (Array_temp(0)(pe74) + Array_temp(1)(pe74) + Array_temp(2)(pe74) + Array_temp(3)(pe74)
        + Array_temp(4)(pe74) + Array_temp(5)(pe74) + Array_temp(6)(pe74) + Array_temp(7)(pe74)).resize(32),
      default -> false)
  }.elsewhen(cnt(12)) {
    io.Array_OUT := ((pe57) -> (Array_temp(0)(pe57) + Array_temp(1)(pe57) + Array_temp(2)(pe57) + Array_temp(3)(pe57)
      + Array_temp(4)(pe57) + Array_temp(5)(pe57) + Array_temp(6)(pe57) + Array_temp(7)(pe57)).resize(32),
      (pe66) -> (Array_temp(0)(pe66) + Array_temp(1)(pe66) + Array_temp(2)(pe66) + Array_temp(3)(pe66)
        + Array_temp(4)(pe66) + Array_temp(5)(pe66) + Array_temp(6)(pe66) + Array_temp(7)(pe66)).resize(32),
      (pe75) -> (Array_temp(0)(pe75) + Array_temp(1)(pe75) + Array_temp(2)(pe75) + Array_temp(3)(pe75)
        + Array_temp(4)(pe75) + Array_temp(5)(pe75) + Array_temp(6)(pe75) + Array_temp(7)(pe75)).resize(32),
      default -> false)
  }.elsewhen(cnt(13)) {
    io.Array_OUT := ((pe67) -> (Array_temp(0)(pe67) + Array_temp(1)(pe67) + Array_temp(2)(pe67) + Array_temp(3)(pe67)
      + Array_temp(4)(pe67) + Array_temp(5)(pe67) + Array_temp(6)(pe67) + Array_temp(7)(pe67)).resize(32),
      (pe76) -> (Array_temp(0)(pe76) + Array_temp(1)(pe76) + Array_temp(2)(pe76) + Array_temp(3)(pe76)
        + Array_temp(4)(pe76) + Array_temp(5)(pe76) + Array_temp(6)(pe76) + Array_temp(7)(pe76)).resize(32),
      default -> false)
  }.elsewhen(cnt(14)) {
    io.Array_OUT := ((pe77) -> (Array_temp(0)(pe77) + Array_temp(1)(pe77) + Array_temp(2)(pe77) + Array_temp(3)(pe77)
      + Array_temp(4)(pe77) + Array_temp(5)(pe77) + Array_temp(6)(pe77) + Array_temp(7)(pe77)).resize(32),
      default -> false)
  }.otherwise {
    io.Array_OUT := (default -> false)
  }
}


object SystolicArray extends App {
  val clkcfg = ClockDomainConfig(resetKind = SYNC, resetActiveLevel = HIGH) //同步高复位
  SpinalConfig(
    targetDirectory = "./" + filePath,
    headerWithDate = true,
    defaultConfigForClockDomains = clkcfg
  ).generateVerilog(new SystolicArray(8, 8, 8, 32))
}