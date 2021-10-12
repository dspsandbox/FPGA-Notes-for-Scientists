
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/axi_reg_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Group
  set Reg_In [ipgui::add_group $IPINST -name "Reg In"]
  ipgui::add_param $IPINST -name "reg_in_enabled" -parent ${Reg_In}
  #Adding Group
  set Reg_In_Parameters [ipgui::add_group $IPINST -name "Reg In Parameters" -parent ${Reg_In}]
  ipgui::add_param $IPINST -name "port_width_reg_in_00" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_01" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_02" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_03" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_04" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_05" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_06" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_07" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_08" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_09" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_10" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_11" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_12" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_13" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_14" -parent ${Reg_In_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_in_15" -parent ${Reg_In_Parameters}


  #Adding Group
  set Reg_Out [ipgui::add_group $IPINST -name "Reg Out"]
  ipgui::add_param $IPINST -name "reg_out_enabled" -parent ${Reg_Out}
  #Adding Group
  set Reg_Out_Parameters [ipgui::add_group $IPINST -name "Reg Out Parameters" -parent ${Reg_Out}]
  ipgui::add_param $IPINST -name "port_width_reg_out_00" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_01" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_02" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_03" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_04" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_05" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_06" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_07" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_08" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_09" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_10" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_11" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_12" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_13" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_14" -parent ${Reg_Out_Parameters}
  ipgui::add_param $IPINST -name "port_width_reg_out_15" -parent ${Reg_Out_Parameters}


  #Adding Group
  set Reg_Adressing [ipgui::add_group $IPINST -name "Reg Adressing" -display_name {Adressing} -layout horizontal]
  set_property tooltip {Adressing} ${Reg_Adressing}
  ipgui::add_static_text $IPINST -name "Reg In Addr" -parent ${Reg_Adressing} -text {Reg In 00 ---> 0x00                 
Reg In 01 ---> 0x04                     
Reg In 02 ---> 0x08                      
Reg In 03 ---> 0x0C                     
Reg In 04 ---> 0x10                     
Reg In 05 ---> 0x14                      
Reg In 06 ---> 0x18                       
Reg In 07 ---> 0x1C                     
Reg In 08 ---> 0x20                    
Reg In 09 ---> 0x24                     
Reg In 10 ---> 0x28                       
Reg In 11 ---> 0x2C                     
Reg In 12 ---> 0x30                      
Reg In 13 ---> 0x34                       
Reg In 14 ---> 0x38                       
Reg In 15 ---> 0x3C                      }
  ipgui::add_static_text $IPINST -name "Reg Out Addr" -parent ${Reg_Adressing} -text {Reg Out 00 ---> 0x40
Reg Out 01 ---> 0x44
Reg Out 02 ---> 0x48
Reg Out 03 ---> 0x4C
Reg Out 04 ---> 0x50
Reg Out 05 ---> 0x54
Reg Out 06 ---> 0x58
Reg Out 07 ---> 0x5C
Reg Out 08 ---> 0x60
Reg Out 09 ---> 0x64
Reg Out 10 ---> 0x68
Reg Out 11 ---> 0x6C
Reg Out 12 ---> 0x70
Reg Out 13 ---> 0x74
Reg Out 14 ---> 0x78
Reg Out 15 ---> 0x7C}


}

