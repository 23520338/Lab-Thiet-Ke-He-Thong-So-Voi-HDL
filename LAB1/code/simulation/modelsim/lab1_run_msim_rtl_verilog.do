transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB1 {E:/HDL_ALL/LAB1/lab1.v}
vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB1 {E:/HDL_ALL/LAB1/clk_div_1hz.v}
vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB1 {E:/HDL_ALL/LAB1/seg7_decoder.v}
vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB1 {E:/HDL_ALL/LAB1/top_module.v}
vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB1/output_files {E:/HDL_ALL/LAB1/output_files/final.v}

vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB1 {E:/HDL_ALL/LAB1/tb_lab1.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_lab1

add wave *
view structure
view signals
run -all
