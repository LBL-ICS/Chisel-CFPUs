FIRRTL version 1.2.0
circuit complex_conjugate_mult :
  module full_adder : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 78:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 78:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 78:9]
    input io_in_a : UInt<8> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]
    input io_in_b : UInt<8> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]
    input io_in_c : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]
    output io_out_s : UInt<8> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]
    output io_out_c : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]

    node _result_T = add(io_in_a, io_in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 87:23]
    node _result_T_1 = add(_result_T, io_in_c) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 87:34]
    node result = bits(_result_T_1, 8, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 86:22 87:12]
    node _io_out_s_T = bits(result, 7, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 88:23]
    node _io_out_c_T = bits(result, 8, 8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 89:23]
    io_out_s <= _io_out_s_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 88:14]
    io_out_c <= _io_out_c_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 89:14]

  module multiplier : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 106:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 106:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 106:9]
    input io_in_a : UInt<24> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 107:16]
    input io_in_b : UInt<24> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 107:16]
    output io_out_s : UInt<48> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 107:16]

    node _result_T = mul(io_in_a, io_in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 113:23]
    node result = _result_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 112:22 113:12]
    io_out_s <= result @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 114:14]

  module FP_mult_32_10_v2 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 148:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 148:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 148:9]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 151:16]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 151:16]
    input io_in_a : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 151:16]
    input io_in_b : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 151:16]
    output io_out_s : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 151:16]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 151:16]

    inst exp_adder of full_adder @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 226:27]
    inst multiplier of multiplier @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 237:33]
    reg in_a : UInt<32>, clock with :
      reset => (UInt<1>("h0"), in_a) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 175:29]
    node _GEN_0 = mux(io_in_en, io_in_a, in_a) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 175:{29,29,29}]
    reg in_b : UInt<32>, clock with :
      reset => (UInt<1>("h0"), in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 176:29]
    node _GEN_1 = mux(io_in_en, io_in_b, in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 176:{29,29,29}]
    node _sign_wire_0_T = bits(in_a, 31, 31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 179:25]
    node _sign_wire_1_T = bits(in_b, 31, 31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 180:25]
    node _T = bits(in_a, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 190:14]
    node _T_1 = gt(_T, UInt<8>("hfe")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 190:33]
    node _T_2 = bits(in_a, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 192:20]
    node _T_3 = lt(_T_2, UInt<8>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 192:36]
    node _exp_wire_0_T = bits(in_a, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 195:26]
    node _GEN_2 = mux(_T_3, UInt<8>("h1"), _exp_wire_0_T) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 192:46 193:19 195:19]
    node _GEN_3 = mux(_T_1, UInt<8>("hfe"), _GEN_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 190:44 191:19]
    node _T_4 = bits(in_b, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 197:14]
    node _T_5 = gt(_T_4, UInt<8>("hfe")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 197:33]
    node _T_6 = bits(in_b, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 199:20]
    node _T_7 = lt(_T_6, UInt<8>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 199:36]
    node _exp_wire_1_T = bits(in_b, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 202:26]
    node _GEN_4 = mux(_T_7, UInt<8>("h1"), _exp_wire_1_T) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 199:46 200:19 202:19]
    node _GEN_5 = mux(_T_5, UInt<8>("hfe"), _GEN_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 197:44 198:19]
    node _frac_wire_0_T = bits(in_a, 22, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 207:25]
    node _frac_wire_1_T = bits(in_b, 22, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 208:25]
    node frac_wire_0 = _frac_wire_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 206:25 207:18]
    node _whole_frac_wire_0_T = cat(UInt<1>("h1"), frac_wire_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 212:31]
    node frac_wire_1 = _frac_wire_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 206:25 208:18]
    node _whole_frac_wire_1_T = cat(UInt<1>("h1"), frac_wire_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 213:31]
    reg whole_frac_sr_0 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 215:38]
    reg whole_frac_sr_1 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 215:38]
    node whole_frac_wire_0 = _whole_frac_wire_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 211:31 212:24]
    node _GEN_6 = mux(io_in_en, whole_frac_wire_0, whole_frac_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 215:{38,38,38}]
    node whole_frac_wire_1 = _whole_frac_wire_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 211:31 213:24]
    node _GEN_7 = mux(io_in_en, whole_frac_wire_1, whole_frac_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 215:{38,38,38}]
    reg sign_sr_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 216:32]
    reg sign_sr_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 216:32]
    node sign_wire_0 = _sign_wire_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 178:25 179:18]
    node _GEN_8 = mux(io_in_en, sign_wire_0, sign_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 216:{32,32,32}]
    node sign_wire_1 = _sign_wire_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 178:25 180:18]
    node _GEN_9 = mux(io_in_en, sign_wire_1, sign_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 216:{32,32,32}]
    reg exp_sr_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 217:31]
    reg exp_sr_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 217:31]
    node exp_wire_0 = _GEN_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 189:24]
    node _GEN_10 = mux(io_in_en, exp_wire_0, exp_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 217:{31,31,31}]
    node exp_wire_1 = _GEN_5 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 189:24]
    node _GEN_11 = mux(io_in_en, exp_wire_1, exp_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 217:{31,31,31}]
    node _new_sign_wire_T = xor(sign_sr_0, sign_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 220:33]
    reg new_sign_sr : UInt<1>, clock with :
      reset => (UInt<1>("h0"), new_sign_sr) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 222:36]
    node new_sign_wire = _new_sign_wire_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 219:29 220:19]
    node _GEN_12 = mux(io_in_en, new_sign_wire, new_sign_sr) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 222:{36,36,36}]
    reg exp_sr_2_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 223:33]
    reg exp_sr_2_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 223:33]
    node _GEN_13 = mux(io_in_en, exp_sr_0, exp_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 223:{33,33,33}]
    node _GEN_14 = mux(io_in_en, exp_sr_1, exp_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 223:{33,33,33}]
    reg whole_frac_sr_2_0 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 224:40]
    reg whole_frac_sr_2_1 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 224:40]
    node _GEN_15 = mux(io_in_en, whole_frac_sr_0, whole_frac_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 224:{40,40,40}]
    node _GEN_16 = mux(io_in_en, whole_frac_sr_1, whole_frac_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 224:{40,40,40}]
    node _exp_adder_io_in_b_T = sub(exp_sr_2_1, UInt<8>("h7f")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 228:38]
    node _exp_adder_io_in_b_T_1 = tail(_exp_adder_io_in_b_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 228:38]
    reg exp_adder_outs_sr : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_adder_outs_sr) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 231:42]
    node _GEN_17 = mux(io_in_en, exp_adder.io_out_s, exp_adder_outs_sr) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 231:{42,42,42}]
    reg exp_adder_outc_sr : UInt<1>, clock with :
      reset => (UInt<1>("h0"), exp_adder_outc_sr) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 232:42]
    node _GEN_18 = mux(io_in_en, exp_adder.io_out_c, exp_adder_outc_sr) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 232:{42,42,42}]
    reg new_sign_sr_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), new_sign_sr_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 233:38]
    node _GEN_19 = mux(io_in_en, new_sign_sr, new_sign_sr_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 233:{38,38,38}]
    reg exp_sr_3_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 234:33]
    reg exp_sr_3_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 234:33]
    node _GEN_20 = mux(io_in_en, exp_sr_2_0, exp_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 234:{33,33,33}]
    node _GEN_21 = mux(io_in_en, exp_sr_2_1, exp_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 234:{33,33,33}]
    reg whole_frac_sr_3_0 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 235:40]
    reg whole_frac_sr_3_1 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 235:40]
    node _GEN_22 = mux(io_in_en, whole_frac_sr_2_0, whole_frac_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 235:{40,40,40}]
    node _GEN_23 = mux(io_in_en, whole_frac_sr_2_1, whole_frac_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 235:{40,40,40}]
    reg frac_mult_out_sr : UInt<48>, clock with :
      reset => (UInt<1>("h0"), frac_mult_out_sr) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 241:41]
    node _GEN_24 = mux(io_in_en, multiplier.io_out_s, frac_mult_out_sr) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 241:{41,41,41}]
    reg exp_adder_outs_sr_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_adder_outs_sr_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 242:44]
    node _GEN_25 = mux(io_in_en, exp_adder_outs_sr, exp_adder_outs_sr_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 242:{44,44,44}]
    reg exp_adder_outc_sr_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), exp_adder_outc_sr_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 243:44]
    node _GEN_26 = mux(io_in_en, exp_adder_outc_sr, exp_adder_outc_sr_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 243:{44,44,44}]
    reg new_sign_sr_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), new_sign_sr_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 244:38]
    node _GEN_27 = mux(io_in_en, new_sign_sr_2, new_sign_sr_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 244:{38,38,38}]
    reg exp_sr_4_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_4_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 245:33]
    reg exp_sr_4_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_4_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 245:33]
    node _GEN_28 = mux(io_in_en, exp_sr_3_0, exp_sr_4_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 245:{33,33,33}]
    node _GEN_29 = mux(io_in_en, exp_sr_3_1, exp_sr_4_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 245:{33,33,33}]
    reg uo_check_r : UInt<8>, clock with :
      reset => (UInt<1>("h0"), uo_check_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 248:33]
    node _GEN_30 = mux(io_in_en, exp_sr_4_1, uo_check_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 248:{33,33,33}]
    node uo_check = lt(uo_check_r, UInt<8>("h7f")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 248:69]
    node _carry_flag_T = bits(exp_adder_outc_sr_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 249:56]
    reg carry_flag : UInt<1>, clock with :
      reset => (UInt<1>("h0"), carry_flag) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 249:35]
    node _GEN_31 = mux(io_in_en, _carry_flag_T, carry_flag) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 249:{35,35,35}]
    reg exp_sum : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sum) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 250:32]
    node _GEN_32 = mux(io_in_en, exp_adder_outs_sr_2, exp_sum) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 250:{32,32,32}]
    reg new_sign_reg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), new_sign_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 251:37]
    node _GEN_33 = mux(io_in_en, new_sign_sr_3, new_sign_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 251:{37,37,37}]
    node _msb_check_T = bits(frac_mult_out_sr, 47, 47) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 252:51]
    reg msb_check : UInt<1>, clock with :
      reset => (UInt<1>("h0"), msb_check) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 252:34]
    node _GEN_34 = mux(io_in_en, _msb_check_T, msb_check) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 252:{34,34,34}]
    reg new_frac_reg : UInt<48>, clock with :
      reset => (UInt<1>("h0"), new_frac_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 253:37]
    node _GEN_35 = mux(io_in_en, frac_mult_out_sr, new_frac_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 253:{37,37,37}]
    node _u_flag_reg_T = eq(carry_flag, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 257:49]
    node _u_flag_reg_T_1 = add(exp_sum, msb_check) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 257:74]
    node _u_flag_reg_T_2 = lt(_u_flag_reg_T_1, UInt<8>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 257:95]
    node _u_flag_reg_T_3 = or(_u_flag_reg_T, _u_flag_reg_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 257:61]
    node _u_flag_reg_T_4 = mux(uo_check, _u_flag_reg_T_3, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 257:39]
    reg u_flag_reg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), u_flag_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 257:35]
    node _GEN_36 = mux(io_in_en, _u_flag_reg_T_4, u_flag_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 257:{35,35,35}]
    node _o_flag_reg_T = eq(uo_check, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 258:40]
    node _o_flag_reg_T_1 = add(exp_sum, msb_check) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 258:74]
    node _o_flag_reg_T_2 = gt(_o_flag_reg_T_1, UInt<8>("hfe")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 258:95]
    node _o_flag_reg_T_3 = or(carry_flag, _o_flag_reg_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 258:61]
    node _o_flag_reg_T_4 = mux(_o_flag_reg_T, _o_flag_reg_T_3, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 258:39]
    reg o_flag_reg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), o_flag_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 258:35]
    node _GEN_37 = mux(io_in_en, _o_flag_reg_T_4, o_flag_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 258:{35,35,35}]
    reg new_exp_reg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), new_exp_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 259:36]
    node _GEN_38 = mux(io_in_en, exp_sum, new_exp_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 259:{36,36,36}]
    reg new_sign_reg_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), new_sign_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 260:39]
    node _GEN_39 = mux(io_in_en, new_sign_reg, new_sign_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 260:{39,39,39}]
    reg new_frac_reg_2 : UInt<48>, clock with :
      reset => (UInt<1>("h0"), new_frac_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 261:39]
    node _GEN_40 = mux(io_in_en, new_frac_reg, new_frac_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 261:{39,39,39}]
    node _out_exp_innermux_T = bits(new_frac_reg_2, 47, 47) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 266:60]
    node _out_exp_innermux_T_1 = add(new_exp_reg, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 266:105]
    node _out_exp_innermux_T_2 = tail(_out_exp_innermux_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 266:105]
    node _out_exp_innermux_T_3 = mux(_out_exp_innermux_T, _out_exp_innermux_T_2, new_exp_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 266:45]
    reg out_exp_innermux : UInt<8>, clock with :
      reset => (UInt<1>("h0"), out_exp_innermux) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 266:41]
    node _GEN_41 = mux(io_in_en, _out_exp_innermux_T_3, out_exp_innermux) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 266:{41,41,41}]
    node _out_frac_innermux_T = bits(new_frac_reg_2, 47, 47) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 267:61]
    node _out_frac_innermux_T_1 = bits(new_frac_reg_2, 46, 24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 267:108]
    node _out_frac_innermux_T_2 = bits(new_frac_reg_2, 45, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 267:162]
    node _out_frac_innermux_T_3 = mux(_out_frac_innermux_T, _out_frac_innermux_T_1, _out_frac_innermux_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 267:46]
    reg out_frac_innermux : UInt<23>, clock with :
      reset => (UInt<1>("h0"), out_frac_innermux) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 267:42]
    node _GEN_42 = mux(io_in_en, _out_frac_innermux_T_3, out_frac_innermux) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 267:{42,42,42}]
    reg u_flag_reg_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), u_flag_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 268:37]
    node _GEN_43 = mux(io_in_en, u_flag_reg, u_flag_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 268:{37,37,37}]
    reg o_flag_reg_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), o_flag_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 269:37]
    node _GEN_44 = mux(io_in_en, o_flag_reg, o_flag_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 269:{37,37,37}]
    reg new_sign_reg_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), new_sign_reg_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 270:39]
    node _GEN_45 = mux(io_in_en, new_sign_reg_2, new_sign_reg_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 270:{39,39,39}]
    node _out_exp_innermux_2_T = mux(o_flag_reg_2, UInt<8>("hfe"), out_exp_innermux) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 274:47]
    reg out_exp_innermux_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), out_exp_innermux_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 274:43]
    node _GEN_46 = mux(io_in_en, _out_exp_innermux_2_T, out_exp_innermux_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 274:{43,43,43}]
    node _out_frac_innermux_2_T = mux(o_flag_reg_2, UInt<23>("h7fffff"), out_frac_innermux) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 275:48]
    reg out_frac_innermux_2 : UInt<23>, clock with :
      reset => (UInt<1>("h0"), out_frac_innermux_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 275:44]
    node _GEN_47 = mux(io_in_en, _out_frac_innermux_2_T, out_frac_innermux_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 275:{44,44,44}]
    reg new_sign_reg_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), new_sign_reg_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 276:39]
    node _GEN_48 = mux(io_in_en, new_sign_reg_3, new_sign_reg_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 276:{39,39,39}]
    reg u_flag_reg_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), u_flag_reg_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 277:37]
    node _GEN_49 = mux(io_in_en, u_flag_reg_2, u_flag_reg_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 277:{37,37,37}]
    node out_exp = mux(u_flag_reg_3, UInt<8>("h1"), out_exp_innermux_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 280:22]
    node out_frac = mux(u_flag_reg_3, UInt<23>("h0"), out_frac_innermux_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 281:23]
    node _io_out_s_T = cat(new_sign_reg_4, out_exp) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 282:40]
    node _io_out_s_T_1 = cat(_io_out_s_T, out_frac) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 282:51]
    reg io_out_s_r : UInt<32>, clock with :
      reset => (UInt<1>("h0"), io_out_s_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 282:30]
    node _GEN_50 = mux(io_in_en, _io_out_s_T_1, io_out_s_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 282:{30,30,30}]
    reg io_out_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_51 = mux(io_in_en, io_in_valid, io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_52 = mux(io_in_en, io_out_valid_r, io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_53 = mux(io_in_en, io_out_valid_r_1, io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_54 = mux(io_in_en, io_out_valid_r_2, io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_55 = mux(io_in_en, io_out_valid_r_3, io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_56 = mux(io_in_en, io_out_valid_r_4, io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_6 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_57 = mux(io_in_en, io_out_valid_r_5, io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_7 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_58 = mux(io_in_en, io_out_valid_r_6, io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_59 = mux(io_in_en, io_out_valid_r_7, io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    reg io_out_valid_r_9 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:34]
    node _GEN_60 = mux(io_in_en, io_out_valid_r_8, io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:{34,34,34}]
    io_out_s <= io_out_s_r @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 282:14]
    io_out_valid <= io_out_valid_r_9 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 283:18]
    in_a <= _GEN_0
    in_b <= _GEN_1
    whole_frac_sr_0 <= _GEN_6
    whole_frac_sr_1 <= _GEN_7
    sign_sr_0 <= _GEN_8
    sign_sr_1 <= _GEN_9
    exp_sr_0 <= _GEN_10
    exp_sr_1 <= _GEN_11
    new_sign_sr <= _GEN_12
    exp_sr_2_0 <= _GEN_13
    exp_sr_2_1 <= _GEN_14
    whole_frac_sr_2_0 <= _GEN_15
    whole_frac_sr_2_1 <= _GEN_16
    exp_adder.clock <= clock
    exp_adder.reset <= reset
    exp_adder.io_in_a <= exp_sr_2_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 227:23]
    exp_adder.io_in_b <= _exp_adder_io_in_b_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 228:23]
    exp_adder.io_in_c <= UInt<1>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 229:23]
    exp_adder_outs_sr <= _GEN_17
    exp_adder_outc_sr <= _GEN_18
    new_sign_sr_2 <= _GEN_19
    exp_sr_3_0 <= _GEN_20
    exp_sr_3_1 <= _GEN_21
    whole_frac_sr_3_0 <= _GEN_22
    whole_frac_sr_3_1 <= _GEN_23
    multiplier.clock <= clock
    multiplier.reset <= reset
    multiplier.io_in_a <= whole_frac_sr_3_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 238:26]
    multiplier.io_in_b <= whole_frac_sr_3_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 239:26]
    frac_mult_out_sr <= _GEN_24
    exp_adder_outs_sr_2 <= _GEN_25
    exp_adder_outc_sr_2 <= _GEN_26
    new_sign_sr_3 <= _GEN_27
    exp_sr_4_0 <= _GEN_28
    exp_sr_4_1 <= _GEN_29
    uo_check_r <= _GEN_30
    carry_flag <= _GEN_31
    exp_sum <= _GEN_32
    new_sign_reg <= _GEN_33
    msb_check <= _GEN_34
    new_frac_reg <= _GEN_35
    u_flag_reg <= _GEN_36
    o_flag_reg <= _GEN_37
    new_exp_reg <= _GEN_38
    new_sign_reg_2 <= _GEN_39
    new_frac_reg_2 <= _GEN_40
    out_exp_innermux <= _GEN_41
    out_frac_innermux <= _GEN_42
    u_flag_reg_2 <= _GEN_43
    o_flag_reg_2 <= _GEN_44
    new_sign_reg_3 <= _GEN_45
    out_exp_innermux_2 <= _GEN_46
    out_frac_innermux_2 <= _GEN_47
    new_sign_reg_4 <= _GEN_48
    u_flag_reg_3 <= _GEN_49
    io_out_s_r <= _GEN_50
    io_out_valid_r <= _GEN_51
    io_out_valid_r_1 <= _GEN_52
    io_out_valid_r_2 <= _GEN_53
    io_out_valid_r_3 <= _GEN_54
    io_out_valid_r_4 <= _GEN_55
    io_out_valid_r_5 <= _GEN_56
    io_out_valid_r_6 <= _GEN_57
    io_out_valid_r_7 <= _GEN_58
    io_out_valid_r_8 <= _GEN_59
    io_out_valid_r_9 <= _GEN_60

  module full_subtractor : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 92:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 92:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 92:9]
    input io_in_a : UInt<8> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 93:16]
    input io_in_b : UInt<8> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 93:16]
    input io_in_c : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 93:16]
    output io_out_s : UInt<8> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 93:16]
    output io_out_c : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 93:16]

    node _result_T = sub(io_in_a, io_in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 101:23]
    node _result_T_1 = asUInt(_result_T) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 101:23]
    node _result_T_2 = sub(_result_T_1, io_in_c) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 101:34]
    node _result_T_3 = asUInt(_result_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 101:34]
    node result = bits(_result_T_3, 8, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 100:22 101:12]
    node _io_out_s_T = bits(result, 7, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 102:23]
    node _io_out_c_T = bits(result, 8, 8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 103:23]
    io_out_s <= _io_out_s_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 102:14]
    io_out_c <= _io_out_c_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 103:14]

  module full_adder_4 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 78:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 78:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 78:9]
    input io_in_a : UInt<24> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]
    input io_in_b : UInt<24> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]
    input io_in_c : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]
    output io_out_s : UInt<24> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]
    output io_out_c : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 79:16]

    node _result_T = add(io_in_a, io_in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 87:23]
    node _result_T_1 = add(_result_T, io_in_c) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 87:34]
    node result = bits(_result_T_1, 24, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 86:22 87:12]
    node _io_out_s_T = bits(result, 23, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 88:23]
    node _io_out_c_T = bits(result, 24, 24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 89:23]
    io_out_s <= _io_out_s_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 88:14]
    io_out_c <= _io_out_c_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 89:14]

  module LZC_enc2 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 8:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 8:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 8:9]
    input io_in_r : UInt<2> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 9:16]
    output io_out_e : UInt<2> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 9:16]

    node seq_0_1 = eq(io_in_r, UInt<2>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 24:48]
    node seq_1_1 = eq(io_in_r, UInt<2>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 24:48]
    node seq_2_1 = eq(io_in_r, UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 24:48]
    node seq_3_1 = eq(io_in_r, UInt<2>("h3")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 24:48]
    node _out_enc_T = mux(seq_3_1, UInt<2>("h0"), UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 126:16]
    node _out_enc_T_1 = mux(seq_2_1, UInt<2>("h0"), _out_enc_T) @[src/main/scala/chisel3/util/Mux.scala 126:16]
    node _out_enc_T_2 = mux(seq_1_1, UInt<2>("h1"), _out_enc_T_1) @[src/main/scala/chisel3/util/Mux.scala 126:16]
    node _out_enc_T_3 = mux(seq_0_1, UInt<2>("h2"), _out_enc_T_2) @[src/main/scala/chisel3/util/Mux.scala 126:16]
    node out_enc = _out_enc_T_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 25:23 26:13]
    io_out_e <= out_enc @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 27:14]

  module LZC_Merge2 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input io_in_h : UInt<2> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]
    input io_in_l : UInt<2> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]
    output io_out_m : UInt<3> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]

    node _result_h_1_T = bits(io_in_h, 1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:27]
    node _result_h_1_T_1 = bits(io_in_l, 1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:43]
    node _result_h_1_T_2 = and(_result_h_1_T, _result_h_1_T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:34]
    node _result_h_0_T = bits(io_in_h, 1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:31]
    node _result_h_0_T_1 = bits(io_in_l, 1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:54]
    node _result_h_0_T_2 = eq(_result_h_0_T_1, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:46]
    node _result_h_0_T_3 = bits(io_in_h, 1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:69]
    node _result_h_0_T_4 = mux(_result_h_0_T, _result_h_0_T_2, _result_h_0_T_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:23]
    node _result_l_T = bits(io_in_h, 1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:28]
    node _result_l_T_1 = bits(io_in_l, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:50]
    node _result_l_T_2 = bits(io_in_h, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:67]
    node _result_l_T_3 = mux(_result_l_T, _result_l_T_1, _result_l_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:20]
    node result_h_1 = _result_h_1_T_2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 70:24 72:17]
    node result_h_0 = _result_h_0_T_4 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 70:24 73:17]
    node _io_out_m_T = cat(result_h_1, result_h_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:26]
    node result_l = _result_l_T_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 71:24 74:14]
    node _io_out_m_T_1 = cat(_io_out_m_T, result_l) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:33]
    io_out_m <= _io_out_m_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:14]

  module LZC_Merge3 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input io_in_h : UInt<3> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]
    input io_in_l : UInt<3> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]
    output io_out_m : UInt<4> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]

    node _result_h_1_T = bits(io_in_h, 2, 2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:27]
    node _result_h_1_T_1 = bits(io_in_l, 2, 2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:43]
    node _result_h_1_T_2 = and(_result_h_1_T, _result_h_1_T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:34]
    node _result_h_0_T = bits(io_in_h, 2, 2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:31]
    node _result_h_0_T_1 = bits(io_in_l, 2, 2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:54]
    node _result_h_0_T_2 = eq(_result_h_0_T_1, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:46]
    node _result_h_0_T_3 = bits(io_in_h, 2, 2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:69]
    node _result_h_0_T_4 = mux(_result_h_0_T, _result_h_0_T_2, _result_h_0_T_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:23]
    node _result_l_T = bits(io_in_h, 2, 2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:28]
    node _result_l_T_1 = bits(io_in_l, 1, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:50]
    node _result_l_T_2 = bits(io_in_h, 1, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:67]
    node _result_l_T_3 = mux(_result_l_T, _result_l_T_1, _result_l_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:20]
    node result_h_1 = _result_h_1_T_2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 70:24 72:17]
    node result_h_0 = _result_h_0_T_4 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 70:24 73:17]
    node _io_out_m_T = cat(result_h_1, result_h_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:26]
    node result_l = _result_l_T_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 71:24 74:14]
    node _io_out_m_T_1 = cat(_io_out_m_T, result_l) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:33]
    io_out_m <= _io_out_m_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:14]

  module LZC_Merge4 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input io_in_h : UInt<4> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]
    input io_in_l : UInt<4> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]
    output io_out_m : UInt<5> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]

    node _result_h_1_T = bits(io_in_h, 3, 3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:27]
    node _result_h_1_T_1 = bits(io_in_l, 3, 3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:43]
    node _result_h_1_T_2 = and(_result_h_1_T, _result_h_1_T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:34]
    node _result_h_0_T = bits(io_in_h, 3, 3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:31]
    node _result_h_0_T_1 = bits(io_in_l, 3, 3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:54]
    node _result_h_0_T_2 = eq(_result_h_0_T_1, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:46]
    node _result_h_0_T_3 = bits(io_in_h, 3, 3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:69]
    node _result_h_0_T_4 = mux(_result_h_0_T, _result_h_0_T_2, _result_h_0_T_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:23]
    node _result_l_T = bits(io_in_h, 3, 3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:28]
    node _result_l_T_1 = bits(io_in_l, 2, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:50]
    node _result_l_T_2 = bits(io_in_h, 2, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:67]
    node _result_l_T_3 = mux(_result_l_T, _result_l_T_1, _result_l_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:20]
    node result_h_1 = _result_h_1_T_2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 70:24 72:17]
    node result_h_0 = _result_h_0_T_4 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 70:24 73:17]
    node _io_out_m_T = cat(result_h_1, result_h_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:26]
    node result_l = _result_l_T_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 71:24 74:14]
    node _io_out_m_T_1 = cat(_io_out_m_T, result_l) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:33]
    io_out_m <= _io_out_m_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:14]

  module LZC_Merge5 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 63:9]
    input io_in_h : UInt<5> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]
    input io_in_l : UInt<5> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]
    output io_out_m : UInt<6> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 64:16]

    node _result_h_1_T = bits(io_in_h, 4, 4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:27]
    node _result_h_1_T_1 = bits(io_in_l, 4, 4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:43]
    node _result_h_1_T_2 = and(_result_h_1_T, _result_h_1_T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 72:34]
    node _result_h_0_T = bits(io_in_h, 4, 4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:31]
    node _result_h_0_T_1 = bits(io_in_l, 4, 4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:54]
    node _result_h_0_T_2 = eq(_result_h_0_T_1, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:46]
    node _result_h_0_T_3 = bits(io_in_h, 4, 4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:69]
    node _result_h_0_T_4 = mux(_result_h_0_T, _result_h_0_T_2, _result_h_0_T_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 73:23]
    node _result_l_T = bits(io_in_h, 4, 4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:28]
    node _result_l_T_1 = bits(io_in_l, 3, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:50]
    node _result_l_T_2 = bits(io_in_h, 3, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:67]
    node _result_l_T_3 = mux(_result_l_T, _result_l_T_1, _result_l_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 74:20]
    node result_h_1 = _result_h_1_T_2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 70:24 72:17]
    node result_h_0 = _result_h_0_T_4 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 70:24 73:17]
    node _io_out_m_T = cat(result_h_1, result_h_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:26]
    node result_l = _result_l_T_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 71:24 74:14]
    node _io_out_m_T_1 = cat(_io_out_m_T, result_l) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:33]
    io_out_m <= _io_out_m_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 75:14]

  module LZC32_2 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 30:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 30:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 30:9]
    input io_in_d : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 31:16]
    output io_out_c : UInt<6> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 31:16]

    inst LZC_enc2 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_1 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_2 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_3 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_4 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_5 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_6 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_7 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_8 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_9 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_10 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_11 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_12 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_13 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_14 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_enc2_15 of LZC_enc2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 36:50]
    inst LZC_Merge2 of LZC_Merge2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge2_1 of LZC_Merge2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge2_2 of LZC_Merge2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge2_3 of LZC_Merge2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge2_4 of LZC_Merge2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge2_5 of LZC_Merge2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge2_6 of LZC_Merge2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge2_7 of LZC_Merge2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge3 of LZC_Merge3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge3_1 of LZC_Merge3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge3_2 of LZC_Merge3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge3_3 of LZC_Merge3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge4 of LZC_Merge4 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge4_1 of LZC_Merge4 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    inst LZC_Merge5 of LZC_Merge5 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 46:37]
    node encoded_enc_in = bits(io_in_d, 1, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_1 = bits(io_in_d, 3, 2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_2 = bits(io_in_d, 5, 4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_3 = bits(io_in_d, 7, 6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_4 = bits(io_in_d, 9, 8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_5 = bits(io_in_d, 11, 10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_6 = bits(io_in_d, 13, 12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_7 = bits(io_in_d, 15, 14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_8 = bits(io_in_d, 17, 16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_9 = bits(io_in_d, 19, 18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_10 = bits(io_in_d, 21, 20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_11 = bits(io_in_d, 23, 22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_12 = bits(io_in_d, 25, 24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_13 = bits(io_in_d, 27, 26) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_14 = bits(io_in_d, 29, 28) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    node encoded_enc_in_15 = bits(io_in_d, 31, 30) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 38:27]
    io_out_c <= LZC_Merge5.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 60:14]
    LZC_enc2.clock <= clock
    LZC_enc2.reset <= reset
    LZC_enc2.io_in_r <= encoded_enc_in @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_1.clock <= clock
    LZC_enc2_1.reset <= reset
    LZC_enc2_1.io_in_r <= encoded_enc_in_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_2.clock <= clock
    LZC_enc2_2.reset <= reset
    LZC_enc2_2.io_in_r <= encoded_enc_in_2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_3.clock <= clock
    LZC_enc2_3.reset <= reset
    LZC_enc2_3.io_in_r <= encoded_enc_in_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_4.clock <= clock
    LZC_enc2_4.reset <= reset
    LZC_enc2_4.io_in_r <= encoded_enc_in_4 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_5.clock <= clock
    LZC_enc2_5.reset <= reset
    LZC_enc2_5.io_in_r <= encoded_enc_in_5 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_6.clock <= clock
    LZC_enc2_6.reset <= reset
    LZC_enc2_6.io_in_r <= encoded_enc_in_6 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_7.clock <= clock
    LZC_enc2_7.reset <= reset
    LZC_enc2_7.io_in_r <= encoded_enc_in_7 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_8.clock <= clock
    LZC_enc2_8.reset <= reset
    LZC_enc2_8.io_in_r <= encoded_enc_in_8 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_9.clock <= clock
    LZC_enc2_9.reset <= reset
    LZC_enc2_9.io_in_r <= encoded_enc_in_9 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_10.clock <= clock
    LZC_enc2_10.reset <= reset
    LZC_enc2_10.io_in_r <= encoded_enc_in_10 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_11.clock <= clock
    LZC_enc2_11.reset <= reset
    LZC_enc2_11.io_in_r <= encoded_enc_in_11 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_12.clock <= clock
    LZC_enc2_12.reset <= reset
    LZC_enc2_12.io_in_r <= encoded_enc_in_12 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_13.clock <= clock
    LZC_enc2_13.reset <= reset
    LZC_enc2_13.io_in_r <= encoded_enc_in_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_14.clock <= clock
    LZC_enc2_14.reset <= reset
    LZC_enc2_14.io_in_r <= encoded_enc_in_14 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_enc2_15.clock <= clock
    LZC_enc2_15.reset <= reset
    LZC_enc2_15.io_in_r <= encoded_enc_in_15 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 39:24]
    LZC_Merge2.clock <= clock
    LZC_Merge2.reset <= reset
    LZC_Merge2.io_in_h <= LZC_enc2_15.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 52:30]
    LZC_Merge2.io_in_l <= LZC_enc2_14.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 53:30]
    LZC_Merge2_1.clock <= clock
    LZC_Merge2_1.reset <= reset
    LZC_Merge2_1.io_in_h <= LZC_enc2_13.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 52:30]
    LZC_Merge2_1.io_in_l <= LZC_enc2_12.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 53:30]
    LZC_Merge2_2.clock <= clock
    LZC_Merge2_2.reset <= reset
    LZC_Merge2_2.io_in_h <= LZC_enc2_11.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 52:30]
    LZC_Merge2_2.io_in_l <= LZC_enc2_10.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 53:30]
    LZC_Merge2_3.clock <= clock
    LZC_Merge2_3.reset <= reset
    LZC_Merge2_3.io_in_h <= LZC_enc2_9.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 52:30]
    LZC_Merge2_3.io_in_l <= LZC_enc2_8.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 53:30]
    LZC_Merge2_4.clock <= clock
    LZC_Merge2_4.reset <= reset
    LZC_Merge2_4.io_in_h <= LZC_enc2_7.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 52:30]
    LZC_Merge2_4.io_in_l <= LZC_enc2_6.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 53:30]
    LZC_Merge2_5.clock <= clock
    LZC_Merge2_5.reset <= reset
    LZC_Merge2_5.io_in_h <= LZC_enc2_5.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 52:30]
    LZC_Merge2_5.io_in_l <= LZC_enc2_4.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 53:30]
    LZC_Merge2_6.clock <= clock
    LZC_Merge2_6.reset <= reset
    LZC_Merge2_6.io_in_h <= LZC_enc2_3.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 52:30]
    LZC_Merge2_6.io_in_l <= LZC_enc2_2.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 53:30]
    LZC_Merge2_7.clock <= clock
    LZC_Merge2_7.reset <= reset
    LZC_Merge2_7.io_in_h <= LZC_enc2_1.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 52:30]
    LZC_Merge2_7.io_in_l <= LZC_enc2.io_out_e @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 53:30]
    LZC_Merge3.clock <= clock
    LZC_Merge3.reset <= reset
    LZC_Merge3.io_in_h <= LZC_Merge2.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 55:30]
    LZC_Merge3.io_in_l <= LZC_Merge2_1.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 56:30]
    LZC_Merge3_1.clock <= clock
    LZC_Merge3_1.reset <= reset
    LZC_Merge3_1.io_in_h <= LZC_Merge2_2.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 55:30]
    LZC_Merge3_1.io_in_l <= LZC_Merge2_3.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 56:30]
    LZC_Merge3_2.clock <= clock
    LZC_Merge3_2.reset <= reset
    LZC_Merge3_2.io_in_h <= LZC_Merge2_4.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 55:30]
    LZC_Merge3_2.io_in_l <= LZC_Merge2_5.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 56:30]
    LZC_Merge3_3.clock <= clock
    LZC_Merge3_3.reset <= reset
    LZC_Merge3_3.io_in_h <= LZC_Merge2_6.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 55:30]
    LZC_Merge3_3.io_in_l <= LZC_Merge2_7.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 56:30]
    LZC_Merge4.clock <= clock
    LZC_Merge4.reset <= reset
    LZC_Merge4.io_in_h <= LZC_Merge3.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 55:30]
    LZC_Merge4.io_in_l <= LZC_Merge3_1.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 56:30]
    LZC_Merge4_1.clock <= clock
    LZC_Merge4_1.reset <= reset
    LZC_Merge4_1.io_in_h <= LZC_Merge3_2.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 55:30]
    LZC_Merge4_1.io_in_l <= LZC_Merge3_3.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 56:30]
    LZC_Merge5.clock <= clock
    LZC_Merge5.reset <= reset
    LZC_Merge5.io_in_h <= LZC_Merge4.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 55:30]
    LZC_Merge5.io_in_l <= LZC_Merge4_1.io_out_m @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 56:30]

  module FP_add_32_13 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 287:9]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 287:9]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 287:9]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 290:16]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 290:16]
    input io_in_a : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 290:16]
    input io_in_b : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 290:16]
    output io_out_s : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 290:16]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 290:16]

    inst exp_subtractor of full_subtractor @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 362:32]
    inst full_adder of full_adder_4 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 389:28]
    inst LZC32_2 of LZC32_2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 407:26]
    reg in_a : UInt<32>, clock with :
      reset => (UInt<1>("h0"), in_a) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 321:29]
    node _GEN_0 = mux(io_in_en, io_in_a, in_a) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 321:{29,29,29}]
    reg in_b : UInt<32>, clock with :
      reset => (UInt<1>("h0"), in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 322:29]
    node _GEN_1 = mux(io_in_en, io_in_b, in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 322:{29,29,29}]
    node _sign_wire_0_T = bits(in_a, 31, 31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 327:25]
    node _sign_wire_1_T = bits(in_b, 31, 31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 328:25]
    node _T = bits(in_a, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 332:14]
    node _T_1 = sub(UInt<9>("h100"), UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 332:61]
    node _T_2 = tail(_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 332:61]
    node _T_3 = gt(_T, _T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 332:33]
    node _exp_wire_0_T = sub(UInt<9>("h100"), UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 333:48]
    node _exp_wire_0_T_1 = tail(_exp_wire_0_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 333:48]
    node _T_4 = bits(in_a, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 334:20]
    node _T_5 = lt(_T_4, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 334:36]
    node _exp_wire_0_T_2 = bits(in_a, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 337:26]
    node _GEN_2 = mux(_T_5, UInt<1>("h1"), _exp_wire_0_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 334:42 335:19 337:19]
    node _GEN_3 = mux(_T_3, _exp_wire_0_T_1, _GEN_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 332:68 333:19]
    node _T_6 = bits(in_b, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 339:14]
    node _T_7 = sub(UInt<9>("h100"), UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 339:61]
    node _T_8 = tail(_T_7, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 339:61]
    node _T_9 = gt(_T_6, _T_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 339:33]
    node _exp_wire_1_T = sub(UInt<9>("h100"), UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 340:48]
    node _exp_wire_1_T_1 = tail(_exp_wire_1_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 340:48]
    node _T_10 = bits(in_b, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 341:20]
    node _T_11 = lt(_T_10, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 341:36]
    node _exp_wire_1_T_2 = bits(in_b, 30, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 344:26]
    node _GEN_4 = mux(_T_11, UInt<1>("h1"), _exp_wire_1_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 341:42 342:19 344:19]
    node _GEN_5 = mux(_T_9, _exp_wire_1_T_1, _GEN_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 339:68 340:19]
    node _frac_wire_0_T = bits(in_a, 22, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 349:25]
    node _frac_wire_1_T = bits(in_b, 22, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 350:25]
    node frac_wire_0 = _frac_wire_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 348:25 349:18]
    node _whole_frac_wire_0_T = cat(UInt<1>("h1"), frac_wire_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 354:31]
    node frac_wire_1 = _frac_wire_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 348:25 350:18]
    node _whole_frac_wire_1_T = cat(UInt<1>("h1"), frac_wire_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 355:31]
    reg exp_sr_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 358:31]
    reg exp_sr_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 358:31]
    node exp_wire_0 = bits(_GEN_3, 7, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 331:24]
    node _GEN_6 = mux(io_in_en, exp_wire_0, exp_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 358:{31,31,31}]
    node exp_wire_1 = bits(_GEN_5, 7, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 331:24]
    node _GEN_7 = mux(io_in_en, exp_wire_1, exp_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 358:{31,31,31}]
    reg whole_frac_sr_0 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 359:38]
    reg whole_frac_sr_1 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 359:38]
    node whole_frac_wire_0 = _whole_frac_wire_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 353:31 354:24]
    node _GEN_8 = mux(io_in_en, whole_frac_wire_0, whole_frac_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 359:{38,38,38}]
    node whole_frac_wire_1 = _whole_frac_wire_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 353:31 355:24]
    node _GEN_9 = mux(io_in_en, whole_frac_wire_1, whole_frac_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 359:{38,38,38}]
    reg sign_sr_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 360:32]
    reg sign_sr_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 360:32]
    node sign_wire_0 = _sign_wire_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 326:25 327:18]
    node _GEN_10 = mux(io_in_en, sign_wire_0, sign_sr_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 360:{32,32,32}]
    node sign_wire_1 = _sign_wire_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 326:25 328:18]
    node _GEN_11 = mux(io_in_en, sign_wire_1, sign_sr_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 360:{32,32,32}]
    reg exp_sub_out_c_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), exp_sub_out_c_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 367:38]
    node _GEN_12 = mux(io_in_en, exp_subtractor.io_out_c, exp_sub_out_c_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 367:{38,38,38}]
    reg exp_sub_out_c : UInt<1>, clock with :
      reset => (UInt<1>("h0"), exp_sub_out_c) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 367:38]
    node _GEN_13 = mux(io_in_en, exp_sub_out_c_r, exp_sub_out_c) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 367:{38,38,38}]
    reg exp_sub_out_s_r : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sub_out_s_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 368:38]
    node _GEN_14 = mux(io_in_en, exp_subtractor.io_out_s, exp_sub_out_s_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 368:{38,38,38}]
    reg exp_sub_out_s : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sub_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 368:38]
    node _GEN_15 = mux(io_in_en, exp_sub_out_s_r, exp_sub_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 368:{38,38,38}]
    reg exp_sr_2_r_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_2_r_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 369:33]
    reg exp_sr_2_r_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_2_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 369:33]
    node _GEN_16 = mux(io_in_en, exp_sr_0, exp_sr_2_r_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 369:{33,33,33}]
    node _GEN_17 = mux(io_in_en, exp_sr_1, exp_sr_2_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 369:{33,33,33}]
    reg exp_sr_2_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 369:33]
    reg exp_sr_2_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 369:33]
    node _GEN_18 = mux(io_in_en, exp_sr_2_r_0, exp_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 369:{33,33,33}]
    node _GEN_19 = mux(io_in_en, exp_sr_2_r_1, exp_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 369:{33,33,33}]
    reg whole_frac_sr_2_r_0 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_2_r_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 370:40]
    reg whole_frac_sr_2_r_1 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_2_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 370:40]
    node _GEN_20 = mux(io_in_en, whole_frac_sr_0, whole_frac_sr_2_r_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 370:{40,40,40}]
    node _GEN_21 = mux(io_in_en, whole_frac_sr_1, whole_frac_sr_2_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 370:{40,40,40}]
    reg whole_frac_sr_2_0 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 370:40]
    reg whole_frac_sr_2_1 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 370:40]
    node _GEN_22 = mux(io_in_en, whole_frac_sr_2_r_0, whole_frac_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 370:{40,40,40}]
    node _GEN_23 = mux(io_in_en, whole_frac_sr_2_r_1, whole_frac_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 370:{40,40,40}]
    reg sign_sr_2_r_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_2_r_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 371:34]
    reg sign_sr_2_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_2_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 371:34]
    node _GEN_24 = mux(io_in_en, sign_sr_0, sign_sr_2_r_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 371:{34,34,34}]
    node _GEN_25 = mux(io_in_en, sign_sr_1, sign_sr_2_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 371:{34,34,34}]
    reg sign_sr_2_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 371:34]
    reg sign_sr_2_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 371:34]
    node _GEN_26 = mux(io_in_en, sign_sr_2_r_0, sign_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 371:{34,34,34}]
    node _GEN_27 = mux(io_in_en, sign_sr_2_r_1, sign_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 371:{34,34,34}]
    node _eqexp_arrange_T = eq(exp_sr_2_0, exp_sr_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 373:54]
    node _eqexp_arrange_T_1 = gt(whole_frac_sr_2_1, whole_frac_sr_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 373:88]
    node _eqexp_arrange_T_2 = mux(_eqexp_arrange_T, _eqexp_arrange_T_1, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 373:42]
    reg eqexp_arrange : UInt<1>, clock with :
      reset => (UInt<1>("h0"), eqexp_arrange) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 373:38]
    node _GEN_28 = mux(io_in_en, _eqexp_arrange_T_2, eqexp_arrange) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 373:{38,38,38}]
    reg exp_sr_3_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 374:33]
    reg exp_sr_3_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 374:33]
    node _GEN_29 = mux(io_in_en, exp_sr_2_0, exp_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 374:{33,33,33}]
    node _GEN_30 = mux(io_in_en, exp_sr_2_1, exp_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 374:{33,33,33}]
    reg whole_frac_sr_3_0 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 375:40]
    reg whole_frac_sr_3_1 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), whole_frac_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 375:40]
    node _GEN_31 = mux(io_in_en, whole_frac_sr_2_0, whole_frac_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 375:{40,40,40}]
    node _GEN_32 = mux(io_in_en, whole_frac_sr_2_1, whole_frac_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 375:{40,40,40}]
    reg sign_sr_3_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 376:34]
    reg sign_sr_3_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 376:34]
    node _GEN_33 = mux(io_in_en, sign_sr_2_0, sign_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 376:{34,34,34}]
    node _GEN_34 = mux(io_in_en, sign_sr_2_1, sign_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 376:{34,34,34}]
    reg exp_sub_out_c_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), exp_sub_out_c_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 377:40]
    node _GEN_35 = mux(io_in_en, exp_sub_out_c, exp_sub_out_c_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 377:{40,40,40}]
    reg exp_sub_out_s_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), exp_sub_out_s_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 378:40]
    node _GEN_36 = mux(io_in_en, exp_sub_out_s, exp_sub_out_s_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 378:{40,40,40}]
    node _redundant_op_T = bits(exp_sub_out_c_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 381:58]
    node _redundant_op_T_1 = not(exp_sub_out_s_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 381:67]
    node _redundant_op_T_2 = add(_redundant_op_T_1, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 381:92]
    node _redundant_op_T_3 = tail(_redundant_op_T_2, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 381:92]
    node _redundant_op_T_4 = mux(_redundant_op_T, _redundant_op_T_3, exp_sub_out_s_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 381:41]
    node _redundant_op_T_5 = gt(_redundant_op_T_4, UInt<5>("h17")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 381:116]
    reg redundant_op : UInt<1>, clock with :
      reset => (UInt<1>("h0"), redundant_op) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 381:37]
    node _GEN_37 = mux(io_in_en, _redundant_op_T_5, redundant_op) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 381:{37,37,37}]
    node _fracadd_in_a_T = bits(exp_sub_out_c_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 382:58]
    node _GEN_38 = validif(eq(UInt<1>("h0"), eqexp_arrange), whole_frac_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 382:{41,41}]
    node _GEN_39 = mux(eq(UInt<1>("h1"), eqexp_arrange), whole_frac_sr_3_1, _GEN_38) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 382:{41,41}]
    node _whole_frac_sr_3_eqexp_arrange = _GEN_39 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 382:41]
    node _fracadd_in_a_T_1 = mux(_fracadd_in_a_T, whole_frac_sr_3_1, _whole_frac_sr_3_eqexp_arrange) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 382:41]
    reg fracadd_in_a : UInt<24>, clock with :
      reset => (UInt<1>("h0"), fracadd_in_a) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 382:37]
    node _GEN_40 = mux(io_in_en, _fracadd_in_a_T_1, fracadd_in_a) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 382:{37,37,37}]
    node _fracadd_in_b_T = bits(exp_sub_out_c_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:58]
    node _fracadd_in_b_T_1 = not(exp_sub_out_s_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:90]
    node _fracadd_in_b_T_2 = add(_fracadd_in_b_T_1, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:115]
    node _fracadd_in_b_T_3 = tail(_fracadd_in_b_T_2, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:115]
    node _fracadd_in_b_T_4 = dshr(whole_frac_sr_3_0, _fracadd_in_b_T_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:85]
    node _fracadd_in_b_T_5 = eq(eqexp_arrange, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:139]
    node _GEN_41 = validif(eq(UInt<1>("h0"), _fracadd_in_b_T_5), whole_frac_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:{155,155}]
    node _GEN_42 = mux(eq(UInt<1>("h1"), _fracadd_in_b_T_5), whole_frac_sr_3_1, _GEN_41) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:{155,155}]
    node _whole_frac_sr_3_fracadd_in_b_T_5 = _GEN_42 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:155]
    node _fracadd_in_b_T_6 = dshr(_whole_frac_sr_3_fracadd_in_b_T_5, exp_sub_out_s_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:155]
    node _fracadd_in_b_T_7 = mux(_fracadd_in_b_T, _fracadd_in_b_T_4, _fracadd_in_b_T_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:41]
    reg fracadd_in_b : UInt<24>, clock with :
      reset => (UInt<1>("h0"), fracadd_in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:37]
    node _GEN_43 = mux(io_in_en, _fracadd_in_b_T_7, fracadd_in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 383:{37,37,37}]
    node _ref_exp_T = bits(exp_sub_out_c_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 384:53]
    node _ref_exp_T_1 = mux(_ref_exp_T, exp_sr_3_1, exp_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 384:36]
    reg ref_exp : UInt<8>, clock with :
      reset => (UInt<1>("h0"), ref_exp) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 384:32]
    node _GEN_44 = mux(io_in_en, _ref_exp_T_1, ref_exp) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 384:{32,32,32}]
    node _ref_sign_T = bits(exp_sub_out_c_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 385:54]
    node _GEN_45 = validif(eq(UInt<1>("h0"), eqexp_arrange), sign_sr_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 385:{37,37}]
    node _GEN_46 = mux(eq(UInt<1>("h1"), eqexp_arrange), sign_sr_3_1, _GEN_45) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 385:{37,37}]
    node _sign_sr_3_eqexp_arrange = _GEN_46 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 385:37]
    node _ref_sign_T_1 = mux(_ref_sign_T, sign_sr_3_1, _sign_sr_3_eqexp_arrange) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 385:37]
    reg ref_sign : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ref_sign) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 385:33]
    node _GEN_47 = mux(io_in_en, _ref_sign_T_1, ref_sign) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 385:{33,33,33}]
    node _diff_sign_T = xor(sign_sr_3_0, sign_sr_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 386:48]
    reg diff_sign : UInt<1>, clock with :
      reset => (UInt<1>("h0"), diff_sign) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 386:34]
    node _GEN_48 = mux(io_in_en, _diff_sign_T, diff_sign) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 386:{34,34,34}]
    node _T_12 = bits(diff_sign, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 391:38]
    node _T_13 = not(fracadd_in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 391:47]
    node _T_14 = add(_T_13, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 391:69]
    node _T_15 = tail(_T_14, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 391:69]
    node _T_16 = mux(_T_12, _T_15, fracadd_in_b) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 391:27]
    reg frac_adder_out_c_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), frac_adder_out_c_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 394:41]
    node _GEN_49 = mux(io_in_en, full_adder.io_out_c, frac_adder_out_c_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 394:{41,41,41}]
    reg frac_adder_out_c : UInt<1>, clock with :
      reset => (UInt<1>("h0"), frac_adder_out_c) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 394:41]
    node _GEN_50 = mux(io_in_en, frac_adder_out_c_r, frac_adder_out_c) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 394:{41,41,41}]
    reg frac_adder_out_s_r : UInt<24>, clock with :
      reset => (UInt<1>("h0"), frac_adder_out_s_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 395:41]
    node _GEN_51 = mux(io_in_en, full_adder.io_out_s, frac_adder_out_s_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 395:{41,41,41}]
    reg frac_adder_out_s : UInt<24>, clock with :
      reset => (UInt<1>("h0"), frac_adder_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 395:41]
    node _GEN_52 = mux(io_in_en, frac_adder_out_s_r, frac_adder_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 395:{41,41,41}]
    reg diff_sign_2_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), diff_sign_2_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 396:36]
    node _GEN_53 = mux(io_in_en, diff_sign, diff_sign_2_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 396:{36,36,36}]
    reg diff_sign_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), diff_sign_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 396:36]
    node _GEN_54 = mux(io_in_en, diff_sign_2_r, diff_sign_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 396:{36,36,36}]
    reg redundant_op_2_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), redundant_op_2_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 397:39]
    node _GEN_55 = mux(io_in_en, redundant_op, redundant_op_2_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 397:{39,39,39}]
    reg redundant_op_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), redundant_op_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 397:39]
    node _GEN_56 = mux(io_in_en, redundant_op_2_r, redundant_op_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 397:{39,39,39}]
    reg ref_sign_2_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ref_sign_2_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 398:35]
    node _GEN_57 = mux(io_in_en, ref_sign, ref_sign_2_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 398:{35,35,35}]
    reg ref_sign_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), ref_sign_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 398:35]
    node _GEN_58 = mux(io_in_en, ref_sign_2_r, ref_sign_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 398:{35,35,35}]
    reg ref_exp_2_r : UInt<8>, clock with :
      reset => (UInt<1>("h0"), ref_exp_2_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 399:34]
    node _GEN_59 = mux(io_in_en, ref_exp, ref_exp_2_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 399:{34,34,34}]
    reg ref_exp_2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), ref_exp_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 399:34]
    node _GEN_60 = mux(io_in_en, ref_exp_2_r, ref_exp_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 399:{34,34,34}]
    node _sign_out_T = bits(diff_sign_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:50]
    node _sign_out_T_1 = eq(redundant_op_2, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:60]
    node _sign_out_T_2 = and(_sign_out_T, _sign_out_T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:57]
    node _sign_out_T_3 = bits(frac_adder_out_c, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:98]
    node _sign_out_T_4 = eq(ref_sign_2, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:118]
    node _sign_out_T_5 = mux(_sign_out_T_3, ref_sign_2, _sign_out_T_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:80]
    node _sign_out_T_6 = mux(_sign_out_T_2, _sign_out_T_5, ref_sign_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:37]
    reg sign_out : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_out) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:33]
    node _GEN_61 = mux(io_in_en, _sign_out_T_6, sign_out) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 401:{33,33,33}]
    reg fracadd_outs : UInt<24>, clock with :
      reset => (UInt<1>("h0"), fracadd_outs) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 402:37]
    node _GEN_62 = mux(io_in_en, frac_adder_out_s, fracadd_outs) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 402:{37,37,37}]
    reg fracadd_outc : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fracadd_outc) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 403:37]
    node _GEN_63 = mux(io_in_en, frac_adder_out_c, fracadd_outc) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 403:{37,37,37}]
    reg diff_sign_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), diff_sign_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 404:36]
    node _GEN_64 = mux(io_in_en, diff_sign_2, diff_sign_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 404:{36,36,36}]
    reg ref_exp_3 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), ref_exp_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 405:34]
    node _GEN_65 = mux(io_in_en, ref_exp_2, ref_exp_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 405:{34,34,34}]
    node _WIRE_1 = UInt<1>("h1") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:{72,72}]
    node _WIRE_0 = UInt<1>("h1") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:{72,72}]
    node lo_lo = cat(_WIRE_1, _WIRE_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:82]
    node _WIRE_3 = UInt<1>("h1") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:{72,72}]
    node _WIRE_2 = UInt<1>("h1") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:{72,72}]
    node lo_hi = cat(_WIRE_3, _WIRE_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:82]
    node lo = cat(lo_hi, lo_lo) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:82]
    node _WIRE_5 = UInt<1>("h1") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:{72,72}]
    node _WIRE_4 = UInt<1>("h1") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:{72,72}]
    node hi_lo = cat(_WIRE_5, _WIRE_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:82]
    node _WIRE_7 = UInt<1>("h1") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:{72,72}]
    node _WIRE_6 = UInt<1>("h1") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:{72,72}]
    node hi_hi = cat(_WIRE_7, _WIRE_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:82]
    node hi = cat(hi_hi, hi_lo) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:82]
    node _T_17 = cat(hi, lo) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:82]
    node _T_18 = cat(fracadd_outs, _T_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:35]
    reg leadzeroindex : UInt<6>, clock with :
      reset => (UInt<1>("h0"), leadzeroindex) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 409:38]
    node _GEN_66 = mux(io_in_en, LZC32_2.io_out_c, leadzeroindex) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 409:{38,38,38}]
    reg ref_exp_4 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), ref_exp_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 410:34]
    node _GEN_67 = mux(io_in_en, ref_exp_3, ref_exp_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 410:{34,34,34}]
    reg fracadd_outs_2 : UInt<24>, clock with :
      reset => (UInt<1>("h0"), fracadd_outs_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 411:39]
    node _GEN_68 = mux(io_in_en, fracadd_outs, fracadd_outs_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 411:{39,39,39}]
    reg diff_sign_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), diff_sign_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 412:36]
    node _GEN_69 = mux(io_in_en, diff_sign_3, diff_sign_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 412:{36,36,36}]
    reg fracadd_outc_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), fracadd_outc_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 413:39]
    node _GEN_70 = mux(io_in_en, fracadd_outc, fracadd_outc_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 413:{39,39,39}]
    reg sign_out_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_out_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 414:35]
    node _GEN_71 = mux(io_in_en, sign_out, sign_out_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 414:{35,35,35}]
    node _red_T = sub(ref_exp_4, leadzeroindex) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 416:25]
    node red = asUInt(_red_T) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 416:25]
    node inc = add(ref_exp_4, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 417:25]
    node _shifted_left_T = bits(fracadd_outs_2, 22, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 419:38]
    node shifted_left = dshl(_shifted_left_T, leadzeroindex) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 419:56]
    reg diff_sign_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), diff_sign_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 421:36]
    node _GEN_72 = mux(io_in_en, diff_sign_4, diff_sign_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 421:{36,36,36}]
    node _innermux_frac_true_T = bits(fracadd_outs_2, 23, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:62]
    node _innermux_frac_true_T_1 = bits(fracadd_outs_2, 22, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:95]
    node _innermux_frac_true_T_2 = bits(red, 8, 8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:118]
    node _innermux_frac_true_T_3 = lt(red, UInt<8>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:137]
    node _innermux_frac_true_T_4 = or(_innermux_frac_true_T_2, _innermux_frac_true_T_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:129]
    node _innermux_frac_true_T_5 = mux(_innermux_frac_true_T_4, UInt<23>("h0"), shifted_left) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:114]
    node _innermux_frac_true_T_6 = mux(_innermux_frac_true_T, _innermux_frac_true_T_1, _innermux_frac_true_T_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:47]
    reg innermux_frac_true : UInt<86>, clock with :
      reset => (UInt<1>("h0"), innermux_frac_true) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:43]
    node _GEN_73 = mux(io_in_en, _innermux_frac_true_T_6, innermux_frac_true) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 422:{43,43,43}]
    node _innermux_frac_false_T = bits(fracadd_outc_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:64]
    node _innermux_frac_false_T_1 = bits(inc, 8, 8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:79]
    node _innermux_frac_false_T_2 = gt(inc, UInt<8>("hfe")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:98]
    node _innermux_frac_false_T_3 = or(_innermux_frac_false_T_1, _innermux_frac_false_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:90]
    node _innermux_frac_false_T_4 = bits(fracadd_outs_2, 23, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:134]
    node _innermux_frac_false_T_5 = mux(_innermux_frac_false_T_3, UInt<23>("h7fffff"), _innermux_frac_false_T_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:75]
    node _innermux_frac_false_T_6 = bits(fracadd_outs_2, 22, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:163]
    node _innermux_frac_false_T_7 = mux(_innermux_frac_false_T, _innermux_frac_false_T_5, _innermux_frac_false_T_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:48]
    reg innermux_frac_false : UInt<23>, clock with :
      reset => (UInt<1>("h0"), innermux_frac_false) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:44]
    node _GEN_74 = mux(io_in_en, _innermux_frac_false_T_7, innermux_frac_false) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 423:{44,44,44}]
    node _innermux_exp_true_T = bits(fracadd_outs_2, 23, 23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:61]
    node _innermux_exp_true_T_1 = bits(red, 8, 8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:98]
    node _innermux_exp_true_T_2 = lt(red, UInt<8>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:117]
    node _innermux_exp_true_T_3 = or(_innermux_exp_true_T_1, _innermux_exp_true_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:109]
    node _innermux_exp_true_T_4 = bits(red, 7, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:141]
    node _innermux_exp_true_T_5 = mux(_innermux_exp_true_T_3, UInt<8>("h1"), _innermux_exp_true_T_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:94]
    node _innermux_exp_true_T_6 = mux(_innermux_exp_true_T, ref_exp_4, _innermux_exp_true_T_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:46]
    reg innermux_exp_true : UInt<8>, clock with :
      reset => (UInt<1>("h0"), innermux_exp_true) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:42]
    node _GEN_75 = mux(io_in_en, _innermux_exp_true_T_6, innermux_exp_true) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 424:{42,42,42}]
    node _innermux_exp_false_T = bits(fracadd_outc_2, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:63]
    node _innermux_exp_false_T_1 = bits(inc, 8, 8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:78]
    node _innermux_exp_false_T_2 = gt(inc, UInt<8>("hfe")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:97]
    node _innermux_exp_false_T_3 = or(_innermux_exp_false_T_1, _innermux_exp_false_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:89]
    node _innermux_exp_false_T_4 = bits(inc, 7, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:121]
    node _innermux_exp_false_T_5 = mux(_innermux_exp_false_T_3, UInt<8>("hfe"), _innermux_exp_false_T_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:74]
    node _innermux_exp_false_T_6 = mux(_innermux_exp_false_T, _innermux_exp_false_T_5, ref_exp_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:47]
    reg innermux_exp_false : UInt<8>, clock with :
      reset => (UInt<1>("h0"), innermux_exp_false) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:43]
    node _GEN_76 = mux(io_in_en, _innermux_exp_false_T_6, innermux_exp_false) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 425:{43,43,43}]
    reg sign_out_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), sign_out_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 426:35]
    node _GEN_77 = mux(io_in_en, sign_out_2, sign_out_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 426:{35,35,35}]
    node _norm_out_frac_T = bits(diff_sign_5, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 428:56]
    node _norm_out_frac_T_1 = mux(_norm_out_frac_T, innermux_frac_true, innermux_frac_false) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 428:43]
    reg norm_out_frac_r : UInt<86>, clock with :
      reset => (UInt<1>("h0"), norm_out_frac_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 428:39]
    node _GEN_78 = mux(io_in_en, _norm_out_frac_T_1, norm_out_frac_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 428:{39,39,39}]
    reg norm_out_frac_r_1 : UInt<86>, clock with :
      reset => (UInt<1>("h0"), norm_out_frac_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 428:39]
    node _GEN_79 = mux(io_in_en, norm_out_frac_r, norm_out_frac_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 428:{39,39,39}]
    node norm_out_frac = bits(norm_out_frac_r_1, 22, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 431:30]
    node _norm_out_exp_T = bits(diff_sign_5, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 433:54]
    node _norm_out_exp_T_1 = mux(_norm_out_exp_T, innermux_exp_true, innermux_exp_false) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 433:41]
    reg norm_out_exp_r : UInt<8>, clock with :
      reset => (UInt<1>("h0"), norm_out_exp_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 433:37]
    node _GEN_80 = mux(io_in_en, _norm_out_exp_T_1, norm_out_exp_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 433:{37,37,37}]
    reg norm_out_exp : UInt<8>, clock with :
      reset => (UInt<1>("h0"), norm_out_exp) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 433:37]
    node _GEN_81 = mux(io_in_en, norm_out_exp_r, norm_out_exp) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 433:{37,37,37}]
    reg norm_out_sign_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), norm_out_sign_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 437:38]
    node _GEN_82 = mux(io_in_en, sign_out_3, norm_out_sign_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 437:{38,38,38}]
    reg norm_out_sign : UInt<1>, clock with :
      reset => (UInt<1>("h0"), norm_out_sign) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 437:38]
    node _GEN_83 = mux(io_in_en, norm_out_sign_r, norm_out_sign) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 437:{38,38,38}]
    reg io_out_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_84 = mux(io_in_en, io_in_valid, io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_85 = mux(io_in_en, io_out_valid_r, io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_86 = mux(io_in_en, io_out_valid_r_1, io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_87 = mux(io_in_en, io_out_valid_r_2, io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_88 = mux(io_in_en, io_out_valid_r_3, io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_89 = mux(io_in_en, io_out_valid_r_4, io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_6 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_90 = mux(io_in_en, io_out_valid_r_5, io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_7 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_91 = mux(io_in_en, io_out_valid_r_6, io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_92 = mux(io_in_en, io_out_valid_r_7, io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_9 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_93 = mux(io_in_en, io_out_valid_r_8, io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_10 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_94 = mux(io_in_en, io_out_valid_r_9, io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_11 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_95 = mux(io_in_en, io_out_valid_r_10, io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    reg io_out_valid_r_12 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:34]
    node _GEN_96 = mux(io_in_en, io_out_valid_r_11, io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:{34,34,34}]
    node _io_out_s_T = cat(norm_out_sign, norm_out_exp) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 440:31]
    node _io_out_s_T_1 = cat(_io_out_s_T, norm_out_frac) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 440:47]
    io_out_s <= _io_out_s_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 440:14]
    io_out_valid <= io_out_valid_r_12 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 439:18]
    in_a <= _GEN_0
    in_b <= _GEN_1
    exp_sr_0 <= _GEN_6
    exp_sr_1 <= _GEN_7
    whole_frac_sr_0 <= _GEN_8
    whole_frac_sr_1 <= _GEN_9
    sign_sr_0 <= _GEN_10
    sign_sr_1 <= _GEN_11
    exp_subtractor.clock <= clock
    exp_subtractor.reset <= reset
    exp_subtractor.io_in_a <= exp_sr_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 363:28]
    exp_subtractor.io_in_b <= exp_sr_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 364:28]
    exp_subtractor.io_in_c <= UInt<1>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 365:28]
    exp_sub_out_c_r <= _GEN_12
    exp_sub_out_c <= _GEN_13
    exp_sub_out_s_r <= _GEN_14
    exp_sub_out_s <= _GEN_15
    exp_sr_2_r_0 <= _GEN_16
    exp_sr_2_r_1 <= _GEN_17
    exp_sr_2_0 <= _GEN_18
    exp_sr_2_1 <= _GEN_19
    whole_frac_sr_2_r_0 <= _GEN_20
    whole_frac_sr_2_r_1 <= _GEN_21
    whole_frac_sr_2_0 <= _GEN_22
    whole_frac_sr_2_1 <= _GEN_23
    sign_sr_2_r_0 <= _GEN_24
    sign_sr_2_r_1 <= _GEN_25
    sign_sr_2_0 <= _GEN_26
    sign_sr_2_1 <= _GEN_27
    eqexp_arrange <= _GEN_28
    exp_sr_3_0 <= _GEN_29
    exp_sr_3_1 <= _GEN_30
    whole_frac_sr_3_0 <= _GEN_31
    whole_frac_sr_3_1 <= _GEN_32
    sign_sr_3_0 <= _GEN_33
    sign_sr_3_1 <= _GEN_34
    exp_sub_out_c_2 <= _GEN_35
    exp_sub_out_s_2 <= _GEN_36
    redundant_op <= _GEN_37
    fracadd_in_a <= _GEN_40
    fracadd_in_b <= _GEN_43
    ref_exp <= _GEN_44
    ref_sign <= _GEN_47
    diff_sign <= _GEN_48
    full_adder.clock <= clock
    full_adder.reset <= reset
    full_adder.io_in_a <= fracadd_in_a @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 390:21]
    full_adder.io_in_b <= _T_16 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 391:21]
    full_adder.io_in_c <= UInt<1>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 392:21]
    frac_adder_out_c_r <= _GEN_49
    frac_adder_out_c <= _GEN_50
    frac_adder_out_s_r <= _GEN_51
    frac_adder_out_s <= _GEN_52
    diff_sign_2_r <= _GEN_53
    diff_sign_2 <= _GEN_54
    redundant_op_2_r <= _GEN_55
    redundant_op_2 <= _GEN_56
    ref_sign_2_r <= _GEN_57
    ref_sign_2 <= _GEN_58
    ref_exp_2_r <= _GEN_59
    ref_exp_2 <= _GEN_60
    sign_out <= _GEN_61
    fracadd_outs <= _GEN_62
    fracadd_outc <= _GEN_63
    diff_sign_3 <= _GEN_64
    ref_exp_3 <= _GEN_65
    LZC32_2.clock <= clock
    LZC32_2.reset <= reset
    LZC32_2.io_in_d <= _T_18 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 408:19]
    leadzeroindex <= _GEN_66
    ref_exp_4 <= _GEN_67
    fracadd_outs_2 <= _GEN_68
    diff_sign_4 <= _GEN_69
    fracadd_outc_2 <= _GEN_70
    sign_out_2 <= _GEN_71
    diff_sign_5 <= _GEN_72
    innermux_frac_true <= _GEN_73
    innermux_frac_false <= _GEN_74
    innermux_exp_true <= _GEN_75
    innermux_exp_false <= _GEN_76
    sign_out_3 <= _GEN_77
    norm_out_frac_r <= _GEN_78
    norm_out_frac_r_1 <= _GEN_79
    norm_out_exp_r <= _GEN_80
    norm_out_exp <= _GEN_81
    norm_out_sign_r <= _GEN_82
    norm_out_sign <= _GEN_83
    io_out_valid_r <= _GEN_84
    io_out_valid_r_1 <= _GEN_85
    io_out_valid_r_2 <= _GEN_86
    io_out_valid_r_3 <= _GEN_87
    io_out_valid_r_4 <= _GEN_88
    io_out_valid_r_5 <= _GEN_89
    io_out_valid_r_6 <= _GEN_90
    io_out_valid_r_7 <= _GEN_91
    io_out_valid_r_8 <= _GEN_92
    io_out_valid_r_9 <= _GEN_93
    io_out_valid_r_10 <= _GEN_94
    io_out_valid_r_11 <= _GEN_95
    io_out_valid_r_12 <= _GEN_96

  module complex_conjugate_mult : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:7]
    input io_complexA : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 31:14]
    input io_complexB : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 31:14]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 31:14]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 31:14]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 31:14]
    output io_out_s : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 31:14]
    output io_out_real : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 31:14]
    output io_out_imag : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 31:14]

    inst FP_mult_inst_0 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 61:40]
    inst FP_mult_inst_1 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 61:40]
    inst FP_mult_inst_2 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 61:40]
    inst FP_mult_inst_3 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 61:40]
    inst FP_adder_Inst_0 of FP_add_32_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 69:41]
    inst FP_adder_Inst_1 of FP_add_32_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 69:41]
    reg counter : UInt<8>, clock with :
      reset => (UInt<1>("h0"), counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 49:24]
    node _counter_T = add(counter, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 53:24]
    node _counter_T_1 = tail(_counter_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 53:24]
    node _GEN_0 = mux(io_in_en, _counter_T_1, counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 52:19 53:13 49:24]
    node _FP_mult_inst_0_io_in_a_T = bits(io_complexA, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 77:41]
    node _FP_mult_inst_0_io_in_b_T = bits(io_complexB, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 78:41]
    node _FP_mult_inst_1_io_in_a_T = bits(io_complexA, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 79:41]
    node _FP_mult_inst_1_io_in_b_T = bits(io_complexB, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 80:41]
    node _FP_mult_inst_2_io_in_a_T = bits(io_complexA, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 81:41]
    node _FP_mult_inst_2_io_in_b_T = bits(io_complexB, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 82:41]
    node _FP_mult_inst_3_io_in_a_T = bits(io_complexA, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 83:41]
    node _FP_mult_inst_3_io_in_b_T = bits(io_complexB, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 84:41]
    node _FP_adder_Inst_0_io_in_a_T = mux(FP_adder_Inst_0.io_in_en, FP_mult_inst_0.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 86:34]
    node _FP_adder_Inst_0_io_in_b_T = mux(FP_adder_Inst_0.io_in_en, FP_mult_inst_1.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 87:34]
    node _FP_adder_Inst_1_io_in_a_T = xor(FP_mult_inst_2.io_out_s, UInt<32>("h80000000")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 89:87]
    node _FP_adder_Inst_1_io_in_a_T_1 = mux(FP_adder_Inst_1.io_in_en, _FP_adder_Inst_1_io_in_a_T, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 89:34]
    node _FP_adder_Inst_1_io_in_b_T = mux(FP_adder_Inst_1.io_in_en, FP_mult_inst_3.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 90:34]
    node _GEN_1 = mux(io_in_en, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 65:18 93:20 94:32]
    node _GEN_2 = mux(io_in_en, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 93:20 66:21 95:35]
    node _T = geq(counter, UInt<4>("ha")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 100:30]
    node _T_1 = and(io_in_en, _T) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 100:19]
    node _GEN_3 = mux(_T_1, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 100:44 101:33 73:18]
    node _GEN_4 = mux(_T_1, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 100:44 102:36 74:21]
    node _T_2 = geq(counter, UInt<4>("ha")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 100:30]
    node _T_3 = and(io_in_en, _T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 100:19]
    node _GEN_5 = mux(_T_3, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 100:44 101:33 73:18]
    node _GEN_6 = mux(_T_3, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 100:44 102:36 74:21]
    node _io_out_s_T = cat(FP_adder_Inst_0.io_out_s, FP_adder_Inst_1.io_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 106:18]
    reg io_out_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_7 = mux(io_in_en, io_in_valid, io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_8 = mux(io_in_en, io_out_valid_r, io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_9 = mux(io_in_en, io_out_valid_r_1, io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_10 = mux(io_in_en, io_out_valid_r_2, io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_11 = mux(io_in_en, io_out_valid_r_3, io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_12 = mux(io_in_en, io_out_valid_r_4, io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_6 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_13 = mux(io_in_en, io_out_valid_r_5, io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_7 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_14 = mux(io_in_en, io_out_valid_r_6, io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_15 = mux(io_in_en, io_out_valid_r_7, io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_9 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_16 = mux(io_in_en, io_out_valid_r_8, io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_10 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_17 = mux(io_in_en, io_out_valid_r_9, io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_11 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_18 = mux(io_in_en, io_out_valid_r_10, io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_12 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_19 = mux(io_in_en, io_out_valid_r_11, io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_13 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_20 = mux(io_in_en, io_out_valid_r_12, io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_14 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_21 = mux(io_in_en, io_out_valid_r_13, io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_15 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_22 = mux(io_in_en, io_out_valid_r_14, io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_16 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_23 = mux(io_in_en, io_out_valid_r_15, io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_17 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_24 = mux(io_in_en, io_out_valid_r_16, io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_18 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_25 = mux(io_in_en, io_out_valid_r_17, io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_19 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_26 = mux(io_in_en, io_out_valid_r_18, io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_20 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_27 = mux(io_in_en, io_out_valid_r_19, io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_21 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_28 = mux(io_in_en, io_out_valid_r_20, io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    reg io_out_valid_r_22 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:32]
    node _GEN_29 = mux(io_in_en, io_out_valid_r_21, io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:{32,32,32}]
    io_out_valid <= io_out_valid_r_22 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 107:16]
    io_out_s <= _io_out_s_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 106:12]
    io_out_real <= FP_adder_Inst_0.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 108:15]
    io_out_imag <= FP_adder_Inst_1.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 109:15]
    counter <= mux(reset, UInt<8>("h0"), _GEN_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 49:{24,24}]
    FP_mult_inst_0.clock <= clock
    FP_mult_inst_0.reset <= reset
    FP_mult_inst_0.io_in_en <= _GEN_1
    FP_mult_inst_0.io_in_valid <= _GEN_2
    FP_mult_inst_0.io_in_a <= _FP_mult_inst_0_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 77:27]
    FP_mult_inst_0.io_in_b <= _FP_mult_inst_0_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 78:27]
    FP_mult_inst_1.clock <= clock
    FP_mult_inst_1.reset <= reset
    FP_mult_inst_1.io_in_en <= _GEN_1
    FP_mult_inst_1.io_in_valid <= _GEN_2
    FP_mult_inst_1.io_in_a <= _FP_mult_inst_1_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 79:27]
    FP_mult_inst_1.io_in_b <= _FP_mult_inst_1_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 80:27]
    FP_mult_inst_2.clock <= clock
    FP_mult_inst_2.reset <= reset
    FP_mult_inst_2.io_in_en <= _GEN_1
    FP_mult_inst_2.io_in_valid <= _GEN_2
    FP_mult_inst_2.io_in_a <= _FP_mult_inst_2_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 81:27]
    FP_mult_inst_2.io_in_b <= _FP_mult_inst_2_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 82:27]
    FP_mult_inst_3.clock <= clock
    FP_mult_inst_3.reset <= reset
    FP_mult_inst_3.io_in_en <= _GEN_1
    FP_mult_inst_3.io_in_valid <= _GEN_2
    FP_mult_inst_3.io_in_a <= _FP_mult_inst_3_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 83:27]
    FP_mult_inst_3.io_in_b <= _FP_mult_inst_3_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 84:27]
    FP_adder_Inst_0.clock <= clock
    FP_adder_Inst_0.reset <= reset
    FP_adder_Inst_0.io_in_en <= _GEN_3
    FP_adder_Inst_0.io_in_valid <= _GEN_4
    FP_adder_Inst_0.io_in_a <= _FP_adder_Inst_0_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 86:28]
    FP_adder_Inst_0.io_in_b <= _FP_adder_Inst_0_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 87:28]
    FP_adder_Inst_1.clock <= clock
    FP_adder_Inst_1.reset <= reset
    FP_adder_Inst_1.io_in_en <= _GEN_5
    FP_adder_Inst_1.io_in_valid <= _GEN_6
    FP_adder_Inst_1.io_in_a <= _FP_adder_Inst_1_io_in_a_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 89:28]
    FP_adder_Inst_1.io_in_b <= _FP_adder_Inst_1_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 90:28]
    io_out_valid_r <= _GEN_7
    io_out_valid_r_1 <= _GEN_8
    io_out_valid_r_2 <= _GEN_9
    io_out_valid_r_3 <= _GEN_10
    io_out_valid_r_4 <= _GEN_11
    io_out_valid_r_5 <= _GEN_12
    io_out_valid_r_6 <= _GEN_13
    io_out_valid_r_7 <= _GEN_14
    io_out_valid_r_8 <= _GEN_15
    io_out_valid_r_9 <= _GEN_16
    io_out_valid_r_10 <= _GEN_17
    io_out_valid_r_11 <= _GEN_18
    io_out_valid_r_12 <= _GEN_19
    io_out_valid_r_13 <= _GEN_20
    io_out_valid_r_14 <= _GEN_21
    io_out_valid_r_15 <= _GEN_22
    io_out_valid_r_16 <= _GEN_23
    io_out_valid_r_17 <= _GEN_24
    io_out_valid_r_18 <= _GEN_25
    io_out_valid_r_19 <= _GEN_26
    io_out_valid_r_20 <= _GEN_27
    io_out_valid_r_21 <= _GEN_28
    io_out_valid_r_22 <= _GEN_29
