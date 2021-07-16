set COMPILED "../compiled"
set DESIGN_REF "../rtl/adder/" 
set DESIGN_PATH "../compiled/${DESIGN}"

echo "DESIGN: ${DESIGN}"
echo "DESIGN_REF: ${DESIGN_REF}"
echo "DESIGN_PATH: ${DESIGN_PATH}"
define_design_lib WORK -path ${DESIGN_PATH}

