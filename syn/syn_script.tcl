define_design_lib work -path ./work
set_svf UART.svf
################## Design Compiler Library Files ######################

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
#read_file -format verilog Bits_Counter.v
#read_file -format verilog Counter_Unit.v
#read_file -format verilog Data_Sampling.v
#read_file -format verilog Deserializer.v
#read_file -format verilog Edge_Bit_Counter.v 
#read_file -format verilog Parity_Check.v 
#read_file -format verilog RX.v 
#read_file -format verilog RX_FSM.v 
#read_file -format verilog Start_Check.v 
#read_file -format verilog Stop_Check.v 

#read_file -format verilog Counter.v 
#read_file -format verilog FSM.v 
#read_file -format verilog Mux_4.v 
#read_file -format verilog Parity_Unit.v 
#read_file -format verilog Serializer.v 
#read_file -format verilog Serializer_Top.v 
#read_file -format verilog UART_TX_Top.v 

#read_file -format verilog UART.v 
#################### Liniking All The Design Parts #########################
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

###################### Mapping and optimization ########################"

compile

#############################################################################
# Write out Design after initial compile
#############################################################################

write_file -format verilog -hierarchy -output UART_TOP_M.v
write_sdc  -nosplit UART_Top.sdc
write_sdf UART_Top.sdf

report_area -hierarchy > area.rpt
report_power  > power.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt
