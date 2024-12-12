
                 
module sin_cos #(parameter WIDTH = 24, N = 8) 
              (input          logic                                clk,
               input          logic                                reset,
               output         logic    signed    [WIDTH-1 : 0]     sin,
               output         logic    signed    [WIDTH-1 : 0]     cos
              );  
              
    localparam  R = {1'b0, 1'b1, {(WIDTH - 3){1'b0}}};     
	
	 localparam END_CYCLE = (((2**N)*628)/100) ;         // the number of points in the cycle 
	 logic [$clog2(END_CYCLE) : 0] counter;
	 logic rst; 
    logic signed [WIDTH-1 : 0]  tmp_sin, tmp_cos;    
	
	 assign rst = reset | (~(|counter) );
	 
    always_ff @(posedge clk, posedge rst) begin
      if (rst) begin
        sin   <= 24'h000000;
        cos   <= R;
		  counter <= END_CYCLE ;
		  tmp_sin <= (R >>>(N+1));
		  tmp_cos <= R;
      end
      else begin

        counter  <=  counter - 1;
        tmp_cos  =  cos -  $signed(sin >>> (N+1))  ;
        tmp_sin  =  sin +  $signed(cos >>> (N+1))  ;
        
		 
		  
		  cos      <=  cos -  $signed(tmp_sin >>> N)  ;
        sin      <=  sin +  $signed(tmp_cos >>> N)  ;

      end
    
    end
    
endmodule 