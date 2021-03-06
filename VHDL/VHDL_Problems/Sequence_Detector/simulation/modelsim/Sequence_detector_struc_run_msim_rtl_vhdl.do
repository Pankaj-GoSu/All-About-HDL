transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Code For Life/HDL/VHDL/VHDL_Problems/Sequence_Detector/D_FF.vhd}
vcom -93 -work work {D:/Code For Life/HDL/VHDL/VHDL_Problems/Sequence_Detector/DUT.vhd}
vcom -93 -work work {D:/Code For Life/HDL/VHDL/VHDL_Problems/Sequence_Detector/Sequence_detector_struc.vhd}

vcom -93 -work work {D:/Code For Life/HDL/VHDL/VHDL_Problems/Sequence_Detector/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
