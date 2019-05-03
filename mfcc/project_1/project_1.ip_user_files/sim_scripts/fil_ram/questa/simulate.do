onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fil_ram_opt

do {wave.do}

view wave
view structure
view signals

do {fil_ram.udo}

run -all

quit -force
