package conv.compute

import spinal.core._

object ADD_RANGE extends Area {
  //0
  def pe00 = 32 - 1 downto 0

  //1
  def pe01 = 32 * 2 - 1 downto 32

  def pe10 = 32 * (8 + 1) - 1 downto 32 * 8

  //2
  def pe02 = 32 * 3 - 1 downto 32 * 2

  def pe20 = 32 * (8 * 2 + 1) - 1 downto 32 * 8 * 2

  def pe11 = 32 * (8 + 2) - 1 downto 32 * (8 + 1)

  //3
  def pe03 = 32 * 4 - 1 downto 32 * 3

  def pe30 = 32 * (8 * 3 + 1) - 1 downto 32 * 8 * 3

  def pe12 = 32 * (8 + 3) - 1 downto 32 * (8 + 2)

  def pe21 = 32 * (8 * 2 + 2) - 1 downto 32 * (8 * 2 + 1)

  //4
  def pe04 = 32 * 5 - 1 downto 32 * 4

  def pe40 = 32 * (8 * 4 + 1) - 1 downto 32 * 8 * 4

  def pe13 = 32 * (8 + 4) - 1 downto 32 * (8 + 3)

  def pe31 = 32 * (8 * 3 + 2) - 1 downto 32 * (8 * 3 + 1)

  def pe22 = 32 * (8 * 2 + 3) - 1 downto 32 * (8 * 2 + 2)

  //5
  def pe05 = 32 * 6 - 1 downto 32 * 5

  def pe50 = 32 * (8 * 5 + 1) - 1 downto 32 * 8 * 5

  def pe14 = 32 * (8 + 5) - 1 downto 32 * (8 + 4)

  def pe41 = 32 * (8 * 4 + 2) - 1 downto 32 * (8 * 4 + 1)

  def pe23 = 32 * (8 * 2 + 4) - 1 downto 32 * (8 * 2 + 3)

  def pe32 = 32 * (8 * 3 + 3) - 1 downto 32 * (8 * 3 + 2)

  //6
  def pe06 = 32 * 7 - 1 downto 32 * 6

  def pe60 = 32 * (8 * 6 + 1) - 1 downto 32 * 8 * 6

  def pe15 = 32 * (8 + 6) - 1 downto 32 * (8 + 5)

  def pe51 = 32 * (8 * 5 + 2) - 1 downto 32 * (8 * 5 + 1)

  def pe24 = 32 * (8 * 2 + 5) - 1 downto 32 * (8 * 2 + 4)

  def pe42 = 32 * (8 * 4 + 3) - 1 downto 32 * (8 * 4 + 2)

  def pe33 = 32 * (8 * 3 + 4) - 1 downto 32 * (8 * 3 + 3)

  //7
  def pe07 = 32 * 8 - 1 downto 32 * 7

  def pe70 = 32 * (8 * 7 + 1) - 1 downto 32 * 8 * 7

  def pe16 = 32 * (8 + 7) - 1 downto 32 * (8 + 6)

  def pe61 = 32 * (8 * 6 + 2) - 1 downto 32 * (8 * 6 + 1)

  def pe25 = 32 * (8 * 2 + 6) - 1 downto 32 * (8 * 2 + 5)

  def pe52 = 32 * (8 * 5 + 3) - 1 downto 32 * (8 * 5 + 2)

  def pe34 = 32 * (8 * 3 + 5) - 1 downto 32 * (8 * 3 + 4)

  def pe43 = 32 * (8 * 4 + 4) - 1 downto 32 * (8 * 4 + 3)

  //8
  def pe17 = 32 * (8 + 8) - 1 downto 32 * (8 + 7)

  def pe26 = 32 * (8 * 2 + 7) - 1 downto 32 * (8 * 2 + 6)

  def pe35 = 32 * (8 * 3 + 6) - 1 downto 32 * (8 * 3 + 5)

  def pe44 = 32 * (8 * 4 + 5) - 1 downto 32 * (8 * 4 + 4)

  def pe53 = 32 * (8 * 5 + 4) - 1 downto 32 * (8 * 5 + 3)

  def pe62 = 32 * (8 * 6 + 3) - 1 downto 32 * (8 * 6 + 2)

  def pe71 = 32 * (8 * 7 + 2) - 1 downto 32 * (8 * 7 + 1)

  //9
  def pe27 = 32 * (8 * 2 + 8) - 1 downto 32 * (8 * 2 + 7)

  def pe36 = 32 * (8 * 3 + 7) - 1 downto 32 * (8 * 3 + 6)

  def pe45 = 32 * (8 * 4 + 6) - 1 downto 32 * (8 * 4 + 5)

  def pe54 = 32 * (8 * 5 + 5) - 1 downto 32 * (8 * 5 + 4)

  def pe63 = 32 * (8 * 6 + 4) - 1 downto 32 * (8 * 6 + 3)

  def pe72 = 32 * (8 * 7 + 3) - 1 downto 32 * (8 * 7 + 2)

  //10
  def pe37 = 32 * (8 * 3 + 8) - 1 downto 32 * (8 * 3 + 7)

  def pe46 = 32 * (8 * 4 + 7) - 1 downto 32 * (8 * 4 + 6)

  def pe55 = 32 * (8 * 5 + 6) - 1 downto 32 * (8 * 5 + 5)

  def pe64 = 32 * (8 * 6 + 5) - 1 downto 32 * (8 * 6 + 4)

  def pe73 = 32 * (8 * 7 + 4) - 1 downto 32 * (8 * 7 + 3)

  //11
  def pe47 = 32 * (8 * 4 + 8) - 1 downto 32 * (8 * 4 + 7)

  def pe56 = 32 * (8 * 5 + 7) - 1 downto 32 * (8 * 5 + 6)

  def pe65 = 32 * (8 * 6 + 6) - 1 downto 32 * (8 * 6 + 5)

  def pe74 = 32 * (8 * 7 + 5) - 1 downto 32 * (8 * 7 + 4)

  //12
  def pe57 = 32 * (8 * 5 + 8) - 1 downto 32 * (8 * 5 + 7)

  def pe66 = 32 * (8 * 6 + 7) - 1 downto 32 * (8 * 6 + 6)

  def pe75 = 32 * (8 * 7 + 6) - 1 downto 32 * (8 * 7 + 5)

  //13
  def pe67 = 32 * (8 * 6 + 8) - 1 downto 32 * (8 * 6 + 7)

  def pe76 = 32 * (8 * 7 + 7) - 1 downto 32 * (8 * 7 + 6)

  //14
  def pe77 = 32 * (8 * 7 + 8) - 1 downto 32 * (8 * 7 + 7)
}
