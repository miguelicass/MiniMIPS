#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun May 31 13:33:04 CEST 2020
# SW Build 2729669 on Thu Dec  5 04:48:12 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim Manager_tb_behav -key {Behavioral:sim_1:Functional:Manager_tb} -tclbatch Manager_tb.tcl -log simulate.log"
xsim Manager_tb_behav -key {Behavioral:sim_1:Functional:Manager_tb} -tclbatch Manager_tb.tcl -log simulate.log

