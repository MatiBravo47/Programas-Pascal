//Ej 4) Desarrollar una función que calcule la potencia n-ésima de un
//número X ( Xn )
program Cap4Eje4;

Function Potencia(X, N: Word): Integer;
Var
  Pot: Integer;
begin
  pot:= X;
  N:= N - 1;
  While (N > 0) do
    Begin
      Pot:= Pot * X;
      N:= N - 1
    end;
  Potencia:= Pot;
end;

Var
  X, N: Word;

begin
  Writeln('Ingrese base'); Readln(X);
  Writeln('Ingrese exponente'); Readln(N);
  Writeln('El resultado es ', potencia(X, N));
  Readln;
end.

