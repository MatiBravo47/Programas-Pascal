program Cap2Eje3;
uses crt;
Var
 Temp:Integer;
begin
  clrscr;
  //Metodo 1-Condiciones simples
  Writeln('Ingrese temperatura(C)');Readln(temp);
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

  //Metodo 2-Condicion simple pero mas eficiente que el anterior
  Writeln('Ingrese temperatura(C)');Readln(temp);
  if temp <20 then
     if temp<0 then
        writeln('No salgo de casa')
     else
         writeln('Hace frio')
  else
      if temp<29 then
         writeln('Barbaro')
      else
          writeln('que calor!');

  //Metodo 3-Estructura de decision Generalizada (o multiple)
  //Estructura Case

  Writeln('Ingrese otra temperatura(C)');Readln(temp);
  Case temp of
  -99..-1: writeln('No salgo de casa');
  00..19: writeln('Hace frio');
  20..28: writeln('Barbaro');
  else
    writeln('Que calor!');
  end;
  readln;
end.

