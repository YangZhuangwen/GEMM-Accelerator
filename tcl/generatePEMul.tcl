set mulExit [lsearch -exact [get_ips PEMul] PEMul]
if { $mulExit <0} {
create_ip -name mult_gen -vendor xilinx.com -library ip -version 12.0 -module_name PEMul
}
set_property -dict [list CONFIG.PortAType {Unsigned} CONFIG.PortAWidth {8} CONFIG.PortBWidth {8} CONFIG.Multiplier_Construction {Use_Mults} CONFIG.Use_Custom_Output_Width {true} CONFIG.OutputWidthHigh {31} CONFIG.PipeStages {3}] [get_ips PEMul]
