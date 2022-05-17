program Cap8Eje7;
Type
  TipoMatriz=array[1..20,1..20] of integer;
var
  N:byte;
  Mat:TipoMatriz;

procedure LeeMatriz(Var Mat:TipoMatriz;Var N:byte);
Var
  Arch:text;
  i,j:byte;
begin
  Assign(arch,'Ejercicio87.txt');
  Reset(arch);
  readln(arch,N);
  for i:=1 to N do
  begin
    for j:=1 to N do
      read(Arch,Mat[i,j]);
    readLn(Arch);
  end;
  Close(arch);
end;
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
begin
  LeeMatriz(Mat,N);
  writeLn('El elemento minimo de la matriz es: ',MinimoMatriz(Mat,N,N,N));
  readLn();
end.

