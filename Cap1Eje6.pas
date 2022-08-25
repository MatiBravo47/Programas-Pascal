program Cap1Eje6;
Uses crt;
Var
  N,Num,num2:Integer;

begin
  Clrscr;
  Writeln('ingrese un numero entero que contenga mas de 3 cifras');
  Readln (N);
  Num := ((N)div(1000));
  Writeln('quitandole las ultimas 3 cifras: ',Num);
  Readln;
end.

