create_library_set -name max_library\
   -timing\
    [list /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib]
create_library_set -name typ_library\
   -timing\
    [list /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib]
create_library_set -name min_library\
   -timing\
    [list /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib]
create_rc_corner -name RCcorner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25
create_delay_corner -name min_corner\
   -library_set min_library\
   -rc_corner RCcorner
create_delay_corner -name max_corner\
   -library_set max_library\
   -rc_corner RCcorner
create_constraint_mode -name scan_constraints\
   -sdc_files\
    [list Design_Top_CTS.dat/mmmc/modes/scan_constraints/scan_constraints.sdc]
create_constraint_mode -name func_constraints\
   -sdc_files\
    [list Design_Top_CTS.dat/mmmc/modes/func_constraints/func_constraints.sdc]
create_constraint_mode -name capture_constraints\
   -sdc_files\
    [list Design_Top_CTS.dat/mmmc/modes/capture_constraints/capture_constraints.sdc]
create_analysis_view -name capture_hold_analysis_view -constraint_mode capture_constraints -delay_corner min_corner
create_analysis_view -name func_hold_analysis_view -constraint_mode func_constraints -delay_corner min_corner
create_analysis_view -name func_setup_analysis_view -constraint_mode func_constraints -delay_corner max_corner
create_analysis_view -name scan_hold_analysis_view -constraint_mode scan_constraints -delay_corner min_corner
create_analysis_view -name capture_setup_analysis_view -constraint_mode capture_constraints -delay_corner max_corner
create_analysis_view -name scan_setup_analysis_view -constraint_mode scan_constraints -delay_corner max_corner
set_analysis_view -setup [list func_setup_analysis_view capture_setup_analysis_view scan_setup_analysis_view] -hold [list func_hold_analysis_view capture_hold_analysis_view scan_hold_analysis_view]
