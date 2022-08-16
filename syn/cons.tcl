echo "################ Clocks Creation ,Transition and Uncertainty  ##########################"
################################ TX Clock ##################################
set TX_CLOCK CLK1
set TX_CLOCK_PERIOD 100
set TX_CLOCK_WAVEFORM [list 0 [expr $TX_CLOCK_PERIOD/2] ] 
set TX_CLOCK_UNCEN_SETUP 0.25
set TX_CLOCK_UNCEN_HOLD 0.05
set TX_CLOCK_TRANS 0.1 
create_clock -name $TX_CLOCK -period $TX_CLOCK_PERIOD -waveform $TX_CLOCK_WAVEFORM [get_ports TX_CLK]
set_clock_uncertainty -setup $TX_CLOCK_UNCEN_SETUP [get_clocks $TX_CLOCK]
set_clock_uncertainty -hold $TX_CLOCK_UNCEN_HOLD   [get_clocks $TX_CLOCK]
set_clock_transition $TX_CLOCK_TRANS [get_clocks $TX_CLOCK]
set_dont_touch_network $TX_CLOCK
################################ RX Clock ##################################
set RX_CLOCK RXCLK
set RX_CLOCK_PERIOD 100
set RX_CLOCK_Waveform [list 0 [expr  $RX_CLOCK_PERIOD/2]]
set RX_CLOCK_UNCEN_SETUP 0.25
set RX_CLOCK_UNCEN_HOLD 0.05
set RX_CLOCK_TRANS 0.1

create_clock -name $RX_CLOCK -period $RX_CLOCK_PERIOD -waveform $RX_CLOCK_Waveform [get_ports RX_CLK]
set_clock_uncertainty -setup $RX_CLOCK_UNCEN_SETUP [get_clocks $RX_CLOCK]
set_clock_uncertainty -hold $RX_CLOCK_UNCEN_HOLD [get_clocks $RX_CLOCK]
set_clock_transition $RX_CLOCK_TRANS [get_clocks $RX_CLOCK]
set_dont_touch_network $RX_CLOCK
echo "################ Input driving cell and delay  ##########################"
set INPUT_TX_DELAY [expr 0.2*$TX_CLOCK_PERIOD]
set INPUT_RX_DELAY [expr 0.2*$RX_CLOCK_PERIOD]

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M  [get_ports RX_IN_S]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M  [get_ports TX_IN_P]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M  [get_ports TX_IN_V]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M  [get_ports Prescale]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M  [get_ports parity_enable]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M  [get_ports parity_type]
################################ RX Clock ##################################
set_input_delay $INPUT_RX_DELAY -clock $RX_CLOCK [get_ports RX_IN_S]
set_input_delay $INPUT_RX_DELAY -clock $RX_CLOCK [get_ports Prescale]
set_input_delay $INPUT_RX_DELAY -clock $RX_CLOCK [get_ports parity_enable]
set_input_delay $INPUT_RX_DELAY -clock $RX_CLOCK [get_ports parity_type]
################################ TX Clock ##################################
set_input_delay $INPUT_TX_DELAY -clock $TX_CLOCK [get_ports TX_IN_P]
set_input_delay $INPUT_TX_DELAY -clock $TX_CLOCK [get_ports TX_IN_V]

echo "################ Onput Delay and Load  ##########################"
set OUTPUT_RX_DELAY [expr 0.2*$RX_CLOCK_PERIOD]
set OUTPUT_TX_DELAY [expr 0.2*$TX_CLOCK_PERIOD]
################################ RX Clock ##################################
set_output_delay $OUTPUT_RX_DELAY -clock $RX_CLOCK [get_ports RX_OUT_P]
set_output_delay $OUTPUT_RX_DELAY -clock $RX_CLOCK [get_ports RX_OUT_V]
################################ TX Clock ##################################
set_output_delay $OUTPUT_TX_DELAY -clock $TX_CLOCK [get_ports TX_OUT_S] 
set_output_delay $OUTPUT_TX_DELAY -clock $TX_CLOCK [get_ports TX_OUT_V] 

set_load 50 [all_outputs]

echo "################ Dont Touch RST ##########################"
set_dont_touch_network RST
echo "################ Operating Condations ##########################"
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"  -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"


echo "################ Wire Model ##########################"
set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

