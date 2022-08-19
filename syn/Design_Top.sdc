###################################################################

# Created by write_sdc on Fri Aug 19 08:43:43 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports RX_IN]
set_load -pin_load 50 [get_ports TX_OUT]
create_clock [get_ports UART_CLK]  -name CLK1  -period 104166  -waveform {0 52083}
set_clock_uncertainty -setup 0.2  [get_clocks CLK1]
set_clock_uncertainty -hold 0.05  [get_clocks CLK1]
set_clock_transition -max -rise 0.1 [get_clocks CLK1]
set_clock_transition -max -fall 0.1 [get_clocks CLK1]
set_clock_transition -min -rise 0.1 [get_clocks CLK1]
set_clock_transition -min -fall 0.1 [get_clocks CLK1]
create_generated_clock [get_pins u_Clock_Gating/Gated_clk]  -name GATED_CLOCK  -source [get_ports REF_CLK]  -master_clock CLK1  -divide_by 1  -add
create_generated_clock [get_pins u_Clock_Divider/o_div_clk]  -name DIV_CLOCK  -source [get_ports UART_CLK]  -master_clock CLK1  -divide_by 8  -add
group_path -name INOUT  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN]]  -to [get_ports TX_OUT]
group_path -name INREG  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST] [get_ports RX_IN]]
group_path -name REGOUT  -to [get_ports TX_OUT]
set_input_delay -clock CLK1  20833.2  [get_ports RX_IN]
set_output_delay -clock DIV_CLOCK  2604  [get_ports TX_OUT]
