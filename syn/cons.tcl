echo "################ Clocks Creation ,Transition and Uncertainty  ##########################"
################################ REF Clock ##################################
set REFRENCE_CLOCK CLK1
set REFRENCE_CLOCK_PERIOD 20
set REFRENCE_CLOCK_WAVEFORM [list 0 [expr $REFRENCE_CLOCK_PERIOD/2] ] 
set REFRENCE_CLOCK_UNCEN_SETUP 0.2
set REFRENCE_CLOCK_UNCEN_HOLD 0.1
#set REFRENCE_CLOCK_TRANS 0.1 
create_clock -name $REFRENCE_CLOCK -period $REFRENCE_CLOCK_PERIOD -waveform $REFRENCE_CLOCK_WAVEFORM [get_ports REF_CLK]
set_clock_uncertainty -setup $REFRENCE_CLOCK_UNCEN_SETUP [get_clocks $REFRENCE_CLOCK]
set_clock_uncertainty -hold $REFRENCE_CLOCK_UNCEN_HOLD   [get_clocks $REFRENCE_CLOCK]
#set_clock_transition $REFRENCE_CLOCK_TRANS [get_clocks $REFRENCE_CLOCK]
set_dont_touch_network $REFRENCE_CLOCK
################################ UART Clock ##################################
set RX_UART_CLOCK CLK2
set RX_UART_CLOCK_PERIOD 1085
set RX_UART_CLOCK_WAVEFORM [list 0 [expr $RX_UART_CLOCK_PERIOD/2] ] 
set RX_UART_CLOCK_UNCEN_SETUP 0.2
set RX_UART_CLOCK_UNCEN_HOLD 0.1
#set RX_UART_CLOCK_TRANS 0.1 
create_clock -name $RX_UART_CLOCK -period $RX_UART_CLOCK_PERIOD -waveform $RX_UART_CLOCK_WAVEFORM [get_ports UART_CLK]
set_clock_uncertainty -setup $RX_UART_CLOCK_UNCEN_SETUP [get_clocks $RX_UART_CLOCK]
set_clock_uncertainty -hold $RX_UART_CLOCK_UNCEN_HOLD   [get_clocks $RX_UART_CLOCK]
#set_clock_transition $RX_UART_CLOCK_TRANS [get_clocks $RX_UART_CLOCK]
set_dont_touch_network $RX_UART_CLOCK
################################ ALU Clock ##################################
create_generated_clock -master_clock $REFRENCE_CLOCK -source [get_ports REF_CLK] -name GATED_CLOCK [get_port u_Clock_Gating/Gated_clk] -divide_by 1
################################ Div Clock ##################################
set Div_Ratio 8
create_generated_clock -master_clock $RX_UART_CLOCK -source [get_ports UART_CLK] -name DIV_CLOCK [get_port u_Clock_Divider/o_div_clk] -divide_by $Div_Ratio


set CLK3_NAME SCAN_CLK
set CLK3_PER 100
create_clock -name $CLK3_NAME -period $CLK3_PER -waveform "0 [expr $CLK3_PER/2]" [get_ports scan_clk]
set_clock_uncertainty -setup 0.2 [get_clocks $CLK3_NAME]
set_clock_uncertainty -hold 0.1  [get_clocks $CLK3_NAME]


#set_multicycle_path -setup 53 -from $RX_UART_CLOCK -to $REFRENCE_CLOCK
#set_multicycle_path -hold 52 -from $RX_UART_CLOCK -to $REFRENCE_CLOCK

echo "################ clock grouping  ##########################"
set_clock_groups -asynchronous -group [get_clocks "$REFRENCE_CLOCK GATED_CLOCK"]  -group [get_clocks "SCAN_CLK"] -group [get_clocks "$RX_UART_CLOCK DIV_CLOCK"]  



echo "################ Input driving cell and delay  ##########################"
set INPUT_DELAY_Value [expr 0.2*$RX_UART_CLOCK_PERIOD]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y  [get_ports RX_IN]
set_input_delay $INPUT_DELAY_Value -clock $RX_UART_CLOCK [get_ports RX_IN]

echo "################ Onput Delay and Load  ##########################"
set Output_DELAY_Value [expr 0.2*[expr $RX_UART_CLOCK_PERIOD/$Div_Ratio]]
set_output_delay $Output_DELAY_Value -clock DIV_CLOCK [get_ports TX_OUT]

set_load 0.5 [all_outputs]

echo "################ Dont Touch RST ##########################"
set_dont_touch_network RST

echo "################ Operating Condations ##########################"
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"  -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

echo "################ Wire Model ##########################"
#set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

