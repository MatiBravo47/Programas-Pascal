program OrdenVector;
Uses crt;
Type
  TV = array[1..12] of integer;
const
  vector: tv =(5,1,12,8,-1,3,10,9,14,0,15,7);
//Metodo de seleccion(Mas ineficiente)
Procedure Seleccion(Var vector: TV; N: byte);
Var
  min, i, k: byte;
  Aux: Integer;
Begin
for k:= 1 to (N - 1) do //N-1 pasadas
  begin
  min:= k;
  for i:= K + 1 to N do //Elementos de la pasada k-esima,se selecciona el indice del minimo min
    If (vector[min] > vector[i]) then
      min:= i;
  if (min <> k) then
    begin
    aux:= vector[K];
    vector[k]:= vector[min];
    vector[min]:= Aux;
    end;
  end;
end;

// Metodo de burbujeo o intercambio de pares
Procedure Burbujeo(Var vector:TV ;N: byte);
Var
  aux: integer;
  i, k, tope: byte;
begin
  tope:= N;
  repeat
    k:= 0;
    for i:=1 to (tope - 1) do
      if (vector[i]> vector[i+1]) then
        begin
        aux:= vector[i];
        vector[i]:= vector[i+1];
        vector[i+1]:= Aux;
        k:= i;
        end;
    tope:= k;
  until (k <= 1);
end;

//Metodo de insercion
Procedure Insercion(Var vector: TV; N: byte);
Var
  Aux: integer;
  i, j: byte;
Begin
for i:= 2 to N do
  begin
  j:=i - 1;
  Aux:= vector[i];
  While (j > 0) and (aux < vector[j]) do
    begin
    vector[j+1] :=vector[j];
    j:= j - 1;
    end;
  vector[j+1]:= Aux;
  end;
end;

//Metodo Shell
Procedure Shell (Var vector: tv; n: byte);
Var
  Cambio: boolean;
  Aux: Integer;
  i, paso: byte;
begin
  paso:= N div 2;
  repeat
    repeat
      cambio:= false;
      for i:= 1 to (N - paso) do
        if (vector[i] > vector[i + paso]) then
          begin
          aux:= vector[i];
          vector[i]:= vector[i + paso];
          vector[i + paso]:= aux;
          cambio:= true;
          end;
    until not cambio;
    paso:= paso div 2;
  until paso= 0 ;
end;

Procedure Muestra(vector:TV ;N: byte);
var
  i: byte;
begin
for i:= 1 to N do
  write (vector[i]:4);
end;

Var
n: byte;
begin
clrscr;
N:= 12;
Seleccion(vector, N);
//Burbujeo(vector, N);
//Shell(vector, N);
//Insercion(vector, N);
Muestra(vector, N);
readln;
end.

