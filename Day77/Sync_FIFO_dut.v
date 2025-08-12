
module fifo#(parameter depth=16,
            parameter width=8)
  (
  input  clk,rst,w_en,r_en,
    input [width-1:0]din,
    output  reg [width-1:0]dout,
    output  reg full,empty);
  
  //fifo_mem
  reg [width-1:0]mem[depth-1:0];
  
  reg [width-1:0]wr_p;
  reg [width-1:0]rd_p;
  reg [width-1:0]counter;
  
  
  always@(posedge clk)
    begin
      if(rst)//synchrounous reset
        begin
          wr_p<=0;
          rd_p<=0;
          counter<=0;
          dout<=0;
         
          
        end
      else
        begin
          if(w_en && !full)
            begin
              mem[wr_p]<=din;
              wr_p<=wr_p+1;
              counter<=counter+1;
              
            end
          else if(r_en && !empty)
            begin
              dout<=mem[rd_p];
              rd_p<=rd_p+1;
              counter<= counter-1;
              
            end
          else
            begin
              full<=(counter==depth);
              empty<=(counter==0);
              
            end
        end
    end
endmodule

