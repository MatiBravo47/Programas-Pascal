program Cap1Eje1;
  Uses crt;
  Var
    N,M,BNec,NNec:Real;
begin
  clrscr;
  NNec:=0;
  BNec:=0;
  Writeln('Ingrese cantidad de pintura blanca');(Readln(N));
  NNec:=((70*N)/30);
  Writeln('Necesitas ',NNec,'de pintura negra');
  Writeln('Ingrese cantidad de pintura negra');(Readln(M));
  BNec:=((30*M)/70);
  Writeln('Necesitas',BNec,'de pintura blanca');
  Readln;
end.

