onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fixed2float_opt

do {wave.do}

view wave
view structure
view signals

do {fixed2float.udo}

run -all

quit -force
