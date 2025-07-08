module tb;
  reg [3:0]a,b;
  reg m;
  wire [3:0]sum;
  wire cout;
  twos_compliment_adder dut(.a(a),.b(b),.sum(sum),.m(m),.cout(cout));
  initial
    begin
      $monitor("a = %0b b = %0b m = %0b sum = %0b and cout = %0b ",a,b,m,sum,cout);
      a = 4'b1010;
		b = 4'b1100;
		m = 0;
		#10;
		
		a = 4'b1000;
		b = 4'b0100;
		m = 0;
		#10;
		
		a = 4'b1010;
		b = 4'b0010;
		m = 0;
		#10;
		
		a = 4'b1111;
		b = 4'b1010;
		m = 1;
		#10;
		
		a = 4'b1010;
		b = 4'b0110;
		m = 1;
		#10;
		
		a = 4'b1001;
		b = 4'b0100;
		m = 1;
		#10;
		
		$finish;
		
    end
endmodule
