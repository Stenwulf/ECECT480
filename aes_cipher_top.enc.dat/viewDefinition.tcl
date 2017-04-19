if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name NominalLibrary\
   -timing\
    [list ${::IMEX::libVar}/lib/typ/PnomV180T025_STD_CELL_7RF.lib]
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name nom_delay\
   -library_set NominalLibrary
create_constraint_mode -name constraints\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/constraints.sdc]
create_analysis_view -name NominalAnalysis -constraint_mode constraints -delay_corner nom_delay
set_analysis_view -setup [list NominalAnalysis] -hold [list NominalAnalysis]
