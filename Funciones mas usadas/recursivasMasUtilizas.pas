//Functiones y procedimientos recursivos mas usados
program recursivasMasUtilizas;
uses crt;
type
  TipoMatriz = array[1..20,1..20] of byte;
  TipoVector = array[1..20] of byte;

Procedure muestraVector(vector: tipoVector; n: byte);
Begin
  if (n > 1) then
    muestraVector(vector, n - 1);
write(vector[N],' ');
end;

Procedure muestraVectorInvertido(vector: tipoVector; n: byte);
begin
Write (vector[N],' ');
if (n > 1) then
  muestraVectorInvertido(vector, n - 1);
end;

function maximoVector(vector: tipoVector; n: byte): integer;
var
  aux: integer;
begin
if (n = 1) then //El primero es el maximo momentaneo
  maximoVector:= vector[n]
else
  begin
  aux:= maximoVector(vector, n - 1); //guardo maximo en auxiliar
  if (vector[n] > aux) then //si el valor actual es mayor
    maximoVector := vector[n]      //se guarda en maximo
  else
    maximoVector := aux;       //sino queda el antiguo valor
  end;
end;

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

