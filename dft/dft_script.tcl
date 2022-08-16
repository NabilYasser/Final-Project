define_design_lib work -path ./work

set_svf UART_DFT.svf

lappend ../rtl
lappend search_path ../rtl/UART_RX
lappend search_path ../rtl//UART_TOP
lappend search_path ./rtl/UART_TX
lappend search_path ../std_cells

set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"
## Standard Cell libraries 

set target_library [list $TTLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $TTLIB $SSLIB $FFLIB]  

echo "###############################################"
echo "############# Reading RTL Files  ##############"
echo "###############################################"

read_file {../rtl/} -autoread -recursive -format verilog -top UART
echo "###############################################"
echo "# Linking The Top Module with its submodules  #"
echo "###############################################"

link 

############# Make unique copies of replicated modules by ##################
############# giving each replicated module a unique name  #############

uniquify
echo "#############################Check design #######################################"

check_design

echo "#############################Grouping #######################################"
group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]


echo "######################## Constrains #########################"
 source ./cons.tcl
echo "######################## DFT Configurations #########################"
set_scan_configuration -clock_mixing no_mix -style multiplexed_flip_flop -replace true -max_length 100
echo "######################## Compile +Scan #########################"
compile -scan
echo "######################### Setting Test Timing Variables #########################"
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

echo "######################## DFT Signal Dec #########################"
set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  
echo "######################## Creating test protocol  #########################"
create_test_protocol

echo "######################## Pre DFT DRC  #########################"
dft_drc -verbose
echo "######################## Preview DFT   #########################"
preview_dft -show scan_summary
echo "######################## Inser DFT  #########################"
insert_dft
echo "######################## Compile + increment #########################"
compile -scan -incremental
echo "######################## DFT DRC and coverage estimate #########################"
dft_drc -verbose -coverage_estimate

write_file -format verilog -hierarchy -output UART_DFT_M.v
set_svf -off