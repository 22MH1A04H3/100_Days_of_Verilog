// Simple TB

module day13_tb ();

  reg [3:0]a_i,sel_i;
  wire y_ter_o,y_case_o,y_ifelse_o,y_loop_o, y_aor_o;
  
  day13 dut(.a_i(a_i),.sel_i(sel_i),.y_ter_o(y_ter_o),.y_case_o(y_case_o),.y_ifelse_o(y_ifelse_o),.y_loop_o(y_loop_o),.y_aor_o(y_aor_o));
  initial
  begin
    repeat(20)
      begin
        a_i=$random;
        sel_i=$random;
        #10;
        
      end
    #10;
    $finish;
    
  end
endmodule










