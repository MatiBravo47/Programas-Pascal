//Functiones y procedimientos recursivos mas usados
program recursivasMasUtilizas;
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
Function MinimoMatriz(Mat:TipoMatriz;i,j,N:byte):integer; //Recorro la matriz por fila
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
begin
end.

