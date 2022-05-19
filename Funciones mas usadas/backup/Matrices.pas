program Matrices;
Uses crt;
Type
  TM=array[1..10,1..10] of integer;
  TV=array[1..20] of integer;
  TMCHAR=array[1..10,1..10] of char;

//Lee Archivo
//4 5
//1 2 3 0 5
//2 2 2 2 2
//5 0 5 4 5
//9 9 9 9 8
Procedure LeeArch(Var N,M:Byte;Var Mat:TM);
Var
  i,j:Byte;
  Arch:text;
Begin
  ASSIGN(Arch,'Matriz.txt');RESET(Arch);
  Readln(Arch,N,M);
  For i:=1 to N do
  Begin
    For j:=1 to M do
    Read(Arch,Mat[i,j]);
  Readln(Arch);
  end;
  CLOSE(Arch);
end;

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

//Calcular el minimo elemento de una fila en particular
Function MinFila(Mat:TM;filaEle,m:byte):integer;
Var
  j:byte;
  min:Integer;
begin
min:=Mat[filaEle,1];
for j:=2 to M do
  if min>mat[filaEle,j] then
    min:=Mat[filaEle,j];
minfila:=Min;
end;

//Genera Arregla con el maximo de cada fila y lo muestra
Procedure MaxFila(Mat:TM;N,M:byte);
Var
  i,j,k:byte;
  max:integer;
  v:TV;
begin
k:=1;
Writeln('El arreglo con el maximo de cada fila es : ');
For i:=1 to N do
  begin
  max:=Mat[i,1];
  for j:=1 to M do
    if Max<Mat[i,j] then
      max:=Mat[i,j];
  V[k]:=Max;
  Write(' ',v[k]);
  k:=k+1;
  end;
Writeln('');
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
Function CuantosCoinciden(Mat:TM;N,M:byte;Vec:TV):byte;
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
CuantosCoinciden:=Cont;
end;

//Dada una columna X,ingresada por el usuario,hallar el promedio
//de sus elementos.
Function Promedio(N:byte;x:integer;Mat:TM):real;
var
  acu:word;
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
TotalFila:=Acum;
end;

//Almacena total de cada fila en un vector
Procedure VectorTotalFilas(P:TM;N,M:byte;Var V:TV);
var
  i:byte;
Begin
for i:=1 to N do
  V[i]:=TotalFila(P,i,m)
end;

//Devuelve la posicion del maximo del vector
Function Maximo(V:TV;N:byte):byte;
begin
end;

//recorre filas en la columna ,buscando 0
Function ColumnaCeros (Mat:TM;N,Col:byte):boolean;
Var
  i:byte;
begin
i:=1;
While (i<=n) and (Mat[i,col]<>0) do
   i:=i+1;
ColumnaCeros:=i<=N;
end;

//Si encuentra 0's cuenta
Function CantColumnaCeros(Mat:TM;N,M:byte):byte;
Var
  j,cont:byte;
begin
cont:=0;
for j:=1 to M do
  if ColumnaCeros(Mat,N,j) then
    cont :=cont+1;
CantColumnaCeros:=Cont;
end;

//Mas aparariciones entre 2 cosas
Function Color(N:Byte;T1:TMCHAR):String;
Var
i,j:Byte;
Rojo,Azul:Word;
Begin
Rojo:=0;
Azul:=0;
For i:=1 to N do
  For j:=1 to N do
    Begin
    If T1[i,j]='A' then
    Azul:=Azul+1
    else
    Rojo:=Rojo+1;
    end;
If Rojo>Azul then
Color:='Rojo'
else
  if Azul>Rojo then
  Color:='Azul'
  else
  Color :='empate entre ambos';
end;

//Color con mas fichas
Function MasFichas(N:Byte;T1:TMChar;T2:TM):String;  //Creo que no funciona bien
Var
Rojo,azul:Word;
i,j:Byte;
Begin
Rojo:=0;
Azul:=0;
For i:=1 to N do
  Begin
  For j:=1 to N do
    Begin
    If T1[i,j]='R' then
    Rojo:=Rojo+T2[i,j]
    else
    Azul:=Azul+T2[i,j];
    end;
  end;
If Rojo >Azul then //Falta mejorar de si son iguales
Masfichas:='Rojo'
else
Masfichas:='Azul'
end;

Var
  Mat,P,T2:TM;
  N,X,m,filaEle:byte;
  v,vmin,vec:TV;
  T1:TMCHAR;
//Programa principal
begin
//Inicia matriz en 0
//IniciaMatriz(Mat,n,m);
LeeArch(N,M,Mat);
Writeln('El minimo de la matriz es ',minimo(Mat,n,m));
Writeln('Elija la fila donde quiere calcular el minimo');
Readln(filaEle);//Fila elegida
Writeln('El minimo de una fila ',FilaEle, ' es ',MinFila(Mat,filaEle,m));
VectorMinimos(Mat,n,m,vmin);
VectorTotalFilas(P,M,N,V);
//Writeln('El color que tiene mas fichas es :',MasFichas(N,T1,T2));
Maxfila(Mat,N,M);
Writeln('Ingrese una columna');Readln(X);
Writeln('Su promedio de la columna es : ',promedio(n,x,mat):5:2);
cuantoscoinciden(Mat,n,m,vec);
//Writeln('El color que mas aparece es: ',color(n,t1));
Writeln('La cantidad columna con algun cero es:  ',cantcolumnaceros(Mat,n,m));
Readln;
end.

