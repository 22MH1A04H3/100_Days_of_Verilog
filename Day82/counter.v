module counter(
  input wire clk,rst,
  output reg [7:0] count
  );


always@(posedge clk or negedge rst)	// When will Always Block Be Triggered
begin
	if(!rst)
		// How Output reacts when Reset Is Asserted
		count=0;
	else
		// How Output reacts when Rising Edge of Clock Arrives?
		count=count+1;
end
endmodule
