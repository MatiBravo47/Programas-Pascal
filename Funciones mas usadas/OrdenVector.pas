program OrdenVector;
type
  tv=array [1..10] of integer;
//Metodo de seleccion(Mas ineficiente)
Procedure Seleccion(Var V:TV;N:byte);
Var
  min,i,k:byte;
  Aux:Integer;
Begin
for k:=1 to N-1 do //N-1 pasadas
  begin
  min:=k;
  for i:=1 to N do //Elementos de la pasada k-esima,se selecciona el indice del minimo min
    If V[min]>V[i] then
      min:=i;
  if min<>k then
    begin
      aux:=V[K];
      V[k]:=V[min];
      V[min]:=Aux;
    end;
  end;
end;

// Metodo de burbujeo o intercambio de pares
Procedure Burbujeo(Var V:TV;N:byte);
Var
  aux:integer;
  i,k,tope:byte;
begin
  tope:=N;
  repeat
    k:=0;
    for i:=1 to tope-1 do
      if v[i]>v[i+1] then
      begin
      aux:=V[i];
      v[i]:=v[i+1];
      v[i+1]:=Aux;
      k:=i;
      end;
    tope:=k;
  until k <=1;
end;

//Metodo de insercion
Procedure Insercion(Var v:TV;N:byte);
Var
  Aux:integer;
  i,j:byte;
Begin
for i:=2 to N do
  begin
  j:=i-1;
  Aux:=V[i];
  While (j>0) and (Aux<V[j]) do
    begin
    v[j+1]:=v[j];
    j:=j+1;
    end;
  v[j+1]:=Aux;
  end;
end;

//Metodo Shell
Procedure Shell (Var v:tv;n:byte);
Var
  Cambio:boolean;
  Aux:Integer;
  i,paso:byte;
begin
  paso:=N div 2;
  repeat
    repeat
      cambio:=false;
      for i:=1 to N-paso do
        if v[i]>v[i+paso] then
          begin
          aux:=V[i];
          v[i]:=V[i+paso];
          v[i+paso]:=aux;
          cambio:=true;
          end;
    until not cambio;
    paso:=paso div 2;
  until paso=0 ;
end;

Var
v:TV;
n:byte;
begin
end.

