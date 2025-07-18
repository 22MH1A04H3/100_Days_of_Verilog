module fsm(
input clk,rst,din,v,
output reg y);
  typedef enum logic[2:0]{idle=3'b000,s1a=3'b001,s1b=3'b010,s0a=3'b011,s0b=3'b100}state;
  
  state c_s,n_s;
  
  always@(posedge clk)
    begin
      if(rst)
        c_s<=idle;
      else
        c_s<=n_s;
    end
  
  
  
  always@(c_s,din,v)
    begin
      if(v)
        begin
          case(c_s)
          idle:n_s<=din?s1a:s0a;
          s1a:n_s<=s1b;
          s1b:n_s<=din?s1a:s0a;
          s0a:n_s<=s0b;
          s0b:n_s<=din?s1a:s0a;
          default:n_s<=idle;
          endcase
        end
    end
  
  
  always@(c_s)
    begin
      case(c_s)
        idle:y<=1'b0;
        s1a:y<=1'b1;
        s1b:y<=1'b0;
        s0a:y<=1'b0;
        s0b:y<=1'b1;
        default:y<=1'b0;
      endcase
    end
endmodule
