echo "################ Clocks Creation ,Transition and Uncertainty  ##########################"
################################ REF Clock ##################################
set REFRENCE_CLOCK CLK1
set REFRENCE_CLOCK_PERIOD 20
set REFRENCE_CLOCK_WAVEFORM [list 0 [expr $REFRENCE_CLOCK_PERIOD/2] ] 
set REFRENCE_CLOCK_UNCEN_SETUP 0.2
set REFRENCE_CLOCK_UNCEN_HOLD 0.05
set REFRENCE_CLOCK_TRANS 0.1 
create_clock -name $REFRENCE_CLOCK -period $REFRENCE_CLOCK_PERIOD -waveform $REFRENCE_CLOCK_WAVEFORM [get_ports REF_CLK]
set_clock_uncertainty -setup $REFRENCE_CLOCK_UNCEN_SETUP [get_clocks $REFRENCE_CLOCK]
set_clock_uncertainty -hold $REFRENCE_CLOCK_UNCEN_HOLD   [get_clocks $REFRENCE_CLOCK]
set_clock_transition $REFRENCE_CLOCK_TRANS [get_clocks $REFRENCE_CLOCK]
set_dont_touch_network $REFRENCE_CLOCK
################################ UART Clock ##################################
set RX_UART_CLOCK CLK1
set RX_UART_CLOCK_PERIOD 104166
set RX_UART_CLOCK_WAVEFORM [list 0 [expr $RX_UART_CLOCK_PERIOD/2] ] 
set RX_UART_CLOCK_UNCEN_SETUP 0.2
set RX_UART_CLOCK_UNCEN_HOLD 0.05
set RX_UART_CLOCK_TRANS 0.1 
create_clock -name $RX_UART_CLOCK -period $RX_UART_CLOCK_PERIOD -waveform $RX_UART_CLOCK_WAVEFORM [get_ports UART_CLK]
set_clock_uncertainty -setup $RX_UART_CLOCK_UNCEN_SETUP [get_clocks $RX_UART_CLOCK]
set_clock_uncertainty -hold $RX_UART_CLOCK_UNCEN_HOLD   [get_clocks $RX_UART_CLOCK]
set_clock_transition $RX_UART_CLOCK_TRANS [get_clocks $RX_UART_CLOCK]
set_dont_touch_network $RX_UART_CLOCK
################################ ALU Clock ##################################
create_generated_clock -master_clock $REFRENCE_CLOCK -source [get_ports REF_CLK] -name GATED_CLOCK [get_port u_Clock_Gating/Gated_clk] -divide_by 1
################################ Div Clock ##################################
set Div_Ratio 8
create_generated_clock -master_clock $RX_UART_CLOCK -source [get_ports UART_CLK] -name DIV_CLOCK [get_port u_Clock_Divider/o_div_clk] -divide_by $Div_Ratio
echo "################ Input driving cell and delay  ##########################"
set INPUT_DELAY_Value [expr 0.2*$RX_UART_CLOCK_PERIOD]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M  [get_ports RX_IN]
set_input_delay $INPUT_DELAY_Value -clock $RX_UART_CLOCK [get_ports RX_IN]

echo "################ Onput Delay and Load  ##########################"
set Output_DELAY_Value [expr 0.2*[expr $RX_UART_CLOCK_PERIOD/$Div_Ratio]]
set_output_delay $Output_DELAY_Value -clock DIV_CLOCK [get_ports TX_OUT]

set_load 50 [all_outputs]

echo "################ Dont Touch RST ##########################"
set_dont_touch_network RST

echo "################ Operating Condations ##########################"
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"  -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

echo "################ Wire Model ##########################"
set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

