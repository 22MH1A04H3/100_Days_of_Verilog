[2025-08-10 17:19:42 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Aug 10, 2025 at 13:19:42 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		$unit_0x67f934e9
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
The Generated Transaction is a=0 | b=1 | cin=1 at 0
The Generated Transaction is a=1 | b=1 | cin=1 at 0
The Generated Transaction is a=1 | b=0 | cin=1 at 0
Drived transaction a=0| b=1 | cin=1 | sum = 0| cout=1 at10
Monitored Transaction is a=1| b=1 | cin=1 | sum = 1| cout=1 at 20
Drived transaction a=1| b=1 | cin=1 | sum = 1| cout=1 at20
Verification Sucsses...!!! at 30
Drived transaction a=1| b=0 | cin=1 | sum = 0| cout=1 at30
Monitored Transaction is a=1| b=0 | cin=1 | sum = 0| cout=1 at 40
Verification Sucsses...!!! at 60
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 10, 2025 at 13:19:44 EDT  (total: 00:00:02)
