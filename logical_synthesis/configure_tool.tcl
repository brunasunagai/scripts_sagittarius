set search_path [list . /usr/synopsys/library/tsmc_library/45nm/nominal_vt/digital/Front_End/timing_power_noise/CCS/tcbn45gsbwp_120a ${search_path}]
set target_library  /usr/synopsys/library/tsmc_library/45nm/nominal_vt/digital/Front_End/timing_power_noise/CCS/tcbn45gsbwp_120a/tcbn45gsbwptc_ccs.db
set synthetic_library [list dw_foundation.sldb]
set link_library [list ${target_library} /usr/synopsys/library/tsmc_library/45nm/nominal_vt/digital/Front_End/timing_power_noise/CCS/tcbn45gsbwp_120a/tcbn45gsbwptc_ccs.db ${synthetic_library} *]
set symbol_library "/usr/synopsys/library/tsmc_library/45nm/nominal_vt/digital/Front_End/timing_power_noise/CCS/tcbn45gsbwp_120a/tcbn45gsbwptc_ccs.db"
set designer "Bruna Nagai"

exec rm -r "~/example_tools/logical_synthesis/work/mw_HVH_45nm"
create_mw_lib -technology /home/library/tsmc_library/45nm/nominal_vt/digital/Back_End/milkyway/tcbn45gsbwp_120a/techfiles/HVH_0d5_0/tsmcn45_10lm7X2ZRDL.tf -mw_reference_library {/home/library/tsmc_library/45nm/nominal_vt/digital/Back_End/milkyway/tcbn45gsbwp_120a/frame_only_HVH_0d5_0/tcbn45gsbwp} -hier_separator {/}  -bus_naming_style {%d}  "~/example_tools/logical_synthesis/work/mw_HVH_45nm"

open_mw_lib "~/example_tools/logical_synthesis/work/mw_HVH_45nm"
check_library
set_tlu_plus_files -max_tluplus /usr/synopsys/library/tsmc_library/45nm/nominal_vt/digital/Back_End/milkyway/tcbn45gsbwp_120a/techfiles/tluplus/cln45gs_1p10m+alrdl_rcbest_top2.tluplus -min_tluplus /usr/synopsys/library/tsmc_library/45nm/nominal_vt/digital/Back_End/milkyway/tcbn45gsbwp_120a/techfiles/tluplus/cln45gs_1p10m+alrdl_rcworst_top2.tluplus -tech2itf_map /usr/synopsys/library/tsmc_library/45nm/nominal_vt/digital/Back_End/milkyway/tcbn45gsbwp_120a/techfiles/tluplus/star_10M.map
check_tlu_plus_files
suppress_message {RCEX-011 UIO-93 UID-401 UID-348 }

set HOME   "~" 
echo "HOME: ${HOME}"
set COMPILED "../compiled"
echo "COMPILED: ${COMPILED}"
