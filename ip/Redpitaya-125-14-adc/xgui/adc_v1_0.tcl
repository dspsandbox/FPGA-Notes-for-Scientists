# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "Ch1_Enabled"
  ipgui::add_param $IPINST -name "Ch2_Enabled"

}

proc update_PARAM_VALUE.Ch1_Enabled { PARAM_VALUE.Ch1_Enabled } {
	# Procedure called to update Ch1_Enabled when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Ch1_Enabled { PARAM_VALUE.Ch1_Enabled } {
	# Procedure called to validate Ch1_Enabled
	return true
}

proc update_PARAM_VALUE.Ch2_Enabled { PARAM_VALUE.Ch2_Enabled } {
	# Procedure called to update Ch2_Enabled when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Ch2_Enabled { PARAM_VALUE.Ch2_Enabled } {
	# Procedure called to validate Ch2_Enabled
	return true
}


