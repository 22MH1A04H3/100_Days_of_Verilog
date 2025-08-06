module sq_cube_root(
  input [31:0]num,
input sel,
  output reg [31:0]sq_root,
  output reg [31:0]cube_root);
  
  always@(num or sel)
    begin
      if(sel)
        begin
        find_sq_root(num,sq_root);
          $display("the square root values of %0d is = %0d",num,sq_root);
        end
      else
        begin
          find_cube_root(num,cube_root);
          $display("the cube root values of %0d is = %0d",num,cube_root);
          
        end
    end
  task find_sq_root;
    input [31:0]num;
    output [31:0]sq_root;
    begin
      sq_root=num**(0.5);
      
    end
  endtask
  
  task find_cube_root;
    input [31:0]num;
    output [31:0]cube_root;
    begin
      cube_root=num**(0.33);
    end
  endtask
endmodule
