set synopsys_auto_setup true
set_svf "../../dft/Design_Top.svf"

lappend search_path ../../rtl


set TTLIB "../../std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "../../std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
set SSLIB "../../std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"

set RTL_Design_Top Design_Top
read_db -container Ref [list $TTLIB $FFLIB $SSLIB]
read_verilog -container Ref "../../rtl/*/*.v"
set_reference_design $RTL_Design_Top
set_top $RTL_Design_Top

set Netlist_Design_Top Design_Top
read_db -container Imp [list $TTLIB $FFLIB $SSLIB]
read_verilog -container Imp -netlist  "../../dft/netlists/Design_Top_Netlist.v"
set_implementation_design $Netlist_Design_Top
set_top $Netlist_Design_Top


############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/SI
set_dont_verify_points -type port Imp:/WORK/*/SI

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/SO
set_dont_verify_points -type port Imp:/WORK/*/SO

############################### contants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0


match

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

#Reports
report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"





start_gui










