// Code your design here
//design code for mux
module mux(
input a,b,sel,
output y);
  assign y=sel?b:a;
  
endmodule


