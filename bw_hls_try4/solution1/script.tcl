############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project bw_hls_try4
set_top rgb_to_bw
add_files labo6_files/rgb_to_bw.cpp
add_files -tb labo6_files/rgb_test.cpp -cflags "-DHW_COSIM"
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 8 -name default
source "./bw_hls_try4/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -evaluate verilog -format ip_catalog
