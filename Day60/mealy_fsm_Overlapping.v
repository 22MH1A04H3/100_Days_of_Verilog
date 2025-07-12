module fsm(
    input din,clk,rst,
    output reg out);
    
    //states declaration
    
    typedef enum logic[2:0]{s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100}state_t;
    state_t current_state,next_state;
    
    //reset logic
    always@(posedge clk)
        begin
          if(rst)
                current_state<=s0;
            else
                current_state<=next_state;
            
        end
    
    //state transition and output logic
    always@(*)
        begin
            case(current_state)
                s0:
                    begin
                      next_state<=din?s1:s0;
                        out<=0;
                    end
                
                s1:
                    begin
                      next_state<=din?s2:s0;
                        out<=0;
                    end
                s2:
                    begin
                      next_state<=din?s1:s3;
                        out<=0;
                    end
                        
                        s3:
                    begin
                      next_state<=din?s1:s4;
                        out<=0;
                    end
                        
                        
                        s4:
                    begin
                      next_state<=din?s1:s0;
                        out<=1;
                    end
                        
                       default:
                    begin
                      next_state<=s0;
                        out<=0;
                    end
                        
            endcase
        end
endmodule
