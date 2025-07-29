package CodeTest

import chisel3._
import chisel3.util.log2Ceil
import chiseltest.{ChiselScalatestTester, _}
import org.scalatest.flatspec.AnyFlatSpec
import Complex_FPU._
import chiseltest.RawTester.test

//import java.util.Random


class Com_adder extends AnyFlatSpec with ChiselScalatestTester {
  "module" should "add" in {
    test(new complex_adder(64, 13)) { dut =>

      val latency = 13
      dut.io.complexA.poke("h3f3cdcd03e954dee".U)



      dut.io.complexB.poke("hbf235264beff60ce".U)



      dut.io.in_en.poke(true.B)
      dut.io.in_valid.poke(true.B)



      dut.clock.step(latency)


      val tolerance = 2 // 0.0000# percentage error

      // Convert IEEE 754 hex values to float
      def ieee754ToFloat(hex: String): Float = {
        val intBits = java.lang.Long.parseUnsignedLong(hex, 16).toInt
        java.lang.Float.intBitsToFloat(intBits)
      }

      // Expected values
      val expectedRealHex = "3dcc5364"
      val expectedImagHex = "be5425bf"

      val expectedImag = ieee754ToFloat(expectedImagHex)
      val expectedReal = ieee754ToFloat(expectedRealHex)

      // Get actual values
      val actualImagHex = dut.io.out_imag.peek().litValue.toString(16)
      val actualRealHex = dut.io.out_real.peek().litValue.toString(16)
      val actualImag = ieee754ToFloat(actualImagHex)
      val actualReal = ieee754ToFloat(actualRealHex)

      // Print computed and expected values in decimal format
      println(f"Computed Real: $actualReal (Hex: $actualRealHex), Expected: $expectedReal (Hex: $expectedRealHex)")
      println(f"Computed Imaginary: $actualImag (Hex: $actualImagHex), Expected: $expectedImag (Hex: $expectedImagHex)")


      // Check within tolerance
      assert(math.abs(actualReal - expectedReal) <= tolerance,
        s"FAIL: out_real = $actualReal is outside tolerance range of expected $expectedReal ±$tolerance")

      assert(math.abs(actualImag - expectedImag) <= tolerance,
        s"FAIL: out_imag = $actualImag is outside tolerance range of expected $expectedImag ±$tolerance")



      dut.io.out_valid.expect(true.B)
    }
  }
}

class Complex_dot_streaming extends AnyFlatSpec with ChiselScalatestTester {
  "module" should "obtain the dot product" in {
    test(new complex_dot_streaming(8,64, 10, 13)) { dut =>

      val latency = 23 + (log2Ceil(8) * 13)

      dut.io.vec_a(0).poke("hbf20ec6bbf1eb5cd".U)
      dut.io.vec_a(1).poke("h3f023822be8c8425".U)
      dut.io.vec_a(2).poke("h3f0dc667bf780a6b".U)
      dut.io.vec_a(3).poke("h3e95c44e3f71ec23".U)
      dut.io.vec_a(4).poke("h3f746ee13f504cbf".U)
      dut.io.vec_a(5).poke("hbd8bb93abe9d27d2".U)
      dut.io.vec_a(6).poke("hbf1cd970bf532330".U)
      dut.io.vec_a(7).poke("h3f0f97c63f352197".U)

      dut.io.vec_b(0).poke("hbf450c743e9959a7".U)
      dut.io.vec_b(1).poke("hbeb4fb983e422af7".U)
      dut.io.vec_b(2).poke("hbdbf1c64bbf34695".U)
      dut.io.vec_b(3).poke("hbec7ecca3eb6e00b".U)
      dut.io.vec_b(4).poke("hbe42c63abec29122".U)
      dut.io.vec_b(5).poke("h3e6dde37bddbfa52".U)
      dut.io.vec_b(6).poke("h3ea6d616bf0ee543".U)
      dut.io.vec_b(7).poke("h3f3cd5c1bf06b21d".U)



      dut.io.in_en.poke(true.B)
      dut.io.in_valid.poke(true.B)



      dut.clock.step(latency)


      val tolerance = 2 // 0.0000# percentage error

      // Convert IEEE 754 hex values to float
      def ieee754ToFloat(hex: String): Float = {
        val intBits = java.lang.Long.parseUnsignedLong(hex, 16).toInt
        java.lang.Float.intBitsToFloat(intBits)
      }

      // Expected values
      val expectedRealHex = "3d96d16e"
      val expectedImagHex = "bf1f7089"

      val expectedImag = ieee754ToFloat(expectedImagHex)
      val expectedReal = ieee754ToFloat(expectedRealHex)

      // Get actual values
      val actualImagHex = dut.io.out_imag.peek().litValue.toString(16)
      val actualRealHex = dut.io.out_real.peek().litValue.toString(16)
      val actualImag = ieee754ToFloat(actualImagHex)
      val actualReal = ieee754ToFloat(actualRealHex)

      // Print computed and expected values in decimal format
      println(f"Computed Real: $actualReal (Hex: $actualRealHex), Expected: $expectedReal (Hex: $expectedRealHex)")
      println(f"Computed Imaginary: $actualImag (Hex: $actualImagHex), Expected: $expectedImag (Hex: $expectedImagHex)")


      // Check within tolerance
      assert(math.abs(actualReal - expectedReal) <= tolerance,
        s"FAIL: out_real = $actualReal is outside tolerance range of expected $expectedReal ±$tolerance")

      assert(math.abs(actualImag - expectedImag) <= tolerance,
        s"FAIL: out_imag = $actualImag is outside tolerance range of expected $expectedImag ±$tolerance")



      dut.io.out_valid.expect(true.B)
    }
  }
}

