module Tabla01_SOP();

  reg A, B, C;
  wire S1, S2, S3, S4, S5, S6, S7, S8, out;

  not N1(S1, A);
  not N2(S2, B);
  not N3(S3, C);
  and N4(S4, S1, S2, S3);
  and N5(S5, S1, B, S3);
  and N6(S6, A, S2, S3);
  and N7(S7, A, S2, C);
  and N8(S8, A, B, C);
  or N9(out, S4, S5, S6, S7,S8);

  initial begin
    $display("A B C | Y");
    $monitor("%b %b %b | %b", A, B, C, out);
    A=0; B=0; C=0;
    #1 C=1;
    #1 B=1; C=0;
    #1 C=1;
    #1 A=1; B=0; C=0;
    #1 C=1;
    #1 B=1; C=0;
    #1 C=1;
    #1 $finish;
    end

/*
  initial   //Esta parte esta comentada debido a que despues de ejecutarlo una ves deja de mostrar la tabla de verdad
    begin   //Si desea ver la gráfica por Gtkwave quite los "/*" al inicio y al final
      $dumpfile("Tabla01_SOP_tb.vcd");
      $dumpvars(0, Tabla01_SOP);
    end
*/

endmodule
