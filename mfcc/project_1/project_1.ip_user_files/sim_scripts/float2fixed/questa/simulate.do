onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib float2fixed_opt

do {wave.do}

view wave
view structure
view signals

do {float2fixed.udo}

run -all

quit -force
