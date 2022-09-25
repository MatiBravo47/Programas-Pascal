program Cap1Eje1;
  Uses crt;
  Var
    N, M, BNec, NNec: Real;
begin
  clrscr;
  NNec:= 0;
  BNec:= 0;
  Writeln('Ingrese cantidad de litros de pintura blanca'); Readln(N);
  Writeln('Ingrese cantidad de litros de pintura negra '); Readln(M);
  NNec:= ((70 * N) / 30);
  BNec:= ((30 * M) / 70);
  Writeln('Necesitas comprar ',NNec:4:2,' litros de pintura negra');
  Writeln('Necesitas comprar ',BNec:4:2,' litros de pintura blanca');
  Readln;
end.
