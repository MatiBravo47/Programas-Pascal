program IdaSecuenciaDes;
uses crt;
Procedure Cuenta(n:integer);
begin
  Writeln(n);
  if n>0 then
   cuenta(n-1);
  end;
//Programa principal
Var
  n:byte;
begin
  clrscr;
  Writeln('Ingrese un numero');Readln(n);
  Writeln('' ,cuenta(N));
  readln;
end.

