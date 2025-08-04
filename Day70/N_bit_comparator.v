module n_bit_comp#(parameter depth=6)(
  input [depth-1:0]a,b,
output reg l_t,g_t,eq,neq);
  always@(*)
    begin
      if(a<b)
        begin
          l_t<=1;
          g_t<=0;
          eq<=0;
          neq<=0;
        end
      else if(a>b)
        begin
         l_t<=0;
          g_t<=1;
          eq<=0;
          neq<=0; 
        end
      else if(a==b)
        begin
          l_t<=0;
          g_t<=0;
          eq<=1;
          neq<=0;
        end
      else
        begin
          l_t<=0;
          g_t<=0;
          eq<=0;
          neq<=1;
        end
        
    end
endmodule
