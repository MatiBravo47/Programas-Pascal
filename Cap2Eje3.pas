program Cap2Eje3;
uses crt;
Var
 Temp:Integer;
begin
  clrscr;
  Writeln('Ingrese temperatura');Readln(temp);
  If temp<0 then
  Writeln('No salgo de casa')
    else
    if temp<20 then
    Writeln('Hace frio')
    else
      If temp<29 then
      Writeln('Barbaro')
      else
        if temp>=29 then
        Writeln('Que calor!');
  readln;
end.

