program Cap2Eje10;
uses crt;
Var
Pelis,Deportes,Grabar,Internet:Char;
Monto:Real;
Opc:Byte;

begin
clrscr;
Monto:=1350;
Writeln('Desea agregar pack peliculas?(S/N)');Readln(Pelis);
Pelis:=Upcase(Pelis);
If Pelis='S' then
Monto:= Monto +200;
Writeln('Desea agregar pack deportes?(S/N)');Readln(Deportes);
Deportes:=Upcase(Deportes);
If deportes='S' then
Monto:= Monto + 270;
Writeln('Desea agregar "Grabar peliculas"(S/N)');Readln(Grabar);
Grabar:=Upcase(Grabar);
If Grabar='S' then
Monto:=Monto +150;
Writeln('Desea agregar internet?(S/N)');Readln(Internet);
Internet:=Upcase(Internet);
If (internet='S') then
  Writeln('elija la cantidad de megas');
  Writeln('1)Internet 6MB ');
  Writeln('2) Internet 10MB + WIFI');
  Readln(Opc);
  Case Opc of
  1: Monto:= Monto + 800;
  2: Monto:= Monto +(800*1.20);
  end;
If internet='S' then
Monto:= Monto*0.75;
Writeln('El monto a pagar es ',Monto);
readln;
end.

