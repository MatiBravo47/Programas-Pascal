program VueltaSecuenciaDes;
uses crt;
Procedure Cuenta(n:integer);
begin
  if n>0 then
   cuenta(n-1);
   Writeln(n);
  end;
//Programa principal
Var
  n:byte;
begin
  clrscr;
  Writeln('Ingrese un numero');Readln(n);
  Cuenta(N);
  readln;
end.

