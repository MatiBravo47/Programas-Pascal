program Cap5Eje5;
Uses crt;
type
  TVec=Array [1..20] of integer;

Var
  N:Byte;
  V:TVec;

Procedure LeeArch(Var N:Byte;Var V:TVec);
Var
  Arch:Text;
  Num:Integer;
Begin
  N:=0;
  Assign(Arch,'Ejercicio55.txt');Reset(Arch);
  While not eof (Arch) do
  Begin
    Read(Arch,Num);
    N:=N+1;
    V[N]:=Num;
  end;
end;
//Programa principal
begin
  clrscr;
  LeeArch(N,V);
  readln;
end.

