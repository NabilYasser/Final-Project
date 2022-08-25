mkdir -p logs
mkdir -p reports

fm_shell -f syn_fm_script.tcl -overwrite | tee logs/syn_fm_log.log