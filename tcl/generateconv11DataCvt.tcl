set dataConvert [lsearch -exact [get_ips conv11DataCvt] conv11DataCvt]
if { $dataConvert <0} {
create_ip -name axis_dwidth_converter -vendor xilinx.com -library ip -version 1.1 -module_name conv11DataCvt
}
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {8} CONFIG.M_TDATA_NUM_BYTES {64} CONFIG.HAS_MI_TKEEP {0} ] [get_ips conv11DataCvt] 
