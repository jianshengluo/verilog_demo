onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dct_ram_opt

do {wave.do}

view wave
view structure
view signals

do {dct_ram.udo}

run -all

quit -force
