program Matrices;

//Inicializa matriz en 0
Procedure IniciaMatriz(Var Mat:TM;N,M:byte);
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

//Utilizacion la funcion generar un arreglo VMin de N elementos,
//que contenta el minimo de cada fila.

Procedure VectorMinimos(Mat:TM;N,M:byte;var Vmin:TV);
Var
  i:byte;
begin
for i:=1 to N do
  VMin[i]:=MinFila(Mat,i,M);
end;

//A partir de la matriz y de un vector de M elementos reales
//calcular cuantas filas coinciden con el vector.

Function CuantosCoinciden(Mat:TM;N,M:byte;Vec:TV);
Var
  Cont,i,j:byte;
begin
cont:=0;
for i:=1 to N do
  begin
  j:=1 ;
  While (j<M) and (Vec[j] = Mat[i,j]) do
     j:=j+1;
  if Vec[j] = Mat[i,j] then
    cont:=Cont +1;
  end;
CuantosCoindicen:=Cont;
end;

//Dada una columna X,ingresada por el usuario,hallar el promedio
//de sus elementos.
Function Promedio(N:byte;x:integer;Mat:TM):real;
var
  acu:word:
  cant,i:byte;
begin
acu:=0;
cant:=0;
for i:=1 to N do
  begin
  acu:=acu + Mat[i,x];//suma columna
  cant:=cant+1;
  end;
promedio:=acu/cant;
end;

//Suma total de cada fila
Function TotalFila(P:TM;fila,M:byte):word;
var
  j:byte;
  acum:word;
begin
Acum:=0;
for j:=1 to M do
  Acum:=Acum+p[Fila,j];
PXP:=Acum;
end;

//Almacena total de cada fila en un vector
Procedure VectorTotalFilas(P:TM;N,M:byte;Var V:TV);
var
  i:byte;
Begin
for i:=1 to N do
  V[i]:=PXP(P,i,m)
end;
//Devuelve la posicion del maximo
Function Maximo(V:TV;N:byte):byte;

//recorre filas en la columna ,buscando 0
Function ColumnaCeros (PS,PB:TM;N,Col:byte):boolean;
Var
  i:byte;
begin
i:=1;
While (i<=n) and (PS[i,col]<>0) and (pb[i,col]<>0) do
   i:=i+1;
ColumnaCeros:=i<=N;
end;
//Si encuentra 0's cuenta
Function CantColumnaCeros(PS,PB:TM;N,M:byte):byte;
Var
  j,cont:byte;
begin
cont:=0;
for j:=1 to M do
  if ColumnaCeros(PS,PB;N,j) then
    cont :=cont+1;
CantColumnaCeros:=Cont;
end;


//Programa principal
begin
end.

