vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ipshared/08da/Control.srcs/sources_1/new/Control.v" \
"../../../bd/design_1/ip/design_1_Control_0_0/sim/design_1_Control_0_0.v" \
"../../../bd/design_1/ipshared/9ede/Dataselector2.srcs/sources_1/new/Dataselector2.v" \
"../../../bd/design_1/ip/design_1_Dataselector2_0_0/sim/design_1_Dataselector2_0_0.v" \
"../../../bd/design_1/ipshared/dfe9/Data_selector4.srcs/sources_1/new/Data_selector4.v" \
"../../../bd/design_1/ip/design_1_Data_selector4_0_0/sim/design_1_Data_selector4_0_0.v" \
"../../../bd/design_1/ipshared/8a30/Data_selector8.srcs/sources_1/new/Data_selector8.v" \
"../../../bd/design_1/ip/design_1_Data_selector8_0_0/sim/design_1_Data_selector8_0_0.v" \
"../../../bd/design_1/ip/design_1_Data_selector8_0_1/sim/design_1_Data_selector8_0_1.v" \
"../../../bd/design_1/ip/design_1_Data_selector8_1_0/sim/design_1_Data_selector8_1_0.v" \
"../../../bd/design_1/ip/design_1_Data_selector8_3_0/sim/design_1_Data_selector8_3_0.v" \
"../../../bd/design_1/ipshared/df37/Data_selector16.srcs/sources_1/new/Data_selector16.v" \
"../../../bd/design_1/ip/design_1_Data_selector16_0_0/sim/design_1_Data_selector16_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

