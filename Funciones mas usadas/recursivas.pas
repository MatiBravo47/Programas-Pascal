//Functiones y procedimientos recursivos mas usados
program recursivas;
uses crt;
type
  tv=array[1..12] of integer;
  tm=array[1..10,1..10] of integer;
const
  V:tv=(5,1,12,8,-1,3,10,9,14,0,15,7);
  //Lee Archivo
  //4 5
  //1 -1 3 0 5
  //2 0 2 2 2
  //5 0 5 4 -1
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
//VECTOR
//Inicializar vector en 0
Procedure iniciaV(fil:byte;var A:tv);
Begin
if fil = 1 then
  A[fil]:= 0
else
  begin
  A[fil]:=0;
  iniciaV(fil-1,A);
  end;
end;

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

//Promedio vector
function Promedio(v:Tv;n:byte):real;
begin
  promedio:=suma(V,n) / n ;
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

//Busqueda lineal posicion de un vector desordenado
Function buscarLineal(V:TV;N,X:byte):byte;
begin
if (v[N]=X) then
  buscarLineal:=N
else
  begin
  if (V[1]=X) then
    buscarLineal:=1
  else
    buscarLineal:=BuscarLineal(V,N-1,X);
  end;
If (buscarLineal>n) then
  buscarLineal:=0;
end;

//busqueda binaria para vector ordenado en forma ascendente
function buscarBi (ini,fin:byte;V:TV;elemento:real):byte;
var
  Prom:byte;
begin
prom:=(Ini+fin) div 2;
if (V[prom]<>elemento) and (ini<fin) then
  if V[prom] > elemento then
    buscarBi:=buscarBi (ini,prom-1,V,elemento)
  else
    buscarBi:=buscarBi(prom+1,fin,V,elemento)
else
    if (V[prom]=elemento) then
      buscarBi:=(prom)
    else
      buscarBi:=0;
end;

//MATRIZ
//Elemento Minimo matriz cuadrada
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

//Devuelve en un arreglo Maximo de cada fila
procedure GeneraVec(Var Vec:TV;Mat:TM;i,j,M:byte;Aux:integer);
begin
  if i > 0 then
  begin
    if Mat[i,j] > Aux then
      Aux:=Mat[i,j];
    if j > 1 then
      GeneraVec(Vec,Mat,i,j-1,M,Aux)
    else
    begin
      Vec[i]:=Aux;
      GeneraVec(Vec,Mat,i-1,M,M,-999);
    end;
  end;
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

//Cantidad de positivos de una matriz
Function CantPosi(Mat:TM;i,j,M:byte):byte;
var
  Incr:byte;
Begin
if i=0 then
  CantPosi:=0
else
  begin
  if mat[i,j]>0 then
    incr:=1
  else
    incr:=0;
  if j>1 then
  CantPosi:=Incr+CantPosi(Mat,i,j-1,M)
else
  CantPosi:=Incr+CantPosi(Mat,i-1,M,M);
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

//Muestra matriz
Procedure EscribirMatriz(Mat:TM;i,j,n,m:byte);
begin
if i>0 then
  begin
  write(Mat[n-i+1,m-j+1]);
  if j=1 then
    begin
    Writeln;
    EscribirMatriz(Mat,i-1,m,n,m);
    end
  else
    EscribirMatriz(Mat,i,j-1,n,m);
  end;
end;

//Inicializar matriz cuadrada
Procedure IniciaMat(fil,col,num:byte;var mat:tm);
begin
if (fil=1) and (col=1) then
  mat[fil,col]:=0
else
  begin
  mat[fil,col]:=0;
  if col>1 then
    iniciaMat(fil-1,col,num,mat)
  else
   iniciaMat(num,col-1,num,mat);
  end;
end;

Var
  x,n,m,i,j,aux:byte;
  mat:TM;
  Vec,A:tv;
begin
clrscr;
Leearch(N,M,Mat);
//Write('Tiene al menos una vez el valor ',X,' en cada columna ',Cumple(Mat,x,n,m,n));
//Write(CantNeg(Mat,n,M,M));
Writeln('El vector es: ');
Muestra(V,N);
Writeln();
Writeln('El vector alreves es');
inver(V,N);
Writeln;
Writeln('El maximo del vector es :',max(V,N));
Writeln('La suma los componentes del vector es: ',Suma(V,N));
Writeln('El promedio del vector es :',Promedio(V,N):5:2);
Writeln('Ingrese un valor');Readln(x);
If esta(V,N,X) then
  Writeln('El valor ',x,' se encuentra en el vector ')
else
  Writeln('El valor ',x,' no se encuentra en el vector' );
Writeln('Se encuentra en la posicion ',buscarLineal(V,N,X));
Writeln('El vector con el maximo de cada fila es :' );
GeneraVec(Vec,Mat,n,m,m,aux);
Muestra(Vec,N);
writeln();
If cumple(Mat,x,n,m,n) then
  Writeln('El valor ',X,' se encuentra en cada columna')
else
  Writeln('El valor ',x, ' no se encuentra en cada columna');
Writeln('La cantidad de positivos de la matriz es: ',CantPosi(Mat,n,m,m));
Writeln('La cantidad de negativos de la matriz es: ',CantNeg(Mat,n,m,m));
Writeln('La matriz es ');
EscribirMatriz(Mat,n,m,n,m);
Writeln('El vector inicializado en 0 es :');
IniciaV(4,A);
Muestra(A,4);
readln;

end.

