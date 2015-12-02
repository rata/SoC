// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "rgb_to_bw.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic rgb_to_bw::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic rgb_to_bw::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> rgb_to_bw::ap_ST_st1_fsm_0 = "1";
const sc_lv<3> rgb_to_bw::ap_ST_st2_fsm_1 = "10";
const sc_lv<3> rgb_to_bw::ap_ST_st3_fsm_2 = "100";
const sc_lv<32> rgb_to_bw::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> rgb_to_bw::ap_const_lv1_1 = "1";
const int rgb_to_bw::C_S_AXI_DATA_WIDTH = "100000";
const sc_lv<32> rgb_to_bw::ap_const_lv32_1 = "1";
const sc_lv<32> rgb_to_bw::ap_const_lv32_C = "1100";
const sc_lv<32> rgb_to_bw::ap_const_lv32_13 = "10011";
const sc_lv<32> rgb_to_bw::ap_const_lv32_2 = "10";
const sc_lv<22> rgb_to_bw::ap_const_lv22_556 = "10101010110";

rgb_to_bw::rgb_to_bw(sc_module_name name) : sc_module(name), mVcdFile(0) {
    rgb_to_bw_AXILiteS_s_axi_U = new rgb_to_bw_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>("rgb_to_bw_AXILiteS_s_axi_U");
    rgb_to_bw_AXILiteS_s_axi_U->AWVALID(s_axi_AXILiteS_AWVALID);
    rgb_to_bw_AXILiteS_s_axi_U->AWREADY(s_axi_AXILiteS_AWREADY);
    rgb_to_bw_AXILiteS_s_axi_U->AWADDR(s_axi_AXILiteS_AWADDR);
    rgb_to_bw_AXILiteS_s_axi_U->WVALID(s_axi_AXILiteS_WVALID);
    rgb_to_bw_AXILiteS_s_axi_U->WREADY(s_axi_AXILiteS_WREADY);
    rgb_to_bw_AXILiteS_s_axi_U->WDATA(s_axi_AXILiteS_WDATA);
    rgb_to_bw_AXILiteS_s_axi_U->WSTRB(s_axi_AXILiteS_WSTRB);
    rgb_to_bw_AXILiteS_s_axi_U->ARVALID(s_axi_AXILiteS_ARVALID);
    rgb_to_bw_AXILiteS_s_axi_U->ARREADY(s_axi_AXILiteS_ARREADY);
    rgb_to_bw_AXILiteS_s_axi_U->ARADDR(s_axi_AXILiteS_ARADDR);
    rgb_to_bw_AXILiteS_s_axi_U->RVALID(s_axi_AXILiteS_RVALID);
    rgb_to_bw_AXILiteS_s_axi_U->RREADY(s_axi_AXILiteS_RREADY);
    rgb_to_bw_AXILiteS_s_axi_U->RDATA(s_axi_AXILiteS_RDATA);
    rgb_to_bw_AXILiteS_s_axi_U->RRESP(s_axi_AXILiteS_RRESP);
    rgb_to_bw_AXILiteS_s_axi_U->BVALID(s_axi_AXILiteS_BVALID);
    rgb_to_bw_AXILiteS_s_axi_U->BREADY(s_axi_AXILiteS_BREADY);
    rgb_to_bw_AXILiteS_s_axi_U->BRESP(s_axi_AXILiteS_BRESP);
    rgb_to_bw_AXILiteS_s_axi_U->ACLK(ap_clk);
    rgb_to_bw_AXILiteS_s_axi_U->ARESET(ap_rst_n_inv);
    rgb_to_bw_AXILiteS_s_axi_U->ACLK_EN(rgb_to_bw_AXILiteS_s_axi_U_ap_dummy_ce);
    rgb_to_bw_AXILiteS_s_axi_U->ap_start(ap_start);
    rgb_to_bw_AXILiteS_s_axi_U->interrupt(interrupt);
    rgb_to_bw_AXILiteS_s_axi_U->ap_ready(ap_ready);
    rgb_to_bw_AXILiteS_s_axi_U->ap_done(ap_done);
    rgb_to_bw_AXILiteS_s_axi_U->ap_idle(ap_idle);
    rgb_to_bw_AXILiteS_s_axi_U->ap_return(ap_return);
    rgb_to_bw_AXILiteS_s_axi_U->red(red);
    rgb_to_bw_AXILiteS_s_axi_U->green(green);
    rgb_to_bw_AXILiteS_s_axi_U->blue(blue);
    rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_U1 = new rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1<1,1,9,8,12,22>("rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_U1");
    rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_U1->din0(grp_fu_79_p0);
    rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_U1->din1(grp_fu_79_p1);
    rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_U1->din2(grp_fu_79_p2);
    rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_U1->dout(grp_fu_79_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( mul_reg_97 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sig_bdd_104);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_44);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_82);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_44 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_82 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_bdd_104 );

    SC_METHOD(thread_grp_fu_79_p0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( grp_fu_79_p00 );

    SC_METHOD(thread_grp_fu_79_p00);
    sensitive << ( tmp1_reg_92 );

    SC_METHOD(thread_grp_fu_79_p1);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( grp_fu_79_p10 );

    SC_METHOD(thread_grp_fu_79_p10);
    sensitive << ( green_read_reg_87 );

    SC_METHOD(thread_grp_fu_79_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_rgb_to_bw_AXILiteS_s_axi_U_ap_dummy_ce);

    SC_METHOD(thread_tmp1_fu_58_p2);
    sensitive << ( tmp_2_cast_fu_54_p1 );
    sensitive << ( tmp_cast_fu_50_p1 );

    SC_METHOD(thread_tmp_2_cast_fu_54_p1);
    sensitive << ( red );

    SC_METHOD(thread_tmp_cast_fu_50_p1);
    sensitive << ( blue );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "rgb_to_bw_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, s_axi_AXILiteS_AWVALID, "(port)s_axi_AXILiteS_AWVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWREADY, "(port)s_axi_AXILiteS_AWREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWADDR, "(port)s_axi_AXILiteS_AWADDR");
    sc_trace(mVcdFile, s_axi_AXILiteS_WVALID, "(port)s_axi_AXILiteS_WVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_WREADY, "(port)s_axi_AXILiteS_WREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_WDATA, "(port)s_axi_AXILiteS_WDATA");
    sc_trace(mVcdFile, s_axi_AXILiteS_WSTRB, "(port)s_axi_AXILiteS_WSTRB");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARVALID, "(port)s_axi_AXILiteS_ARVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARREADY, "(port)s_axi_AXILiteS_ARREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARADDR, "(port)s_axi_AXILiteS_ARADDR");
    sc_trace(mVcdFile, s_axi_AXILiteS_RVALID, "(port)s_axi_AXILiteS_RVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_RREADY, "(port)s_axi_AXILiteS_RREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_RDATA, "(port)s_axi_AXILiteS_RDATA");
    sc_trace(mVcdFile, s_axi_AXILiteS_RRESP, "(port)s_axi_AXILiteS_RRESP");
    sc_trace(mVcdFile, s_axi_AXILiteS_BVALID, "(port)s_axi_AXILiteS_BVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_BREADY, "(port)s_axi_AXILiteS_BREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_BRESP, "(port)s_axi_AXILiteS_BRESP");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, interrupt, "(port)interrupt");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_start, "ap_start");
    sc_trace(mVcdFile, ap_done, "ap_done");
    sc_trace(mVcdFile, ap_idle, "ap_idle");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_44, "ap_sig_bdd_44");
    sc_trace(mVcdFile, ap_ready, "ap_ready");
    sc_trace(mVcdFile, red, "red");
    sc_trace(mVcdFile, green, "green");
    sc_trace(mVcdFile, blue, "blue");
    sc_trace(mVcdFile, ap_return, "ap_return");
    sc_trace(mVcdFile, rgb_to_bw_AXILiteS_s_axi_U_ap_dummy_ce, "rgb_to_bw_AXILiteS_s_axi_U_ap_dummy_ce");
    sc_trace(mVcdFile, green_read_reg_87, "green_read_reg_87");
    sc_trace(mVcdFile, tmp1_fu_58_p2, "tmp1_fu_58_p2");
    sc_trace(mVcdFile, tmp1_reg_92, "tmp1_reg_92");
    sc_trace(mVcdFile, grp_fu_79_p3, "grp_fu_79_p3");
    sc_trace(mVcdFile, mul_reg_97, "mul_reg_97");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_82, "ap_sig_bdd_82");
    sc_trace(mVcdFile, tmp_2_cast_fu_54_p1, "tmp_2_cast_fu_54_p1");
    sc_trace(mVcdFile, tmp_cast_fu_50_p1, "tmp_cast_fu_50_p1");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_104, "ap_sig_bdd_104");
    sc_trace(mVcdFile, grp_fu_79_p0, "grp_fu_79_p0");
    sc_trace(mVcdFile, grp_fu_79_p1, "grp_fu_79_p1");
    sc_trace(mVcdFile, grp_fu_79_p2, "grp_fu_79_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, grp_fu_79_p00, "grp_fu_79_p00");
    sc_trace(mVcdFile, grp_fu_79_p10, "grp_fu_79_p10");
#endif

    }
    mHdltvinHandle.open("rgb_to_bw.hdltvin.dat");
    mHdltvoutHandle.open("rgb_to_bw.hdltvout.dat");
}

