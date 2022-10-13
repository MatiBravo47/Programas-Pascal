//Ej 7) Crear una función recursiva que busque el elemento mínimo de una
//matriz cuadrada
//ejemplo:
//3
//2 3 1
//3 2 3
//3 4 10
program Cap8Eje7;
Type
  TipoMatriz = array[1..20,1..20] of integer;
var
  N: byte;
  Matriz: TipoMatriz;

procedure LeeMatriz(Var matriz: TipoMatriz; Var N: byte);
Var
  Arch: text;
  i, j: byte;
begin
  Assign(arch,'Ejercicio87.txt'); Reset(arch);
  readln(arch, N);
  for i:= 1 to N do
    begin
    for j:=1 to N do
      read(Arch, Matriz[i, j]);
    readLn(Arch);
    end;
  Close(arch);
end;
Function MinimoMatriz(Matriz: TipoMatriz; i, j, N: byte): integer; //Recorro la matriz por fila
var
  minimo: integer;
begin
  if (i = 0) then
    Minimo:= Matriz[1,1]
  else
    begin
    if (j > 1) then
      Minimo:= MinimoMatriz(Matriz, i, j - 1, N)
    else
      Minimo:= MinimoMatriz(Matriz, i - 1, N, N);
    if (Matriz[i,j] < Minimo) then
      Minimo:= Matriz[i,j];
    end;
  MinimoMatriz:= Minimo;
end;

begin
  LeeMatriz(Matriz, N);
  writeln('El elemento minimo de la matriz es: ', MinimoMatriz(Matriz, N, N, N));
  readln;
end.

