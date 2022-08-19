set synopsys_auto_setup true
set_svf "/mnt/hgfs/Courses/System/UART/dft/UART_DFT.svf"
#set_svf "/mnt/hgfs/Courses/System/UART/syn/UART.svf"

set TTLIB "/mnt/hgfs/Courses/System/UART/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/mnt/hgfs/Courses/System/UART/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
set SSLIB "/mnt/hgfs/Courses/System/UART/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"

read_db -container Ref [list $TTLIB $FFLIB $SSLIB]
read_verilog -container Ref "../rtl/UART_RX/*.v"
read_verilog -container Ref "../rtl/UART_TX/*.v"
read_verilog -container Ref "../rtl/UART_TOP/*.v"

#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/Bits_Counter.v"
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/Counter_Unit.v"
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/Data_Sampling.v"
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/Deserializer.v"
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/Edge_Bit_Counter.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/Parity_Check.v"
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/RX.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/RX_FSM.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/Start_Check.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_RX/Stop_Check.v" 

#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_TX/Counter.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_TX/FSM.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_TX/Mux_4.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_TX/Parity_Unit.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_TX/Serializer.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_TX/Serializer_Top.v" 
#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_TX/UART_TX_Top.v" 

#read_verilog -container Ref "/mnt/hgfs/Courses/System/UART/rtl/UART_TOP/UART.v" 

set_reference_design UART
set_top UART


read_db -container Imp [list $TTLIB $FFLIB $SSLIB]

#read_verilog -container Imp -netlist  "/mnt/hgfs/Courses/System/UART/syn/UART_TOP_M.v"
read_verilog -container Imp -netlist  "/mnt/hgfs/Courses/System/UART/dft/UART_DFT_M.v"

set_implementation_design UART
set_top UART

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
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui



report_area -hierarchy > area.rpt
report_power -hierarchy > power.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt



