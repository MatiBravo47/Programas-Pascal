program Cap1Eje5;
Uses crt;
Var
  N,M:Integer;
  Porc,baldosas:Real;


begin
  Clrscr;
  Writeln('Ingrese largo de la superficie que se quiere embaldosar');
  Readln(N);
  Writeln('Ingrese ancho de la superficie que se quiere embaldosar');
  Readln(M);
  Porc:= ((N*M)*100)/(10*30);
  Writeln('Representa el ',Porc:5:2,'%  del total del terreno');
  Baldosas:= (N*M)/(0.25*2);
  Writeln('Se deben comprar ', Baldosas:4:2, ' baldosas');
  Readln;
end.

