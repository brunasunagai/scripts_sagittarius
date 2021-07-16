echo "####################################################"
echo "#                                                  #"
echo "#                                                  #"
echo "#                                                  #"
echo "#                   adderlib                       #"
echo "#                                                  #"
echo "#                                                  #"
echo "#                                                  #"
echo "####################################################"

remove_design -designs
set  DESIGN "adderlib"
source common_adder.tcl
read_file -format verilog ${DESIGN_REF}adderlib.v
# read_file -format vhdl ${DESIGN_REF}
source  "../common_finish.tcl"