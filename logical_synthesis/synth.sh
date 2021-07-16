echo "" > log_synthesis.log
readonly DC="/usr/synopsys/syn_vQ-2019.12-SP5/bin/dc_shell-xg-t"
${DC} -topo -f all_scripts.tcl | tee -a log_synthesis.log