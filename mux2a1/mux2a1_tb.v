`timescale 1ns/1ns
module mux2a1_tb();
    reg Sel,X,Y;
    wire Yout;
    mux2a1 cto (Sel,X,Y,Yout);

  initial begin
     $dumpfile("mux2a1_tb.vcd");
     $dumpvars(0,mux2a1_tb);
     $monitor("Sel=%b,X=%b,Y=%b,Yout=%b",Sel,X,Y,Yout);

         Sel = 1'b0; X = 1'b0; Y = 1'b0;
     #10 Sel = 1'b0; X = 1'b0; Y = 1'b1;
     #10 Sel = 1'b0; X = 1'b1; Y = 1'b0;
     #10 Sel = 1'b0; X = 1'b1; Y = 1'b1;
     #10 Sel = 1'b1; X = 1'b0; Y = 1'b0;
     #10 Sel = 1'b1; X = 1'b0; Y = 1'b1;
     #10 Sel = 1'b1; X = 1'b1; Y = 1'b0;
     #10 Sel = 1'b1; X = 1'b1; Y = 1'b1;
     #30 $finish;
  end
initial
    #100 $display("Fin de la Simulación");
endmodule // test
