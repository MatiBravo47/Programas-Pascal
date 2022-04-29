program iannonefinal;
type
tm=array[1..10,1..10] of byte;
var
matriz:tm;
M,N:byte;

procedure LeerMatriz(var matriz:tm; var M,N:byte);
var
  i,j:byte;
begin
  write('Ingresar cantidad de filas de la superficie');
   readln(M);
  write('Ingresar cantidad de columnas de la superficie');
   readln(N);
  for i:=1 to M do
    for j:=1 to N do
    matriz[i,j]:=0;
  Readln;
end;

procedure deformaciones(Var matriz:tm; M,N:byte);
var
i,j,k,T,Def:byte;
begin
 writeln('ingrese la cantidad de periodos');
 readln(T);
 for k:=1 to T do
   for i:=1 to M do
    for j:=1 to N do
     begin
      writeln('ingresar la cantidad de deformaciones de la poscion', i ,'', j, 'del periodo', k);
      readln(Def);
      matriz[i,j]:=matriz[i,j]+Def;
     end;
end;

procedure mostrar (matriz:tm;M,N:byte);
var
i,j:byte;
begin
 for i:=1 to M do
    for j:=1 to N do
    write('',matriz[i,j]);
 Readln;
end;





{p.p}
begin
LeerMatriz(matriz,M,N);
deformaciones(matriz,M,N);
mostrar (matriz,M,N);
readln;
end.
