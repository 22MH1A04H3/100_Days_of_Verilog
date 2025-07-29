module model #(parameter
  DATA_WIDTH = 16
) (
  input [DATA_WIDTH-1:0] din,
  output logic [$clog2(DATA_WIDTH):0] dout
);

logic [$clog2(DATA_WIDTH):0]temp;
always@(*)
begin
  temp=0;

for(int i=0;i<DATA_WIDTH;i++)

begin
  temp+=din[i];

end
end
assign dout=temp;

endmodule
