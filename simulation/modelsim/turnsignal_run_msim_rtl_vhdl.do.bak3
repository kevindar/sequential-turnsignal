transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/intelFPGA_lite/18.1/turnsignal/turnsignal.vhd}

vcom -93 -work work {D:/intelFPGA_lite/18.1/turnsignal/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
