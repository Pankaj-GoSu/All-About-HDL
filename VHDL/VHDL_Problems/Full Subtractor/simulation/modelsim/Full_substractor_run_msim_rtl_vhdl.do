transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Code For Life/HDL/VHDL/VHDL_Problems/Full Subtractor/Gates.vhd}
vcom -93 -work work {D:/Code For Life/HDL/VHDL/VHDL_Problems/Full Subtractor/Full_substractor.vhd}

vcom -93 -work work {D:/Code For Life/HDL/VHDL/VHDL_Problems/Full Subtractor/my_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  my_tb

add wave *
view structure
view signals
run -all
