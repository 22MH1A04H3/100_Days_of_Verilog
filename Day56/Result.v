[2025-06-10 04:12:06 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: tb."
SUCCESS "Compile success 0 Errors 0 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# KERNEL: PLI/VHPI kernel's engine initialization done.
# PLI: Loading library '/usr/share/Riviera-PRO/bin/libsystf.so'
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... done : 0.0 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 4 (100.00%) other processes in SLP
# SLP: 8 (100.00%) signals in SLP and 0 interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4669 kB (elbread=427 elab2=4107 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: reset =0  enable =0 , q =xxxx
# KERNEL: reset =0  enable =0 , q =0
# KERNEL: reset =1  enable =1 , q =0
# KERNEL: reset =1  enable =1 , q =1
# KERNEL: reset =1  enable =1 , q =10
# KERNEL: reset =1  enable =1 , q =11
# KERNEL: reset =1  enable =1 , q =100
# KERNEL: reset =1  enable =1 , q =101
# KERNEL: reset =1  enable =1 , q =110
# KERNEL: reset =1  enable =1 , q =111
# KERNEL: reset =1  enable =1 , q =1000
# KERNEL: reset =1  enable =1 , q =1001
# KERNEL: reset =1  enable =1 , q =1010
# KERNEL: reset =0  enable =0 , q =1010
# KERNEL: reset =0  enable =0 , q =0
# KERNEL: reset =1  enable =0 , q =0
# KERNEL: reset =1  enable =0 , q =1111
# KERNEL: reset =1  enable =0 , q =1110
# KERNEL: reset =1  enable =0 , q =1101
# KERNEL: reset =1  enable =0 , q =1100
# KERNEL: reset =1  enable =0 , q =1011
# KERNEL: reset =1  enable =0 , q =1010
# KERNEL: reset =1  enable =0 , q =1001
# KERNEL: reset =1  enable =0 , q =1000
# KERNEL: reset =1  enable =0 , q =111
# KERNEL: reset =1  enable =0 , q =110
# RUNTIME: Info: RUNTIME_0068 testbench.sv (28): $finish called.
# KERNEL: Time: 220 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#14_2@.
# KERNEL: stopped at time: 220 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
