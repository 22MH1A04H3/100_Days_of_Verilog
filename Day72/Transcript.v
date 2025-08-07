[2025-08-07 06:31:07 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Aug 07, 2025 at 02:31:08 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
base =x exp = x result = x finish = x  
base =x exp = x result = 0 finish = 0  
base =2 exp = 5 result = 0 finish = 0  
base =2 exp = 5 result = 32 finish = 0  
base =2 exp = 5 result = 32 finish = 1  
Simulation complete via $finish(1) at time 120 NS + 0
./testbench.sv:29       $finish();
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 07, 2025 at 02:31:09 EDT  (total: 00:00:01)
Done
