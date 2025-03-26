package CodeTest

import chisel3._
import chisel3.util.log2Ceil
import chiseltest.{ChiselScalatestTester, _}
import org.scalatest.flatspec.AnyFlatSpec
import Complex_FPU._
//import java.util.Random


class Com_Conj_Mult extends AnyFlatSpec with ChiselScalatestTester {
  "module" should "multiply" in {
    test(new complex_conjugate_mult(64, 10, 13)) { dut =>

      val latency = 10 + 13
      dut.io.complexA.poke("hbf2c3d3fbd8a6de0".U)



      dut.io.complexB.poke("h3f564a65bea829f7".U)



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
      val expectedRealHex = "bf0a7e54"
      val expectedImagHex = "3e8e1c72"

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

class Com_acc extends AnyFlatSpec with ChiselScalatestTester {
  "module" should "accumulate" in {
    test(new complex_acc(64, 4, 13, 2)) { dut =>
      dut.io.in_en.poke(true.B)
      dut.io.in_valid.poke(true.B)
      dut.io.input.poke("h3f3cdcd03e954dee".U)
      //dut.io.sel.poke(false.B)
      dut.clock.step(4)
      dut.io.input.poke("hbf235264beff60ce".U)
      //dut.io.sel.poke(true.B)







      dut.clock.step(13)

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

class Complex_dot_version4 extends AnyFlatSpec with ChiselScalatestTester {
  "module" should "obtain the dot product" in {

    val n = 2
    val k = 8
    val bw = 64
    val mult_pd = 10
    val add_pd = 13

    test(new complex_dot_iterative( n, k, bw, mult_pd, add_pd)) { dut =>

      val num_batches = k / n//((k + (n - 1)) / n)
      val num_acc = log2Ceil(num_batches)
      val mult_latency = (mult_pd + add_pd) + (log2Ceil(n) * add_pd)
      val latency = mult_latency + (num_acc * add_pd) + (math.pow(2, (num_acc)).toInt - 1)


      dut.io.vec_a(0).poke("hbf4ac2babc937be7".U)
      dut.io.vec_a(1).poke("hbf67812dbf663e70".U)
      dut.io.vec_a(2).poke("h3ed78106bf17c74e".U)
      dut.io.vec_a(3).poke("h3f18fc46bf6b11ad".U)
      dut.io.vec_a(4).poke("hbed2e1023dae5700".U)
      dut.io.vec_a(5).poke("h3ec65d3b3f065fd5".U)
      dut.io.vec_a(6).poke("hbebf02273eedffa5".U)
      dut.io.vec_a(7).poke("h3e87fe4d3f32f8c2".U)

      dut.io.vec_b(0).poke("hbf72a2e9bebf2fe4".U)
      dut.io.vec_b(1).poke("hbf3610e93f3d9e15".U)
      dut.io.vec_b(2).poke("hbe18b30ebe1139f3".U)
      dut.io.vec_b(3).poke("h3e41f8193f50697d".U)
      dut.io.vec_b(4).poke("hbe8fc0b0beb55855".U)
      dut.io.vec_b(5).poke("hbe6a2ea33f40ea17".U)
      dut.io.vec_b(6).poke("hbe3783ec3f68fdca".U)
      dut.io.vec_b(7).poke("h3f0afd97bf0090df".U)




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
      val expectedRealHex = "3f4bfc73"
      val expectedImagHex = "bf34b1d3"

      val expectedImag = ieee754ToFloat(expectedImagHex)
      val expectedReal = ieee754ToFloat(expectedRealHex)

      // Get actual values
      val actualImagHex = dut.io.out_imag.peek().litValue.toString(16)
      val actualRealHex = dut.io.out_real.peek().litValue.toString(16)
      val actualImag = ieee754ToFloat(actualImagHex)
      val actualReal = ieee754ToFloat(actualRealHex)

      // Print computed and expected values in decimal format
      println(f"Latency : $latency")
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

class SW_two_complex extends AnyFlatSpec with ChiselScalatestTester {
  "module" should "obtain the dot product" in {

    //val n = 4
    val k = 8
    val bw = 64
    val mult_pd = 10
    val add_pd = 13

    test(new SW_two_complex_dot(k, bw, mult_pd, add_pd)) { dut =>

      val num_batches = k / 2//((k + (n - 1)) / n)
      val num_acc = log2Ceil(num_batches)
      val mult_latency = ((mult_pd + add_pd) + add_pd)
      val latency = mult_latency + (num_acc * add_pd) + (math.pow(2, (num_acc)).toInt - 1)



      dut.io.vec_a(0).poke("h3e4fa3003d913894".U)
      dut.io.vec_a(1).poke("h3f5324b1bf1c6833".U)
      dut.io.vec_a(2).poke("hbeeb4c09bef1a5c9".U)
      dut.io.vec_a(3).poke("h3dd7530abf62b618".U)
      dut.io.vec_a(4).poke("hbec67b933f066460".U)
      dut.io.vec_a(5).poke("hbf5f681a3f47d94d".U)
      dut.io.vec_a(6).poke("hbc6a437abf4b3c8a".U)
      dut.io.vec_a(7).poke("hbf4502b7bec8e1cd".U)

      dut.io.vec_b(0).poke("hbf0b993dbf12d7f3".U)
      dut.io.vec_b(1).poke("h3e70bd1bbe8a939a".U)
      dut.io.vec_b(2).poke("h3e7d43ff3f145854".U)
      dut.io.vec_b(3).poke("hbf319674bed49205".U)
      dut.io.vec_b(4).poke("hbf643691bf2fb0d6".U)
      dut.io.vec_b(5).poke("hbed343e83e7c5500".U)
      dut.io.vec_b(6).poke("hbf7115c03f2cb7bf".U)
      dut.io.vec_b(7).poke("hbe9c4d513e56d2f4".U)


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
      val expectedRealHex = "3e915281"
      val expectedImagHex = "bf94c2d6"

      val expectedImag = ieee754ToFloat(expectedImagHex)
      val expectedReal = ieee754ToFloat(expectedRealHex)

      // Get actual values
      val actualImagHex = dut.io.out_imag.peek().litValue.toString(16)
      val actualRealHex = dut.io.out_real.peek().litValue.toString(16)
      val actualImag = ieee754ToFloat(actualImagHex)
      val actualReal = ieee754ToFloat(actualRealHex)

      // Print computed and expected values in decimal format
      println(f"Latency : $latency")
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