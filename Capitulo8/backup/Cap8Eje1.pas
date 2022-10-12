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
Function Potencia(X, N: integer): integer;// X elevado a la n
  begin
    If (N = 0) then
      Potencia:= 1    //caso base
    else
      Potencia:= Potencia(X, N - 1) * X //caso recurrente
  end;
//Ejemplo x = 3 ; N = 3
//Potencia(3,3);
//potencia(3,2)
//potencia(3,1)
//potencia(3,0)
//potencia(3,0) * 3 => 1 * 3 = 3
//potencia(3,1) * 3 => 3 * 3 = 9
//potencia(3,2) * 3 => 9 * 3 = 27

Var
  x, n: integer;
begin
  clrscr;
  Writeln('Ingresa un numero'); Readln(X);
  Writeln('Ingrese su potencia'); Readln(N);
  Writeln(Potencia(x,n));
  readln;
end.

