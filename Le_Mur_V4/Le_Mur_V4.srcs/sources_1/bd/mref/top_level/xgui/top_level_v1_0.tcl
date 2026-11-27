# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BLUE_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COUNT_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DARK_THRESH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEBUG_JOUEUR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GREEN_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_COLLISION_PIXELS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MIN_PLAYER_PIXELS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RED_MIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCREEN_HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCREEN_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WALL_ONE_IS_OPENING" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wall_height" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wall_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.BLUE_MAX { PARAM_VALUE.BLUE_MAX } {
	# Procedure called to update BLUE_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BLUE_MAX { PARAM_VALUE.BLUE_MAX } {
	# Procedure called to validate BLUE_MAX
	return true
}

proc update_PARAM_VALUE.COUNT_BITS { PARAM_VALUE.COUNT_BITS } {
	# Procedure called to update COUNT_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNT_BITS { PARAM_VALUE.COUNT_BITS } {
	# Procedure called to validate COUNT_BITS
	return true
}

proc update_PARAM_VALUE.DARK_THRESH { PARAM_VALUE.DARK_THRESH } {
	# Procedure called to update DARK_THRESH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DARK_THRESH { PARAM_VALUE.DARK_THRESH } {
	# Procedure called to validate DARK_THRESH
	return true
}

proc update_PARAM_VALUE.DEBUG_JOUEUR { PARAM_VALUE.DEBUG_JOUEUR } {
	# Procedure called to update DEBUG_JOUEUR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG_JOUEUR { PARAM_VALUE.DEBUG_JOUEUR } {
	# Procedure called to validate DEBUG_JOUEUR
	return true
}

proc update_PARAM_VALUE.GREEN_MAX { PARAM_VALUE.GREEN_MAX } {
	# Procedure called to update GREEN_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GREEN_MAX { PARAM_VALUE.GREEN_MAX } {
	# Procedure called to validate GREEN_MAX
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

proc update_PARAM_VALUE.RED_MIN { PARAM_VALUE.RED_MIN } {
	# Procedure called to update RED_MIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RED_MIN { PARAM_VALUE.RED_MIN } {
	# Procedure called to validate RED_MIN
	return true
}

proc update_PARAM_VALUE.SCREEN_HEIGHT { PARAM_VALUE.SCREEN_HEIGHT } {
	# Procedure called to update SCREEN_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCREEN_HEIGHT { PARAM_VALUE.SCREEN_HEIGHT } {
	# Procedure called to validate SCREEN_HEIGHT
	return true
}

proc update_PARAM_VALUE.SCREEN_WIDTH { PARAM_VALUE.SCREEN_WIDTH } {
	# Procedure called to update SCREEN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCREEN_WIDTH { PARAM_VALUE.SCREEN_WIDTH } {
	# Procedure called to validate SCREEN_WIDTH
	return true
}

proc update_PARAM_VALUE.WALL_ONE_IS_OPENING { PARAM_VALUE.WALL_ONE_IS_OPENING } {
	# Procedure called to update WALL_ONE_IS_OPENING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WALL_ONE_IS_OPENING { PARAM_VALUE.WALL_ONE_IS_OPENING } {
	# Procedure called to validate WALL_ONE_IS_OPENING
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


proc update_MODELPARAM_VALUE.SCREEN_WIDTH { MODELPARAM_VALUE.SCREEN_WIDTH PARAM_VALUE.SCREEN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCREEN_WIDTH}] ${MODELPARAM_VALUE.SCREEN_WIDTH}
}

proc update_MODELPARAM_VALUE.SCREEN_HEIGHT { MODELPARAM_VALUE.SCREEN_HEIGHT PARAM_VALUE.SCREEN_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCREEN_HEIGHT}] ${MODELPARAM_VALUE.SCREEN_HEIGHT}
}

proc update_MODELPARAM_VALUE.wall_height { MODELPARAM_VALUE.wall_height PARAM_VALUE.wall_height } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wall_height}] ${MODELPARAM_VALUE.wall_height}
}

proc update_MODELPARAM_VALUE.wall_width { MODELPARAM_VALUE.wall_width PARAM_VALUE.wall_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wall_width}] ${MODELPARAM_VALUE.wall_width}
}

proc update_MODELPARAM_VALUE.WALL_ONE_IS_OPENING { MODELPARAM_VALUE.WALL_ONE_IS_OPENING PARAM_VALUE.WALL_ONE_IS_OPENING } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WALL_ONE_IS_OPENING}] ${MODELPARAM_VALUE.WALL_ONE_IS_OPENING}
}

proc update_MODELPARAM_VALUE.DEBUG_JOUEUR { MODELPARAM_VALUE.DEBUG_JOUEUR PARAM_VALUE.DEBUG_JOUEUR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEBUG_JOUEUR}] ${MODELPARAM_VALUE.DEBUG_JOUEUR}
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

proc update_MODELPARAM_VALUE.DARK_THRESH { MODELPARAM_VALUE.DARK_THRESH PARAM_VALUE.DARK_THRESH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DARK_THRESH}] ${MODELPARAM_VALUE.DARK_THRESH}
}

proc update_MODELPARAM_VALUE.RED_MIN { MODELPARAM_VALUE.RED_MIN PARAM_VALUE.RED_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RED_MIN}] ${MODELPARAM_VALUE.RED_MIN}
}

proc update_MODELPARAM_VALUE.GREEN_MAX { MODELPARAM_VALUE.GREEN_MAX PARAM_VALUE.GREEN_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GREEN_MAX}] ${MODELPARAM_VALUE.GREEN_MAX}
}

proc update_MODELPARAM_VALUE.BLUE_MAX { MODELPARAM_VALUE.BLUE_MAX PARAM_VALUE.BLUE_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BLUE_MAX}] ${MODELPARAM_VALUE.BLUE_MAX}
}

