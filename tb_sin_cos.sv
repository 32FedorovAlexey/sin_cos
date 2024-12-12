module tb_sin_cos(output logic clk );
  
  localparam WIDTH = 21;

  logic reset;
  logic [WIDTH-1:0] cos, sin;
  
  sin_cos #(WIDTH, 3) dut(
                           .clk(clk),
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