program FiboRec;  //devuelve el n-esimo termino de la serie fibonacci
uses crt;
function Fib(n:byte):word;
begin
  if (n=1) or (n=2) then
    fib:=1
  else
    Fib:=Fib(n-1)+fib(n-2);
end;
//Programa principal
Var
  n:byte;
begin
  clrscr;
  writeln('Ingrese un numero ');Readln(N);
  Writeln('El termino fibonacci es esa ubicacion es: ',Fib(n) );

  readln;
end.

