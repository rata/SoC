// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _rgb_to_bw_HH_
#define _rgb_to_bw_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1.h"
#include "rgb_to_bw_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct rgb_to_bw : public sc_module {
    // Port declarations 20
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > interrupt;


    // Module declarations
    rgb_to_bw(sc_module_name name);
    SC_HAS_PROCESS(rgb_to_bw);

    ~rgb_to_bw();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    rgb_to_bw_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* rgb_to_bw_AXILiteS_s_axi_U;
    rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1<1,1,9,8,12,22>* rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_U1;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_44;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<8> > red;
    sc_signal< sc_lv<8> > green;
    sc_signal< sc_lv<8> > blue;
    sc_signal< sc_lv<8> > ap_return;
    sc_signal< sc_logic > rgb_to_bw_AXILiteS_s_axi_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > green_read_reg_87;
    sc_signal< sc_lv<9> > tmp1_fu_58_p2;
    sc_signal< sc_lv<9> > tmp1_reg_92;
    sc_signal< sc_lv<22> > grp_fu_79_p3;
    sc_signal< sc_lv<22> > mul_reg_97;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_82;
    sc_signal< sc_lv<9> > tmp_2_cast_fu_54_p1;
    sc_signal< sc_lv<9> > tmp_cast_fu_50_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_104;
    sc_signal< sc_lv<9> > grp_fu_79_p0;
    sc_signal< sc_lv<8> > grp_fu_79_p1;
    sc_signal< sc_lv<12> > grp_fu_79_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_lv<10> > grp_fu_79_p00;
    sc_signal< sc_lv<10> > grp_fu_79_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_st2_fsm_1;
    static const sc_lv<3> ap_ST_st3_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<22> ap_const_lv22_556;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_bdd_104();
    void thread_ap_sig_bdd_44();
    void thread_ap_sig_bdd_82();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_grp_fu_79_p0();
    void thread_grp_fu_79_p00();
    void thread_grp_fu_79_p1();
    void thread_grp_fu_79_p10();
    void thread_grp_fu_79_p2();
    void thread_rgb_to_bw_AXILiteS_s_axi_U_ap_dummy_ce();
    void thread_tmp1_fu_58_p2();
    void thread_tmp_2_cast_fu_54_p1();
    void thread_tmp_cast_fu_50_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
