
                 
module sin_cos #(parameter WIDTH = 24)
              (input          logic                          clk,
               input          logic                          reset,
				   output         logic        [WIDTH-1 : 0]     sin,
				   output         logic        [WIDTH-1 : 0]     cos
				  );	
				  
	 localparam N = 5;
	 logic [WIDTH - N-1:0] d_sin, d_cos;
	 
    always_ff @(posedge clk, posedge reset) begin
	   if (reset) begin
		  sin <= 24'h 000000;
		  cos <= 24'h 100000;
		end
		else begin
//		  d_sin <= {N'(0), cos[WIDTH-1 : N]};
//		  d_cos <= sin[WIDTH-1 : N];
//		  sin <= sin + {N'(0), cos[WIDTH-1 : N]};
//		  cos <= cos - {N'(0), sin[WIDTH-1 : N]};
        d_sin <=  cos >>> N ;
        d_cos <=  sin >>> N ;
        sin   <=  sin +  cos >>> N ;
        cos   <=  cos -  sin >>> N ;

		end
	 
	 end
	 
endmodule 