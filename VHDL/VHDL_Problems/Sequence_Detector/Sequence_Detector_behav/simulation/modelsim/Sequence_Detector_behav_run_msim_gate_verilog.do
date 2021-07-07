transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Sequence_Detector_behav.vo}

vcom -93 -work work {D:/Code For Life/HDL/VHDL/VHDL_Problems/Sequence_Detector/Sequence_Detector_behav/Testbench.vhd}

vsim -t 1ps -L maxv_ver -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
