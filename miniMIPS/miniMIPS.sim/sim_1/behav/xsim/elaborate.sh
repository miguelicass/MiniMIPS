#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sun May 31 14:04:21 CEST 2020
# SW Build 2729669 on Thu Dec  5 04:48:12 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto ca313ae86a69404cadb29348d52a655f --incr --debug typical --relax --mt 8 -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot Manager_tb_behav xil_defaultlib.Manager_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto ca313ae86a69404cadb29348d52a655f --incr --debug typical --relax --mt 8 -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot Manager_tb_behav xil_defaultlib.Manager_tb xil_defaultlib.glbl -log elaborate.log

