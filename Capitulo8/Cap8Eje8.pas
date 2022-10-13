program Cap8Eje8;
Type
  TM = array[1..10,1..10] of integer;
  TV = array[1..10] of integer;

procedure LeerArch(Var matriz: TM; Var N, M: byte);
Var
  arch: text;
  i, j: byte;
begin
  Assign(arch,'Ejercicio88.txt'); reset(arch);
  readln(arch, N, M);
  for i:= 1 to N do
  begin
    for j:= 1 to M do
      read(arch, matriz[i,j]);
    readln(arch);
  end;
  close(arch);
end;

procedure muestra(vector: TV; N: byte);
Var
  i: byte;
begin
  for i:= 1 to N do
    write(vector[i]:4);
end;

procedure GeneraVec(Var vector: TV; matriz: TM; i, j, M: byte; Aux: integer);
begin
  if (i > 0) then
  begin
    if (matriz[i,j] > Aux) then
      Aux:= matriz[i,j];
    if (j > 1) then
      GeneraVec(vector, matriz, i, j - 1, M, Aux)
    else
      begin
      vector[i]:= Aux;
      GeneraVec(vector, Matriz, i - 1, M, M, -999);
    end;
  end;
end;

Var
  matriz: TM;
  vector: TV;
  N, M: byte;

begin
  LeerArch(matriz, N, M);
  GeneraVec(vector, matriz, N, M, M, -999);
  Muestra(vector, N);
  readln;
end.
