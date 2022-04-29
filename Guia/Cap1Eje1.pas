program Cap1Eje1;
Uses crt;
Const
  Blanca=4.5;
  negra=9.5;
Var
  N,M:Real;
begin
clrscr;
Writeln('Ingrese Cantidad de pintura blanca');
Readln(N);
Writeln('Ingrese cantidad de pintura negra');
Readln(M);
If N<Blanca then
Writeln('Necesita ',(Blanca-N):8:2,' litros de pintura blanca')
else
Writeln('No necesita mas pintura blanca');
If M<Negra then
Writeln('Necesita',(Negra-M):8:2,' litros de pintura negra');
Readln;
end.

