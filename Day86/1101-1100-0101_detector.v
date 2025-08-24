//sequance detector-1101-1100-0101
module detect(
  input din,clk,reset,
  output reg out
);
  reg [11:0]a;
  //reg [3:0]b;
  always@(posedge clk)
    begin
      if(reset)
        a<=12'b0;
      else 
        a<={a[10:0],din};
      
    end
 // assign b ={a[2:0],din};
  always@(*)
    begin
      out =(a==12'b1101_1100_0101)?1:0;
    end
  
  
endmodule
