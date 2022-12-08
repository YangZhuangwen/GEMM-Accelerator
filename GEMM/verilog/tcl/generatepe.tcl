set dspExit [lsearch -exact [get_ips pe] pe]
if { $dspExit <0} {
create_ip -name dsp_macro -vendor xilinx.com -library ip -version 1.0 -module_name pe
}
set_property -dict [list CONFIG.Component_Name {peee} CONFIG.instruction1 {A*B+P} CONFIG.pipeline_options {By_Tier} CONFIG.tier_4 {true} CONFIG.tier_5 {true} CONFIG.a_width {8} CONFIG.b_width {8} CONFIG.has_acout {true} CONFIG.has_bcout {true} CONFIG.has_ce {true} CONFIG.has_sclr {true} CONFIG.tier_6 {true} CONFIG.areg_3 {false} CONFIG.areg_4 {true} CONFIG.breg_3 {false} CONFIG.breg_4 {true} CONFIG.creg_3 {false} CONFIG.creg_4 {false} CONFIG.creg_5 {false} CONFIG.mreg_5 {true} CONFIG.preg_6 {true} CONFIG.d_width {18} CONFIG.a_binarywidth {0} CONFIG.b_binarywidth {0} CONFIG.concat_width {48} CONFIG.concat_binarywidth {0} CONFIG.c_width {48} CONFIG.c_binarywidth {0} CONFIG.pcin_binarywidth {0} CONFIG.p_full_width {48} CONFIG.p_width {48}] [get_ips pe]
