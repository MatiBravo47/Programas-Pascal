program Cap2Eje5;
uses crt;
Var
A,B,C:Integer;
begin
clrscr;
Writeln('Ingrese 3 numeros');Readln(A,B,C);
If A>B then
  begin
  if A>C then
  writeln('El mayor numero es el',A)
  else
  Writeln('El mayor numero es el',C)
  end
else
  begin
  if B>C then
  writeln('El mayor numero es el ',B)
  else
  writeln('El mayor numero es el ',C)
  end;
Readln;
end.

