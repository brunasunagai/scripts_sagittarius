reset_design
set mv_power_net VDD
set mw_ground_net VSS
set mw_logic1_net VDD
set mw_logic0_net VSS
set mw_power_port VDD
set mw_ground_port VSS

set_load [expr 0.0005704*6] [all_outputs]
set_driving_cell -library tcbn45gsbwptc_ccs -lib_cell DFD1BWP [all_inputs]
create_clock -name clk -period 40 -waveform {0 20}
set_input_delay 0.1 -clock "clk" [all_inputs]
set_clock_uncertainty  0.5 "clk"
set_clock_latency -source 0.5 clk

set_output_delay -max 0.2 [all_outputs] -clock clk

set_max_capacitance 3 ${DESIGN}