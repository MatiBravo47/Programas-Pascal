//El programa multiplica "a" por "b" de una manera
//distinta a la comun.
program Cap8Eje3;
uses crt;
function confuso (a,b:integer):integer;
begin
if (b = 0) then
  confuso:=0
else
  if (b mod 2 = 0) then
    confuso := confuso(a + a, b div 2 )
  else
    confuso :=confuso (a + a, b div 2) + a;
end;

//Programa principal
Var
  a,b:integer;
begin
clrscr;
Writeln('Ingrese un numero');Readln(a);
Writeln('Ingrese otro numero');Readln(b);
Writeln('La respuesta es: ',Confuso(a,b));
readln;
end.

