program Cap6Eje7;
Type
TM=array[1..20,1..20] of word;
TV=array[1..20]of word;

Procedure Lectura(Var PS,PB:TM;Var N,M:Byte);
Var
P,L,CS,CB:Byte;
Arch:Text;
begin
Assign(Arch,'Datos67.txt');Reset(Arch);
Readln(Arch,N,M);
Inicia(PS,N,M);Inicia(PB,N,M);
While not EOF (Arch) do
  Begin
  Readln(Arch,P,L,CS,CB);
  PS[P,L]:=PS[P,L]+CS;
  PB[P,L]:=PB[P,L]+CB;
  end;
Close(Arch);
end;

//Punto A
Procedure TotP(P:TM;N,M:byte;Var V:Tv);
Var
i:Byte;
Begin
For i:=1 to N do
  V[i]:=PXP(P,i,M)
end;
//Devuelve la posicion del maximo
Function Maximo(V:Tv;N:byte):byte;

Function PXP (P:TM;Fila,M:byte):Word;
Var
j:byte;
Acum:word;
begin
Acum:=0;
For j:=1 to M do
  Acum:=Acum+P[fila,j];
PxP:=Acum;
end;

//C
Function cuantas(VS,VB:TV;N:byte);byte;
Var
Cont,i:byte;
Begin
Cont:=0;
For i:=1 to N do
  if 0.1*VS[i]>=Abs(VS[i]-VB[i]) then
  Cont:=Cont+1;
Cuantas:=Cont;
end;

//D
Function CantLineas(PS,PB:TM;N,M:byte):byte;
Var
j,cont:byte;
Begin
Cont:=0;
For j:=1 to M do
  if lineasinpasajeros(PS,PB,N,j) then
  Cont:=Cont+1;
CantLineas:=Cont;
end;

Function Lineasinpasajeros(PS,PB:TM;j,N:byte):boolean;
Var
i:byte;//Recorre filas en la columna j de PS o PB,buscando 0
Begin
i:=1;
While (i<=N) and (PS[i,j]<>0) and (PB[i,j]<>0) do
  i:=i+1;
