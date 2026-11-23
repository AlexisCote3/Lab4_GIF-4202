# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COUNT_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_COLLISION_PIXELS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MIN_PLAYER_PIXELS" -parent ${Page_0}


}

proc update_PARAM_VALUE.COUNT_BITS { PARAM_VALUE.COUNT_BITS } {
	# Procedure called to update COUNT_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNT_BITS { PARAM_VALUE.COUNT_BITS } {
	# Procedure called to validate COUNT_BITS
	return true
}

proc update_PARAM_VALUE.MAX_COLLISION_PIXELS { PARAM_VALUE.MAX_COLLISION_PIXELS } {
	# Procedure called to update MAX_COLLISION_PIXELS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_COLLISION_PIXELS { PARAM_VALUE.MAX_COLLISION_PIXELS } {
	# Procedure called to validate MAX_COLLISION_PIXELS
	return true
}

proc update_PARAM_VALUE.MIN_PLAYER_PIXELS { PARAM_VALUE.MIN_PLAYER_PIXELS } {
	# Procedure called to update MIN_PLAYER_PIXELS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MIN_PLAYER_PIXELS { PARAM_VALUE.MIN_PLAYER_PIXELS } {
	# Procedure called to validate MIN_PLAYER_PIXELS
	return true
}


proc update_MODELPARAM_VALUE.MIN_PLAYER_PIXELS { MODELPARAM_VALUE.MIN_PLAYER_PIXELS PARAM_VALUE.MIN_PLAYER_PIXELS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MIN_PLAYER_PIXELS}] ${MODELPARAM_VALUE.MIN_PLAYER_PIXELS}
}

proc update_MODELPARAM_VALUE.MAX_COLLISION_PIXELS { MODELPARAM_VALUE.MAX_COLLISION_PIXELS PARAM_VALUE.MAX_COLLISION_PIXELS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_COLLISION_PIXELS}] ${MODELPARAM_VALUE.MAX_COLLISION_PIXELS}
}

proc update_MODELPARAM_VALUE.COUNT_BITS { MODELPARAM_VALUE.COUNT_BITS PARAM_VALUE.COUNT_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNT_BITS}] ${MODELPARAM_VALUE.COUNT_BITS}
}

