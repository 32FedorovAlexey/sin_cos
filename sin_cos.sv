
                 
module sin_cos #(parameter WIDTH = 16, N = 5) 
              (input          logic                                clk,
               input          logic                                reset,
               output         logic    signed    [WIDTH-1 : 0]     sin,
               output         logic    signed    [WIDTH-1 : 0]     cos
              );  
              
    localparam  R = {1'b0, 1'b1, {(WIDTH - 3){1'b0}}};     
   
    localparam END_CYCLE = (((2**N)*628)/100)+1 ;         // the number of points in the  cycle 
    logic [$clog2(END_CYCLE) : 0] counter;
    logic rst; 
    
   
    assign rst = reset | (~(|counter) );
    
    always_ff @(posedge clk, posedge rst) begin
      if (rst) begin
        sin   <= '0;
        cos   <=  R;
        counter <= END_CYCLE ;
      
      end
      else begin
        counter  <=  counter - 1;
        cos      <=  cos -  $signed(sin >>> N)  ;
        sin      <=  sin +  $signed(cos >>> N)  ;
      end
    
    end
    

endmodule 