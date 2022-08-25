###################################################################

# Created by write_sdc on Thu Aug 25 03:45:02 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RX_IN]
set_load -pin_load 0.5 [get_ports SO]
set_load -pin_load 0.5 [get_ports TX_OUT]
create_clock [get_ports REF_CLK]  -name CLK1  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks CLK1]
set_clock_uncertainty -hold 0.1  [get_clocks CLK1]
create_clock [get_ports UART_CLK]  -name CLK2  -period 1085  -waveform {0 542}
set_clock_uncertainty -setup 0.2  [get_clocks CLK2]
set_clock_uncertainty -hold 0.1  [get_clocks CLK2]
create_generated_clock [get_pins u_Clock_Gating/Gated_clk]  -name GATED_CLOCK  -source [get_ports REF_CLK]  -master_clock CLK1  -divide_by 1  -add
create_generated_clock [get_pins u_Clock_Divider/o_div_clk]  -name DIV_CLOCK  -source [get_ports UART_CLK]  -master_clock CLK2  -divide_by 8  -add
create_clock [get_ports scan_clk]  -name SCAN_CLK  -period 100  -waveform {0 50}
set_clock_uncertainty -setup 0.2  [get_clocks SCAN_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks SCAN_CLK]
group_path -name INOUT  -from [list [get_ports scan_clk] [get_ports scan_rst] [get_ports test_mode] [get_ports SE] [get_ports SI] [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN]]  -to [list [get_ports SO] [get_ports TX_OUT]]
group_path -name INREG  -from [list [get_ports scan_clk] [get_ports scan_rst] [get_ports test_mode] [get_ports SE] [get_ports SI] [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN]]
group_path -name REGOUT  -to [list [get_ports SO] [get_ports TX_OUT]]
set_input_delay -clock CLK2  217  [get_ports RX_IN]
set_output_delay -clock DIV_CLOCK  27  [get_ports TX_OUT]
set_clock_groups -asynchronous -name CLK1_1 -group [list [get_clocks CLK1] [get_clocks GATED_CLOCK]] -group [get_clocks SCAN_CLK] -group [list [get_clocks CLK2] [get_clocks DIV_CLOCK]]
