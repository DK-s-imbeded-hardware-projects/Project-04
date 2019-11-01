module d_latch(qout,din,enable);
  output qout;
  input din,enable;

  reg qout;

  always@(enable) begin
  if(enable ==1) qout = din;
  end

  endmodule
