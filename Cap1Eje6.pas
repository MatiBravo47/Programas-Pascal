program Cap1Eje6;
Uses crt;
Var
  N,Num,num2:Integer;

begin
  Clrscr;
  Writeln('ingrese un numero entero que contenga mas de 3 cifras');
  Readln (N);
  //A)
  Num := ((N)div(1000));
  Writeln('quitandole las ultimas 3 cifras: ',Num);
  //B)
  Write('En la posicion de las centenas: ',((N div 100) mod 10));
  Readln;
end.

