lappend search_path aes_core/trunk/rtl/verilog


## Set Design Library
define_design_lib WORK -path ./work

# Read Verilog Files from Source Folder
analyze -f verilog [list aes_cipher_top.v aes_key_expand_128.v aes_rcon.v aes_sbox.v timescale.v]

# Elaborate & Link Top-Level Design
elaborate aes_cipher_top
link
write -hier -f ddc -output unmapped/aes_cipher_top.ddc

# Set Design Constraints
create_clock -period 10 clk
set_clock_latency 0.4 [get_clocks clk]
set_clock_uncertainty 0.05 [get_clocks clk]
set_clock_transition 0.1 [get_clocks clk]

# Compile Design
compile

# Generate Report
report_design > reports/synth_design.rpt
report_area > reports/synth_area.rpt
report_timing > reports/synth_timing.rpt
report_power > reports/synth_power.rpt
report_constraint > reports/synth_const.rpt
report_clock > reports/synth_clock.rpt
report_cell > reports/synth_cell.rpt
report_path_group > reports/synth_path.rpt

#Write Output Files
write -hier -f verilog -o unmapped/aes.v
write -hier -f ddc -o unmapped/aes.ddc
write_sdc unmapped/constraints.sdc
exit
