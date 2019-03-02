/*
Descripción: implementación de un multiplexor de 2 a 1
Autor: Fernando Aparicio Urbano Molano
Fecha: marzo 1 de 2019
Versión: 1.0
*/
module mux2a1(input Sel,X,Y, output Yout);
   assign Yout = Sel ? Y : X;
endmodule
