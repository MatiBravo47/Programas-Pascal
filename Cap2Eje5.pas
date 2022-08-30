program Cap2Eje5;
uses crt;
Var
A,B,C:Integer;
begin
clrscr;
//permutacion sin repeticion de 3 elementos  => 3!opcion = 6 opciones
Writeln('Ingrese 3 numeros');Readln(A,B,C);
If (A > B) then
  begin
  if (A > C) then // BCA O CBA
    writeln('El mayor numero es el',A)
  else //  BAC
    Writeln('El mayor numero es el',C)
  end
else
  begin
  if (B > C) then //ACB
    writeln('El mayor numero es el ',B)
  else //BAC O ABC
    writeln('El mayor numero es el ',C)
  end;
Readln;
end.

