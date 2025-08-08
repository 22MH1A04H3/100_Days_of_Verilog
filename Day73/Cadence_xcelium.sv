[2025-08-08 09:55:46 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Aug 08, 2025 at 05:55:47 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		$unit_0x67f934e9
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
Generated stimulus a = 0 b= 1 sel = 1  
Drived  stimulus a1 = 0 b1= 1 sel1 = 1 
a = 0      b= 1      sel = 1  y=1  
Generated stimulus a = 1 b= 1 sel = 1  
Drived  stimulus a1 = 1 b1= 1 sel1 = 1 
a = 1      b= 1      sel = 1  y=1  
Generated stimulus a = 1 b= 0 sel = 1  
Drived  stimulus a1 = 1 b1= 0 sel1 = 1 
a = 1      b= 0      sel = 1  y=0  
Generated stimulus a = 1 b= 0 sel = 1  
Drived  stimulus a1 = 1 b1= 0 sel1 = 1 
a = 1      b= 0      sel = 1  y=0  
Generated stimulus a = 1 b= 0 sel = 1  
Drived  stimulus a1 = 1 b1= 0 sel1 = 1 
a = 1      b= 0      sel = 1  y=0  
Generated stimulus a = 0 b= 1 sel = 0  
Drived  stimulus a1 = 0 b1= 1 sel1 = 0 
a = 0      b= 1      sel = 0  y=0  
Generated stimulus a = 1 b= 1 sel = 0  
Drived  stimulus a1 = 1 b1= 1 sel1 = 0 
a = 1      b= 1      sel = 0  y=1  
Generated stimulus a = 1 b= 0 sel = 0  
Drived  stimulus a1 = 1 b1= 0 sel1 = 0 
a = 1      b= 0      sel = 0  y=1  
Generated stimulus a = 0 b= 1 sel = 0  
Drived  stimulus a1 = 0 b1= 1 sel1 = 0 
a = 0      b= 1      sel = 0  y=0  
Generated stimulus a = 1 b= 1 sel = 1  
Drived  stimulus a1 = 1 b1= 1 sel1 = 1 
a = 1      b= 1      sel = 1  y=1  
Simulation complete via $finish(1) at time 1100 NS + 0
./testbench.sv:108       $finish();
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 08, 2025 at 05:55:48 EDT  (total: 00:00:01)
Done