proc update_PARAM_VALUE.port_width_reg_in_00 { PARAM_VALUE.port_width_reg_in_00 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_00 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_00 ${PARAM_VALUE.port_width_reg_in_00}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_00_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_00
	} else {
		set_property enabled false $port_width_reg_in_00
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_00 { PARAM_VALUE.port_width_reg_in_00 } {
	# Procedure called to validate port_width_reg_in_00
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_01 { PARAM_VALUE.port_width_reg_in_01 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_01 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_01 ${PARAM_VALUE.port_width_reg_in_01}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_01_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_01
	} else {
		set_property enabled false $port_width_reg_in_01
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_01 { PARAM_VALUE.port_width_reg_in_01 } {
	# Procedure called to validate port_width_reg_in_01
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_02 { PARAM_VALUE.port_width_reg_in_02 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_02 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_02 ${PARAM_VALUE.port_width_reg_in_02}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_02_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_02
	} else {
		set_property enabled false $port_width_reg_in_02
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_02 { PARAM_VALUE.port_width_reg_in_02 } {
	# Procedure called to validate port_width_reg_in_02
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_03 { PARAM_VALUE.port_width_reg_in_03 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_03 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_03 ${PARAM_VALUE.port_width_reg_in_03}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_03_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_03
	} else {
		set_property enabled false $port_width_reg_in_03
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_03 { PARAM_VALUE.port_width_reg_in_03 } {
	# Procedure called to validate port_width_reg_in_03
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_04 { PARAM_VALUE.port_width_reg_in_04 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_04 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_04 ${PARAM_VALUE.port_width_reg_in_04}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_04_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_04
	} else {
		set_property enabled false $port_width_reg_in_04
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_04 { PARAM_VALUE.port_width_reg_in_04 } {
	# Procedure called to validate port_width_reg_in_04
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_05 { PARAM_VALUE.port_width_reg_in_05 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_05 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_05 ${PARAM_VALUE.port_width_reg_in_05}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_05_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_05
	} else {
		set_property enabled false $port_width_reg_in_05
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_05 { PARAM_VALUE.port_width_reg_in_05 } {
	# Procedure called to validate port_width_reg_in_05
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_06 { PARAM_VALUE.port_width_reg_in_06 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_06 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_06 ${PARAM_VALUE.port_width_reg_in_06}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_06_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_06
	} else {
		set_property enabled false $port_width_reg_in_06
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_06 { PARAM_VALUE.port_width_reg_in_06 } {
	# Procedure called to validate port_width_reg_in_06
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_07 { PARAM_VALUE.port_width_reg_in_07 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_07 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_07 ${PARAM_VALUE.port_width_reg_in_07}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_07_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_07
	} else {
		set_property enabled false $port_width_reg_in_07
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_07 { PARAM_VALUE.port_width_reg_in_07 } {
	# Procedure called to validate port_width_reg_in_07
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_08 { PARAM_VALUE.port_width_reg_in_08 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_08 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_08 ${PARAM_VALUE.port_width_reg_in_08}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_08_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_08
	} else {
		set_property enabled false $port_width_reg_in_08
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_08 { PARAM_VALUE.port_width_reg_in_08 } {
	# Procedure called to validate port_width_reg_in_08
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_09 { PARAM_VALUE.port_width_reg_in_09 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_09 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_09 ${PARAM_VALUE.port_width_reg_in_09}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_09_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_09
	} else {
		set_property enabled false $port_width_reg_in_09
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_09 { PARAM_VALUE.port_width_reg_in_09 } {
	# Procedure called to validate port_width_reg_in_09
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_10 { PARAM_VALUE.port_width_reg_in_10 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_10 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_10 ${PARAM_VALUE.port_width_reg_in_10}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_10_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_10
	} else {
		set_property enabled false $port_width_reg_in_10
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_10 { PARAM_VALUE.port_width_reg_in_10 } {
	# Procedure called to validate port_width_reg_in_10
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_11 { PARAM_VALUE.port_width_reg_in_11 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_11 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_11 ${PARAM_VALUE.port_width_reg_in_11}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_11_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_11
	} else {
		set_property enabled false $port_width_reg_in_11
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_11 { PARAM_VALUE.port_width_reg_in_11 } {
	# Procedure called to validate port_width_reg_in_11
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_12 { PARAM_VALUE.port_width_reg_in_12 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_12 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_12 ${PARAM_VALUE.port_width_reg_in_12}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_12_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_12
	} else {
		set_property enabled false $port_width_reg_in_12
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_12 { PARAM_VALUE.port_width_reg_in_12 } {
	# Procedure called to validate port_width_reg_in_12
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_13 { PARAM_VALUE.port_width_reg_in_13 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_13 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_13 ${PARAM_VALUE.port_width_reg_in_13}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_13_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_13
	} else {
		set_property enabled false $port_width_reg_in_13
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_13 { PARAM_VALUE.port_width_reg_in_13 } {
	# Procedure called to validate port_width_reg_in_13
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_14 { PARAM_VALUE.port_width_reg_in_14 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_14 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_14 ${PARAM_VALUE.port_width_reg_in_14}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_14_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_14
	} else {
		set_property enabled false $port_width_reg_in_14
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_14 { PARAM_VALUE.port_width_reg_in_14 } {
	# Procedure called to validate port_width_reg_in_14
	return true
}

proc update_PARAM_VALUE.port_width_reg_in_15 { PARAM_VALUE.port_width_reg_in_15 PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update port_width_reg_in_15 when any of the dependent parameters in the arguments change
	
	set port_width_reg_in_15 ${PARAM_VALUE.port_width_reg_in_15}
	set reg_in_enabled ${PARAM_VALUE.reg_in_enabled}
	set values(reg_in_enabled) [get_property value $reg_in_enabled]
	if { [gen_USERPARAMETER_port_width_reg_in_15_ENABLEMENT $values(reg_in_enabled)] } {
		set_property enabled true $port_width_reg_in_15
	} else {
		set_property enabled false $port_width_reg_in_15
	}
}

proc validate_PARAM_VALUE.port_width_reg_in_15 { PARAM_VALUE.port_width_reg_in_15 } {
	# Procedure called to validate port_width_reg_in_15
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_00 { PARAM_VALUE.port_width_reg_out_00 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_00 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_00 ${PARAM_VALUE.port_width_reg_out_00}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_00_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_00
	} else {
		set_property enabled false $port_width_reg_out_00
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_00 { PARAM_VALUE.port_width_reg_out_00 } {
	# Procedure called to validate port_width_reg_out_00
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_01 { PARAM_VALUE.port_width_reg_out_01 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_01 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_01 ${PARAM_VALUE.port_width_reg_out_01}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_01_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_01
	} else {
		set_property enabled false $port_width_reg_out_01
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_01 { PARAM_VALUE.port_width_reg_out_01 } {
	# Procedure called to validate port_width_reg_out_01
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_02 { PARAM_VALUE.port_width_reg_out_02 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_02 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_02 ${PARAM_VALUE.port_width_reg_out_02}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_02_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_02
	} else {
		set_property enabled false $port_width_reg_out_02
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_02 { PARAM_VALUE.port_width_reg_out_02 } {
	# Procedure called to validate port_width_reg_out_02
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_03 { PARAM_VALUE.port_width_reg_out_03 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_03 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_03 ${PARAM_VALUE.port_width_reg_out_03}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_03_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_03
	} else {
		set_property enabled false $port_width_reg_out_03
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_03 { PARAM_VALUE.port_width_reg_out_03 } {
	# Procedure called to validate port_width_reg_out_03
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_04 { PARAM_VALUE.port_width_reg_out_04 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_04 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_04 ${PARAM_VALUE.port_width_reg_out_04}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_04_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_04
	} else {
		set_property enabled false $port_width_reg_out_04
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_04 { PARAM_VALUE.port_width_reg_out_04 } {
	# Procedure called to validate port_width_reg_out_04
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_05 { PARAM_VALUE.port_width_reg_out_05 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_05 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_05 ${PARAM_VALUE.port_width_reg_out_05}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_05_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_05
	} else {
		set_property enabled false $port_width_reg_out_05
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_05 { PARAM_VALUE.port_width_reg_out_05 } {
	# Procedure called to validate port_width_reg_out_05
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_06 { PARAM_VALUE.port_width_reg_out_06 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_06 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_06 ${PARAM_VALUE.port_width_reg_out_06}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_06_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_06
	} else {
		set_property enabled false $port_width_reg_out_06
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_06 { PARAM_VALUE.port_width_reg_out_06 } {
	# Procedure called to validate port_width_reg_out_06
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_07 { PARAM_VALUE.port_width_reg_out_07 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_07 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_07 ${PARAM_VALUE.port_width_reg_out_07}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_07_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_07
	} else {
		set_property enabled false $port_width_reg_out_07
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_07 { PARAM_VALUE.port_width_reg_out_07 } {
	# Procedure called to validate port_width_reg_out_07
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_08 { PARAM_VALUE.port_width_reg_out_08 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_08 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_08 ${PARAM_VALUE.port_width_reg_out_08}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_08_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_08
	} else {
		set_property enabled false $port_width_reg_out_08
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_08 { PARAM_VALUE.port_width_reg_out_08 } {
	# Procedure called to validate port_width_reg_out_08
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_09 { PARAM_VALUE.port_width_reg_out_09 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_09 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_09 ${PARAM_VALUE.port_width_reg_out_09}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_09_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_09
	} else {
		set_property enabled false $port_width_reg_out_09
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_09 { PARAM_VALUE.port_width_reg_out_09 } {
	# Procedure called to validate port_width_reg_out_09
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_10 { PARAM_VALUE.port_width_reg_out_10 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_10 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_10 ${PARAM_VALUE.port_width_reg_out_10}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_10_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_10
	} else {
		set_property enabled false $port_width_reg_out_10
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_10 { PARAM_VALUE.port_width_reg_out_10 } {
	# Procedure called to validate port_width_reg_out_10
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_11 { PARAM_VALUE.port_width_reg_out_11 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_11 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_11 ${PARAM_VALUE.port_width_reg_out_11}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_11_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_11
	} else {
		set_property enabled false $port_width_reg_out_11
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_11 { PARAM_VALUE.port_width_reg_out_11 } {
	# Procedure called to validate port_width_reg_out_11
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_12 { PARAM_VALUE.port_width_reg_out_12 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_12 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_12 ${PARAM_VALUE.port_width_reg_out_12}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_12_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_12
	} else {
		set_property enabled false $port_width_reg_out_12
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_12 { PARAM_VALUE.port_width_reg_out_12 } {
	# Procedure called to validate port_width_reg_out_12
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_13 { PARAM_VALUE.port_width_reg_out_13 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_13 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_13 ${PARAM_VALUE.port_width_reg_out_13}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_13_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_13
	} else {
		set_property enabled false $port_width_reg_out_13
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_13 { PARAM_VALUE.port_width_reg_out_13 } {
	# Procedure called to validate port_width_reg_out_13
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_14 { PARAM_VALUE.port_width_reg_out_14 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_14 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_14 ${PARAM_VALUE.port_width_reg_out_14}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_14_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_14
	} else {
		set_property enabled false $port_width_reg_out_14
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_14 { PARAM_VALUE.port_width_reg_out_14 } {
	# Procedure called to validate port_width_reg_out_14
	return true
}

proc update_PARAM_VALUE.port_width_reg_out_15 { PARAM_VALUE.port_width_reg_out_15 PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update port_width_reg_out_15 when any of the dependent parameters in the arguments change
	
	set port_width_reg_out_15 ${PARAM_VALUE.port_width_reg_out_15}
	set reg_out_enabled ${PARAM_VALUE.reg_out_enabled}
	set values(reg_out_enabled) [get_property value $reg_out_enabled]
	if { [gen_USERPARAMETER_port_width_reg_out_15_ENABLEMENT $values(reg_out_enabled)] } {
		set_property enabled true $port_width_reg_out_15
	} else {
		set_property enabled false $port_width_reg_out_15
	}
}

proc validate_PARAM_VALUE.port_width_reg_out_15 { PARAM_VALUE.port_width_reg_out_15 } {
	# Procedure called to validate port_width_reg_out_15
	return true
}

proc update_PARAM_VALUE.reg_in_enabled { PARAM_VALUE.reg_in_enabled } {
	# Procedure called to update reg_in_enabled when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg_in_enabled { PARAM_VALUE.reg_in_enabled } {
	# Procedure called to validate reg_in_enabled
	return true
}

proc update_PARAM_VALUE.reg_out_enabled { PARAM_VALUE.reg_out_enabled } {
	# Procedure called to update reg_out_enabled when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg_out_enabled { PARAM_VALUE.reg_out_enabled } {
	# Procedure called to validate reg_out_enabled
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.reg_in_enabled { MODELPARAM_VALUE.reg_in_enabled PARAM_VALUE.reg_in_enabled } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg_in_enabled}] ${MODELPARAM_VALUE.reg_in_enabled}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_00 { MODELPARAM_VALUE.port_width_reg_in_00 PARAM_VALUE.port_width_reg_in_00 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_00}] ${MODELPARAM_VALUE.port_width_reg_in_00}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_01 { MODELPARAM_VALUE.port_width_reg_in_01 PARAM_VALUE.port_width_reg_in_01 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_01}] ${MODELPARAM_VALUE.port_width_reg_in_01}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_02 { MODELPARAM_VALUE.port_width_reg_in_02 PARAM_VALUE.port_width_reg_in_02 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_02}] ${MODELPARAM_VALUE.port_width_reg_in_02}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_03 { MODELPARAM_VALUE.port_width_reg_in_03 PARAM_VALUE.port_width_reg_in_03 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_03}] ${MODELPARAM_VALUE.port_width_reg_in_03}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_04 { MODELPARAM_VALUE.port_width_reg_in_04 PARAM_VALUE.port_width_reg_in_04 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_04}] ${MODELPARAM_VALUE.port_width_reg_in_04}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_05 { MODELPARAM_VALUE.port_width_reg_in_05 PARAM_VALUE.port_width_reg_in_05 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_05}] ${MODELPARAM_VALUE.port_width_reg_in_05}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_06 { MODELPARAM_VALUE.port_width_reg_in_06 PARAM_VALUE.port_width_reg_in_06 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_06}] ${MODELPARAM_VALUE.port_width_reg_in_06}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_07 { MODELPARAM_VALUE.port_width_reg_in_07 PARAM_VALUE.port_width_reg_in_07 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_07}] ${MODELPARAM_VALUE.port_width_reg_in_07}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_08 { MODELPARAM_VALUE.port_width_reg_in_08 PARAM_VALUE.port_width_reg_in_08 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_08}] ${MODELPARAM_VALUE.port_width_reg_in_08}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_09 { MODELPARAM_VALUE.port_width_reg_in_09 PARAM_VALUE.port_width_reg_in_09 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_09}] ${MODELPARAM_VALUE.port_width_reg_in_09}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_10 { MODELPARAM_VALUE.port_width_reg_in_10 PARAM_VALUE.port_width_reg_in_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_10}] ${MODELPARAM_VALUE.port_width_reg_in_10}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_11 { MODELPARAM_VALUE.port_width_reg_in_11 PARAM_VALUE.port_width_reg_in_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_11}] ${MODELPARAM_VALUE.port_width_reg_in_11}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_12 { MODELPARAM_VALUE.port_width_reg_in_12 PARAM_VALUE.port_width_reg_in_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_12}] ${MODELPARAM_VALUE.port_width_reg_in_12}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_13 { MODELPARAM_VALUE.port_width_reg_in_13 PARAM_VALUE.port_width_reg_in_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_13}] ${MODELPARAM_VALUE.port_width_reg_in_13}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_14 { MODELPARAM_VALUE.port_width_reg_in_14 PARAM_VALUE.port_width_reg_in_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_14}] ${MODELPARAM_VALUE.port_width_reg_in_14}
}

proc update_MODELPARAM_VALUE.port_width_reg_in_15 { MODELPARAM_VALUE.port_width_reg_in_15 PARAM_VALUE.port_width_reg_in_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_in_15}] ${MODELPARAM_VALUE.port_width_reg_in_15}
}

proc update_MODELPARAM_VALUE.reg_out_enabled { MODELPARAM_VALUE.reg_out_enabled PARAM_VALUE.reg_out_enabled } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg_out_enabled}] ${MODELPARAM_VALUE.reg_out_enabled}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_00 { MODELPARAM_VALUE.port_width_reg_out_00 PARAM_VALUE.port_width_reg_out_00 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_00}] ${MODELPARAM_VALUE.port_width_reg_out_00}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_01 { MODELPARAM_VALUE.port_width_reg_out_01 PARAM_VALUE.port_width_reg_out_01 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_01}] ${MODELPARAM_VALUE.port_width_reg_out_01}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_02 { MODELPARAM_VALUE.port_width_reg_out_02 PARAM_VALUE.port_width_reg_out_02 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_02}] ${MODELPARAM_VALUE.port_width_reg_out_02}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_03 { MODELPARAM_VALUE.port_width_reg_out_03 PARAM_VALUE.port_width_reg_out_03 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_03}] ${MODELPARAM_VALUE.port_width_reg_out_03}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_04 { MODELPARAM_VALUE.port_width_reg_out_04 PARAM_VALUE.port_width_reg_out_04 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_04}] ${MODELPARAM_VALUE.port_width_reg_out_04}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_05 { MODELPARAM_VALUE.port_width_reg_out_05 PARAM_VALUE.port_width_reg_out_05 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_05}] ${MODELPARAM_VALUE.port_width_reg_out_05}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_06 { MODELPARAM_VALUE.port_width_reg_out_06 PARAM_VALUE.port_width_reg_out_06 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_06}] ${MODELPARAM_VALUE.port_width_reg_out_06}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_07 { MODELPARAM_VALUE.port_width_reg_out_07 PARAM_VALUE.port_width_reg_out_07 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_07}] ${MODELPARAM_VALUE.port_width_reg_out_07}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_08 { MODELPARAM_VALUE.port_width_reg_out_08 PARAM_VALUE.port_width_reg_out_08 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_08}] ${MODELPARAM_VALUE.port_width_reg_out_08}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_09 { MODELPARAM_VALUE.port_width_reg_out_09 PARAM_VALUE.port_width_reg_out_09 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_09}] ${MODELPARAM_VALUE.port_width_reg_out_09}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_10 { MODELPARAM_VALUE.port_width_reg_out_10 PARAM_VALUE.port_width_reg_out_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_10}] ${MODELPARAM_VALUE.port_width_reg_out_10}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_11 { MODELPARAM_VALUE.port_width_reg_out_11 PARAM_VALUE.port_width_reg_out_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_11}] ${MODELPARAM_VALUE.port_width_reg_out_11}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_12 { MODELPARAM_VALUE.port_width_reg_out_12 PARAM_VALUE.port_width_reg_out_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_12}] ${MODELPARAM_VALUE.port_width_reg_out_12}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_13 { MODELPARAM_VALUE.port_width_reg_out_13 PARAM_VALUE.port_width_reg_out_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_13}] ${MODELPARAM_VALUE.port_width_reg_out_13}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_14 { MODELPARAM_VALUE.port_width_reg_out_14 PARAM_VALUE.port_width_reg_out_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_14}] ${MODELPARAM_VALUE.port_width_reg_out_14}
}

proc update_MODELPARAM_VALUE.port_width_reg_out_15 { MODELPARAM_VALUE.port_width_reg_out_15 PARAM_VALUE.port_width_reg_out_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.port_width_reg_out_15}] ${MODELPARAM_VALUE.port_width_reg_out_15}
}

