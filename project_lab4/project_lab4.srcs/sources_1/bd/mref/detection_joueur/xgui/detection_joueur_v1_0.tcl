# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DARK_THRESH" -parent ${Page_0}


}

proc update_PARAM_VALUE.DARK_THRESH { PARAM_VALUE.DARK_THRESH } {
	# Procedure called to update DARK_THRESH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DARK_THRESH { PARAM_VALUE.DARK_THRESH } {
	# Procedure called to validate DARK_THRESH
	return true
}


proc update_MODELPARAM_VALUE.DARK_THRESH { MODELPARAM_VALUE.DARK_THRESH PARAM_VALUE.DARK_THRESH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DARK_THRESH}] ${MODELPARAM_VALUE.DARK_THRESH}
}

