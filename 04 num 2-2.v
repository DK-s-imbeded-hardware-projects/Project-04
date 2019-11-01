module reset_d_latch(qout,din,reset,enable);
  output qout;
  input din,enable,reset;
  reg qout;

  always@(enable or negedge reset) begin
  if(enable ==1) qout = din;
  else if(reset ==0) qout =0;
  end

  endmodule
