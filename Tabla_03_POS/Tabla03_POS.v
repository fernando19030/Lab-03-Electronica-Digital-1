module Tabla03_POS();

  reg A, B, C, D;
  wire S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, out;

  not N1(S1, A);
  not N2(S2, B);
  not N3(S3, C);
  not N4(S4, D);
  or N5(S5, A, S2, C, D);
  or N6(S6, A, S2, C, S4);
  or N7(S7, A, S2, S3, D);
  or N8(S8, A, S2, S3, S4);
  or N9(S9, S1, B, C, S4);
  or N10(S10, S1, B, S3, S4);
  or N11(S11, S1, S2, C, D);
  or N12(S12, S1, S2, C, S4);
  or N13(S13, S1, S2, S3, S4);
  and N14(out, S5, S6, S7, S8, S9, S10, S11, S12, S13);

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
      $dumpfile("Tabla03_POS_tb.vcd");
      $dumpvars(0, Tabla03_POS);
    end
*/

endmodule
