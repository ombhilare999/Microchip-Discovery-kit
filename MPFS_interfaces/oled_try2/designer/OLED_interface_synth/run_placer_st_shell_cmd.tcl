read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/designer/OLED_interface_synth/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/designer/OLED_interface_synth/OLED_interface_synth_layout_combinational_loops.xml}
report -type slack {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/designer/OLED_interface_synth/pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/designer/OLED_interface_synth/OLED_interface_synth_place_and_route_constraint_coverage.xml}]
set reportfile {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/sensor_milestone/oled/libero_project/oled_hello/oled_try2/designer/OLED_interface_synth/coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp