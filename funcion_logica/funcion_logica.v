//Descripción de las compuertas lógicas en Verilog
module funcion_logica(input X,Y,Z, output F);
  wire t1,t2,t3;
  and C1 (t1,X,Y);
  or C2 (t2,X,Y);
  and C3 (t3,t2,Z);
  or C4 (F,t1,t3);
  //wire F = (X & Y) | ((X | Y) & Z);
  //reg F;
  //always @(X or Y or Z)
  //    F = (X & Y) | ((X | Y) & Z);
endmodule
