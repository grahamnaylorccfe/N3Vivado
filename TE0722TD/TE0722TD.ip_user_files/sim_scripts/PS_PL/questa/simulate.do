onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "/opt/Xilinx16/Vivado/2016.2/lib/lnx64.o/libxil_vsim.so" -lib xil_defaultlib PS_PL_opt

do {wave.do}

view wave
view structure
view signals

do {PS_PL.udo}

run -all

quit -force
