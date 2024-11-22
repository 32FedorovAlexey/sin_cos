module tb_sin_cos(output logic clk);
  
  localparam WIDTH = 24;

  logic reset;
  logic [WIDTH-1:0] sin,cos;
  
  sin_cos #(24) dut(.clk(clk),
                    .reset(reset),
                    .sin(sin),
				        .cos(cos)
				       );      

  
  initial begin
    #00    reset = 1;
           clk   = 0;
    #20    reset = 0;   	
  
    
  end
  

  always begin
   #05 clk = ~clk;
  end 

endmodule 