module tb;
reg rst,clk;
reg [1:0]sel;
reg shift_left,shift_right;
reg [3:0]din;
wire [3:0]q;
usr uut(.clk(clk),.rst(rst),.shift_left(shift_left),.shift_right(shift_right),.din(din),.q(q),.sel(sel));
initial
begin
clk=0;
forever #5 clk=~clk;

end



initial
begin

   clk = 0;
    rst = 1;
    sel = 2'b00;
    din = 4'b0000;
    shift_left = 0;
    shift_right = 0;
    
    // Release reset
    #10 rst = 0;

    // Parallel load
    #10 sel = 2'b11; din = 4'b1010;

    // Hold
    #10 sel = 2'b00;

    // Shift right
    #10 sel = 2'b01; shift_right = 1;

    // Shift left
    #10 sel = 2'b10; shift_left = 0;

    // Shift left again
    #10 sel = 2'b10; shift_left = 1;

    // Hold
    #10 sel = 2'b00;

    #20 $finish;
end
endmodule
