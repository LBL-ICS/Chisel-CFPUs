FIRRTL version 1.2.0
circuit tsqr_inner_loop :
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

  module full_adder : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 78:9]
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
    inst full_adder of full_adder @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 389:28]
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

  module complex_adder : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 234:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 234:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 234:7]
    input io_complexA : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 235:14]
    input io_complexB : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 235:14]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 235:14]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 235:14]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 235:14]
    output io_out_s : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 235:14]
    output io_out_real : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 235:14]
    output io_out_imag : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 235:14]

    inst FP_adder_Inst_0 of FP_add_32_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 248:41]
    inst FP_adder_Inst_1 of FP_add_32_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 248:41]
    node _FP_adder_Inst_0_io_in_a_T = bits(io_complexA, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 256:42]
    node _FP_adder_Inst_0_io_in_b_T = bits(io_complexB, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 257:42]
    node _FP_adder_Inst_1_io_in_a_T = bits(io_complexA, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 258:42]
    node _FP_adder_Inst_1_io_in_b_T = bits(io_complexB, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 259:42]
    node _GEN_0 = mux(io_in_en, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 252:18 261:19 262:31]
    node _GEN_1 = mux(io_in_en, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 261:19 253:21 264:34]
    node _io_out_s_T = cat(FP_adder_Inst_0.io_out_s, FP_adder_Inst_1.io_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 268:18]
    reg io_out_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_2 = mux(io_in_en, io_in_valid, io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_3 = mux(io_in_en, io_out_valid_r, io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_4 = mux(io_in_en, io_out_valid_r_1, io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_5 = mux(io_in_en, io_out_valid_r_2, io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_6 = mux(io_in_en, io_out_valid_r_3, io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_7 = mux(io_in_en, io_out_valid_r_4, io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_6 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_8 = mux(io_in_en, io_out_valid_r_5, io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_7 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_9 = mux(io_in_en, io_out_valid_r_6, io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_10 = mux(io_in_en, io_out_valid_r_7, io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_9 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_11 = mux(io_in_en, io_out_valid_r_8, io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_10 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_12 = mux(io_in_en, io_out_valid_r_9, io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_11 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_13 = mux(io_in_en, io_out_valid_r_10, io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    reg io_out_valid_r_12 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:32]
    node _GEN_14 = mux(io_in_en, io_out_valid_r_11, io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:{32,32,32}]
    io_out_valid <= io_out_valid_r_12 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 271:16]
    io_out_s <= _io_out_s_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 268:12]
    io_out_real <= FP_adder_Inst_0.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 269:15]
    io_out_imag <= FP_adder_Inst_1.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 270:15]
    FP_adder_Inst_0.clock <= clock
    FP_adder_Inst_0.reset <= reset
    FP_adder_Inst_0.io_in_en <= _GEN_0
    FP_adder_Inst_0.io_in_valid <= _GEN_1
    FP_adder_Inst_0.io_in_a <= _FP_adder_Inst_0_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 256:28]
    FP_adder_Inst_0.io_in_b <= _FP_adder_Inst_0_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 257:28]
    FP_adder_Inst_1.clock <= clock
    FP_adder_Inst_1.reset <= reset
    FP_adder_Inst_1.io_in_en <= _GEN_0
    FP_adder_Inst_1.io_in_valid <= _GEN_1
    FP_adder_Inst_1.io_in_a <= _FP_adder_Inst_1_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 258:28]
    FP_adder_Inst_1.io_in_b <= _FP_adder_Inst_1_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 259:28]
    io_out_valid_r <= _GEN_2
    io_out_valid_r_1 <= _GEN_3
    io_out_valid_r_2 <= _GEN_4
    io_out_valid_r_3 <= _GEN_5
    io_out_valid_r_4 <= _GEN_6
    io_out_valid_r_5 <= _GEN_7
    io_out_valid_r_6 <= _GEN_8
    io_out_valid_r_7 <= _GEN_9
    io_out_valid_r_8 <= _GEN_10
    io_out_valid_r_9 <= _GEN_11
    io_out_valid_r_10 <= _GEN_12
    io_out_valid_r_11 <= _GEN_13
    io_out_valid_r_12 <= _GEN_14

  module vk_gen : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 139:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 139:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 139:7]
    input io_xk_in_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    input io_xk_in_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    input io_alpha_in : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    input io_k_in : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    input io_counter_reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    output io_out_s_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]
    output io_out_s_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 140:14]

    inst adder of complex_adder @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 159:21]
    node _cycles_T = add(io_k_in, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 151:26]
    node _cycles_T_1 = tail(_cycles_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 151:26]
    node cycles = shr(_cycles_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 151:33]
    reg counter : UInt<32>, clock with :
      reset => (UInt<1>("h0"), counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 152:24]
    node _counter_T = add(counter, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 156:38]
    node _counter_T_1 = tail(_counter_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 156:38]
    node _counter_T_2 = mux(io_in_en, _counter_T_1, counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 156:19]
    node _GEN_0 = mux(io_counter_reset, UInt<1>("h0"), _counter_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 153:27 154:13 156:13]
    node _T = geq(counter, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 165:16]
    node _T_1 = eq(counter, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 168:18]
    node _GEN_1 = mux(_T_1, io_xk_in_0, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 162:21 168:27 169:25]
    node _GEN_2 = mux(_T_1, io_alpha_in, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 163:21 168:27 170:25]
    node _GEN_3 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 160:18 165:24 166:20]
    node _GEN_4 = mux(_T, _GEN_1, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 162:21 165:24]
    node _GEN_5 = mux(_T, _GEN_2, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 163:21 165:24]
    reg shifted_xk_r : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_6 = mux(UInt<1>("h1"), io_xk_in_0, shifted_xk_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_7 = mux(UInt<1>("h1"), shifted_xk_r, shifted_xk_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_8 = mux(UInt<1>("h1"), shifted_xk_r_1, shifted_xk_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_9 = mux(UInt<1>("h1"), shifted_xk_r_2, shifted_xk_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_10 = mux(UInt<1>("h1"), shifted_xk_r_3, shifted_xk_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_5 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_11 = mux(UInt<1>("h1"), shifted_xk_r_4, shifted_xk_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_6 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_12 = mux(UInt<1>("h1"), shifted_xk_r_5, shifted_xk_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_7 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_13 = mux(UInt<1>("h1"), shifted_xk_r_6, shifted_xk_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_8 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_14 = mux(UInt<1>("h1"), shifted_xk_r_7, shifted_xk_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_9 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_15 = mux(UInt<1>("h1"), shifted_xk_r_8, shifted_xk_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_10 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_16 = mux(UInt<1>("h1"), shifted_xk_r_9, shifted_xk_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_11 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_17 = mux(UInt<1>("h1"), shifted_xk_r_10, shifted_xk_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_12 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_18 = mux(UInt<1>("h1"), shifted_xk_r_11, shifted_xk_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_13 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_19 = mux(UInt<1>("h1"), io_xk_in_1, shifted_xk_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_14 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_20 = mux(UInt<1>("h1"), shifted_xk_r_13, shifted_xk_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_15 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_21 = mux(UInt<1>("h1"), shifted_xk_r_14, shifted_xk_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_16 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_22 = mux(UInt<1>("h1"), shifted_xk_r_15, shifted_xk_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_17 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_23 = mux(UInt<1>("h1"), shifted_xk_r_16, shifted_xk_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_18 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_24 = mux(UInt<1>("h1"), shifted_xk_r_17, shifted_xk_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_19 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_25 = mux(UInt<1>("h1"), shifted_xk_r_18, shifted_xk_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_20 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_26 = mux(UInt<1>("h1"), shifted_xk_r_19, shifted_xk_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_21 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_27 = mux(UInt<1>("h1"), shifted_xk_r_20, shifted_xk_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_22 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_28 = mux(UInt<1>("h1"), shifted_xk_r_21, shifted_xk_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_23 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_29 = mux(UInt<1>("h1"), shifted_xk_r_22, shifted_xk_r_23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_24 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_30 = mux(UInt<1>("h1"), shifted_xk_r_23, shifted_xk_r_24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    reg shifted_xk_r_25 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), shifted_xk_r_25) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:63]
    node _GEN_31 = mux(UInt<1>("h1"), shifted_xk_r_24, shifted_xk_r_25) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{63,63,63}]
    node _outVec_0_T = eq(UInt<1>("h0"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 178:26]
    node _outVec_0_T_1 = eq(counter, UInt<4>("hd")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 178:45]
    node _outVec_0_T_2 = and(_outVec_0_T, _outVec_0_T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 178:34]
    node shifted_xk_0 = shifted_xk_r_12 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{27,27}]
    node _outVec_0_T_3 = mux(_outVec_0_T_2, adder.io_out_s, shifted_xk_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 178:21]
    node _outVec_1_T = eq(UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 178:26]
    node _outVec_1_T_1 = eq(counter, UInt<4>("hd")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 178:45]
    node _outVec_1_T_2 = and(_outVec_1_T, _outVec_1_T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 178:34]
    node shifted_xk_1 = shifted_xk_r_25 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 174:{27,27}]
    node _outVec_1_T_3 = mux(_outVec_1_T_2, adder.io_out_s, shifted_xk_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 178:21]
    node _T_2 = geq(counter, UInt<4>("hd")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 184:16]
    node _T_3 = add(cycles, UInt<4>("hd")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 184:49]
    node _T_4 = tail(_T_3, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 184:49]
    node _T_5 = lt(counter, _T_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 184:39]
    node _T_6 = and(_T_2, _T_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 184:28]
    node _GEN_32 = mux(_T_6, UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 184:62 185:15 183:30]
    node outVec_0 = _outVec_0_T_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 175:20 178:15]
    node outVec_1 = _outVec_1_T_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 175:20 178:15]
    node out_valid = _GEN_32 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 183:30]
    io_out_valid <= out_valid @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 188:16]
    io_out_s_0 <= outVec_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 181:12]
    io_out_s_1 <= outVec_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 181:12]
    counter <= mux(reset, UInt<32>("h0"), _GEN_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 152:{24,24}]
    adder.clock <= clock
    adder.reset <= reset
    adder.io_complexA <= _GEN_4
    adder.io_complexB <= _GEN_5
    adder.io_in_en <= _GEN_3
    adder.io_in_valid <= _GEN_3
    shifted_xk_r <= _GEN_6
    shifted_xk_r_1 <= _GEN_7
    shifted_xk_r_2 <= _GEN_8
    shifted_xk_r_3 <= _GEN_9
    shifted_xk_r_4 <= _GEN_10
    shifted_xk_r_5 <= _GEN_11
    shifted_xk_r_6 <= _GEN_12
    shifted_xk_r_7 <= _GEN_13
    shifted_xk_r_8 <= _GEN_14
    shifted_xk_r_9 <= _GEN_15
    shifted_xk_r_10 <= _GEN_16
    shifted_xk_r_11 <= _GEN_17
    shifted_xk_r_12 <= _GEN_18
    shifted_xk_r_13 <= _GEN_19
    shifted_xk_r_14 <= _GEN_20
    shifted_xk_r_15 <= _GEN_21
    shifted_xk_r_16 <= _GEN_22
    shifted_xk_r_17 <= _GEN_23
    shifted_xk_r_18 <= _GEN_24
    shifted_xk_r_19 <= _GEN_25
    shifted_xk_r_20 <= _GEN_26
    shifted_xk_r_21 <= _GEN_27
    shifted_xk_r_22 <= _GEN_28
    shifted_xk_r_23 <= _GEN_29
    shifted_xk_r_24 <= _GEN_30
    shifted_xk_r_25 <= _GEN_31

  module full_adder_2 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_Binary_Mario/BinaryDesignsNew.scala 78:9]
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

    inst exp_adder of full_adder_2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/New_FPU_Mario/FPUnits.scala 226:27]
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

  module complex_conjugate_mult : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 29:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 29:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 29:7]
    input io_complexA : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]
    input io_complexB : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]
    input io_counter_rest : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]
    output io_out_s : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]
    output io_out_real : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]
    output io_out_imag : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 30:14]

    inst FP_mult_inst_0 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 66:40]
    inst FP_mult_inst_1 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 66:40]
    inst FP_mult_inst_2 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 66:40]
    inst FP_mult_inst_3 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 66:40]
    inst FP_adder_Inst_0 of FP_add_32_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 74:41]
    inst FP_adder_Inst_1 of FP_add_32_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 74:41]
    reg counter : UInt<16>, clock with :
      reset => (UInt<1>("h0"), counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 49:24]
    node _counter_T = add(counter, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 59:38]
    node _counter_T_1 = tail(_counter_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 59:38]
    node _counter_T_2 = mux(io_in_en, _counter_T_1, counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 59:19]
    node _GEN_0 = mux(io_counter_rest, UInt<1>("h0"), _counter_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 56:25 57:13 59:13]
    node _FP_mult_inst_0_io_in_a_T = bits(io_complexA, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 82:41]
    node _FP_mult_inst_0_io_in_b_T = bits(io_complexB, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 83:41]
    node _FP_mult_inst_1_io_in_a_T = bits(io_complexA, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 84:41]
    node _FP_mult_inst_1_io_in_b_T = bits(io_complexB, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 85:41]
    node _FP_mult_inst_2_io_in_a_T = bits(io_complexA, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 86:41]
    node _FP_mult_inst_2_io_in_b_T = bits(io_complexB, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 87:41]
    node _FP_mult_inst_3_io_in_a_T = bits(io_complexA, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 88:41]
    node _FP_mult_inst_3_io_in_b_T = bits(io_complexB, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 89:41]
    node _FP_adder_Inst_0_io_in_a_T = mux(FP_adder_Inst_0.io_in_en, FP_mult_inst_0.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 91:34]
    node _FP_adder_Inst_0_io_in_b_T = mux(FP_adder_Inst_0.io_in_en, FP_mult_inst_1.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 92:34]
    node _FP_adder_Inst_1_io_in_a_T = xor(FP_mult_inst_2.io_out_s, UInt<32>("h80000000")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 94:87]
    node _FP_adder_Inst_1_io_in_a_T_1 = mux(FP_adder_Inst_1.io_in_en, _FP_adder_Inst_1_io_in_a_T, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 94:34]
    node _FP_adder_Inst_1_io_in_b_T = mux(FP_adder_Inst_1.io_in_en, FP_mult_inst_3.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 95:34]
    node _GEN_1 = mux(io_in_en, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 70:18 98:20 99:32]
    node _GEN_2 = mux(io_in_en, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 98:20 100:35 71:21]
    node _T = geq(counter, UInt<4>("ha")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 105:30]
    node _T_1 = and(io_in_en, _T) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 105:19]
    node _GEN_3 = mux(_T_1, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 105:44 106:33 78:18]
    node _GEN_4 = mux(_T_1, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 105:44 107:36 79:21]
    node _T_2 = geq(counter, UInt<4>("ha")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 105:30]
    node _T_3 = and(io_in_en, _T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 105:19]
    node _GEN_5 = mux(_T_3, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 105:44 106:33 78:18]
    node _GEN_6 = mux(_T_3, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 105:44 107:36 79:21]
    node _io_out_s_T = cat(FP_adder_Inst_0.io_out_s, FP_adder_Inst_1.io_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 111:18]
    reg io_out_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_7 = mux(io_in_en, io_in_valid, io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_8 = mux(io_in_en, io_out_valid_r, io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_9 = mux(io_in_en, io_out_valid_r_1, io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_10 = mux(io_in_en, io_out_valid_r_2, io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_11 = mux(io_in_en, io_out_valid_r_3, io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_12 = mux(io_in_en, io_out_valid_r_4, io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_6 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_13 = mux(io_in_en, io_out_valid_r_5, io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_7 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_14 = mux(io_in_en, io_out_valid_r_6, io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_15 = mux(io_in_en, io_out_valid_r_7, io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_9 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_16 = mux(io_in_en, io_out_valid_r_8, io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_10 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_17 = mux(io_in_en, io_out_valid_r_9, io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_11 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_18 = mux(io_in_en, io_out_valid_r_10, io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_12 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_19 = mux(io_in_en, io_out_valid_r_11, io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_13 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_20 = mux(io_in_en, io_out_valid_r_12, io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_14 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_21 = mux(io_in_en, io_out_valid_r_13, io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_15 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_22 = mux(io_in_en, io_out_valid_r_14, io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_16 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_23 = mux(io_in_en, io_out_valid_r_15, io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_17 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_24 = mux(io_in_en, io_out_valid_r_16, io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_18 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_25 = mux(io_in_en, io_out_valid_r_17, io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_19 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_26 = mux(io_in_en, io_out_valid_r_18, io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_20 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_27 = mux(io_in_en, io_out_valid_r_19, io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_21 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_28 = mux(io_in_en, io_out_valid_r_20, io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    reg io_out_valid_r_22 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:32]
    node _GEN_29 = mux(io_in_en, io_out_valid_r_21, io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:{32,32,32}]
    io_out_valid <= io_out_valid_r_22 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 112:16]
    io_out_s <= _io_out_s_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 111:12]
    io_out_real <= FP_adder_Inst_0.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 113:15]
    io_out_imag <= FP_adder_Inst_1.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 114:15]
    counter <= mux(reset, UInt<16>("h0"), _GEN_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 49:{24,24}]
    FP_mult_inst_0.clock <= clock
    FP_mult_inst_0.reset <= reset
    FP_mult_inst_0.io_in_en <= _GEN_1
    FP_mult_inst_0.io_in_valid <= _GEN_2
    FP_mult_inst_0.io_in_a <= _FP_mult_inst_0_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 82:27]
    FP_mult_inst_0.io_in_b <= _FP_mult_inst_0_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 83:27]
    FP_mult_inst_1.clock <= clock
    FP_mult_inst_1.reset <= reset
    FP_mult_inst_1.io_in_en <= _GEN_1
    FP_mult_inst_1.io_in_valid <= _GEN_2
    FP_mult_inst_1.io_in_a <= _FP_mult_inst_1_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 84:27]
    FP_mult_inst_1.io_in_b <= _FP_mult_inst_1_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 85:27]
    FP_mult_inst_2.clock <= clock
    FP_mult_inst_2.reset <= reset
    FP_mult_inst_2.io_in_en <= _GEN_1
    FP_mult_inst_2.io_in_valid <= _GEN_2
    FP_mult_inst_2.io_in_a <= _FP_mult_inst_2_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 86:27]
    FP_mult_inst_2.io_in_b <= _FP_mult_inst_2_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 87:27]
    FP_mult_inst_3.clock <= clock
    FP_mult_inst_3.reset <= reset
    FP_mult_inst_3.io_in_en <= _GEN_1
    FP_mult_inst_3.io_in_valid <= _GEN_2
    FP_mult_inst_3.io_in_a <= _FP_mult_inst_3_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 88:27]
    FP_mult_inst_3.io_in_b <= _FP_mult_inst_3_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 89:27]
    FP_adder_Inst_0.clock <= clock
    FP_adder_Inst_0.reset <= reset
    FP_adder_Inst_0.io_in_en <= _GEN_3
    FP_adder_Inst_0.io_in_valid <= _GEN_4
    FP_adder_Inst_0.io_in_a <= _FP_adder_Inst_0_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 91:28]
    FP_adder_Inst_0.io_in_b <= _FP_adder_Inst_0_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 92:28]
    FP_adder_Inst_1.clock <= clock
    FP_adder_Inst_1.reset <= reset
    FP_adder_Inst_1.io_in_en <= _GEN_5
    FP_adder_Inst_1.io_in_valid <= _GEN_6
    FP_adder_Inst_1.io_in_a <= _FP_adder_Inst_1_io_in_a_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 94:28]
    FP_adder_Inst_1.io_in_b <= _FP_adder_Inst_1_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 95:28]
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

  module complex_dot_streaming : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 326:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 326:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 326:7]
    input io_vec_a_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    input io_vec_a_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    input io_vec_b_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    input io_vec_b_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    input io_counter_reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    output io_out_s : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    output io_out_real : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]
    output io_out_imag : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 328:14]

    inst MultInst of complex_conjugate_mult @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 345:26]
    inst MultInst_1 of complex_conjugate_mult @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 345:26]
    inst adderInst of complex_adder @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 360:31]
    node adder_Wire_0 = adderInst.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 356:26 365:23]
    node _io_out_s_T = mux(io_in_en, adder_Wire_0, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 374:18]
    node _io_out_real_T = bits(adder_Wire_0, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 375:35]
    node _io_out_imag_T = bits(adder_Wire_0, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 376:35]
    reg io_out_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_0 = mux(io_in_en, io_in_valid, io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_1 = mux(io_in_en, io_out_valid_r, io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_2 = mux(io_in_en, io_out_valid_r_1, io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_3 = mux(io_in_en, io_out_valid_r_2, io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_4 = mux(io_in_en, io_out_valid_r_3, io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_5 = mux(io_in_en, io_out_valid_r_4, io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_6 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_6 = mux(io_in_en, io_out_valid_r_5, io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_7 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_7 = mux(io_in_en, io_out_valid_r_6, io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_8 = mux(io_in_en, io_out_valid_r_7, io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_9 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_9 = mux(io_in_en, io_out_valid_r_8, io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_10 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_10 = mux(io_in_en, io_out_valid_r_9, io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_11 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_11 = mux(io_in_en, io_out_valid_r_10, io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_12 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_12 = mux(io_in_en, io_out_valid_r_11, io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_13 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_13 = mux(io_in_en, io_out_valid_r_12, io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_14 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_14 = mux(io_in_en, io_out_valid_r_13, io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_15 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_15 = mux(io_in_en, io_out_valid_r_14, io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_16 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_16 = mux(io_in_en, io_out_valid_r_15, io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_17 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_17 = mux(io_in_en, io_out_valid_r_16, io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_18 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_18 = mux(io_in_en, io_out_valid_r_17, io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_19 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_19 = mux(io_in_en, io_out_valid_r_18, io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_20 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_20 = mux(io_in_en, io_out_valid_r_19, io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_21 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_21 = mux(io_in_en, io_out_valid_r_20, io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_22 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_22 = mux(io_in_en, io_out_valid_r_21, io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_23 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_23 = mux(io_in_en, io_out_valid_r_22, io_out_valid_r_23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_24 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_24 = mux(io_in_en, io_out_valid_r_23, io_out_valid_r_24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_25 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_25) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_25 = mux(io_in_en, io_out_valid_r_24, io_out_valid_r_25) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_26 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_26) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_26 = mux(io_in_en, io_out_valid_r_25, io_out_valid_r_26) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_27 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_27) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_27 = mux(io_in_en, io_out_valid_r_26, io_out_valid_r_27) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_28 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_28) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_28 = mux(io_in_en, io_out_valid_r_27, io_out_valid_r_28) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_29 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_29) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_29 = mux(io_in_en, io_out_valid_r_28, io_out_valid_r_29) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_30 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_30) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_30 = mux(io_in_en, io_out_valid_r_29, io_out_valid_r_30) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_31 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_31 = mux(io_in_en, io_out_valid_r_30, io_out_valid_r_31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_32 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_32 = mux(io_in_en, io_out_valid_r_31, io_out_valid_r_32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_33 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_33) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_33 = mux(io_in_en, io_out_valid_r_32, io_out_valid_r_33) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_34 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_34) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_34 = mux(io_in_en, io_out_valid_r_33, io_out_valid_r_34) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    reg io_out_valid_r_35 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_35) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:32]
    node _GEN_35 = mux(io_in_en, io_out_valid_r_34, io_out_valid_r_35) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:{32,32,32}]
    node Mult_Wire_0 = MultInst.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 343:23 351:18]
    node Mult_Wire_1 = MultInst_1.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 343:23 351:18]
    io_out_valid <= io_out_valid_r_35 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 377:16]
    io_out_s <= _io_out_s_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 374:12]
    io_out_real <= _io_out_real_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 375:15]
    io_out_imag <= _io_out_imag_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 376:15]
    MultInst.clock <= clock
    MultInst.reset <= reset
    MultInst.io_complexA <= io_vec_a_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 346:26]
    MultInst.io_complexB <= io_vec_b_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 347:26]
    MultInst.io_in_en <= io_in_en @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 348:23]
    MultInst.io_in_valid <= io_in_valid @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 349:26]
    MultInst.io_counter_rest <= io_counter_reset @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 350:30]
    MultInst_1.clock <= clock
    MultInst_1.reset <= reset
    MultInst_1.io_complexA <= io_vec_a_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 346:26]
    MultInst_1.io_complexB <= io_vec_b_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 347:26]
    MultInst_1.io_in_en <= io_in_en @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 348:23]
    MultInst_1.io_in_valid <= io_in_valid @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 349:26]
    MultInst_1.io_counter_rest <= io_counter_reset @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 350:30]
    adderInst.clock <= clock
    adderInst.reset <= reset
    adderInst.io_complexA <= Mult_Wire_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 361:31]
    adderInst.io_complexB <= Mult_Wire_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 362:31]
    adderInst.io_in_en <= io_in_en @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 363:28]
    adderInst.io_in_valid <= io_in_valid @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 364:31]
    io_out_valid_r <= _GEN_0
    io_out_valid_r_1 <= _GEN_1
    io_out_valid_r_2 <= _GEN_2
    io_out_valid_r_3 <= _GEN_3
    io_out_valid_r_4 <= _GEN_4
    io_out_valid_r_5 <= _GEN_5
    io_out_valid_r_6 <= _GEN_6
    io_out_valid_r_7 <= _GEN_7
    io_out_valid_r_8 <= _GEN_8
    io_out_valid_r_9 <= _GEN_9
    io_out_valid_r_10 <= _GEN_10
    io_out_valid_r_11 <= _GEN_11
    io_out_valid_r_12 <= _GEN_12
    io_out_valid_r_13 <= _GEN_13
    io_out_valid_r_14 <= _GEN_14
    io_out_valid_r_15 <= _GEN_15
    io_out_valid_r_16 <= _GEN_16
    io_out_valid_r_17 <= _GEN_17
    io_out_valid_r_18 <= _GEN_18
    io_out_valid_r_19 <= _GEN_19
    io_out_valid_r_20 <= _GEN_20
    io_out_valid_r_21 <= _GEN_21
    io_out_valid_r_22 <= _GEN_22
    io_out_valid_r_23 <= _GEN_23
    io_out_valid_r_24 <= _GEN_24
    io_out_valid_r_25 <= _GEN_25
    io_out_valid_r_26 <= _GEN_26
    io_out_valid_r_27 <= _GEN_27
    io_out_valid_r_28 <= _GEN_28
    io_out_valid_r_29 <= _GEN_29
    io_out_valid_r_30 <= _GEN_30
    io_out_valid_r_31 <= _GEN_31
    io_out_valid_r_32 <= _GEN_32
    io_out_valid_r_33 <= _GEN_33
    io_out_valid_r_34 <= _GEN_34
    io_out_valid_r_35 <= _GEN_35

  module demux1 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 7:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 7:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 7:7]
    input io_input : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 8:14]
    input io_sel : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 8:14]
    output io_outputs_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 8:14]
    output io_outputs_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 8:14]

    node _GEN_0 = mux(io_sel, io_input, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 18:16 19:19 23:19]
    node _GEN_1 = mux(io_sel, UInt<1>("h0"), io_input) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 18:16 20:19 22:19]
    io_outputs_0 <= _GEN_1
    io_outputs_1 <= _GEN_0

  module complex_acc : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 274:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 274:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 274:7]
    input io_input : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 275:14]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 275:14]
    input io_counter_reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 275:14]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 275:14]
    output io_output : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 275:14]
    output io_out_real : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 275:14]
    output io_out_imag : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 275:14]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 275:14]

    inst demux1 of demux1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 295:22]
    inst adder of complex_adder @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 299:21]
    reg counter : UInt<32>, clock with :
      reset => (UInt<1>("h0"), counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 287:24]
    node _counter_T = add(counter, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 291:24]
    node _counter_T_1 = tail(_counter_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 291:24]
    node _GEN_0 = mux(io_in_en, _counter_T_1, counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 290:24 291:13 287:24]
    node _GEN_1 = mux(io_counter_reset, UInt<1>("h0"), _GEN_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 288:27 289:13]
    node _demux1_io_sel_T = shr(counter, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 297:29]
    node _demux1_io_sel_T_1 = and(_demux1_io_sel_T, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 297:41]
    reg adder_io_in_en_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), adder_io_in_en_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 300:34]
    node _GEN_2 = mux(UInt<1>("h1"), io_in_en, adder_io_in_en_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 300:{34,34,34}]
    reg adder_io_complexA_r : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_io_complexA_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 301:37]
    node _GEN_3 = mux(UInt<1>("h1"), demux1.io_outputs_0, adder_io_complexA_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 301:{37,37,37}]
    node _T = neq(adder.io_complexA, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 304:27]
    node _T_1 = neq(adder.io_complexB, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 304:56]
    node _T_2 = and(_T, _T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 304:35]
    node _GEN_4 = mux(_T_2, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 303:21 304:65 305:23]
    io_output <= adder.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 309:13]
    io_out_real <= adder.io_out_real @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 310:15]
    io_out_imag <= adder.io_out_imag @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 311:15]
    io_out_valid <= adder.io_out_valid @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 312:16]
    counter <= mux(reset, UInt<32>("h0"), _GEN_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 287:{24,24}]
    demux1.clock <= clock
    demux1.reset <= reset
    demux1.io_input <= io_input @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 296:19]
    demux1.io_sel <= bits(_demux1_io_sel_T_1, 0, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 297:17]
    adder.clock <= clock
    adder.reset <= reset
    adder.io_complexA <= adder_io_complexA_r @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 301:21]
    adder.io_complexB <= demux1.io_outputs_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 302:20]
    adder.io_in_en <= adder_io_in_en_r @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 300:18]
    adder.io_in_valid <= _GEN_4
    adder_io_in_en_r <= _GEN_2
    adder_io_complexA_r <= _GEN_3

  module cmplx_dot_iterative_v2 : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 380:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 380:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 380:7]
    input io_vec_a_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    input io_vec_a_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    input io_vec_b_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    input io_vec_b_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    input io_counter_reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    output io_out_real : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    output io_out_imag : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]
    output io_out_s : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 381:14]

    inst complex_dot of complex_dot_streaming @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 413:27]
    inst d2aInst_0 of complex_acc @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 421:21]
    reg counter : UInt<32>, clock with :
      reset => (UInt<1>("h0"), counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 399:24]
    node _counter_T = add(counter, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 403:24]
    node _counter_T_1 = tail(_counter_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 403:24]
    node _GEN_0 = mux(io_in_en, _counter_T_1, counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 402:24 403:13 399:24]
    node _GEN_1 = mux(io_counter_reset, UInt<1>("h0"), _GEN_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 400:27 401:13]
    reg index : UInt<1>, clock with :
      reset => (UInt<1>("h0"), index) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 409:22]
    node _batch_index_T = mul(index, UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 430:29]
    node _batch_index_T_1 = add(_batch_index_T, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 430:35]
    node batch_index = tail(_batch_index_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 430:35]
    node _VecA_batch_0_T = bits(batch_index, 0, 0)
    node _GEN_2 = validif(eq(UInt<1>("h0"), _VecA_batch_0_T), io_vec_a_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 431:{19,19}]
    node _GEN_3 = mux(eq(UInt<1>("h1"), _VecA_batch_0_T), io_vec_a_1, _GEN_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 431:{19,19}]
    node _VecB_batch_0_T = bits(batch_index, 0, 0)
    node _GEN_4 = validif(eq(UInt<1>("h0"), _VecB_batch_0_T), io_vec_b_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 432:{19,19}]
    node _GEN_5 = mux(eq(UInt<1>("h1"), _VecB_batch_0_T), io_vec_b_1, _GEN_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 432:{19,19}]
    node _batch_index_T_2 = mul(index, UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 430:29]
    node _batch_index_T_3 = add(_batch_index_T_2, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 430:35]
    node batch_index_1 = tail(_batch_index_T_3, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 430:35]
    node _VecA_batch_1_T = bits(batch_index_1, 0, 0)
    node _GEN_6 = validif(eq(UInt<1>("h0"), _VecA_batch_1_T), io_vec_a_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 431:{19,19}]
    node _GEN_7 = mux(eq(UInt<1>("h1"), _VecA_batch_1_T), io_vec_a_1, _GEN_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 431:{19,19}]
    node _VecB_batch_1_T = bits(batch_index_1, 0, 0)
    node _GEN_8 = validif(eq(UInt<1>("h0"), _VecB_batch_1_T), io_vec_b_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 432:{19,19}]
    node _GEN_9 = mux(eq(UInt<1>("h1"), _VecB_batch_1_T), io_vec_b_1, _GEN_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 432:{19,19}]
    node _T = add(index, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 438:14]
    node _T_1 = tail(_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 438:14]
    node _T_2 = eq(_T_1, UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 438:20]
    node _index_T = add(index, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 441:20]
    node _index_T_1 = tail(_index_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 441:20]
    node _GEN_10 = mux(_T_2, UInt<1>("h0"), _index_T_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 438:39 439:11 441:11]
    node _GEN_11 = mux(io_in_en, UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 444:18 417:24 445:26]
    node _GEN_12 = mux(io_in_en, io_counter_reset, io_counter_reset) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 444:18 416:32 447:34]
    node _T_3 = geq(counter, UInt<6>("h24")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 452:18]
    node _GEN_13 = mux(_T_3, UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 424:18 452:83 453:27]
    node _GEN_14 = mux(_T_3, io_counter_reset, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 423:26 452:83 455:35]
    node _io_out_real_T = bits(d2aInst_0.io_output, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 466:48]
    node _io_out_imag_T = bits(d2aInst_0.io_output, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 467:48]
    reg io_out_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_15 = mux(io_in_en, io_in_valid, io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_16 = mux(io_in_en, io_out_valid_r, io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_17 = mux(io_in_en, io_out_valid_r_1, io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_18 = mux(io_in_en, io_out_valid_r_2, io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_19 = mux(io_in_en, io_out_valid_r_3, io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_20 = mux(io_in_en, io_out_valid_r_4, io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_6 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_21 = mux(io_in_en, io_out_valid_r_5, io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_7 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_22 = mux(io_in_en, io_out_valid_r_6, io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_23 = mux(io_in_en, io_out_valid_r_7, io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_9 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_24 = mux(io_in_en, io_out_valid_r_8, io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_10 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_25 = mux(io_in_en, io_out_valid_r_9, io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_11 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_26 = mux(io_in_en, io_out_valid_r_10, io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_12 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_27 = mux(io_in_en, io_out_valid_r_11, io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_13 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_28 = mux(io_in_en, io_out_valid_r_12, io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_14 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_29 = mux(io_in_en, io_out_valid_r_13, io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_15 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_30 = mux(io_in_en, io_out_valid_r_14, io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_16 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_31 = mux(io_in_en, io_out_valid_r_15, io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_17 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_32 = mux(io_in_en, io_out_valid_r_16, io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_18 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_33 = mux(io_in_en, io_out_valid_r_17, io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_19 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_34 = mux(io_in_en, io_out_valid_r_18, io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_20 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_35 = mux(io_in_en, io_out_valid_r_19, io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_21 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_36 = mux(io_in_en, io_out_valid_r_20, io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_22 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_37 = mux(io_in_en, io_out_valid_r_21, io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_23 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_38 = mux(io_in_en, io_out_valid_r_22, io_out_valid_r_23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_24 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_39 = mux(io_in_en, io_out_valid_r_23, io_out_valid_r_24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_25 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_25) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_40 = mux(io_in_en, io_out_valid_r_24, io_out_valid_r_25) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_26 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_26) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_41 = mux(io_in_en, io_out_valid_r_25, io_out_valid_r_26) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_27 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_27) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_42 = mux(io_in_en, io_out_valid_r_26, io_out_valid_r_27) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_28 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_28) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_43 = mux(io_in_en, io_out_valid_r_27, io_out_valid_r_28) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_29 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_29) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_44 = mux(io_in_en, io_out_valid_r_28, io_out_valid_r_29) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_30 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_30) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_45 = mux(io_in_en, io_out_valid_r_29, io_out_valid_r_30) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_31 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_46 = mux(io_in_en, io_out_valid_r_30, io_out_valid_r_31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_32 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_47 = mux(io_in_en, io_out_valid_r_31, io_out_valid_r_32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_33 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_33) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_48 = mux(io_in_en, io_out_valid_r_32, io_out_valid_r_33) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_34 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_34) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_49 = mux(io_in_en, io_out_valid_r_33, io_out_valid_r_34) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_35 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_35) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_50 = mux(io_in_en, io_out_valid_r_34, io_out_valid_r_35) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_36 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_36) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_51 = mux(io_in_en, io_out_valid_r_35, io_out_valid_r_36) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_37 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_37) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_52 = mux(io_in_en, io_out_valid_r_36, io_out_valid_r_37) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_38 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_38) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_53 = mux(io_in_en, io_out_valid_r_37, io_out_valid_r_38) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_39 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_39) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_54 = mux(io_in_en, io_out_valid_r_38, io_out_valid_r_39) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_40 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_40) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_55 = mux(io_in_en, io_out_valid_r_39, io_out_valid_r_40) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_41 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_41) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_56 = mux(io_in_en, io_out_valid_r_40, io_out_valid_r_41) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_42 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_42) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_57 = mux(io_in_en, io_out_valid_r_41, io_out_valid_r_42) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_43 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_43) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_58 = mux(io_in_en, io_out_valid_r_42, io_out_valid_r_43) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_44 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_44) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_59 = mux(io_in_en, io_out_valid_r_43, io_out_valid_r_44) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_45 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_45) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_60 = mux(io_in_en, io_out_valid_r_44, io_out_valid_r_45) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_46 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_46) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_61 = mux(io_in_en, io_out_valid_r_45, io_out_valid_r_46) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_47 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_47) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_62 = mux(io_in_en, io_out_valid_r_46, io_out_valid_r_47) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_48 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_48) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_63 = mux(io_in_en, io_out_valid_r_47, io_out_valid_r_48) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    reg io_out_valid_r_49 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_49) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:32]
    node _GEN_64 = mux(io_in_en, io_out_valid_r_48, io_out_valid_r_49) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:{32,32,32}]
    node _io_vec_a_VecA_batch_0_T = _GEN_3 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 431:19]
    node VecA_batch_0 = _io_vec_a_VecA_batch_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 410:24 431:19]
    node _io_vec_a_VecA_batch_1_T = _GEN_7 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 431:19]
    node VecA_batch_1 = _io_vec_a_VecA_batch_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 410:24 431:19]
    node _io_vec_b_VecB_batch_0_T = _GEN_5 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 432:19]
    node VecB_batch_0 = _io_vec_b_VecB_batch_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 411:24 432:19]
    node _io_vec_b_VecB_batch_1_T = _GEN_9 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 432:19]
    node VecB_batch_1 = _io_vec_b_VecB_batch_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 411:24 432:19]
    node _WIRE__0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 414:{34,34}]
    node _WIRE__1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 414:{34,34}]
    node _WIRE_1_0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 415:{34,34}]
    node _WIRE_1_1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 415:{34,34}]
    io_out_valid <= io_out_valid_r_49 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 468:16]
    io_out_real <= _io_out_real_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 466:15]
    io_out_imag <= _io_out_imag_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 467:15]
    io_out_s <= d2aInst_0.io_output @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 465:12]
    counter <= mux(reset, UInt<32>("h0"), _GEN_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 399:{24,24}]
    index <= mux(reset, UInt<1>("h0"), _GEN_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 409:{22,22}]
    complex_dot.clock <= clock
    complex_dot.reset <= reset
    complex_dot.io_vec_a_0 <= VecA_batch_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 435:24]
    complex_dot.io_vec_a_1 <= VecA_batch_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 435:24]
    complex_dot.io_vec_b_0 <= VecB_batch_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 436:24]
    complex_dot.io_vec_b_1 <= VecB_batch_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 436:24]
    complex_dot.io_in_en <= _GEN_11
    complex_dot.io_in_valid <= _GEN_11
    complex_dot.io_counter_reset <= _GEN_12
    d2aInst_0.clock <= clock
    d2aInst_0.reset <= reset
    d2aInst_0.io_input <= complex_dot.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 459:27]
    d2aInst_0.io_in_en <= _GEN_13
    d2aInst_0.io_counter_reset <= _GEN_14
    d2aInst_0.io_in_valid <= _GEN_13
    io_out_valid_r <= _GEN_15
    io_out_valid_r_1 <= _GEN_16
    io_out_valid_r_2 <= _GEN_17
    io_out_valid_r_3 <= _GEN_18
    io_out_valid_r_4 <= _GEN_19
    io_out_valid_r_5 <= _GEN_20
    io_out_valid_r_6 <= _GEN_21
    io_out_valid_r_7 <= _GEN_22
    io_out_valid_r_8 <= _GEN_23
    io_out_valid_r_9 <= _GEN_24
    io_out_valid_r_10 <= _GEN_25
    io_out_valid_r_11 <= _GEN_26
    io_out_valid_r_12 <= _GEN_27
    io_out_valid_r_13 <= _GEN_28
    io_out_valid_r_14 <= _GEN_29
    io_out_valid_r_15 <= _GEN_30
    io_out_valid_r_16 <= _GEN_31
    io_out_valid_r_17 <= _GEN_32
    io_out_valid_r_18 <= _GEN_33
    io_out_valid_r_19 <= _GEN_34
    io_out_valid_r_20 <= _GEN_35
    io_out_valid_r_21 <= _GEN_36
    io_out_valid_r_22 <= _GEN_37
    io_out_valid_r_23 <= _GEN_38
    io_out_valid_r_24 <= _GEN_39
    io_out_valid_r_25 <= _GEN_40
    io_out_valid_r_26 <= _GEN_41
    io_out_valid_r_27 <= _GEN_42
    io_out_valid_r_28 <= _GEN_43
    io_out_valid_r_29 <= _GEN_44
    io_out_valid_r_30 <= _GEN_45
    io_out_valid_r_31 <= _GEN_46
    io_out_valid_r_32 <= _GEN_47
    io_out_valid_r_33 <= _GEN_48
    io_out_valid_r_34 <= _GEN_49
    io_out_valid_r_35 <= _GEN_50
    io_out_valid_r_36 <= _GEN_51
    io_out_valid_r_37 <= _GEN_52
    io_out_valid_r_38 <= _GEN_53
    io_out_valid_r_39 <= _GEN_54
    io_out_valid_r_40 <= _GEN_55
    io_out_valid_r_41 <= _GEN_56
    io_out_valid_r_42 <= _GEN_57
    io_out_valid_r_43 <= _GEN_58
    io_out_valid_r_44 <= _GEN_59
    io_out_valid_r_45 <= _GEN_60
    io_out_valid_r_46 <= _GEN_61
    io_out_valid_r_47 <= _GEN_62
    io_out_valid_r_48 <= _GEN_63
    io_out_valid_r_49 <= _GEN_64

  module complex_mult : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 131:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 131:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 131:7]
    input io_complexA : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]
    input io_complexB : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]
    input io_in_en : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]
    input io_in_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]
    input io_counter_reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]
    output io_out_valid : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]
    output io_out_s : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]
    output io_out_real : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]
    output io_out_imag : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 132:14]

    inst FP_mult_inst_0 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 169:40]
    inst FP_mult_inst_1 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 169:40]
    inst FP_mult_inst_2 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 169:40]
    inst FP_mult_inst_3 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 169:40]
    inst FP_adder_Inst_0 of FP_add_32_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 177:41]
    inst FP_adder_Inst_1 of FP_add_32_13 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 177:41]
    reg counter : UInt<16>, clock with :
      reset => (UInt<1>("h0"), counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 151:24]
    node _counter_T = add(counter, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 161:38]
    node _counter_T_1 = tail(_counter_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 161:38]
    node _counter_T_2 = mux(io_in_en, _counter_T_1, counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 161:19]
    node _GEN_0 = mux(io_counter_reset, UInt<1>("h0"), _counter_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 158:26 159:13 161:13]
    node _FP_mult_inst_0_io_in_a_T = bits(io_complexA, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 185:41]
    node _FP_mult_inst_0_io_in_b_T = bits(io_complexB, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 186:41]
    node _FP_mult_inst_1_io_in_a_T = bits(io_complexA, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 187:41]
    node _FP_mult_inst_1_io_in_b_T = bits(io_complexB, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 188:41]
    node _FP_mult_inst_2_io_in_a_T = bits(io_complexA, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 189:41]
    node _FP_mult_inst_2_io_in_b_T = bits(io_complexB, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 190:41]
    node _FP_mult_inst_3_io_in_a_T = bits(io_complexA, 63, 32) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 191:41]
    node _FP_mult_inst_3_io_in_b_T = bits(io_complexB, 31, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 192:41]
    node _FP_adder_Inst_0_io_in_a_T = mux(FP_adder_Inst_0.io_in_en, FP_mult_inst_0.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 194:34]
    node _FP_adder_Inst_0_io_in_b_T = xor(FP_mult_inst_1.io_out_s, UInt<32>("h80000000")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 195:87]
    node _FP_adder_Inst_0_io_in_b_T_1 = mux(FP_adder_Inst_0.io_in_en, _FP_adder_Inst_0_io_in_b_T, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 195:34]
    node _FP_adder_Inst_1_io_in_a_T = mux(FP_adder_Inst_1.io_in_en, FP_mult_inst_2.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 197:34]
    node _FP_adder_Inst_1_io_in_b_T = mux(FP_adder_Inst_1.io_in_en, FP_mult_inst_3.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 198:34]
    node _GEN_1 = mux(io_in_en, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 173:18 201:20 202:32]
    node _GEN_2 = mux(io_in_en, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 201:20 174:21 203:35]
    node _T = geq(counter, UInt<4>("ha")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 208:30]
    node _T_1 = and(io_in_en, _T) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 208:19]
    node _GEN_3 = mux(_T_1, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 181:18 208:44 209:33]
    node _GEN_4 = mux(_T_1, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 182:21 208:44 210:36]
    node _T_2 = geq(counter, UInt<4>("ha")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 208:30]
    node _T_3 = and(io_in_en, _T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 208:19]
    node _GEN_5 = mux(_T_3, io_in_en, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 181:18 208:44 209:33]
    node _GEN_6 = mux(_T_3, io_in_valid, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 182:21 208:44 210:36]
    node _io_out_s_T = cat(FP_adder_Inst_0.io_out_s, FP_adder_Inst_1.io_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 214:18]
    reg io_out_valid_r : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_7 = mux(io_in_en, io_in_valid, io_out_valid_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_8 = mux(io_in_en, io_out_valid_r, io_out_valid_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_9 = mux(io_in_en, io_out_valid_r_1, io_out_valid_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_10 = mux(io_in_en, io_out_valid_r_2, io_out_valid_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_4 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_11 = mux(io_in_en, io_out_valid_r_3, io_out_valid_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_5 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_12 = mux(io_in_en, io_out_valid_r_4, io_out_valid_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_6 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_13 = mux(io_in_en, io_out_valid_r_5, io_out_valid_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_7 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_14 = mux(io_in_en, io_out_valid_r_6, io_out_valid_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_8 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_15 = mux(io_in_en, io_out_valid_r_7, io_out_valid_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_9 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_16 = mux(io_in_en, io_out_valid_r_8, io_out_valid_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_10 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_17 = mux(io_in_en, io_out_valid_r_9, io_out_valid_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_11 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_18 = mux(io_in_en, io_out_valid_r_10, io_out_valid_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_12 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_19 = mux(io_in_en, io_out_valid_r_11, io_out_valid_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_13 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_20 = mux(io_in_en, io_out_valid_r_12, io_out_valid_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_14 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_21 = mux(io_in_en, io_out_valid_r_13, io_out_valid_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_15 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_22 = mux(io_in_en, io_out_valid_r_14, io_out_valid_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_16 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_23 = mux(io_in_en, io_out_valid_r_15, io_out_valid_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_17 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_24 = mux(io_in_en, io_out_valid_r_16, io_out_valid_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_18 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_25 = mux(io_in_en, io_out_valid_r_17, io_out_valid_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_19 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_26 = mux(io_in_en, io_out_valid_r_18, io_out_valid_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_20 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_27 = mux(io_in_en, io_out_valid_r_19, io_out_valid_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_21 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_28 = mux(io_in_en, io_out_valid_r_20, io_out_valid_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    reg io_out_valid_r_22 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:32]
    node _GEN_29 = mux(io_in_en, io_out_valid_r_21, io_out_valid_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:{32,32,32}]
    io_out_valid <= io_out_valid_r_22 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 215:16]
    io_out_s <= _io_out_s_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 214:12]
    io_out_real <= FP_adder_Inst_0.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 216:15]
    io_out_imag <= FP_adder_Inst_1.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 217:15]
    counter <= mux(reset, UInt<16>("h0"), _GEN_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 151:{24,24}]
    FP_mult_inst_0.clock <= clock
    FP_mult_inst_0.reset <= reset
    FP_mult_inst_0.io_in_en <= _GEN_1
    FP_mult_inst_0.io_in_valid <= _GEN_2
    FP_mult_inst_0.io_in_a <= _FP_mult_inst_0_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 185:27]
    FP_mult_inst_0.io_in_b <= _FP_mult_inst_0_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 186:27]
    FP_mult_inst_1.clock <= clock
    FP_mult_inst_1.reset <= reset
    FP_mult_inst_1.io_in_en <= _GEN_1
    FP_mult_inst_1.io_in_valid <= _GEN_2
    FP_mult_inst_1.io_in_a <= _FP_mult_inst_1_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 187:27]
    FP_mult_inst_1.io_in_b <= _FP_mult_inst_1_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 188:27]
    FP_mult_inst_2.clock <= clock
    FP_mult_inst_2.reset <= reset
    FP_mult_inst_2.io_in_en <= _GEN_1
    FP_mult_inst_2.io_in_valid <= _GEN_2
    FP_mult_inst_2.io_in_a <= _FP_mult_inst_2_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 189:27]
    FP_mult_inst_2.io_in_b <= _FP_mult_inst_2_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 190:27]
    FP_mult_inst_3.clock <= clock
    FP_mult_inst_3.reset <= reset
    FP_mult_inst_3.io_in_en <= _GEN_1
    FP_mult_inst_3.io_in_valid <= _GEN_2
    FP_mult_inst_3.io_in_a <= _FP_mult_inst_3_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 191:27]
    FP_mult_inst_3.io_in_b <= _FP_mult_inst_3_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 192:27]
    FP_adder_Inst_0.clock <= clock
    FP_adder_Inst_0.reset <= reset
    FP_adder_Inst_0.io_in_en <= _GEN_3
    FP_adder_Inst_0.io_in_valid <= _GEN_4
    FP_adder_Inst_0.io_in_a <= _FP_adder_Inst_0_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 194:28]
    FP_adder_Inst_0.io_in_b <= _FP_adder_Inst_0_io_in_b_T_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 195:28]
    FP_adder_Inst_1.clock <= clock
    FP_adder_Inst_1.reset <= reset
    FP_adder_Inst_1.io_in_en <= _GEN_5
    FP_adder_Inst_1.io_in_valid <= _GEN_6
    FP_adder_Inst_1.io_in_a <= _FP_adder_Inst_1_io_in_a_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 197:28]
    FP_adder_Inst_1.io_in_b <= _FP_adder_Inst_1_io_in_b_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/Complex_FPU/complex.scala 198:28]
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

  module iterative_axpy : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 250:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 250:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 250:7]
    input io_s_in : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    input io_vk_in_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    input io_vk_in_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    input io_xk_in_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    input io_xk_in_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    input io_en_in : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    input io_counter_reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    input io_valid_in : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    output io_out_s_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]
    output io_out_s_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 251:14]

    inst mult_0 of complex_mult @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 270:33]
    inst mult_1 of complex_mult @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 270:33]
    inst adder_0 of complex_adder @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 280:34]
    inst adder_1 of complex_adder @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 280:34]
    reg counter : UInt<32>, clock with :
      reset => (UInt<1>("h0"), counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 262:24]
    node _counter_T = add(counter, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 266:38]
    node _counter_T_1 = tail(_counter_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 266:38]
    node _counter_T_2 = mux(io_en_in, _counter_T_1, counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 266:19]
    node _GEN_0 = mux(io_counter_reset, UInt<1>("h0"), _counter_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 263:26 264:13 266:13]
    node _T = geq(counter, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 290:17]
    node _GEN_1 = mux(_T, UInt<1>("h1"), io_en_in) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 273:16 290:25 292:24]
    node _GEN_2 = mux(_T, UInt<1>("h1"), io_valid_in) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 274:19 290:25 293:27]
    node _GEN_3 = mux(_T, io_s_in, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 276:19 290:25 295:27]
    node _GEN_4 = mux(_T, io_vk_in_0, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 277:19 290:25 296:27]
    node _GEN_5 = mux(_T, io_vk_in_1, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 277:19 290:25 296:27]
    node _T_1 = geq(counter, UInt<5>("h17")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 301:17]
    reg adder_0_io_complexA_r : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_6 = mux(UInt<1>("h1"), io_xk_in_0, adder_0_io_complexA_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_7 = mux(UInt<1>("h1"), adder_0_io_complexA_r, adder_0_io_complexA_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_8 = mux(UInt<1>("h1"), adder_0_io_complexA_r_1, adder_0_io_complexA_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_9 = mux(UInt<1>("h1"), adder_0_io_complexA_r_2, adder_0_io_complexA_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_10 = mux(UInt<1>("h1"), adder_0_io_complexA_r_3, adder_0_io_complexA_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_5 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_11 = mux(UInt<1>("h1"), adder_0_io_complexA_r_4, adder_0_io_complexA_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_6 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_12 = mux(UInt<1>("h1"), adder_0_io_complexA_r_5, adder_0_io_complexA_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_7 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_13 = mux(UInt<1>("h1"), adder_0_io_complexA_r_6, adder_0_io_complexA_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_8 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_14 = mux(UInt<1>("h1"), adder_0_io_complexA_r_7, adder_0_io_complexA_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_9 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_15 = mux(UInt<1>("h1"), adder_0_io_complexA_r_8, adder_0_io_complexA_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_10 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_16 = mux(UInt<1>("h1"), adder_0_io_complexA_r_9, adder_0_io_complexA_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_11 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_17 = mux(UInt<1>("h1"), adder_0_io_complexA_r_10, adder_0_io_complexA_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_12 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_18 = mux(UInt<1>("h1"), adder_0_io_complexA_r_11, adder_0_io_complexA_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_13 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_19 = mux(UInt<1>("h1"), adder_0_io_complexA_r_12, adder_0_io_complexA_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_14 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_20 = mux(UInt<1>("h1"), adder_0_io_complexA_r_13, adder_0_io_complexA_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_15 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_21 = mux(UInt<1>("h1"), adder_0_io_complexA_r_14, adder_0_io_complexA_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_16 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_22 = mux(UInt<1>("h1"), adder_0_io_complexA_r_15, adder_0_io_complexA_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_17 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_23 = mux(UInt<1>("h1"), adder_0_io_complexA_r_16, adder_0_io_complexA_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_18 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_24 = mux(UInt<1>("h1"), adder_0_io_complexA_r_17, adder_0_io_complexA_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_19 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_25 = mux(UInt<1>("h1"), adder_0_io_complexA_r_18, adder_0_io_complexA_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_20 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_26 = mux(UInt<1>("h1"), adder_0_io_complexA_r_19, adder_0_io_complexA_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_21 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_27 = mux(UInt<1>("h1"), adder_0_io_complexA_r_20, adder_0_io_complexA_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_0_io_complexA_r_22 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_0_io_complexA_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_28 = mux(UInt<1>("h1"), adder_0_io_complexA_r_21, adder_0_io_complexA_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_29 = mux(UInt<1>("h1"), io_xk_in_1, adder_1_io_complexA_r) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_30 = mux(UInt<1>("h1"), adder_1_io_complexA_r, adder_1_io_complexA_r_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_31 = mux(UInt<1>("h1"), adder_1_io_complexA_r_1, adder_1_io_complexA_r_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_32 = mux(UInt<1>("h1"), adder_1_io_complexA_r_2, adder_1_io_complexA_r_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_4 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_33 = mux(UInt<1>("h1"), adder_1_io_complexA_r_3, adder_1_io_complexA_r_4) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_5 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_34 = mux(UInt<1>("h1"), adder_1_io_complexA_r_4, adder_1_io_complexA_r_5) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_6 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_35 = mux(UInt<1>("h1"), adder_1_io_complexA_r_5, adder_1_io_complexA_r_6) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_7 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_36 = mux(UInt<1>("h1"), adder_1_io_complexA_r_6, adder_1_io_complexA_r_7) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_8 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_37 = mux(UInt<1>("h1"), adder_1_io_complexA_r_7, adder_1_io_complexA_r_8) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_9 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_38 = mux(UInt<1>("h1"), adder_1_io_complexA_r_8, adder_1_io_complexA_r_9) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_10 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_39 = mux(UInt<1>("h1"), adder_1_io_complexA_r_9, adder_1_io_complexA_r_10) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_11 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_40 = mux(UInt<1>("h1"), adder_1_io_complexA_r_10, adder_1_io_complexA_r_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_12 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_41 = mux(UInt<1>("h1"), adder_1_io_complexA_r_11, adder_1_io_complexA_r_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_13 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_42 = mux(UInt<1>("h1"), adder_1_io_complexA_r_12, adder_1_io_complexA_r_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_14 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_43 = mux(UInt<1>("h1"), adder_1_io_complexA_r_13, adder_1_io_complexA_r_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_15 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_44 = mux(UInt<1>("h1"), adder_1_io_complexA_r_14, adder_1_io_complexA_r_15) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_16 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_45 = mux(UInt<1>("h1"), adder_1_io_complexA_r_15, adder_1_io_complexA_r_16) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_17 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_46 = mux(UInt<1>("h1"), adder_1_io_complexA_r_16, adder_1_io_complexA_r_17) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_18 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_47 = mux(UInt<1>("h1"), adder_1_io_complexA_r_17, adder_1_io_complexA_r_18) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_19 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_48 = mux(UInt<1>("h1"), adder_1_io_complexA_r_18, adder_1_io_complexA_r_19) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_20 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_49 = mux(UInt<1>("h1"), adder_1_io_complexA_r_19, adder_1_io_complexA_r_20) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_21 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_50 = mux(UInt<1>("h1"), adder_1_io_complexA_r_20, adder_1_io_complexA_r_21) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    reg adder_1_io_complexA_r_22 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), adder_1_io_complexA_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:44]
    node _GEN_51 = mux(UInt<1>("h1"), adder_1_io_complexA_r_21, adder_1_io_complexA_r_22) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 305:{44,44,44}]
    node _GEN_52 = mux(_T_1, UInt<1>("h1"), io_en_in) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 283:16 301:42 303:25]
    node _GEN_53 = mux(_T_1, UInt<1>("h1"), io_valid_in) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 284:19 301:42 304:28]
    node _GEN_54 = mux(_T_1, adder_0_io_complexA_r_22, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 285:19 301:42 305:28]
    node _GEN_55 = mux(_T_1, mult_0.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 286:19 301:42 306:28]
    node _GEN_56 = mux(_T_1, adder_1_io_complexA_r_22, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 285:19 301:42 305:28]
    node _GEN_57 = mux(_T_1, mult_1.io_out_s, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 286:19 301:42 306:28]
    io_out_s_0 <= adder_0.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 310:17]
    io_out_s_1 <= adder_1.io_out_s @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 310:17]
    counter <= mux(reset, UInt<32>("h0"), _GEN_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 262:{24,24}]
    mult_0.clock <= clock
    mult_0.reset <= reset
    mult_0.io_complexA <= _GEN_3
    mult_0.io_complexB <= _GEN_4
    mult_0.io_in_en <= _GEN_1
    mult_0.io_in_valid <= _GEN_2
    mult_0.io_counter_reset <= UInt<1>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 275:24]
    mult_1.clock <= clock
    mult_1.reset <= reset
    mult_1.io_complexA <= _GEN_3
    mult_1.io_complexB <= _GEN_5
    mult_1.io_in_en <= _GEN_1
    mult_1.io_in_valid <= _GEN_2
    mult_1.io_counter_reset <= UInt<1>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 275:24]
    adder_0.clock <= clock
    adder_0.reset <= reset
    adder_0.io_complexA <= _GEN_54
    adder_0.io_complexB <= _GEN_55
    adder_0.io_in_en <= _GEN_52
    adder_0.io_in_valid <= _GEN_53
    adder_1.clock <= clock
    adder_1.reset <= reset
    adder_1.io_complexA <= _GEN_56
    adder_1.io_complexB <= _GEN_57
    adder_1.io_in_en <= _GEN_52
    adder_1.io_in_valid <= _GEN_53
    adder_0_io_complexA_r <= _GEN_6
    adder_0_io_complexA_r_1 <= _GEN_7
    adder_0_io_complexA_r_2 <= _GEN_8
    adder_0_io_complexA_r_3 <= _GEN_9
    adder_0_io_complexA_r_4 <= _GEN_10
    adder_0_io_complexA_r_5 <= _GEN_11
    adder_0_io_complexA_r_6 <= _GEN_12
    adder_0_io_complexA_r_7 <= _GEN_13
    adder_0_io_complexA_r_8 <= _GEN_14
    adder_0_io_complexA_r_9 <= _GEN_15
    adder_0_io_complexA_r_10 <= _GEN_16
    adder_0_io_complexA_r_11 <= _GEN_17
    adder_0_io_complexA_r_12 <= _GEN_18
    adder_0_io_complexA_r_13 <= _GEN_19
    adder_0_io_complexA_r_14 <= _GEN_20
    adder_0_io_complexA_r_15 <= _GEN_21
    adder_0_io_complexA_r_16 <= _GEN_22
    adder_0_io_complexA_r_17 <= _GEN_23
    adder_0_io_complexA_r_18 <= _GEN_24
    adder_0_io_complexA_r_19 <= _GEN_25
    adder_0_io_complexA_r_20 <= _GEN_26
    adder_0_io_complexA_r_21 <= _GEN_27
    adder_0_io_complexA_r_22 <= _GEN_28
    adder_1_io_complexA_r <= _GEN_29
    adder_1_io_complexA_r_1 <= _GEN_30
    adder_1_io_complexA_r_2 <= _GEN_31
    adder_1_io_complexA_r_3 <= _GEN_32
    adder_1_io_complexA_r_4 <= _GEN_33
    adder_1_io_complexA_r_5 <= _GEN_34
    adder_1_io_complexA_r_6 <= _GEN_35
    adder_1_io_complexA_r_7 <= _GEN_36
    adder_1_io_complexA_r_8 <= _GEN_37
    adder_1_io_complexA_r_9 <= _GEN_38
    adder_1_io_complexA_r_10 <= _GEN_39
    adder_1_io_complexA_r_11 <= _GEN_40
    adder_1_io_complexA_r_12 <= _GEN_41
    adder_1_io_complexA_r_13 <= _GEN_42
    adder_1_io_complexA_r_14 <= _GEN_43
    adder_1_io_complexA_r_15 <= _GEN_44
    adder_1_io_complexA_r_16 <= _GEN_45
    adder_1_io_complexA_r_17 <= _GEN_46
    adder_1_io_complexA_r_18 <= _GEN_47
    adder_1_io_complexA_r_19 <= _GEN_48
    adder_1_io_complexA_r_20 <= _GEN_49
    adder_1_io_complexA_r_21 <= _GEN_50
    adder_1_io_complexA_r_22 <= _GEN_51

  module tsqr_inner_loop : @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 463:7]
    input clock : Clock @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 463:7]
    input reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 463:7]
    input io_xk_in_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    input io_xk_in_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    input io_alpha_in : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    input io_tk_in : UInt<32> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    input io_column_count : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    input io_en_in : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    input io_valid_in : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    input io_counter_reset : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    output io_valid_out : UInt<1> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    output io_out_s_0 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]
    output io_out_s_1 : UInt<64> @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 464:14]

    inst vk of vk_gen @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 501:18]
    inst dot of cmplx_dot_iterative_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 509:19]
    inst mult_0 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 516:32]
    inst mult_1 of FP_mult_32_10_v2 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 516:32]
    inst axpy of iterative_axpy @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 525:20]
    reg vk_reg_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), vk_reg_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23]
    reg vk_reg_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), vk_reg_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23]
    reg vk_reg_2 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), vk_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23]
    reg vk_reg_3 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), vk_reg_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23]
    reg tk_reg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), tk_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 487:23]
    reg counter : UInt<32>, clock with :
      reset => (UInt<1>("h0"), counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 489:24]
    node _counter_T = add(counter, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 493:38]
    node _counter_T_1 = tail(_counter_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 493:38]
    node _counter_T_2 = mux(io_en_in, _counter_T_1, counter) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 493:19]
    node _GEN_0 = mux(io_counter_reset, UInt<1>("h0"), _counter_T_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 490:26 491:13 493:13]
    node _T = eq(counter, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 496:29]
    node _T_1 = and(io_en_in, _T) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 496:18]
    node _GEN_1 = mux(_T_1, io_tk_in, tk_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 496:38 497:12 487:23]
    node _GEN_2 = mux(io_en_in, UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 505:15 533:18 534:17]
    node _GEN_3 = mux(io_en_in, io_counter_reset, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 533:18 507:23 536:25]
    node _WIRE__0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 502:{34,34}]
    node _GEN_4 = mux(io_en_in, io_xk_in_0, _WIRE__0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 502:15 533:18 538:17]
    node _WIRE__1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 502:{34,34}]
    node _GEN_5 = mux(io_en_in, io_xk_in_1, _WIRE__1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 502:15 533:18 538:17]
    node _GEN_6 = mux(io_en_in, io_alpha_in, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 503:18 533:18 539:20]
    reg vk_reg_pointer : UInt<2>, clock with :
      reset => (UInt<1>("h0"), vk_reg_pointer) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 543:31]
    node _T_2 = geq(counter, UInt<4>("hd")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 544:16]
    node _T_3 = lt(counter, UInt<4>("hf")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 544:43]
    node _T_4 = and(_T_2, _T_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 544:32]
    node _index_T = add(vk_reg_pointer, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 546:34]
    node index = tail(_index_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 546:34]
    node _T_5 = lt(index, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 547:18]
    node _vk_reg_index = vk.io_out_s_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 548:{23,23}]
    node _GEN_7 = mux(eq(UInt<1>("h0"), index), _vk_reg_index, vk_reg_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 548:{23,23}]
    node _GEN_8 = mux(eq(UInt<1>("h1"), index), _vk_reg_index, vk_reg_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 548:{23,23}]
    node _GEN_9 = mux(eq(UInt<2>("h2"), index), _vk_reg_index, vk_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 548:{23,23}]
    node _GEN_10 = mux(eq(UInt<2>("h3"), index), _vk_reg_index, vk_reg_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 548:{23,23}]
    node _GEN_11 = mux(_T_5, _GEN_7, vk_reg_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 547:25]
    node _GEN_12 = mux(_T_5, _GEN_8, vk_reg_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 547:25]
    node _GEN_13 = mux(_T_5, _GEN_9, vk_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 547:25]
    node _GEN_14 = mux(_T_5, _GEN_10, vk_reg_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 547:25]
    node _index_T_1 = add(vk_reg_pointer, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 546:34]
    node index_1 = tail(_index_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 546:34]
    node _T_6 = lt(index_1, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 547:18]
    node _vk_reg_index_1 = vk.io_out_s_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 548:{23,23}]
    node _GEN_15 = mux(eq(UInt<1>("h0"), index_1), _vk_reg_index_1, _GEN_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 548:{23,23}]
    node _GEN_16 = mux(eq(UInt<1>("h1"), index_1), _vk_reg_index_1, _GEN_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 548:{23,23}]
    node _GEN_17 = mux(eq(UInt<2>("h2"), index_1), _vk_reg_index_1, _GEN_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 548:{23,23}]
    node _GEN_18 = mux(eq(UInt<2>("h3"), index_1), _vk_reg_index_1, _GEN_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 548:{23,23}]
    node _GEN_19 = mux(_T_6, _GEN_15, _GEN_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 547:25]
    node _GEN_20 = mux(_T_6, _GEN_16, _GEN_12) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 547:25]
    node _GEN_21 = mux(_T_6, _GEN_17, _GEN_13) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 547:25]
    node _GEN_22 = mux(_T_6, _GEN_18, _GEN_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 547:25]
    node _vk_reg_pointer_T = add(vk_reg_pointer, UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 551:38]
    node _vk_reg_pointer_T_1 = tail(_vk_reg_pointer_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 551:38]
    node _GEN_23 = mux(_T_4, _GEN_19, vk_reg_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 544:75]
    node _GEN_24 = mux(_T_4, _GEN_20, vk_reg_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 544:75]
    node _GEN_25 = mux(_T_4, _GEN_21, vk_reg_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 544:75]
    node _GEN_26 = mux(_T_4, _GEN_22, vk_reg_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:23 544:75]
    node _GEN_27 = mux(_T_4, _vk_reg_pointer_T_1, vk_reg_pointer) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 544:75 551:20 543:31]
    node _GEN_28 = mux(io_counter_reset, UInt<1>("h0"), _GEN_27) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 554:27 555:20]
    reg vk_out_pointer : UInt<2>, clock with :
      reset => (UInt<1>("h0"), vk_out_pointer) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 558:31]
    node _index_T_2 = add(vk_out_pointer, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 564:32]
    node index_2 = tail(_index_T_2, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 564:32]
    node _new_index_T = geq(index_2, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 565:31]
    node _new_index_T_1 = sub(index_2, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 565:45]
    node _new_index_T_2 = tail(_new_index_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 565:45]
    node new_index = mux(_new_index_T, _new_index_T_2, index_2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 565:24]
    node _vk_out_batch_0_T = bits(new_index, 1, 0)
    node _GEN_29 = validif(eq(UInt<1>("h0"), _vk_out_batch_0_T), vk_reg_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:{21,21}]
    node _GEN_30 = mux(eq(UInt<1>("h1"), _vk_out_batch_0_T), vk_reg_1, _GEN_29) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:{21,21}]
    node _GEN_31 = mux(eq(UInt<2>("h2"), _vk_out_batch_0_T), vk_reg_2, _GEN_30) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:{21,21}]
    node _GEN_32 = mux(eq(UInt<2>("h3"), _vk_out_batch_0_T), vk_reg_3, _GEN_31) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:{21,21}]
    node _index_T_3 = add(vk_out_pointer, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 564:32]
    node index_3 = tail(_index_T_3, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 564:32]
    node _new_index_T_3 = geq(index_3, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 565:31]
    node _new_index_T_4 = sub(index_3, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 565:45]
    node _new_index_T_5 = tail(_new_index_T_4, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 565:45]
    node new_index_1 = mux(_new_index_T_3, _new_index_T_5, index_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 565:24]
    node _vk_out_batch_1_T = bits(new_index_1, 1, 0)
    node _GEN_33 = validif(eq(UInt<1>("h0"), _vk_out_batch_1_T), vk_reg_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:{21,21}]
    node _GEN_34 = mux(eq(UInt<1>("h1"), _vk_out_batch_1_T), vk_reg_1, _GEN_33) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:{21,21}]
    node _GEN_35 = mux(eq(UInt<2>("h2"), _vk_out_batch_1_T), vk_reg_2, _GEN_34) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:{21,21}]
    node _GEN_36 = mux(eq(UInt<2>("h3"), _vk_out_batch_1_T), vk_reg_3, _GEN_35) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:{21,21}]
    node _T_7 = geq(counter, UInt<4>("hd")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 569:16]
    reg r__0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r__0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r__1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r__1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_37 = mux(UInt<1>("h1"), io_xk_in_0, r__0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_38 = mux(UInt<1>("h1"), io_xk_in_1, r__1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_1_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_1_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_1_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_1_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_39 = mux(UInt<1>("h1"), r__0, r_1_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_40 = mux(UInt<1>("h1"), r__1, r_1_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_2_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_2_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_41 = mux(UInt<1>("h1"), r_1_0, r_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_42 = mux(UInt<1>("h1"), r_1_1, r_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_3_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_3_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_43 = mux(UInt<1>("h1"), r_2_0, r_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_44 = mux(UInt<1>("h1"), r_2_1, r_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_4_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_4_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_4_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_4_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_45 = mux(UInt<1>("h1"), r_3_0, r_4_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_46 = mux(UInt<1>("h1"), r_3_1, r_4_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_5_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_5_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_5_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_5_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_47 = mux(UInt<1>("h1"), r_4_0, r_5_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_48 = mux(UInt<1>("h1"), r_4_1, r_5_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_6_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_6_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_6_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_6_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_49 = mux(UInt<1>("h1"), r_5_0, r_6_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_50 = mux(UInt<1>("h1"), r_5_1, r_6_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_7_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_7_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_7_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_7_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_51 = mux(UInt<1>("h1"), r_6_0, r_7_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_52 = mux(UInt<1>("h1"), r_6_1, r_7_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_8_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_8_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_8_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_8_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_53 = mux(UInt<1>("h1"), r_7_0, r_8_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_54 = mux(UInt<1>("h1"), r_7_1, r_8_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_9_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_9_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_9_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_9_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_55 = mux(UInt<1>("h1"), r_8_0, r_9_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_56 = mux(UInt<1>("h1"), r_8_1, r_9_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_10_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_10_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_10_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_10_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_57 = mux(UInt<1>("h1"), r_9_0, r_10_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_58 = mux(UInt<1>("h1"), r_9_1, r_10_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_11_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_11_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_11_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_11_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_59 = mux(UInt<1>("h1"), r_10_0, r_11_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_60 = mux(UInt<1>("h1"), r_10_1, r_11_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    reg r_12_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_12_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    reg r_12_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_12_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:34]
    node _GEN_61 = mux(UInt<1>("h1"), r_11_0, r_12_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _GEN_62 = mux(UInt<1>("h1"), r_11_1, r_12_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 573:{34,34,34}]
    node _T_8 = lt(counter, UInt<4>("hf")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 574:19]
    node _next_pointer_T = add(vk_out_pointer, UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 581:41]
    node next_pointer = tail(_next_pointer_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 581:41]
    node _vk_out_pointer_T = geq(next_pointer, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 582:42]
    node _vk_out_pointer_T_1 = sub(next_pointer, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 582:63]
    node _vk_out_pointer_T_2 = tail(_vk_out_pointer_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 582:63]
    node _vk_out_pointer_T_3 = mux(_vk_out_pointer_T, _vk_out_pointer_T_2, next_pointer) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 582:28]
    node _vk_reg_vk_out_batch_0_T = _GEN_32 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:21]
    node vk_out_batch_0 = _vk_reg_vk_out_batch_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 559:26 566:21]
    node _GEN_63 = mux(_T_8, vk.io_out_s_0, vk_out_batch_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 574:51 575:20 578:25]
    node _vk_reg_vk_out_batch_1_T = _GEN_36 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 566:21]
    node vk_out_batch_1 = _vk_reg_vk_out_batch_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 559:26 566:21]
    node _GEN_64 = mux(_T_8, vk.io_out_s_1, vk_out_batch_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 574:51 575:20 578:25]
    node _GEN_65 = mux(_T_8, vk_out_pointer, _vk_out_pointer_T_3) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 558:31 574:51 582:22]
    node _GEN_66 = mux(_T_7, UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 512:16 569:33 570:18]
    node _GEN_67 = mux(_T_7, io_counter_reset, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 514:24 569:33 572:26]
    node _WIRE_2_0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 511:{35,35}]
    node _GEN_68 = mux(_T_7, r_12_0, _WIRE_2_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 511:16 569:33 573:18]
    node _WIRE_2_1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 511:{35,35}]
    node _GEN_69 = mux(_T_7, r_12_1, _WIRE_2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 511:16 569:33 573:18]
    node _WIRE_1_0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 510:{35,35}]
    node _GEN_70 = mux(_T_7, _GEN_63, _WIRE_1_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 510:16 569:33]
    node _WIRE_1_1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 510:{35,35}]
    node _GEN_71 = mux(_T_7, _GEN_64, _WIRE_1_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 510:16 569:33]
    node _GEN_72 = mux(_T_7, _GEN_65, vk_out_pointer) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 558:31 569:33]
    node _T_9 = geq(counter, UInt<6>("h3f")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 586:17]
    node _GEN_73 = mux(_T_9, UInt<1>("h1"), io_en_in) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 519:16 586:32 587:22]
    node _GEN_74 = mux(_T_9, UInt<1>("h1"), io_valid_in) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 520:19 586:32 588:25]
    node _GEN_75 = mux(_T_9, tk_reg, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 521:15 586:32 590:21]
    node _GEN_76 = mux(_T_9, dot.io_out_real, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 522:15 586:32 591:21]
    node _GEN_77 = mux(_T_9, dot.io_out_imag, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 522:15 586:32 597:21]
    node tk_scalar = cat(mult_0.io_out_s, mult_1.io_out_s) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 601:22]
    reg scalar_reg : UInt<64>, clock with :
      reset => (UInt<1>("h0"), scalar_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 602:27]
    node _T_10 = geq(counter, UInt<7>("h49")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 605:19]
    node _T_11 = eq(counter, UInt<7>("h49")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 605:56]
    node _T_12 = and(_T_10, _T_11) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 605:45]
    node _GEN_78 = mux(_T_12, tk_scalar, scalar_reg) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 605:106 606:18 602:27]
    node _T_13 = geq(counter, UInt<7>("h49")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 605:19]
    node _T_14 = eq(counter, UInt<7>("h4b")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 605:56]
    node _T_15 = and(_T_13, _T_14) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 605:45]
    node _GEN_79 = mux(_T_15, tk_scalar, _GEN_78) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 605:106 606:18]
    reg vk_out_pointer2 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), vk_out_pointer2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 610:32]
    node _index2_T = add(vk_out_pointer2, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 616:34]
    node index2 = tail(_index2_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 616:34]
    node _new_index2_T = geq(index2, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 617:33]
    node _new_index2_T_1 = sub(index2, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 617:48]
    node _new_index2_T_2 = tail(_new_index2_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 617:48]
    node new_index2 = mux(_new_index2_T, _new_index2_T_2, index2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 617:25]
    node _vk_out_batch2_0_T = bits(new_index2, 1, 0)
    node _GEN_80 = validif(eq(UInt<1>("h0"), _vk_out_batch2_0_T), vk_reg_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:{22,22}]
    node _GEN_81 = mux(eq(UInt<1>("h1"), _vk_out_batch2_0_T), vk_reg_1, _GEN_80) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:{22,22}]
    node _GEN_82 = mux(eq(UInt<2>("h2"), _vk_out_batch2_0_T), vk_reg_2, _GEN_81) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:{22,22}]
    node _GEN_83 = mux(eq(UInt<2>("h3"), _vk_out_batch2_0_T), vk_reg_3, _GEN_82) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:{22,22}]
    node _index2_T_1 = add(vk_out_pointer2, UInt<1>("h1")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 616:34]
    node index2_1 = tail(_index2_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 616:34]
    node _new_index2_T_3 = geq(index2_1, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 617:33]
    node _new_index2_T_4 = sub(index2_1, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 617:48]
    node _new_index2_T_5 = tail(_new_index2_T_4, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 617:48]
    node new_index2_1 = mux(_new_index2_T_3, _new_index2_T_5, index2_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 617:25]
    node _vk_out_batch2_1_T = bits(new_index2_1, 1, 0)
    node _GEN_84 = validif(eq(UInt<1>("h0"), _vk_out_batch2_1_T), vk_reg_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:{22,22}]
    node _GEN_85 = mux(eq(UInt<1>("h1"), _vk_out_batch2_1_T), vk_reg_1, _GEN_84) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:{22,22}]
    node _GEN_86 = mux(eq(UInt<2>("h2"), _vk_out_batch2_1_T), vk_reg_2, _GEN_85) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:{22,22}]
    node _GEN_87 = mux(eq(UInt<2>("h3"), _vk_out_batch2_1_T), vk_reg_3, _GEN_86) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:{22,22}]
    node _T_16 = geq(counter, UInt<7>("h4a")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 621:17]
    reg r_13_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_13_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_13_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_13_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_88 = mux(UInt<1>("h1"), io_xk_in_0, r_13_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_89 = mux(UInt<1>("h1"), io_xk_in_1, r_13_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_14_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_14_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_14_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_14_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_90 = mux(UInt<1>("h1"), r_13_0, r_14_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_91 = mux(UInt<1>("h1"), r_13_1, r_14_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_15_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_15_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_15_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_15_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_92 = mux(UInt<1>("h1"), r_14_0, r_15_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_93 = mux(UInt<1>("h1"), r_14_1, r_15_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_16_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_16_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_16_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_16_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_94 = mux(UInt<1>("h1"), r_15_0, r_16_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_95 = mux(UInt<1>("h1"), r_15_1, r_16_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_17_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_17_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_17_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_17_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_96 = mux(UInt<1>("h1"), r_16_0, r_17_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_97 = mux(UInt<1>("h1"), r_16_1, r_17_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_18_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_18_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_18_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_18_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_98 = mux(UInt<1>("h1"), r_17_0, r_18_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_99 = mux(UInt<1>("h1"), r_17_1, r_18_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_19_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_19_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_19_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_19_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_100 = mux(UInt<1>("h1"), r_18_0, r_19_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_101 = mux(UInt<1>("h1"), r_18_1, r_19_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_20_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_20_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_20_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_20_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_102 = mux(UInt<1>("h1"), r_19_0, r_20_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_103 = mux(UInt<1>("h1"), r_19_1, r_20_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_21_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_21_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_21_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_21_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_104 = mux(UInt<1>("h1"), r_20_0, r_21_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_105 = mux(UInt<1>("h1"), r_20_1, r_21_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_22_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_22_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_22_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_22_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_106 = mux(UInt<1>("h1"), r_21_0, r_22_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_107 = mux(UInt<1>("h1"), r_21_1, r_22_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_23_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_23_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_23_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_23_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_108 = mux(UInt<1>("h1"), r_22_0, r_23_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_109 = mux(UInt<1>("h1"), r_22_1, r_23_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_24_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_24_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_24_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_24_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_110 = mux(UInt<1>("h1"), r_23_0, r_24_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_111 = mux(UInt<1>("h1"), r_23_1, r_24_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_25_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_25_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_25_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_25_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_112 = mux(UInt<1>("h1"), r_24_0, r_25_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_113 = mux(UInt<1>("h1"), r_24_1, r_25_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_26_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_26_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_26_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_26_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_114 = mux(UInt<1>("h1"), r_25_0, r_26_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_115 = mux(UInt<1>("h1"), r_25_1, r_26_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_27_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_27_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_27_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_27_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_116 = mux(UInt<1>("h1"), r_26_0, r_27_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_117 = mux(UInt<1>("h1"), r_26_1, r_27_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_28_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_28_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_28_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_28_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_118 = mux(UInt<1>("h1"), r_27_0, r_28_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_119 = mux(UInt<1>("h1"), r_27_1, r_28_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_29_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_29_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_29_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_29_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_120 = mux(UInt<1>("h1"), r_28_0, r_29_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_121 = mux(UInt<1>("h1"), r_28_1, r_29_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_30_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_30_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_30_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_30_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_122 = mux(UInt<1>("h1"), r_29_0, r_30_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_123 = mux(UInt<1>("h1"), r_29_1, r_30_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_31_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_31_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_31_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_31_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_124 = mux(UInt<1>("h1"), r_30_0, r_31_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_125 = mux(UInt<1>("h1"), r_30_1, r_31_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_32_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_32_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_32_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_32_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_126 = mux(UInt<1>("h1"), r_31_0, r_32_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_127 = mux(UInt<1>("h1"), r_31_1, r_32_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_33_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_33_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_33_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_33_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_128 = mux(UInt<1>("h1"), r_32_0, r_33_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_129 = mux(UInt<1>("h1"), r_32_1, r_33_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_34_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_34_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_34_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_34_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_130 = mux(UInt<1>("h1"), r_33_0, r_34_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_131 = mux(UInt<1>("h1"), r_33_1, r_34_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_35_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_35_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_35_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_35_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_132 = mux(UInt<1>("h1"), r_34_0, r_35_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_133 = mux(UInt<1>("h1"), r_34_1, r_35_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_36_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_36_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_36_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_36_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_134 = mux(UInt<1>("h1"), r_35_0, r_36_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_135 = mux(UInt<1>("h1"), r_35_1, r_36_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_37_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_37_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_37_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_37_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_136 = mux(UInt<1>("h1"), r_36_0, r_37_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_137 = mux(UInt<1>("h1"), r_36_1, r_37_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_38_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_38_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_38_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_38_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_138 = mux(UInt<1>("h1"), r_37_0, r_38_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_139 = mux(UInt<1>("h1"), r_37_1, r_38_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_39_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_39_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_39_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_39_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_140 = mux(UInt<1>("h1"), r_38_0, r_39_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_141 = mux(UInt<1>("h1"), r_38_1, r_39_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_40_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_40_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_40_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_40_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_142 = mux(UInt<1>("h1"), r_39_0, r_40_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_143 = mux(UInt<1>("h1"), r_39_1, r_40_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_41_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_41_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_41_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_41_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_144 = mux(UInt<1>("h1"), r_40_0, r_41_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_145 = mux(UInt<1>("h1"), r_40_1, r_41_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_42_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_42_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_42_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_42_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_146 = mux(UInt<1>("h1"), r_41_0, r_42_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_147 = mux(UInt<1>("h1"), r_41_1, r_42_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_43_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_43_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_43_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_43_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_148 = mux(UInt<1>("h1"), r_42_0, r_43_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_149 = mux(UInt<1>("h1"), r_42_1, r_43_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_44_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_44_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_44_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_44_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_150 = mux(UInt<1>("h1"), r_43_0, r_44_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_151 = mux(UInt<1>("h1"), r_43_1, r_44_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_45_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_45_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_45_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_45_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_152 = mux(UInt<1>("h1"), r_44_0, r_45_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_153 = mux(UInt<1>("h1"), r_44_1, r_45_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_46_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_46_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_46_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_46_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_154 = mux(UInt<1>("h1"), r_45_0, r_46_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_155 = mux(UInt<1>("h1"), r_45_1, r_46_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_47_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_47_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_47_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_47_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_156 = mux(UInt<1>("h1"), r_46_0, r_47_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_157 = mux(UInt<1>("h1"), r_46_1, r_47_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_48_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_48_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_48_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_48_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_158 = mux(UInt<1>("h1"), r_47_0, r_48_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_159 = mux(UInt<1>("h1"), r_47_1, r_48_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_49_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_49_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_49_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_49_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_160 = mux(UInt<1>("h1"), r_48_0, r_49_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_161 = mux(UInt<1>("h1"), r_48_1, r_49_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_50_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_50_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_50_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_50_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_162 = mux(UInt<1>("h1"), r_49_0, r_50_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_163 = mux(UInt<1>("h1"), r_49_1, r_50_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_51_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_51_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_51_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_51_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_164 = mux(UInt<1>("h1"), r_50_0, r_51_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_165 = mux(UInt<1>("h1"), r_50_1, r_51_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_52_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_52_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_52_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_52_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_166 = mux(UInt<1>("h1"), r_51_0, r_52_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_167 = mux(UInt<1>("h1"), r_51_1, r_52_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_53_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_53_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_53_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_53_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_168 = mux(UInt<1>("h1"), r_52_0, r_53_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_169 = mux(UInt<1>("h1"), r_52_1, r_53_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_54_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_54_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_54_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_54_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_170 = mux(UInt<1>("h1"), r_53_0, r_54_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_171 = mux(UInt<1>("h1"), r_53_1, r_54_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_55_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_55_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_55_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_55_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_172 = mux(UInt<1>("h1"), r_54_0, r_55_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_173 = mux(UInt<1>("h1"), r_54_1, r_55_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_56_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_56_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_56_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_56_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_174 = mux(UInt<1>("h1"), r_55_0, r_56_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_175 = mux(UInt<1>("h1"), r_55_1, r_56_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_57_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_57_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_57_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_57_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_176 = mux(UInt<1>("h1"), r_56_0, r_57_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_177 = mux(UInt<1>("h1"), r_56_1, r_57_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_58_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_58_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_58_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_58_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_178 = mux(UInt<1>("h1"), r_57_0, r_58_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_179 = mux(UInt<1>("h1"), r_57_1, r_58_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_59_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_59_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_59_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_59_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_180 = mux(UInt<1>("h1"), r_58_0, r_59_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_181 = mux(UInt<1>("h1"), r_58_1, r_59_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_60_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_60_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_60_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_60_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_182 = mux(UInt<1>("h1"), r_59_0, r_60_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_183 = mux(UInt<1>("h1"), r_59_1, r_60_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_61_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_61_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_61_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_61_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_184 = mux(UInt<1>("h1"), r_60_0, r_61_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_185 = mux(UInt<1>("h1"), r_60_1, r_61_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_62_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_62_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_62_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_62_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_186 = mux(UInt<1>("h1"), r_61_0, r_62_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_187 = mux(UInt<1>("h1"), r_61_1, r_62_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_63_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_63_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_63_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_63_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_188 = mux(UInt<1>("h1"), r_62_0, r_63_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_189 = mux(UInt<1>("h1"), r_62_1, r_63_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_64_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_64_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_64_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_64_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_190 = mux(UInt<1>("h1"), r_63_0, r_64_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_191 = mux(UInt<1>("h1"), r_63_1, r_64_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_65_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_65_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_65_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_65_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_192 = mux(UInt<1>("h1"), r_64_0, r_65_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_193 = mux(UInt<1>("h1"), r_64_1, r_65_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_66_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_66_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_66_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_66_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_194 = mux(UInt<1>("h1"), r_65_0, r_66_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_195 = mux(UInt<1>("h1"), r_65_1, r_66_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_67_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_67_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_67_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_67_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_196 = mux(UInt<1>("h1"), r_66_0, r_67_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_197 = mux(UInt<1>("h1"), r_66_1, r_67_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_68_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_68_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_68_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_68_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_198 = mux(UInt<1>("h1"), r_67_0, r_68_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_199 = mux(UInt<1>("h1"), r_67_1, r_68_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_69_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_69_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_69_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_69_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_200 = mux(UInt<1>("h1"), r_68_0, r_69_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_201 = mux(UInt<1>("h1"), r_68_1, r_69_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_70_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_70_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_70_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_70_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_202 = mux(UInt<1>("h1"), r_69_0, r_70_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_203 = mux(UInt<1>("h1"), r_69_1, r_70_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_71_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_71_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_71_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_71_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_204 = mux(UInt<1>("h1"), r_70_0, r_71_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_205 = mux(UInt<1>("h1"), r_70_1, r_71_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_72_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_72_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_72_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_72_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_206 = mux(UInt<1>("h1"), r_71_0, r_72_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_207 = mux(UInt<1>("h1"), r_71_1, r_72_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_73_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_73_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_73_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_73_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_208 = mux(UInt<1>("h1"), r_72_0, r_73_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_209 = mux(UInt<1>("h1"), r_72_1, r_73_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_74_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_74_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_74_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_74_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_210 = mux(UInt<1>("h1"), r_73_0, r_74_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_211 = mux(UInt<1>("h1"), r_73_1, r_74_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_75_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_75_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_75_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_75_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_212 = mux(UInt<1>("h1"), r_74_0, r_75_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_213 = mux(UInt<1>("h1"), r_74_1, r_75_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_76_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_76_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_76_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_76_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_214 = mux(UInt<1>("h1"), r_75_0, r_76_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_215 = mux(UInt<1>("h1"), r_75_1, r_76_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_77_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_77_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_77_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_77_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_216 = mux(UInt<1>("h1"), r_76_0, r_77_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_217 = mux(UInt<1>("h1"), r_76_1, r_77_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_78_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_78_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_78_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_78_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_218 = mux(UInt<1>("h1"), r_77_0, r_78_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_219 = mux(UInt<1>("h1"), r_77_1, r_78_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_79_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_79_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_79_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_79_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_220 = mux(UInt<1>("h1"), r_78_0, r_79_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_221 = mux(UInt<1>("h1"), r_78_1, r_79_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_80_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_80_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_80_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_80_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_222 = mux(UInt<1>("h1"), r_79_0, r_80_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_223 = mux(UInt<1>("h1"), r_79_1, r_80_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_81_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_81_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_81_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_81_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_224 = mux(UInt<1>("h1"), r_80_0, r_81_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_225 = mux(UInt<1>("h1"), r_80_1, r_81_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_82_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_82_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_82_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_82_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_226 = mux(UInt<1>("h1"), r_81_0, r_82_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_227 = mux(UInt<1>("h1"), r_81_1, r_82_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_83_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_83_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_83_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_83_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_228 = mux(UInt<1>("h1"), r_82_0, r_83_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_229 = mux(UInt<1>("h1"), r_82_1, r_83_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_84_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_84_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_84_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_84_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_230 = mux(UInt<1>("h1"), r_83_0, r_84_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_231 = mux(UInt<1>("h1"), r_83_1, r_84_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_85_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_85_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_85_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_85_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_232 = mux(UInt<1>("h1"), r_84_0, r_85_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_233 = mux(UInt<1>("h1"), r_84_1, r_85_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    reg r_86_0 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_86_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    reg r_86_1 : UInt<64>, clock with :
      reset => (UInt<1>("h0"), r_86_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:35]
    node _GEN_234 = mux(UInt<1>("h1"), r_85_0, r_86_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _GEN_235 = mux(UInt<1>("h1"), r_85_1, r_86_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 625:{35,35,35}]
    node _next_pointer2_T = add(vk_out_pointer2, UInt<2>("h2")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 631:41]
    node next_pointer2 = tail(_next_pointer2_T, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 631:41]
    node _vk_out_pointer2_T = geq(next_pointer2, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 632:42]
    node _vk_out_pointer2_T_1 = sub(next_pointer2, UInt<3>("h4")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 632:64]
    node _vk_out_pointer2_T_2 = tail(_vk_out_pointer2_T_1, 1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 632:64]
    node _vk_out_pointer2_T_3 = mux(_vk_out_pointer2_T, _vk_out_pointer2_T_2, next_pointer2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 632:27]
    node _GEN_236 = mux(_T_16, UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 530:17 621:38 622:19]
    node _GEN_237 = mux(_T_16, scalar_reg, UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 529:16 621:38 624:18]
    node _WIRE_3_0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 526:{36,36}]
    node _GEN_238 = mux(_T_16, r_86_0, _WIRE_3_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 526:17 621:38 625:19]
    node _WIRE_3_1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 526:{36,36}]
    node _GEN_239 = mux(_T_16, r_86_1, _WIRE_3_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 526:17 621:38 625:19]
    node _vk_reg_vk_out_batch2_0_T = _GEN_83 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:22]
    node vk_out_batch2_0 = _vk_reg_vk_out_batch2_0_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 611:27 618:22]
    node _WIRE_4_0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 527:{36,36}]
    node _GEN_240 = mux(_T_16, vk_out_batch2_0, _WIRE_4_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 527:17 621:38 628:24]
    node _vk_reg_vk_out_batch2_1_T = _GEN_87 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 618:22]
    node vk_out_batch2_1 = _vk_reg_vk_out_batch2_1_T @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 611:27 618:22]
    node _WIRE_4_1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 527:{36,36}]
    node _GEN_241 = mux(_T_16, vk_out_batch2_1, _WIRE_4_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 527:17 621:38 628:24]
    node _GEN_242 = mux(_T_16, _vk_out_pointer2_T_3, vk_out_pointer2) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 621:38 632:21 610:32]
    node _GEN_243 = mux(io_counter_reset, UInt<1>("h0"), _GEN_72) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 635:27 636:20]
    node _T_17 = geq(counter, UInt<7>("h6e")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 640:16]
    node _GEN_244 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 640:30 641:18 643:18]
    node _vk_reg_WIRE_0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:{31,31}]
    node _vk_reg_WIRE_1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:{31,31}]
    node _vk_reg_WIRE_2 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:{31,31}]
    node _vk_reg_WIRE_3 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:{31,31}]
    node _WIRE_5_0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 561:{26,26}]
    node _WIRE_5_1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 561:{26,26}]
    node _WIRE_6_0 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 613:{27,27}]
    node _WIRE_6_1 = UInt<64>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 613:{27,27}]
    io_valid_out <= _GEN_244
    io_out_s_0 <= axpy.io_out_s_0 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 639:12]
    io_out_s_1 <= axpy.io_out_s_1 @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 639:12]
    vk_reg_0 <= mux(reset, _vk_reg_WIRE_0, _GEN_23) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:{23,23}]
    vk_reg_1 <= mux(reset, _vk_reg_WIRE_1, _GEN_24) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:{23,23}]
    vk_reg_2 <= mux(reset, _vk_reg_WIRE_2, _GEN_25) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:{23,23}]
    vk_reg_3 <= mux(reset, _vk_reg_WIRE_3, _GEN_26) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 486:{23,23}]
    tk_reg <= mux(reset, UInt<32>("h0"), _GEN_1) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 487:{23,23}]
    counter <= mux(reset, UInt<32>("h0"), _GEN_0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 489:{24,24}]
    vk.clock <= clock
    vk.reset <= reset
    vk.io_xk_in_0 <= _GEN_4
    vk.io_xk_in_1 <= _GEN_5
    vk.io_alpha_in <= _GEN_6
    vk.io_k_in <= UInt<32>("h4") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 504:14]
    vk.io_in_en <= _GEN_2
    vk.io_counter_reset <= _GEN_3
    vk.io_in_valid <= _GEN_2
    dot.clock <= clock
    dot.reset <= reset
    dot.io_vec_a_0 <= _GEN_70
    dot.io_vec_a_1 <= _GEN_71
    dot.io_vec_b_0 <= _GEN_68
    dot.io_vec_b_1 <= _GEN_69
    dot.io_counter_reset <= _GEN_67
    dot.io_in_en <= _GEN_66
    dot.io_in_valid <= _GEN_66
    mult_0.clock <= clock
    mult_0.reset <= reset
    mult_0.io_in_en <= _GEN_73
    mult_0.io_in_valid <= _GEN_74
    mult_0.io_in_a <= _GEN_75
    mult_0.io_in_b <= _GEN_76
    mult_1.clock <= clock
    mult_1.reset <= reset
    mult_1.io_in_en <= _GEN_73
    mult_1.io_in_valid <= _GEN_74
    mult_1.io_in_a <= _GEN_75
    mult_1.io_in_b <= _GEN_77
    axpy.clock <= clock
    axpy.reset <= reset
    axpy.io_s_in <= _GEN_237
    axpy.io_vk_in_0 <= _GEN_240
    axpy.io_vk_in_1 <= _GEN_241
    axpy.io_xk_in_0 <= _GEN_238
    axpy.io_xk_in_1 <= _GEN_239
    axpy.io_en_in <= _GEN_236
    axpy.io_counter_reset <= UInt<1>("h0") @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 528:25]
    axpy.io_valid_in <= _GEN_236
    vk_reg_pointer <= mux(reset, UInt<2>("h0"), _GEN_28) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 543:{31,31}]
    vk_out_pointer <= bits(mux(reset, UInt<2>("h0"), _GEN_243), 1, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 558:{31,31}]
    r__0 <= _GEN_37
    r__1 <= _GEN_38
    r_1_0 <= _GEN_39
    r_1_1 <= _GEN_40
    r_2_0 <= _GEN_41
    r_2_1 <= _GEN_42
    r_3_0 <= _GEN_43
    r_3_1 <= _GEN_44
    r_4_0 <= _GEN_45
    r_4_1 <= _GEN_46
    r_5_0 <= _GEN_47
    r_5_1 <= _GEN_48
    r_6_0 <= _GEN_49
    r_6_1 <= _GEN_50
    r_7_0 <= _GEN_51
    r_7_1 <= _GEN_52
    r_8_0 <= _GEN_53
    r_8_1 <= _GEN_54
    r_9_0 <= _GEN_55
    r_9_1 <= _GEN_56
    r_10_0 <= _GEN_57
    r_10_1 <= _GEN_58
    r_11_0 <= _GEN_59
    r_11_1 <= _GEN_60
    r_12_0 <= _GEN_61
    r_12_1 <= _GEN_62
    scalar_reg <= mux(reset, UInt<64>("h0"), _GEN_79) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 602:{27,27}]
    vk_out_pointer2 <= bits(mux(reset, UInt<2>("h0"), _GEN_242), 1, 0) @[Users/spencerbuchanan/IdeaProjects/Chisel-CFPUs/src/main/scala/iterative_tsqr/tsqr_submodules.scala 610:{32,32}]
    r_13_0 <= _GEN_88
    r_13_1 <= _GEN_89
    r_14_0 <= _GEN_90
    r_14_1 <= _GEN_91
    r_15_0 <= _GEN_92
    r_15_1 <= _GEN_93
    r_16_0 <= _GEN_94
    r_16_1 <= _GEN_95
    r_17_0 <= _GEN_96
    r_17_1 <= _GEN_97
    r_18_0 <= _GEN_98
    r_18_1 <= _GEN_99
    r_19_0 <= _GEN_100
    r_19_1 <= _GEN_101
    r_20_0 <= _GEN_102
    r_20_1 <= _GEN_103
    r_21_0 <= _GEN_104
    r_21_1 <= _GEN_105
    r_22_0 <= _GEN_106
    r_22_1 <= _GEN_107
    r_23_0 <= _GEN_108
    r_23_1 <= _GEN_109
    r_24_0 <= _GEN_110
    r_24_1 <= _GEN_111
    r_25_0 <= _GEN_112
    r_25_1 <= _GEN_113
    r_26_0 <= _GEN_114
    r_26_1 <= _GEN_115
    r_27_0 <= _GEN_116
    r_27_1 <= _GEN_117
    r_28_0 <= _GEN_118
    r_28_1 <= _GEN_119
    r_29_0 <= _GEN_120
    r_29_1 <= _GEN_121
    r_30_0 <= _GEN_122
    r_30_1 <= _GEN_123
    r_31_0 <= _GEN_124
    r_31_1 <= _GEN_125
    r_32_0 <= _GEN_126
    r_32_1 <= _GEN_127
    r_33_0 <= _GEN_128
    r_33_1 <= _GEN_129
    r_34_0 <= _GEN_130
    r_34_1 <= _GEN_131
    r_35_0 <= _GEN_132
    r_35_1 <= _GEN_133
    r_36_0 <= _GEN_134
    r_36_1 <= _GEN_135
    r_37_0 <= _GEN_136
    r_37_1 <= _GEN_137
    r_38_0 <= _GEN_138
    r_38_1 <= _GEN_139
    r_39_0 <= _GEN_140
    r_39_1 <= _GEN_141
    r_40_0 <= _GEN_142
    r_40_1 <= _GEN_143
    r_41_0 <= _GEN_144
    r_41_1 <= _GEN_145
    r_42_0 <= _GEN_146
    r_42_1 <= _GEN_147
    r_43_0 <= _GEN_148
    r_43_1 <= _GEN_149
    r_44_0 <= _GEN_150
    r_44_1 <= _GEN_151
    r_45_0 <= _GEN_152
    r_45_1 <= _GEN_153
    r_46_0 <= _GEN_154
    r_46_1 <= _GEN_155
    r_47_0 <= _GEN_156
    r_47_1 <= _GEN_157
    r_48_0 <= _GEN_158
    r_48_1 <= _GEN_159
    r_49_0 <= _GEN_160
    r_49_1 <= _GEN_161
    r_50_0 <= _GEN_162
    r_50_1 <= _GEN_163
    r_51_0 <= _GEN_164
    r_51_1 <= _GEN_165
    r_52_0 <= _GEN_166
    r_52_1 <= _GEN_167
    r_53_0 <= _GEN_168
    r_53_1 <= _GEN_169
    r_54_0 <= _GEN_170
    r_54_1 <= _GEN_171
    r_55_0 <= _GEN_172
    r_55_1 <= _GEN_173
    r_56_0 <= _GEN_174
    r_56_1 <= _GEN_175
    r_57_0 <= _GEN_176
    r_57_1 <= _GEN_177
    r_58_0 <= _GEN_178
    r_58_1 <= _GEN_179
    r_59_0 <= _GEN_180
    r_59_1 <= _GEN_181
    r_60_0 <= _GEN_182
    r_60_1 <= _GEN_183
    r_61_0 <= _GEN_184
    r_61_1 <= _GEN_185
    r_62_0 <= _GEN_186
    r_62_1 <= _GEN_187
    r_63_0 <= _GEN_188
    r_63_1 <= _GEN_189
    r_64_0 <= _GEN_190
    r_64_1 <= _GEN_191
    r_65_0 <= _GEN_192
    r_65_1 <= _GEN_193
    r_66_0 <= _GEN_194
    r_66_1 <= _GEN_195
    r_67_0 <= _GEN_196
    r_67_1 <= _GEN_197
    r_68_0 <= _GEN_198
    r_68_1 <= _GEN_199
    r_69_0 <= _GEN_200
    r_69_1 <= _GEN_201
    r_70_0 <= _GEN_202
    r_70_1 <= _GEN_203
    r_71_0 <= _GEN_204
    r_71_1 <= _GEN_205
    r_72_0 <= _GEN_206
    r_72_1 <= _GEN_207
    r_73_0 <= _GEN_208
    r_73_1 <= _GEN_209
    r_74_0 <= _GEN_210
    r_74_1 <= _GEN_211
    r_75_0 <= _GEN_212
    r_75_1 <= _GEN_213
    r_76_0 <= _GEN_214
    r_76_1 <= _GEN_215
    r_77_0 <= _GEN_216
    r_77_1 <= _GEN_217
    r_78_0 <= _GEN_218
    r_78_1 <= _GEN_219
    r_79_0 <= _GEN_220
    r_79_1 <= _GEN_221
    r_80_0 <= _GEN_222
    r_80_1 <= _GEN_223
    r_81_0 <= _GEN_224
    r_81_1 <= _GEN_225
    r_82_0 <= _GEN_226
    r_82_1 <= _GEN_227
    r_83_0 <= _GEN_228
    r_83_1 <= _GEN_229
    r_84_0 <= _GEN_230
    r_84_1 <= _GEN_231
    r_85_0 <= _GEN_232
    r_85_1 <= _GEN_233
    r_86_0 <= _GEN_234
    r_86_1 <= _GEN_235
