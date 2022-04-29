program Cap5Eje9;
Uses crt;
Type
  TVec=array[1..15] of integer;
Var
  N,M,O:Byte;
  V,VA,VB:TVec;
Procedure VectorA(Var N:Byte;Var VA:Tvec);
Var
  Arch:Text;
  Max,Num:Integer;
Begin
  Assign(Arch,'Ejercicio59.txt');Reset(Arch);
  Read(Arch,Max);
  VA[1]:=Max;
  N:=1;
  While not eof (arch) do
  Begin
    Read(Arch,Num);
    If Num>Max then
    Begin
    Max:=Num;
    N:=N+1;
    VA[N]:=Num;
    end;
  end;
  Close(Arch);
end;
Procedure MuestraVector(O:Byte;V:Tvec);
Var
  i:Byte;
Begin
  For i:=1 to O do
  Write(' ',V[i])
end;
Procedure VectorB(N:Byte;VA:TVec;Var VB:TVec);
Var
  i,j:Byte;
Begin
  i:=1;
  j:=N;
  While i<>j do
  Begin
    If VA[i]>VA[J] then
    Begin
      If (VA[i])mod(VA[j])=0 then
      Begin
      VB[i]:=VA[i];
      VB[J]:=Va[j];
      end
    end
    Else
    begin
      If VA[i]<VA[J] then
      Begin
        If (VA[J])mod(VA[I])=0 then
        Begin
        VB[i]:=VA[i];
        VB[J]:=Va[j];
        end;
      end;
    end;
    i:=i+1;
    J:=J-1;
    end;
  If i=j then
  VB[i]:=VA[i];
end;


//Programa principal
begin
  clrscr;
  VectorA(N,VA);
  Writeln('El vector A es');
  MuestraVector(N,VA);
  VectorB(N,VA,VB);
  Writeln;
  Writeln('El vector B es');
  MuestraVector(N,VB);
  readln;
end.

