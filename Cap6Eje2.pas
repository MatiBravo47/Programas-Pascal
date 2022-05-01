program Cap6Eje2;
Uses crt;
Type
  TVN=array[1..10] of string[7];
  TM=array[1..4,1..3]of byte;

Var
  M,N,W:byte;
  Notas:TM;
  VNom,Promo:TVN;
Procedure Leearch(Var N,m:byte;Var VNom:TVN;Var Notas:TM);
Var
  Arch:Text;
  i,k,j:byte;
Begin
  ASSIGN(Arch,'Ejercicio62.txt');RESET(Arch);
  Readln(Arch,K);
  N:=0;
  For i:=1 to K do
  Begin
    N:=N+1;
    Read(Arch,VNom[N]);
    For j:=1 to 3 do
      Read(Arch,Notas[n,j]);
  M:=j;
  Readln(Arch);
  end;
  Close(Arch);
end;
Procedure Aprobo(N,M:byte;Notas:TM);
Var
  i,j:byte;
  desa:boolean;
begin
  For i:=1 to N do
  Begin
  Desa:=False;
    for j:=1 to M do //Recorre por fila
    If Notas[i,j]<4 then
      desa:=true;
    If not desa then
      Writeln(VNom[i],' aprobo todos los parciales');
  end;
end;
Procedure Situacion(VNom:TVN;Notas:TM;Var W:byte;Var Promo:TVN);
Var
  i,j:byte;
  Prom,Total:Real;
begin
W:=0;
  For i:=1 to N do
  Begin
  Total:=0;
    for j:=1 to M do
      Total:=Total+Notas[i,j];
    Prom:=Total/M;
    If prom>=7 then
      Begin
      W:=W+1;
      Writeln(VNom[i],' promociono');
      Promo[W]:=VNom[i];
      end
    else
      Begin
      If (Prom>=5) and (Prom<7) and (Notas[i,3]>=5) then
        Writeln(VNom[i],' habilita')
      else
        Writeln(VNom[i],' desaprobado');
      end;
end;
end;
begin
clrscr;
LeeArch(N,M,Vnom,notas);
Aprobo(n,m,notas);
Situacion(VNom,Notas,W,Promo);
readln;
end.

