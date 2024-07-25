project -load C:/Users/User/OneDrive/Desktop/Microship_ECE552/GIT_Microchip/LED_Blinker_Logic_Analyzer/synthesis/Hanshaking_Test/scratchproject.prs
puts "Generating debug IP"
 if { [catch {write instrumentation} err] } {
    puts stderr "write instrumentation failed $err"
    exit 9
}
