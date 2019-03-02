//Descripción de las compuertas lógicas en Verilog
module compuertas(input A,B, output Yand, Yor, Ynot);
  and C1 (Yand,A,B);
  or C2 (Yor,A,B);
  not C3 (Ynot,A);
endmodule
