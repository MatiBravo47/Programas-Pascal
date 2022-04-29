program Cap5Eje3;
Uses crt;
Type
  TVec=array[1..10]of integer;
Var
  N,K:Byte;
  V:TVec;

Procedure LeeArch(K:Byte;Var N:Byte;Var V:TVec);
Var
  Arch:Text;
  Num:Integer;
Begin
  N:=0;
  Assign(Arch,'Ejercicio53.txt');Reset(Arch);
  While not eof (Arch) do
   Begin
   Read(Arch,num);
   N:=N+1;
   If Num<>K then
     V[N]:=Num
   Else
     V[N]:=0;
   end;
  Close(Arch);
end;

Procedure MuestraVec(N:byte;V:TVec);
Var
  i:Byte;
Begin
  For i:=1 to N do
  Write(V[I],' ');
end;
//Programa ppal
begin
  Clrscr;
  Writeln('Ingrese un valor');Readln(K);
  LeeArch(K,N,V);
  MuestraVec(N,V);
  Readln;
end.

