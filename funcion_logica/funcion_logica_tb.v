`timescale 1ns/1ns
module funcion_logica_tb();
    reg X,Y,Z;
    wire F;
    funcion_logica cto (X,Y,Z,F);

  initial begin
     $dumpfile("funcion_logica_tb.vcd");
     $dumpvars(0,funcion_logica_tb);
     $monitor("X=%b,Y=%b,Z=%b,F=%b",X,Y,Z,F);

         X = 1'b0; Y = 1'b0; Z = 1'b0;
     #10 X = 1'b0; Y = 1'b0; Z = 1'b1;
     #10 X = 1'b0; Y = 1'b1; Z = 1'b0;
     #10 X = 1'b0; Y = 1'b1; Z = 1'b1;
     #10 X = 1'b1; Y = 1'b0; Z = 1'b0;
     #10 X = 1'b1; Y = 1'b0; Z = 1'b1;
     #10 X = 1'b1; Y = 1'b1; Z = 1'b0;
     #10 X = 1'b1; Y = 1'b1; Z = 1'b1;
     #30 $finish;
  end
initial
    #100 $display("Fin de la Simulación");
endmodule // test
