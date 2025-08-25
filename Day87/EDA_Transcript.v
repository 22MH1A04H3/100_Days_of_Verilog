[2025-08-25 16:56:41 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Aug 25, 2025 at 12:56:41 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
The Input sequance : 10 20 30 40 50 60 
The Sorted sequance : 60 50 40 30 20 10 
Simulation complete via $finish(1) at time 20 NS + 0
./testbench.sv:20       $finish();
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 25, 2025 at 12:56:43 EDT  (total: 00:00:02)
Done
