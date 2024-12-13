module tb_sin_cos(output logic clk );
  
  localparam WIDTH = 16;

  logic reset;
  logic [WIDTH-1:0] cos, sin; 
  logic [15:0]      sin_16_2, cos_16_2, sin_16_3, cos_16_3, sin_16_4, cos_16_4, sin_16_5, cos_16_5, sin_16_6, cos_16_6, sin_16_7, cos_16_7; 
  logic [15:0]      sin_16_8, cos_16_8, sin_16_9, cos_16_9;
  logic [ 7:0]      sin_8_2, cos_8_2, sin_8_3, cos_8_4, sin_8_4;
  
  sin_cos #(16, 2) dut_16_2(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_16_2),
				               .cos(cos_16_2)
				          );      
							 
  sin_cos #(16, 3) dut_16_3(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_16_3),
				               .cos(cos_16_3)
				          );      
								 

	 sin_cos #(16, 4) dut_16_4(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_16_4),
				               .cos(cos_16_4)
				          );      

							 
    sin_cos #(16, 5) dut_16_5(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_16_5),
				               .cos(cos_16_5)
				          );      
	
 	sin_cos #(16, 6) dut_16_6(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_16_6),
				               .cos(cos_16_6)
				          );      

							 
    sin_cos #(16, 7) dut_16_7(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_16_7),
				               .cos(cos_16_7)
				          );      
							 
 sin_cos #(16, 8) dut_16_8(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_16_8),
				               .cos(cos_16_8)
				          );      

							 
  sin_cos #(16, 9) dut_16_9(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_16_9),
				               .cos(cos_16_9)
				          );      
	
							
							

   sin_cos #(8, 2) dut_8_2(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_8_2),
				               .cos(cos_8_2)
				          );      
  
  sin_cos #(8, 3) dut_8_3(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_8_3),
				               .cos(cos_8_3)
				          ); 
							 
  sin_cos #(8, 4) dut_8_4(
                           .clk(clk),
                           .reset(reset),
                           .sin(sin_8_4),
				               .cos(cos_8_4)
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