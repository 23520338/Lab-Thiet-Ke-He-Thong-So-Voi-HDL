transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB2/BaiTap1/MedianFilter {E:/HDL_ALL/LAB2/BaiTap1/MedianFilter/MedianFilter.v}
vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB2/BaiTap1/MedianFilter {E:/HDL_ALL/LAB2/BaiTap1/MedianFilter/median9.v}

vlog -vlog01compat -work work +incdir+E:/HDL_ALL/LAB2/BaiTap1/MedianFilter {E:/HDL_ALL/LAB2/BaiTap1/MedianFilter/tb_MedianFilter.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_MedianFilter

add wave *
view structure
view signals
run -all