rgb_to_bw::~rgb_to_bw() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete rgb_to_bw_AXILiteS_s_axi_U;
    delete rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_U1;
}

void rgb_to_bw::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        green_read_reg_87 = green.read();
        tmp1_reg_92 = tmp1_fu_58_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        mul_reg_97 = grp_fu_79_p3.read();
    }
}

void rgb_to_bw::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void rgb_to_bw::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void rgb_to_bw::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void rgb_to_bw::thread_ap_return() {
    ap_return = mul_reg_97.read().range(19, 12);
}

void rgb_to_bw::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void rgb_to_bw::thread_ap_sig_bdd_104() {
    ap_sig_bdd_104 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void rgb_to_bw::thread_ap_sig_bdd_44() {
    ap_sig_bdd_44 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void rgb_to_bw::thread_ap_sig_bdd_82() {
    ap_sig_bdd_82 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void rgb_to_bw::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_44.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void rgb_to_bw::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_82.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void rgb_to_bw::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_bdd_104.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void rgb_to_bw::thread_grp_fu_79_p0() {
    grp_fu_79_p0 =  (sc_lv<9>) (grp_fu_79_p00.read());
}

void rgb_to_bw::thread_grp_fu_79_p00() {
    grp_fu_79_p00 = esl_zext<10,9>(tmp1_reg_92.read());
}

void rgb_to_bw::thread_grp_fu_79_p1() {
    grp_fu_79_p1 =  (sc_lv<8>) (grp_fu_79_p10.read());
}

void rgb_to_bw::thread_grp_fu_79_p10() {
    grp_fu_79_p10 = esl_zext<10,8>(green_read_reg_87.read());
}

void rgb_to_bw::thread_grp_fu_79_p2() {
    grp_fu_79_p2 =  (sc_lv<12>) (ap_const_lv22_556);
}

void rgb_to_bw::thread_rgb_to_bw_AXILiteS_s_axi_U_ap_dummy_ce() {
    rgb_to_bw_AXILiteS_s_axi_U_ap_dummy_ce = ap_const_logic_1;
}

void rgb_to_bw::thread_tmp1_fu_58_p2() {
    tmp1_fu_58_p2 = (!tmp_2_cast_fu_54_p1.read().is_01() || !tmp_cast_fu_50_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_2_cast_fu_54_p1.read()) + sc_biguint<9>(tmp_cast_fu_50_p1.read()));
}

void rgb_to_bw::thread_tmp_2_cast_fu_54_p1() {
    tmp_2_cast_fu_54_p1 = esl_zext<9,8>(red.read());
}

void rgb_to_bw::thread_tmp_cast_fu_50_p1() {
    tmp_cast_fu_50_p1 = esl_zext<9,8>(blue.read());
}

void rgb_to_bw::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

void rgb_to_bw::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"s_axi_AXILiteS_AWVALID\" :  \"" << s_axi_AXILiteS_AWVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"s_axi_AXILiteS_AWREADY\" :  \"" << s_axi_AXILiteS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_AWADDR\" :  \"" << s_axi_AXILiteS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WVALID\" :  \"" << s_axi_AXILiteS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_WREADY\" :  \"" << s_axi_AXILiteS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WDATA\" :  \"" << s_axi_AXILiteS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WSTRB\" :  \"" << s_axi_AXILiteS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARVALID\" :  \"" << s_axi_AXILiteS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_ARREADY\" :  \"" << s_axi_AXILiteS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARADDR\" :  \"" << s_axi_AXILiteS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RVALID\" :  \"" << s_axi_AXILiteS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_RREADY\" :  \"" << s_axi_AXILiteS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RDATA\" :  \"" << s_axi_AXILiteS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RRESP\" :  \"" << s_axi_AXILiteS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BVALID\" :  \"" << s_axi_AXILiteS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_BREADY\" :  \"" << s_axi_AXILiteS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BRESP\" :  \"" << s_axi_AXILiteS_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

