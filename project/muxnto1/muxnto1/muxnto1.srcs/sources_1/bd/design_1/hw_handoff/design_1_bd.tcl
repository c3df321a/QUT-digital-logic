
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tfgg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set D10_16_0 [ create_bd_port -dir I -from 3 -to 0 D10_16_0 ]
  set D11_16_0 [ create_bd_port -dir I -from 3 -to 0 D11_16_0 ]
  set D12_16_0 [ create_bd_port -dir I -from 3 -to 0 D12_16_0 ]
  set D13_16_0 [ create_bd_port -dir I -from 3 -to 0 D13_16_0 ]
  set D14_16_0 [ create_bd_port -dir I -from 3 -to 0 D14_16_0 ]
  set D15_16_0 [ create_bd_port -dir I -from 3 -to 0 D15_16_0 ]
  set D16_16_0 [ create_bd_port -dir I -from 3 -to 0 D16_16_0 ]
  set D1_16_0 [ create_bd_port -dir I -from 3 -to 0 D1_16_0 ]
  set D1_2_0 [ create_bd_port -dir I -from 3 -to 0 D1_2_0 ]
  set D1_4_0 [ create_bd_port -dir I -from 3 -to 0 D1_4_0 ]
  set D1_8_0 [ create_bd_port -dir I -from 0 -to 0 D1_8_0 ]
  set D1_8_1 [ create_bd_port -dir I -from 3 -to 0 D1_8_1 ]
  set D1_8_2 [ create_bd_port -dir I -from 15 -to 0 D1_8_2 ]
  set D1_8_3 [ create_bd_port -dir I -from 31 -to 0 D1_8_3 ]
  set D2_16_0 [ create_bd_port -dir I -from 3 -to 0 D2_16_0 ]
  set D2_2_0 [ create_bd_port -dir I -from 3 -to 0 D2_2_0 ]
  set D2_4_0 [ create_bd_port -dir I -from 3 -to 0 D2_4_0 ]
  set D2_8_0 [ create_bd_port -dir I -from 0 -to 0 D2_8_0 ]
  set D2_8_1 [ create_bd_port -dir I -from 3 -to 0 D2_8_1 ]
  set D2_8_2 [ create_bd_port -dir I -from 15 -to 0 D2_8_2 ]
  set D2_8_3 [ create_bd_port -dir I -from 31 -to 0 D2_8_3 ]
  set D3_16_0 [ create_bd_port -dir I -from 3 -to 0 D3_16_0 ]
  set D3_4_0 [ create_bd_port -dir I -from 3 -to 0 D3_4_0 ]
  set D3_8_0 [ create_bd_port -dir I -from 0 -to 0 D3_8_0 ]
  set D3_8_1 [ create_bd_port -dir I -from 3 -to 0 D3_8_1 ]
  set D3_8_2 [ create_bd_port -dir I -from 15 -to 0 D3_8_2 ]
  set D3_8_3 [ create_bd_port -dir I -from 31 -to 0 D3_8_3 ]
  set D4_16_0 [ create_bd_port -dir I -from 3 -to 0 D4_16_0 ]
  set D4_4_0 [ create_bd_port -dir I -from 3 -to 0 D4_4_0 ]
  set D4_8_0 [ create_bd_port -dir I -from 0 -to 0 D4_8_0 ]
  set D4_8_1 [ create_bd_port -dir I -from 3 -to 0 D4_8_1 ]
  set D4_8_2 [ create_bd_port -dir I -from 15 -to 0 D4_8_2 ]
  set D4_8_3 [ create_bd_port -dir I -from 31 -to 0 D4_8_3 ]
  set D5_16_0 [ create_bd_port -dir I -from 3 -to 0 D5_16_0 ]
  set D5_8_0 [ create_bd_port -dir I -from 0 -to 0 D5_8_0 ]
  set D5_8_1 [ create_bd_port -dir I -from 3 -to 0 D5_8_1 ]
  set D5_8_2 [ create_bd_port -dir I -from 15 -to 0 D5_8_2 ]
  set D5_8_3 [ create_bd_port -dir I -from 31 -to 0 D5_8_3 ]
  set D6_16_0 [ create_bd_port -dir I -from 3 -to 0 D6_16_0 ]
  set D6_8_0 [ create_bd_port -dir I -from 0 -to 0 D6_8_0 ]
  set D6_8_1 [ create_bd_port -dir I -from 3 -to 0 D6_8_1 ]
  set D6_8_2 [ create_bd_port -dir I -from 15 -to 0 D6_8_2 ]
  set D6_8_3 [ create_bd_port -dir I -from 31 -to 0 D6_8_3 ]
  set D7_16_0 [ create_bd_port -dir I -from 3 -to 0 D7_16_0 ]
  set D7_8_0 [ create_bd_port -dir I -from 0 -to 0 D7_8_0 ]
  set D7_8_1 [ create_bd_port -dir I -from 3 -to 0 D7_8_1 ]
  set D7_8_2 [ create_bd_port -dir I -from 15 -to 0 D7_8_2 ]
  set D7_8_3 [ create_bd_port -dir I -from 31 -to 0 D7_8_3 ]
  set D8_16_0 [ create_bd_port -dir I -from 3 -to 0 D8_16_0 ]
  set D8_8_0 [ create_bd_port -dir I -from 0 -to 0 D8_8_0 ]
  set D8_8_1 [ create_bd_port -dir I -from 3 -to 0 D8_8_1 ]
  set D8_8_2 [ create_bd_port -dir I -from 15 -to 0 D8_8_2 ]
  set D8_8_3 [ create_bd_port -dir I -from 31 -to 0 D8_8_3 ]
  set D9_16_0 [ create_bd_port -dir I -from 3 -to 0 D9_16_0 ]
  set P1_0 [ create_bd_port -dir I P1_0 ]
  set P1_16_0 [ create_bd_port -dir I P1_16_0 ]
  set P1_2_0 [ create_bd_port -dir I P1_2_0 ]
  set P1_4_0 [ create_bd_port -dir I P1_4_0 ]
  set P1_8_0 [ create_bd_port -dir I P1_8_0 ]
  set P1_8_1 [ create_bd_port -dir I P1_8_1 ]
  set P1_8_2 [ create_bd_port -dir I P1_8_2 ]
  set P1_8_3 [ create_bd_port -dir I P1_8_3 ]
  set P2_0 [ create_bd_port -dir I P2_0 ]
  set P2_16_0 [ create_bd_port -dir I P2_16_0 ]
  set P2_4_0 [ create_bd_port -dir I P2_4_0 ]
  set P2_8_0 [ create_bd_port -dir I P2_8_0 ]
  set P2_8_1 [ create_bd_port -dir I P2_8_1 ]
  set P2_8_2 [ create_bd_port -dir I P2_8_2 ]
  set P2_8_3 [ create_bd_port -dir I P2_8_3 ]
  set P3_0 [ create_bd_port -dir I P3_0 ]
  set P3_16_0 [ create_bd_port -dir I P3_16_0 ]
  set P3_8_0 [ create_bd_port -dir I P3_8_0 ]
  set P3_8_1 [ create_bd_port -dir I P3_8_1 ]
  set P3_8_2 [ create_bd_port -dir I P3_8_2 ]
  set P3_8_3 [ create_bd_port -dir I P3_8_3 ]
  set P4_16_0 [ create_bd_port -dir I P4_16_0 ]
  set out1_2_0 [ create_bd_port -dir O -from 3 -to 0 out1_2_0 ]
  set out2_4_0 [ create_bd_port -dir O -from 3 -to 0 out2_4_0 ]
  set out3_8_0 [ create_bd_port -dir O -from 0 -to 0 out3_8_0 ]
  set out3_8_1 [ create_bd_port -dir O -from 3 -to 0 out3_8_1 ]
  set out3_8_2 [ create_bd_port -dir O -from 15 -to 0 out3_8_2 ]
  set out3_8_3 [ create_bd_port -dir O -from 31 -to 0 out3_8_3 ]
  set out4_16_0 [ create_bd_port -dir O -from 3 -to 0 out4_16_0 ]

  # Create instance: Control_0, and set properties
  set Control_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Control:1.0 Control_0 ]

  # Create instance: Data_selector16_0, and set properties
  set Data_selector16_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Data_selector16:1.0 Data_selector16_0 ]

  # Create instance: Data_selector4_0, and set properties
  set Data_selector4_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Data_selector4:1.0 Data_selector4_0 ]

  # Create instance: Data_selector8_0, and set properties
  set Data_selector8_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Data_selector8:1.0 Data_selector8_0 ]
  set_property -dict [ list \
   CONFIG.WIDTH {1} \
 ] $Data_selector8_0

  # Create instance: Data_selector8_1, and set properties
  set Data_selector8_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:Data_selector8:1.0 Data_selector8_1 ]

  # Create instance: Data_selector8_2, and set properties
  set Data_selector8_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:Data_selector8:1.0 Data_selector8_2 ]
  set_property -dict [ list \
   CONFIG.WIDTH {16} \
 ] $Data_selector8_2

  # Create instance: Data_selector8_3, and set properties
  set Data_selector8_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:Data_selector8:1.0 Data_selector8_3 ]
  set_property -dict [ list \
   CONFIG.WIDTH {32} \
 ] $Data_selector8_3

  # Create instance: Dataselector2_0, and set properties
  set Dataselector2_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Dataselector2:1.0 Dataselector2_0 ]

  # Create port connections
  connect_bd_net -net Control_0_out2 [get_bd_pins Control_0/out2] [get_bd_pins Dataselector2_0/S_2]
  connect_bd_net -net Control_0_out4 [get_bd_pins Control_0/out4] [get_bd_pins Data_selector4_0/S_4]
  connect_bd_net -net Control_0_out8 [get_bd_pins Control_0/out8] [get_bd_pins Data_selector8_0/S_8]
  connect_bd_net -net Control_0_out16 [get_bd_pins Control_0/out16] [get_bd_pins Data_selector16_0/S_16]
  connect_bd_net -net Control_0_out8_4 [get_bd_pins Control_0/out8_4] [get_bd_pins Data_selector8_1/S_8]
  connect_bd_net -net Control_0_out8_16 [get_bd_pins Control_0/out8_16] [get_bd_pins Data_selector8_2/S_8]
  connect_bd_net -net Control_0_out8_32 [get_bd_pins Control_0/out8_32] [get_bd_pins Data_selector8_3/S_8]
  connect_bd_net -net D10_16_0_1 [get_bd_ports D10_16_0] [get_bd_pins Data_selector16_0/D10_16]
  connect_bd_net -net D11_16_0_1 [get_bd_ports D11_16_0] [get_bd_pins Data_selector16_0/D11_16]
  connect_bd_net -net D12_16_0_1 [get_bd_ports D12_16_0] [get_bd_pins Data_selector16_0/D12_16]
  connect_bd_net -net D13_16_0_1 [get_bd_ports D13_16_0] [get_bd_pins Data_selector16_0/D13_16]
  connect_bd_net -net D14_16_0_1 [get_bd_ports D14_16_0] [get_bd_pins Data_selector16_0/D14_16]
  connect_bd_net -net D15_16_0_1 [get_bd_ports D15_16_0] [get_bd_pins Data_selector16_0/D15_16]
  connect_bd_net -net D16_16_0_1 [get_bd_ports D16_16_0] [get_bd_pins Data_selector16_0/D16_16]
  connect_bd_net -net D1_16_0_1 [get_bd_ports D1_16_0] [get_bd_pins Data_selector16_0/D1_16]
  connect_bd_net -net D1_2_0_1 [get_bd_ports D1_2_0] [get_bd_pins Dataselector2_0/D1_2]
  connect_bd_net -net D1_4_0_1 [get_bd_ports D1_4_0] [get_bd_pins Data_selector4_0/D1_4]
  connect_bd_net -net D1_8_0_1 [get_bd_ports D1_8_0] [get_bd_pins Data_selector8_0/D1_8]
  connect_bd_net -net D1_8_1_1 [get_bd_ports D1_8_1] [get_bd_pins Data_selector8_1/D1_8]
  connect_bd_net -net D1_8_2_1 [get_bd_ports D1_8_2] [get_bd_pins Data_selector8_2/D1_8]
  connect_bd_net -net D1_8_3_1 [get_bd_ports D1_8_3] [get_bd_pins Data_selector8_3/D1_8]
  connect_bd_net -net D2_16_0_1 [get_bd_ports D2_16_0] [get_bd_pins Data_selector16_0/D2_16]
  connect_bd_net -net D2_2_0_1 [get_bd_ports D2_2_0] [get_bd_pins Dataselector2_0/D2_2]
  connect_bd_net -net D2_4_0_1 [get_bd_ports D2_4_0] [get_bd_pins Data_selector4_0/D2_4]
  connect_bd_net -net D2_8_0_1 [get_bd_ports D2_8_0] [get_bd_pins Data_selector8_0/D2_8]
  connect_bd_net -net D2_8_1_1 [get_bd_ports D2_8_1] [get_bd_pins Data_selector8_1/D2_8]
  connect_bd_net -net D2_8_2_1 [get_bd_ports D2_8_2] [get_bd_pins Data_selector8_2/D2_8]
  connect_bd_net -net D2_8_3_1 [get_bd_ports D2_8_3] [get_bd_pins Data_selector8_3/D2_8]
  connect_bd_net -net D3_16_0_1 [get_bd_ports D3_16_0] [get_bd_pins Data_selector16_0/D3_16]
  connect_bd_net -net D3_4_0_1 [get_bd_ports D3_4_0] [get_bd_pins Data_selector4_0/D3_4]
  connect_bd_net -net D3_8_0_1 [get_bd_ports D3_8_0] [get_bd_pins Data_selector8_0/D3_8]
  connect_bd_net -net D3_8_1_1 [get_bd_ports D3_8_1] [get_bd_pins Data_selector8_1/D3_8]
  connect_bd_net -net D3_8_2_1 [get_bd_ports D3_8_2] [get_bd_pins Data_selector8_2/D3_8]
  connect_bd_net -net D3_8_3_1 [get_bd_ports D3_8_3] [get_bd_pins Data_selector8_3/D3_8]
  connect_bd_net -net D4_16_0_1 [get_bd_ports D4_16_0] [get_bd_pins Data_selector16_0/D4_16]
  connect_bd_net -net D4_4_0_1 [get_bd_ports D4_4_0] [get_bd_pins Data_selector4_0/D4_4]
  connect_bd_net -net D4_8_0_1 [get_bd_ports D4_8_0] [get_bd_pins Data_selector8_0/D4_8]
  connect_bd_net -net D4_8_1_1 [get_bd_ports D4_8_1] [get_bd_pins Data_selector8_1/D4_8]
  connect_bd_net -net D4_8_2_1 [get_bd_ports D4_8_2] [get_bd_pins Data_selector8_2/D4_8]
  connect_bd_net -net D4_8_3_1 [get_bd_ports D4_8_3] [get_bd_pins Data_selector8_3/D4_8]
  connect_bd_net -net D5_16_0_1 [get_bd_ports D5_16_0] [get_bd_pins Data_selector16_0/D5_16]
  connect_bd_net -net D5_8_0_1 [get_bd_ports D5_8_0] [get_bd_pins Data_selector8_0/D5_8]
  connect_bd_net -net D5_8_1_1 [get_bd_ports D5_8_1] [get_bd_pins Data_selector8_1/D5_8]
  connect_bd_net -net D5_8_2_1 [get_bd_ports D5_8_2] [get_bd_pins Data_selector8_2/D5_8]
  connect_bd_net -net D5_8_3_1 [get_bd_ports D5_8_3] [get_bd_pins Data_selector8_3/D5_8]
  connect_bd_net -net D6_16_0_1 [get_bd_ports D6_16_0] [get_bd_pins Data_selector16_0/D6_16]
  connect_bd_net -net D6_8_0_1 [get_bd_ports D6_8_0] [get_bd_pins Data_selector8_0/D6_8]
  connect_bd_net -net D6_8_1_1 [get_bd_ports D6_8_1] [get_bd_pins Data_selector8_1/D6_8]
  connect_bd_net -net D6_8_2_1 [get_bd_ports D6_8_2] [get_bd_pins Data_selector8_2/D6_8]
  connect_bd_net -net D6_8_3_1 [get_bd_ports D6_8_3] [get_bd_pins Data_selector8_3/D6_8]
  connect_bd_net -net D7_16_0_1 [get_bd_ports D7_16_0] [get_bd_pins Data_selector16_0/D7_16]
  connect_bd_net -net D7_8_0_1 [get_bd_ports D7_8_0] [get_bd_pins Data_selector8_0/D7_8]
  connect_bd_net -net D7_8_1_1 [get_bd_ports D7_8_1] [get_bd_pins Data_selector8_1/D7_8]
  connect_bd_net -net D7_8_2_1 [get_bd_ports D7_8_2] [get_bd_pins Data_selector8_2/D7_8]
  connect_bd_net -net D7_8_3_1 [get_bd_ports D7_8_3] [get_bd_pins Data_selector8_3/D7_8]
  connect_bd_net -net D8_16_0_1 [get_bd_ports D8_16_0] [get_bd_pins Data_selector16_0/D8_16]
  connect_bd_net -net D8_8_0_1 [get_bd_ports D8_8_0] [get_bd_pins Data_selector8_0/D8_8]
  connect_bd_net -net D8_8_1_1 [get_bd_ports D8_8_1] [get_bd_pins Data_selector8_1/D8_8]
  connect_bd_net -net D8_8_2_1 [get_bd_ports D8_8_2] [get_bd_pins Data_selector8_2/D8_8]
  connect_bd_net -net D8_8_3_1 [get_bd_ports D8_8_3] [get_bd_pins Data_selector8_3/D8_8]
  connect_bd_net -net D9_16_0_1 [get_bd_ports D9_16_0] [get_bd_pins Data_selector16_0/D9_16]
  connect_bd_net -net Data_selector16_0_out4_16 [get_bd_ports out4_16_0] [get_bd_pins Data_selector16_0/out4_16]
  connect_bd_net -net Data_selector4_0_out2_4 [get_bd_ports out2_4_0] [get_bd_pins Data_selector4_0/out2_4]
  connect_bd_net -net Data_selector8_0_out3_8 [get_bd_ports out3_8_0] [get_bd_pins Data_selector8_0/out3_8]
  connect_bd_net -net Data_selector8_1_out3_8 [get_bd_ports out3_8_1] [get_bd_pins Data_selector8_1/out3_8]
  connect_bd_net -net Data_selector8_2_out3_8 [get_bd_ports out3_8_2] [get_bd_pins Data_selector8_2/out3_8]
  connect_bd_net -net Data_selector8_3_out3_8 [get_bd_ports out3_8_3] [get_bd_pins Data_selector8_3/out3_8]
  connect_bd_net -net Dataselector2_0_out1_2 [get_bd_ports out1_2_0] [get_bd_pins Dataselector2_0/out1_2]
  connect_bd_net -net P1_0_1 [get_bd_ports P1_0] [get_bd_pins Control_0/P1]
  connect_bd_net -net P1_16_0_1 [get_bd_ports P1_16_0] [get_bd_pins Data_selector16_0/P1_16]
  connect_bd_net -net P1_2_0_1 [get_bd_ports P1_2_0] [get_bd_pins Dataselector2_0/P1_2]
  connect_bd_net -net P1_4_0_1 [get_bd_ports P1_4_0] [get_bd_pins Data_selector4_0/P1_4]
  connect_bd_net -net P1_8_0_1 [get_bd_ports P1_8_0] [get_bd_pins Data_selector8_0/P1_8]
  connect_bd_net -net P1_8_1_1 [get_bd_ports P1_8_1] [get_bd_pins Data_selector8_1/P1_8]
  connect_bd_net -net P1_8_2_1 [get_bd_ports P1_8_2] [get_bd_pins Data_selector8_2/P1_8]
  connect_bd_net -net P1_8_3_1 [get_bd_ports P1_8_3] [get_bd_pins Data_selector8_3/P1_8]
  connect_bd_net -net P2_0_1 [get_bd_ports P2_0] [get_bd_pins Control_0/P2]
  connect_bd_net -net P2_16_0_1 [get_bd_ports P2_16_0] [get_bd_pins Data_selector16_0/P2_16]
  connect_bd_net -net P2_4_0_1 [get_bd_ports P2_4_0] [get_bd_pins Data_selector4_0/P2_4]
  connect_bd_net -net P2_8_0_1 [get_bd_ports P2_8_0] [get_bd_pins Data_selector8_0/P2_8]
  connect_bd_net -net P2_8_1_1 [get_bd_ports P2_8_1] [get_bd_pins Data_selector8_1/P2_8]
  connect_bd_net -net P2_8_2_1 [get_bd_ports P2_8_2] [get_bd_pins Data_selector8_2/P2_8]
  connect_bd_net -net P2_8_3_1 [get_bd_ports P2_8_3] [get_bd_pins Data_selector8_3/P2_8]
  connect_bd_net -net P3_0_1 [get_bd_ports P3_0] [get_bd_pins Control_0/P3]
  connect_bd_net -net P3_16_0_1 [get_bd_ports P3_16_0] [get_bd_pins Data_selector16_0/P3_16]
  connect_bd_net -net P3_8_0_1 [get_bd_ports P3_8_0] [get_bd_pins Data_selector8_0/P3_8]
  connect_bd_net -net P3_8_1_1 [get_bd_ports P3_8_1] [get_bd_pins Data_selector8_1/P3_8]
  connect_bd_net -net P3_8_2_1 [get_bd_ports P3_8_2] [get_bd_pins Data_selector8_2/P3_8]
  connect_bd_net -net P3_8_3_1 [get_bd_ports P3_8_3] [get_bd_pins Data_selector8_3/P3_8]
  connect_bd_net -net P4_16_0_1 [get_bd_ports P4_16_0] [get_bd_pins Data_selector16_0/P4_16]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


