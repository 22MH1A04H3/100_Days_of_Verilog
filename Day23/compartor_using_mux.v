//1-bit comparator using 4x1 mux
module comp(
input a,b,
output gt,lt,eq);
wire [1:0]s;
assign s={a,b};
assign gt=(s==2'b10)?1'b1:1'b0;
assign lt=(s==2'b01)?1'b1:1'b0;
assign eq=(s==2'b00 | s==2'b11)?1'b1:1'b0;

endmodule
