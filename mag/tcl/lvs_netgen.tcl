set layout [readnet spice $project.lvs.spice]
set source [readnet spice /dev/null]
readnet spice $::env(PDK_ROOT)/$::env(PDK)/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $source
# top level GL verilog
readnet verilog ../src/project.v $source
# add an GL verilog of your digital blocks:
# add any spice files of your analog blocks:
readnet spice ../xschem/simulation/variable_delay_dummy.spice $source
readnet spice ../xschem/simulation/variable_delay_short.spice $source
readnet spice ../xschem/simulation/input_stage.spice $source
readnet spice tdc.spice $source
lvs "$layout $project" "$source $project" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox
