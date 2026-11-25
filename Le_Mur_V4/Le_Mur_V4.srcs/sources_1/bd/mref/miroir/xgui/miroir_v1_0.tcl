# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LINE_TOTAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LINE_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.LINE_TOTAL { PARAM_VALUE.LINE_TOTAL } {
	# Procedure called to update LINE_TOTAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINE_TOTAL { PARAM_VALUE.LINE_TOTAL } {
	# Procedure called to validate LINE_TOTAL
	return true
}

proc update_PARAM_VALUE.LINE_WIDTH { PARAM_VALUE.LINE_WIDTH } {
	# Procedure called to update LINE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINE_WIDTH { PARAM_VALUE.LINE_WIDTH } {
	# Procedure called to validate LINE_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.LINE_WIDTH { MODELPARAM_VALUE.LINE_WIDTH PARAM_VALUE.LINE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINE_WIDTH}] ${MODELPARAM_VALUE.LINE_WIDTH}
}

proc update_MODELPARAM_VALUE.LINE_TOTAL { MODELPARAM_VALUE.LINE_TOTAL PARAM_VALUE.LINE_TOTAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINE_TOTAL}] ${MODELPARAM_VALUE.LINE_TOTAL}
}

