module mux_shift(in,a,b,c,sel,clk);
  input in,clk;
  input [1:0]sel;
  output a,b,c;
  reg a,b,c;

  initial begin
  a=1; b=1; c=1;
  end

  always@(posedge clk) begin
  case(sel)

  0: begin c<=in; b<=c; a<=b; end
  1: begin c<=a; b<=c; a<=b; end
  2: begin c<=b; b<=c; a<=b; end 
  3: begin c<=c; b<=c; a<=b; end
  endcase
  end
  endmodule
