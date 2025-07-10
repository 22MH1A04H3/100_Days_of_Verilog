//one_hot_fsm
module fsm(
input clk,reset,
  output reg[3:0]state,
  output reg[1:0]out );
  
  parameter [3:0]IDEAL=4'b0001,s1=4'b0010,s2=4'b0100,s3=4'b1000;

 
  //state transition and output logic 
  always@(posedge clk)
    begin
      if(reset)
        begin
        state<=IDEAL;
          out<=2'b00;
        end
      else
        begin
          case(state)
            IDEAL:begin
              state<=s1;
              out<=2'b00;
              
            end
            s1:
              begin
              state<=s2;
              out<=2'b01;  
              end
            s2:
              begin
                state<=s3;
              out<=2'b10;
              end
            s3:
begin
  state<=IDEAL;
  out<=2'b11;
  
end
            default:
              begin
                state<=IDEAL;
                out<=2'b00;
              end
           

          endcase
        end
      
    end
endmodule
