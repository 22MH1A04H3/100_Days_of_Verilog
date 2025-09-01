module dual_edge_trigger_ff(
  input clk,reset,din,
output q);
  reg q1,q2;
  assign q=clk?q1:q2;
  always@(posedge clk)
    begin
      if(reset)
        q1<=0;
      else
        q1<=din;
    end
  always@(negedge clk)
    begin
      if(reset)
        q2<=0;
      else
        q2<=din;
    end
  
endmodule
