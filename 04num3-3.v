module block_shift(E,D,C,B,A,clk);
  input clk;
  output A,B,C,D,E;
  reg A,B,C,D,E;

  initial begin
  A =1; B=1; C=0; D=1; E=1;
  end

  always @(posedge clk) begin
  A=B;
  B=C;
  C=D;
  D=E;
  end
  
  endmodule
