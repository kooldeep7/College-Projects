connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292A8AD9BA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292A8AD9BA"} -index 0
dow C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab6/lab6.sdk/MicroBlazeDeterminant/Debug/MicroBlazeDeterminant.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292A8AD9BA"} -index 0
con
