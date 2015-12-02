############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project labo6_try2
set_top mul
add_files labo6_files/mul.cpp
add_files -tb labo6_files/mul_test.cpp -cflags "-DHW_COSIM"
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 8 -name default
source "./labo6_try2/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -evaluate verilog -format ip_catalog
