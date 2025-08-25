[2025-08-25 17:34:05 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Aug 25, 2025 at 13:34:05 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
The Input sequance : 60 50 40 30 20 10 
The Sorted sequance : 10 20 30 40 50 60 
Simulation complete via $finish(1) at time 20 NS + 0
./testbench.sv:20       $finish();
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 25, 2025 at 13:34:07 EDT  (total: 00:00:02)
Done
