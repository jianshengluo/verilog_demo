onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ln_ip_opt

do {wave.do}

view wave
view structure
view signals

do {ln_ip.udo}

run -all

quit -force
