program Matrices;

//Inicializa matriz en 0
Procedure IniciaMatriz(Var Mat:TM,N,M:byte);
Var
  i,j:byte;
begin
for j:=1 to M do
  for i:=1 to N do
    Mat[i,j]:=0;
end;

//Calcula minimo de una matriz
Function Minimo(Mat:TM;N,M:byte):integer;
var
  i,j:byte;
  min:integer;
begin
min:=Mat[1,1];
for i:=1 to N do
  for j:=1 to M do
    if Min>Mat[i,j] then
      min:=Mat[i,j];
minimo:=Min;
end;

//Calcular el minimo elemento de una fila

Function MinFila(Mat:TM;i,m:byte):integer;
Var
  j:byte;
  min:Integer;
begin
min:=Mat[i,1];
for j:=2 to M do
  if min>mat[i,j] then
    min:=Mat[i,j];
minfila:=Min;
end;

begin
end.

