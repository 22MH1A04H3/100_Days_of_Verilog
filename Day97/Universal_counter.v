module u_counter#(parameter width=9)(
input clk,rst,
input en,
  output reg[3:0]count);
  
  always@(posedge clk)
    begin
      if(rst)
        count<=4'd0;
      else if(en)
        begin
          if(count == width)
            count<=4'd0;
          else
            count<=count+1;
        end
     
    end
endmodule
