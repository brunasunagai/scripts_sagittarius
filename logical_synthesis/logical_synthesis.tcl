exec rm -r compiled
exec rm -r report
exec rm -r ddc
exec rm -r floorplan
exec rm -r netlist
exec rm -r parasitics
exec rm -r sdc
exec rm -r sdf
exec rm -r svf
exec rm -r saif
exec mkdir compiled
exec mkdir report
exec mkdir ddc
exec mkdir floorplan
exec mkdir netlist
exec mkdir parasitics
exec mkdir sdc
exec mkdir sdf
exec mkdir svf
exec mkdir saif
cd adder
source "adderlib.tcl"
cd ..
exit
