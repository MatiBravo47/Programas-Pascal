//Functiones y procedimientos recursivos mas usados
program recursivasMasUtilizadas;
uses crt;
type
  TipoMatriz = array[1..20,1..20] of byte;
  TipoVector = array[1..20] of byte;

Function sumaElementosVector(vector: tipoVector; N: byte): integer;
begin
  if (n = 1) then
    sumaElementosVector:= vector[n]
  else
    sumaElementosVector := vector[n] + sumaElementosVector(vector, N - 1);
end;

function Promedio(vector: tipoVector; n: byte): real;
begin
  promedio:= sumaElementosVector(vector, n) / n ;
end;

Function minimoMatriz(Matriz: TipoMatriz; i, j , N: byte): integer; //Recorro la matriz por fila
var
  minimo: integer;
begin
  if (i = 0) then
    Minimo:= matriz[1, 1]
  else
    begin
    if (j > 1) then
      Minimo:= minimoMatriz(Matriz, i, j - 1, N)
    else
      Minimo:= minimoMatriz(Matriz, i - 1, N, N);
    if (matriz[i,j] < Minimo) then
      Minimo:=matriz[i,j];
  end;
  MinimoMatriz:= Minimo;
end;

var
  matriz: tipoMatriz;
  vector: tipoVector;
  n, i ,j: byte;

begin
  muestraVector(vector, n);
  muestraVectorInvertido(vector, n);
  maximoVector(vector, n);
  sumaElementosVector(vector, n);
  promedio(vector, n);
  minimoMatriz(Matriz, i ,j , n);
end.

