# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "GET00" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GET05" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GET10" -parent ${Page_0}


}

proc update_PARAM_VALUE.GET00 { PARAM_VALUE.GET00 } {
	# Procedure called to update GET00 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GET00 { PARAM_VALUE.GET00 } {
	# Procedure called to validate GET00
	return true
}

proc update_PARAM_VALUE.GET05 { PARAM_VALUE.GET05 } {
	# Procedure called to update GET05 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GET05 { PARAM_VALUE.GET05 } {
	# Procedure called to validate GET05
	return true
}

proc update_PARAM_VALUE.GET10 { PARAM_VALUE.GET10 } {
	# Procedure called to update GET10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GET10 { PARAM_VALUE.GET10 } {
	# Procedure called to validate GET10
	return true
}


proc update_MODELPARAM_VALUE.GET00 { MODELPARAM_VALUE.GET00 PARAM_VALUE.GET00 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GET00}] ${MODELPARAM_VALUE.GET00}
}

proc update_MODELPARAM_VALUE.GET05 { MODELPARAM_VALUE.GET05 PARAM_VALUE.GET05 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GET05}] ${MODELPARAM_VALUE.GET05}
}

proc update_MODELPARAM_VALUE.GET10 { MODELPARAM_VALUE.GET10 PARAM_VALUE.GET10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GET10}] ${MODELPARAM_VALUE.GET10}
}

