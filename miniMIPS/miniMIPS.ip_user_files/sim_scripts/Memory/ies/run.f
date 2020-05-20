-makelib ies_lib/xpm -sv \
  "/home/miguelan/Escritorio/VivadoWS/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/miguelan/Escritorio/VivadoWS/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../miniMIPS.srcs/sources_1/ip/Memory/sim/Memory.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

