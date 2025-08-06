module tb;
  reg [31:0]num;
  reg sel;
  wire [31:0]sq_root,cube_root;
  
  sq_cube_root dut(.num(num),.sel(sel),.sq_root(sq_root),.cube_root(cube_root));
  initial
    begin
      for(int i=0;i<16;i++)
        begin
          num=$random();
          sel=$random();
          #10;
          
        end
      #10;
      $finish();
    end
endmodule 


