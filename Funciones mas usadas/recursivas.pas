//Functiones y procedimientos recursivos mas usados
program recursivas;
type
  tv=array[1..10] of integer;
  tm=array[1..10,1..10] of integer;
//Muestra un vector
Procedure muestra(V:TV;n:byte);
Begin
  if (n>1) then
    muestra(V,n-1);
write(V[N],' ');
end;

//muestra elementos vector alreves
Procedure Inver(V:TV;n:byte);
begin
Write (V[N],' ');
if (n>1) then
  Inver(V,n-1);
end;
//Maximo de un vector
function Max(V:tv;n:byte):integer;
var
  aux:integer;
begin
if n=1 then //El primero es el maximo momentaneo
  max:=v[n]
else
begin
  aux:=Max(V,n-1); //guardo maximo en auxiliar
  if v[n]> aux then //si el valor actual es mayor
    max :=v[n]      //se guarda en maximo
  else
    max:=aux;       //sino queda el antiguo valor
  end;
end;
//Muestra la suma de los elementos de un vector
Function Suma(V:TV;N:byte):integer;
begin
  if (n=1) then
  suma:=v[n]
  else
  Suma :=V[N] + suma(V,N-1);
end;

//Promedio
function Promedio(v:Tv;n:byte):real;
begin
  promedio:=suma(V,n) / n ;
end;

//Minimo matriz
Function MinimoMatriz(Mat:TM;i,j,N:byte):integer; //Recorro la matriz por fila
var
  minimo:integer;
begin
  if (i=0) then
    Minimo:=Mat[1,1]
  else
  begin
    if j>1 then
      Minimo:=MinimoMatriz(Mat,i,j-1,N)
    else
      Minimo:=MinimoMatriz(Mat,i-1,N,N);
    if Mat[i,j]<Minimo then
      Minimo:=Mat[i,j];
  end;
  MinimoMatriz:=Minimo;
end;
//Maximo de cada fila
procedure GeneraVec(Var V:TV;Mat:TM;i,j,M:byte;Aux:integer);
begin
  if i > 0 then
  begin
    if Mat[i,j] > Aux then
      Aux:=Mat[i,j];
    if j > 1 then
      GeneraVec(V,Mat,i,j-1,M,Aux)
    else
    begin
      V[i]:=Aux;
      GeneraVec(V,Mat,i-1,M,M,-999);
    end;
  end;
end;

//Verificar si un valor X se encuentra en un arreglo V de N elementos
Function Esta(V:TV;N:byte;x:real):boolean;
begin
  if n>0 then
    if v[n] = x then
      esta :=true
    else
    esta:=esta(v,n-1,x)
  else
    esta:=false
end;

//Recorre una matriz numerica de N*M y devolver la cantidad
//de negativos que almacena.

Function CantNeg(Mat: TM;I,J,M:byte):byte;
var
  incr:byte;
begin
if i=0 then
  cantNeg:=0
else
  begin
  if mat[i,j] < 0 then
    incr:=1
  else
    incr:=0;
  if j>1 then
    CantNeg:= Incr + cantNeg (Mat,i,j-1,M)
  else
    CantNeg:=Incr + CantNeg (Mat,i-1,m,m)
  end;
end;


//Verificar si una matriz mat de N*M,cumple que un elemento
//X se encuentra al menos una vez en cada columna

Function Cumple (Mat:TM;X:real;i,j,n:byte):boolean;
begin
if j=0 then
  cumple:=true
else
  if mat[i,j] = x then
    cumple:= cumple(mat,x,n,j-1,n) //columna anterior,ultima fila
  else
    if i>1 then //sigue buscando en la misma columna
      cumple:=cumple(mat,x,i-1,j,n)//fila anterior,misma columna
    else
      cumple:=false //x no esta en la columna
end;



Var
  V:TV;
  x,n,m:byte;
  mat:TM;
begin
Write('Tiene al menos una vez el valor',X,'en cada columna',Cumple(Mat,x,n,m,n));
Write(CantNeg(Mat,n,M,M));
end.

