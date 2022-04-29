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
Function Maximo(N:Byte;V:TVec):Integer;
Var
  i:Byte;
  Max:Integer;
Begin
  Max:=V[1];
  For i:=2 to N do
    Begin
    If max>V[i] then
      Max:=V[i];
    end;
  Maximo:=Max;
end;


//Programa principal
begin
  clrscr;
  LeeArch(N,V);
  Maximo(N,V);

  readln;
end.

