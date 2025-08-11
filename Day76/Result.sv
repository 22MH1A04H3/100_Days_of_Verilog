[2025-08-11 13:06:16 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Aug 11, 2025 at 09:06:16 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		$unit_0x67f934e9
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
The generated stimulus is din=0
The generated stimulus is din=1
The generated stimulus is din=1
The generated stimulus is din=1
The Drive Stimulus is din=0 | dout=0
The Drive Stimulus is din=1 | dout=0
The Drive Stimulus is din=1 | dout=1
The Drive Stimulus is din=1 | dout=1
Simulation complete via $finish(1) at time 1010 NS + 0
./testbench.sv:50       $finish();
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 11, 2025 at 09:06:18 EDT  (total: 00:00:02)
Done
