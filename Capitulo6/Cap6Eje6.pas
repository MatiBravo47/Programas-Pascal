//Ej 6) Un cuadrado mágico de orden N (impar), es una matriz
//cuadrada de NxN que contiene números naturales de 1 a N2
//, tal que la suma de cualquier columna, fila o diagonal coincide.
//Se construye de la siguiente manera:
// El número 1 se coloca en la casilla central de la primera fila.
// Cada número siguiente se coloca en la casilla correspondiente a
//la fila anterior y columna posterior.
// Si el número es el que sigue a un múltiplo de N, se coloca en la
//casilla de la fila posterior en la misma columna.
// Se considera fila anterior a la primera, la última.
// Se considera columna posterior a la última, la primera
//Se pide:
//a) Escribir un procedimiento que, dados una matriz Mat y N, genere
//el cuadrado mágico.
//b) Escribir una función booleana que verifique si la matriz Mat
//es un cuadrado mágico.
program Cap6Eje6;
uses crt;
type
  TM=array[1..10,1..10] of byte;

Procedure crearCuadradoMagico(var cuadradoMagico: TM; N: byte);
var
  k, i, j: byte;
begin
  i:= 1; //fila 1
  j:= (N div 2+1); //casilla central
  for k:= 1 to (N*N) do
    begin
    cuadradoMagico[i,j]:= k;
    if (k mod n = 0) then
      i:=i + 1
    else
      begin
      if (i = 1) then
        i:= n
      else
        i:= i - 1; //fila anterior
      if (j = n) then
        j:=1
      else
        j:=j + 1;//Columna siguiente
      end;
    end;
end;

Procedure iniciaMatriz(N: byte; Var cuadradoMagico: TM);
var
  i, j: byte;
Begin
for i:= 1 to N do
  for J:= 1 to N do
    cuadradoMagico[i,j]:=0;
end;

Procedure muestraMatriz(N: byte; cuadradoMagico: TM);
Var
  i, j: byte;
begin
  for i:= 1 to N do
  Begin
    for j:=1 to N do
      Write(cuadradoMagico[i,j],' ');
  Writeln();
  end;
end;

var
  n: byte;
  cuadradoMagico: tm;

begin
  clrscr;
  Writeln('Ingrese orden de la matriz (impar)'); Readln(N);
  iniciaMatriz(n, cuadradoMagico);
  crearCuadradoMagico(cuadradoMagico, N);
  muestraMatriz(n, cuadradoMagico);
  readln;
end.

