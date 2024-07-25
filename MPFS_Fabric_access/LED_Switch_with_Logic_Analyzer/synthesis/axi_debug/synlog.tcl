project -load C:/Users/User/OneDrive/Desktop/Microship_ECE552/Introduction_Tut/Logic_Analyzer/AXI_Handshaking_Tut/synthesis/axi_debug/scratchproject.prs
puts "Generating debug IP"
 if { [catch {write instrumentation} err] } {
    puts stderr "write instrumentation failed $err"
    exit 9
}
