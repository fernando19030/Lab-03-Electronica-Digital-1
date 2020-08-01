module Tabla04_SOP();

  reg A, B, C, D;
  wire S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, out;

  not N1(S1, A);
  not N2(S2, B);
  not N3(S3, C);
  not N4(S4, D);
  and N5(S5, S1, S2, S3, S4);
  and N6(S6, S1, S2, C, S4);
  and N7(S7, S1, S2, C, D);
  and N8(S8, S1, B, C, S4);
  and N9(S9, S1, B, C, D);
  and N10(S10, A, S2, S3, S4);
  and N11(S11, A, S2, C, S4);
  or N12(out, S5, S6, S7, S8, S9, S10, S11);


  initial begin
    $display("A B C D | Y");
    $monitor("%b %b %b %b | %b", A, B, C, D, out);
    A=0; B=0; C=0; D=0;
    #1 D=1;
    #1 C=1; D=0;
    #1 D=1;
    #1 B=1; C=0; D=0;
    #1 D=1;
    #1 C=1; D=0;
    #1 D=1;
    #1 A=1; B=0; C=0; D=0;
    #1 D=1;
    #1 C=1; D=0;
    #1 D=1;
    #1 B=1; C=0; D=0;
    #1 D=1;
    #1 C=1; D=0;
    #1 D=1;
    #1 $finish;
  end

/*
  initial   //Esta parte esta comentada debido a que despues de ejecutarlo una ves deja de mostrar la tabla de verdad
    begin   //Si desea ver la gráfica por Gtkwave quite los "/*" al inicio y al final
      $dumpfile("Tabla04_SOP_tb.vcd");
      $dumpvars(0, Tabla04_SOP);
    end
*/

endmodule
