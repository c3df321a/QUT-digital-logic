vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ipshared/a617/dffe.srcs/sources_1/new/dffe.v" \
"../../../bd/design_1/ip/design_1_dffe_0_0/sim/design_1_dffe_0_0.v" \
"../../../bd/design_1/ip/design_1_dffe_0_1/sim/design_1_dffe_0_1.v" \
"../../../bd/design_1/ip/design_1_dffe_0_2/sim/design_1_dffe_0_2.v" \
"../../../bd/design_1/ip/design_1_dffe_0_3/sim/design_1_dffe_0_3.v" \
"../../../bd/design_1/ip/design_1_dffe_0_4/sim/design_1_dffe_0_4.v" \
"../../../bd/design_1/ip/design_1_dffe_0_5/sim/design_1_dffe_0_5.v" \
"../../../bd/design_1/ip/design_1_dffe_0_6/sim/design_1_dffe_0_6.v" \
"../../../bd/design_1/ip/design_1_dffe_0_7/sim/design_1_dffe_0_7.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

