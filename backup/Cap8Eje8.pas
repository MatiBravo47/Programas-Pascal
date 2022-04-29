program Cap8Eje8;
Type
  TM = array[1..10,1..10] of integer;
  TV = array[1..10] of integer;
procedure LeerArch(Var Mat:TM;Var N,M:byte);
Var
  arch:text;
  i,j:byte;
begin
  Assign(arch,'Ej8.txt');reset(arch);
  readln(arch,N,M);
  for i:=1 to N do
  begin
    for j:=1 to M do
      read(arch,Mat[i,j]);
    readln(arch);
  end;
  close(arch);
end;

procedure muestra(V:TV;N:byte);
Var
  i:byte;
begin
  for i:=1 to N do
    write(V[i]:4);
end;

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
      Aux:=-999;
      GeneraVec(V,Mat,i-1,M,M,Aux);
    end;
  end;
end;

Var
  Mat:TM;
  V:TV;
  N,M:byte;
begin
  LeerArch(Mat,N,M);
  GeneraVec(V,Mat,N,M,M,-999);
  Muestra(V,N);
  readln();
end.


