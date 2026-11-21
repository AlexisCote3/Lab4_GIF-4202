# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "screen_height" -parent ${Page_0}
  ipgui::add_param $IPINST -name "screen_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wall_height" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wall_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.screen_height { PARAM_VALUE.screen_height } {
	# Procedure called to update screen_height when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.screen_height { PARAM_VALUE.screen_height } {
	# Procedure called to validate screen_height
	return true
}

proc update_PARAM_VALUE.screen_width { PARAM_VALUE.screen_width } {
	# Procedure called to update screen_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.screen_width { PARAM_VALUE.screen_width } {
	# Procedure called to validate screen_width
	return true
}

proc update_PARAM_VALUE.wall_height { PARAM_VALUE.wall_height } {
	# Procedure called to update wall_height when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wall_height { PARAM_VALUE.wall_height } {
	# Procedure called to validate wall_height
	return true
}

proc update_PARAM_VALUE.wall_width { PARAM_VALUE.wall_width } {
	# Procedure called to update wall_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wall_width { PARAM_VALUE.wall_width } {
	# Procedure called to validate wall_width
	return true
}


proc update_MODELPARAM_VALUE.wall_height { MODELPARAM_VALUE.wall_height PARAM_VALUE.wall_height } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wall_height}] ${MODELPARAM_VALUE.wall_height}
}

proc update_MODELPARAM_VALUE.wall_width { MODELPARAM_VALUE.wall_width PARAM_VALUE.wall_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wall_width}] ${MODELPARAM_VALUE.wall_width}
}

proc update_MODELPARAM_VALUE.screen_height { MODELPARAM_VALUE.screen_height PARAM_VALUE.screen_height } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.screen_height}] ${MODELPARAM_VALUE.screen_height}
}

proc update_MODELPARAM_VALUE.screen_width { MODELPARAM_VALUE.screen_width PARAM_VALUE.screen_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.screen_width}] ${MODELPARAM_VALUE.screen_width}
}

