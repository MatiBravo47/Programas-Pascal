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


begin
end.

