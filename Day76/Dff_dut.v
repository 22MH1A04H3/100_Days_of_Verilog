module dff(
input din,clk,rst,
output reg q);
  always@(posedge clk)
    begin
      if(rst)
        q<=0;
      else 
        q<=din;
    end
endmodule


interface inter;
  logic din,clk,rst;
  logic q;
  
endinterface
