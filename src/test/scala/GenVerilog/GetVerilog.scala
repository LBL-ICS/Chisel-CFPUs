import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chiseltest.WriteVcdAnnotation
import chiseltest.VerilatorBackendAnnotation
import chisel3.stage.ChiselGeneratorAnnotation
import circt.stage.{ChiselStage, FirtoolOption}

import Complex_FPU._




object main2 extends App {
  (new ChiselStage).execute(
    Array("--target", "systemverilog", "--target-dir", "verification/dut"),
    Seq(ChiselGeneratorAnnotation(() => new complex_dot_iterative(2, 128, 64, 10, 13)),
      FirtoolOption("--disable-all-randomization"),
      FirtoolOption("-strip-debug-info")
    )
  )
}

