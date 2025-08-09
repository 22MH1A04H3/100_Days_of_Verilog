[2025-08-09 10:34:32 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP2947 "Default parameter values used for class std::mailbox specialization." "testbench.sv" 4  14
WARNING VCP2947 "Default parameter values used for class std::mailbox specialization." "testbench.sv" 24  14
WARNING VCP2947 "Default parameter values used for class std::mailbox specialization." "testbench.sv" 47  14
MESSAGE "Unit top modules: tb."
SUCCESS "Compile success 0 Errors 3 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... done : 0.0 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 1 (50.00%) other processes in SLP
# SLP: 2 (1.16%) signals in SLP and 13 (7.51%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 5468 kB (elbread=455 elab2=4867 kernel=145 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Generated Stimulus a=0 | b=1 cin=1
# KERNEL: Generated Stimulus a=1 | b=1 cin=1
# KERNEL: Generated Stimulus a=1 | b=0 cin=1
# KERNEL: Generated Stimulus a=1 | b=0 cin=1
# KERNEL: Generated Stimulus a=1 | b=0 cin=1
# KERNEL: Generated Stimulus a=0 | b=1 cin=0
# KERNEL: Generated Stimulus a=1 | b=1 cin=0
# KERNEL: Generated Stimulus a=1 | b=0 cin=0
# KERNEL: Generated Stimulus a=0 | b=1 cin=0
# KERNEL: Generated Stimulus a=1 | b=1 cin=1
# KERNEL: Driven stimulus is a=0 | b=1 |cin =1 |sum=0 |cout=1
# KERNEL: Driven stimulus is a=1 | b=1 |cin =1 |sum=1 |cout=1
# KERNEL: Driven stimulus is a=1 | b=0 |cin =1 |sum=0 |cout=1
# KERNEL: Driven stimulus is a=1 | b=0 |cin =1 |sum=0 |cout=1
# KERNEL: Driven stimulus is a=1 | b=0 |cin =1 |sum=0 |cout=1
# KERNEL: Driven stimulus is a=0 | b=1 |cin =0 |sum=1 |cout=0
# KERNEL: Driven stimulus is a=1 | b=1 |cin =0 |sum=0 |cout=1
# KERNEL: Driven stimulus is a=1 | b=0 |cin =0 |sum=1 |cout=0
# KERNEL: Driven stimulus is a=0 | b=1 |cin =0 |sum=1 |cout=0
# KERNEL: Driven stimulus is a=1 | b=1 |cin =1 |sum=1 |cout=1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
