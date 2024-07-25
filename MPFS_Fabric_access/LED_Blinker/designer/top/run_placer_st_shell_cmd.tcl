read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {C:/Users/User/OneDrive/Desktop/Microship_ECE552/GIT_Microchip/LED_Blinker/designer/top/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker\designer\top\top_layout_combinational_loops.xml}
report -type slack {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker\designer\top\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker\designer\top\top_place_and_route_constraint_coverage.xml}]
set reportfile {C:\Users\User\OneDrive\Desktop\Microship_ECE552\GIT_Microchip\LED_Blinker\designer\top\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp