current_design $DESIGN 

#evita o compartilhamento de funções do dispositivo
#As duas instruções abaixo evitam a otimização do design
#As duas instruções  a seguir devem ser removidas quando realizar teste de busca do melhor mapeamento para o somador.

set_structure false  -design [get_designs *]
set_ungroup [get_designs *] false
# set_dont_touch [get_designs *]

link
check_design

set placer_max_cell_density_threshold 0.7

#set_ignored_layers

#extract_physical_constraints

set_fix_multiple_port_nets -all -buffer_constants 


source ~/example_tools/logical_synthesis/constraints_dc.tcl
report_constraints -all_violators
check_timing

#################################################################
#								#
#		Define Design Environment			#
#								#
#################################################################
#set_operating_conditions -analysis_type on_chip_variation TYPICAL


#read switch activity file
#echo "##############  RTL switch activity   #################"
#puts pwd
#read_saif -input ~/example_tools/saif/rtl/${DESIGN}.saif -instance_name rtl_sim_${DESIGN}/${DESIGN} 
#propagate_switching_activity
#report_saif -missing

link
check_design

source ~/example_tools/logical_synthesis/constraints_dc.tcl
set_power_prediction true

compile_ultra 

change_names -rules verilog -hier

set_svf "~/example_tools/logical_synthesis/svf/${DESIGN}.svf"
write -format ddc -hierarchy -output "~/example_tools/logical_synthesis/ddc/${DESIGN}.ddc"
write -format verilog -hierarchy -output "~/example_tools/logical_synthesis/netlist/${DESIGN}.v"
# write_floorplan -all "~/example_tools/logical_synthesis/floorplan/${DESIGN}.fp"
write_parasitics -output "~/example_tools/logical_synthesis/parasitics/${DESIGN}.parasitic"
write_sdf "~/example_tools/logical_synthesis/sdf/${DESIGN}.sdf"
write_sdc -nosplit "~/example_tools/logical_synthesis/sdc/${DESIGN}.sdc"

echo "##############  NETLIST switch activity   #################"
# reset_switching_activity
# read_saif -input  ~/example_tools/saif/logical_netlist/${DESIGN}.saif -instance_name logical_netlist_sim_${DESIGN}/${DESIGN} -verbose
# #propagate_switching_activity
# report_saif -missing 
report_power -analysis_effort high -verbose > "../report/power_${DESIGN}.txt"
report_timing -max_paths 4 -significant_digits 9 > "../report/timing_${DESIGN}.txt"
report_hierarchy > "../report/cell_${DESIGN}.txt"
report_qor > "../report/qor_${DESIGN}.txt"
report_area > "../report/area_${DESIGN}.txt"

echo "Finished synthesize $DESIGN" 
