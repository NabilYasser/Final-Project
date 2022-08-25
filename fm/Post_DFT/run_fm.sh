mkdir -p logs
mkdir -p reports

fm_shell -f dft_fm_script.tcl -overwrite | tee logs/dft_fm_log.log