define_design_lib work -path ./work
set_svf Design_Top.svf
################## Design Compiler Library Files ######################

lappend ../rtl
lappend search_path ../rtl/UART_RX
lappend search_path ../rtl//UART_TX
lappend search_path ../rtl//UART_TOP
lappend search_path ./rtl/Clock_Gating_and_Div
lappend search_path ./rtl/Syncronizers
lappend search_path ./rtl/System_Blocks

lappend search_path ../std_cells


set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $TTLIB $SSLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $TTLIB $SSLIB $FFLIB]  

echo "###############################################"
echo "############# Reading RTL Files  ##############"
echo "###############################################"

read_file {../rtl/} -autoread -recursive -format verilog -top Design_Top

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

write_file -format verilog -hierarchy -output netlists/Design_Top_Netlist.ddc
write_file -format verilog -hierarchy -output netlists/Design_Top_Netlist.v
write_sdf  sdf/Design_Top.sdf
write_sdc  -nosplit sdc/Design_Top.sdc
#set_svf -off 


report_area -hierarchy > reports/area.rpt
report_power  -verbose > reports/power.rpt
report_timing -max_paths 10 -delay_type min > reports/hold.rpt
report_timing -max_paths 10 -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators > reports/constraints.rpt


echo "################## DFT Prepreatios stage ######################"
set flops_per_chain 100
set num_flops [sizeof_collection [all_registers -edge_triggered]]
set num_chains [expr $num_flops / $flops_per_chain + 1 ]
