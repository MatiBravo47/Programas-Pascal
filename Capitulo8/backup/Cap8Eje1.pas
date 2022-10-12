//Ej 1) La siguiente función calcula la potencia n-ésima de
//un número X ( X n ) en forma iterativa, siendo n y
//X enteros. Se pide:
//a) Desarrollarla en forma recursiva.
//b) Considerar n negativo.
//function potencia(X,n: integer): integer; (* X elevado a n *)
//var
//i: integer;
//mult: integer;
//begin
//mult := 1; (* inicialización *)
//for i := 1 to n do
//mult := mult * X; (* hacemos "n" veces "X*X" *)
//potencia := mult;
//end;
program Cap8Eje1;
uses crt;
Function Potencia(X, n: integer): integer;// X elevado a la n
  begin
    If (N = 0) then
      Potencia:= 1
    else
      Potencia:= Potencia(X, N - 1) * X
  end;
Var
  x, n: integer;
begin
  clrscr;
  Writeln('Ingresa un numero'); Readln(X);
  Writeln('Ingrese su potencia'); Readln(N);
  Writeln(Potencia(x,n));
  readln;
end.

