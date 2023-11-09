
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
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set CLR [ create_bd_port -dir I CLR ]
  set D_0 [ create_bd_port -dir I D_0 ]
  set D_1 [ create_bd_port -dir I D_1 ]
  set D_2 [ create_bd_port -dir I D_2 ]
  set D_3 [ create_bd_port -dir I D_3 ]
  set D_4 [ create_bd_port -dir I D_4 ]
  set D_5 [ create_bd_port -dir I D_5 ]
  set D_6 [ create_bd_port -dir I D_6 ]
  set D_7 [ create_bd_port -dir I D_7 ]
  set NQ_0 [ create_bd_port -dir O NQ_0 ]
  set NQ_1 [ create_bd_port -dir O NQ_1 ]
  set NQ_2 [ create_bd_port -dir O NQ_2 ]
  set NQ_3 [ create_bd_port -dir O NQ_3 ]
  set NQ_4 [ create_bd_port -dir O NQ_4 ]
  set NQ_5 [ create_bd_port -dir O NQ_5 ]
  set NQ_6 [ create_bd_port -dir O NQ_6 ]
  set NQ_7 [ create_bd_port -dir O NQ_7 ]
  set Q_0 [ create_bd_port -dir O Q_0 ]
  set Q_1 [ create_bd_port -dir O Q_1 ]
  set Q_2 [ create_bd_port -dir O Q_2 ]
  set Q_3 [ create_bd_port -dir O Q_3 ]
  set Q_4 [ create_bd_port -dir O Q_4 ]
  set Q_5 [ create_bd_port -dir O Q_5 ]
  set Q_6 [ create_bd_port -dir O Q_6 ]
  set Q_7 [ create_bd_port -dir O Q_7 ]
  set WEN [ create_bd_port -dir I WEN ]

  # Create instance: dffe_0, and set properties
  set dffe_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:dffe:1.0 dffe_0 ]

  # Create instance: dffe_1, and set properties
  set dffe_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:dffe:1.0 dffe_1 ]

  # Create instance: dffe_2, and set properties
  set dffe_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:dffe:1.0 dffe_2 ]

  # Create instance: dffe_3, and set properties
  set dffe_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:dffe:1.0 dffe_3 ]

  # Create instance: dffe_4, and set properties
  set dffe_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:dffe:1.0 dffe_4 ]

  # Create instance: dffe_5, and set properties
  set dffe_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:dffe:1.0 dffe_5 ]

  # Create instance: dffe_6, and set properties
  set dffe_6 [ create_bd_cell -type ip -vlnv xilinx.com:user:dffe:1.0 dffe_6 ]

  # Create instance: dffe_7, and set properties
  set dffe_7 [ create_bd_cell -type ip -vlnv xilinx.com:user:dffe:1.0 dffe_7 ]

  # Create port connections
  connect_bd_net -net CLK_0_1 [get_bd_ports CLK] [get_bd_pins dffe_0/CLK] [get_bd_pins dffe_1/CLK] [get_bd_pins dffe_2/CLK] [get_bd_pins dffe_3/CLK] [get_bd_pins dffe_4/CLK] [get_bd_pins dffe_5/CLK] [get_bd_pins dffe_6/CLK] [get_bd_pins dffe_7/CLK]
  connect_bd_net -net CLR_0_1 [get_bd_ports CLR] [get_bd_pins dffe_0/CLR] [get_bd_pins dffe_1/CLR] [get_bd_pins dffe_2/CLR] [get_bd_pins dffe_3/CLR] [get_bd_pins dffe_4/CLR] [get_bd_pins dffe_5/CLR] [get_bd_pins dffe_6/CLR] [get_bd_pins dffe_7/CLR]
  connect_bd_net -net D_0_1 [get_bd_ports D_0] [get_bd_pins dffe_0/D]
  connect_bd_net -net D_1_1 [get_bd_ports D_1] [get_bd_pins dffe_1/D]
  connect_bd_net -net D_2_1 [get_bd_ports D_2] [get_bd_pins dffe_2/D]
  connect_bd_net -net D_3_1 [get_bd_ports D_3] [get_bd_pins dffe_3/D]
  connect_bd_net -net D_4_1 [get_bd_ports D_4] [get_bd_pins dffe_4/D]
  connect_bd_net -net D_5_1 [get_bd_ports D_5] [get_bd_pins dffe_5/D]
  connect_bd_net -net D_6_1 [get_bd_ports D_6] [get_bd_pins dffe_6/D]
  connect_bd_net -net D_7_1 [get_bd_ports D_7] [get_bd_pins dffe_7/D]
  connect_bd_net -net WEN_0_1 [get_bd_ports WEN] [get_bd_pins dffe_0/WEN] [get_bd_pins dffe_1/WEN] [get_bd_pins dffe_2/WEN] [get_bd_pins dffe_3/WEN] [get_bd_pins dffe_4/WEN] [get_bd_pins dffe_5/WEN] [get_bd_pins dffe_6/WEN] [get_bd_pins dffe_7/WEN]
  connect_bd_net -net dffe_0_NQ [get_bd_ports NQ_0] [get_bd_pins dffe_0/NQ]
  connect_bd_net -net dffe_0_Q [get_bd_ports Q_0] [get_bd_pins dffe_0/Q]
  connect_bd_net -net dffe_1_NQ [get_bd_ports NQ_1] [get_bd_pins dffe_1/NQ]
  connect_bd_net -net dffe_1_Q [get_bd_ports Q_1] [get_bd_pins dffe_1/Q]
  connect_bd_net -net dffe_2_NQ [get_bd_ports NQ_2] [get_bd_pins dffe_2/NQ]
  connect_bd_net -net dffe_2_Q [get_bd_ports Q_2] [get_bd_pins dffe_2/Q]
  connect_bd_net -net dffe_3_NQ [get_bd_ports NQ_3] [get_bd_pins dffe_3/NQ]
  connect_bd_net -net dffe_3_Q [get_bd_ports Q_3] [get_bd_pins dffe_3/Q]
  connect_bd_net -net dffe_4_NQ [get_bd_ports NQ_4] [get_bd_pins dffe_4/NQ]
  connect_bd_net -net dffe_4_Q [get_bd_ports Q_4] [get_bd_pins dffe_4/Q]
  connect_bd_net -net dffe_5_NQ [get_bd_ports NQ_5] [get_bd_pins dffe_5/NQ]
  connect_bd_net -net dffe_5_Q [get_bd_ports Q_5] [get_bd_pins dffe_5/Q]
  connect_bd_net -net dffe_6_NQ [get_bd_ports NQ_6] [get_bd_pins dffe_6/NQ]
  connect_bd_net -net dffe_6_Q [get_bd_ports Q_6] [get_bd_pins dffe_6/Q]
  connect_bd_net -net dffe_7_NQ [get_bd_ports NQ_7] [get_bd_pins dffe_7/NQ]
  connect_bd_net -net dffe_7_Q [get_bd_ports Q_7] [get_bd_pins dffe_7/Q]

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


