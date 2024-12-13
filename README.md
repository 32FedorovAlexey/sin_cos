Генератор гармонических колебаний на основе формул.
sin(n+1) = sin(n) + cos(n) / 2^N;
cos(n+1) = cos(n) - sin(n) / 2^N;
Обявление модуля:
module sin_cos #(parameter WIDTH = 24, N = 8) 
              (input          logic                                clk,
               input          logic                                reset,
               output         logic    signed    [WIDTH-1 : 0]     sin,
               output         logic    signed    [WIDTH-1 : 0]     cos
              );  

параметр WIDTH - разрядность выходных сигналов 
N определяет количество точек на период по формуле Nотсч = 6.28*2^N  
