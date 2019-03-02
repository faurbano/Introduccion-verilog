`timescale 1ns/1ns
module compuertas_tb();
    reg A,B;
    wire Yand,Yor,Ynot;
    compuertas cto (A,B,Yand,Yor,Ynot);

  initial begin
     $dumpfile("compuertas_tb.vcd");
     $dumpvars(0,compuertas_tb);
     $monitor("A=%b,B=%b,Yand=%b,Yor=%b,Ynot=%b",A,B,Yand,Yor,Ynot);

         A = 1'b0; B = 1'b0;
     #10 A = 1'b0; B = 1'b1;
     #10 A = 1'b1; B = 1'b0;
     #10 A = 1'b1; B = 1'b1;
     #10 A = 1'b0; B = 1'b0;
     #10 A = 1'b0; B = 1'b1;
     #10 A = 1'b1; B = 1'b0;
     #10 A = 1'b1; B = 1'b1;
     #30 $finish;
  end
initial
    #100 $display("Fin de la Simulación");
endmodule // test
