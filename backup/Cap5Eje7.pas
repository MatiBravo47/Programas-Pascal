program Cap5Eje8;
uses crt;
Type
  TVec=Array[1..10] of integer;
Var
  V,W,X:TVec;
  N,P,M:Byte;

Procedure LeeArch(Var N:Byte;Var V:TVec);
Var
  Arch:Text;
  i:Byte;
Begin
Assign(Arch,'Ejercicio58.txt');Reset (Arch);
Readln(Arch,N);
For i:=1 to N do
    Read(Arch,V[i]);
Close(Arch);
end;

Procedure Repetidos(N:byte;V:TVec;Var M:Byte);
Var
  Ant:Integer;
  Cant,i:Byte;
Begin
Ant:=V[1];
Cant:=1;
M:=0;
For i:=2 to N do
    Begin
    If V[i]=Ant then
    Cant:=Cant+1
    else
      Begin
      M:=M+1;
      W[M]:=Cant;
      Cant:=1;
      end;
    Ant:=V[i];
    end;
If V[N]=Ant then
  W[M]:=Cant;
end;
Procedure MostrarVector (P:Byte;X:TVec);
Var
  i:Byte;
Begin
  For i:=1 to P do
      Write (' ',X[i]);
end;
//Programa principal
begin
  Clrscr;
  LeeArch(N,V);
  Repetidos(N,V,M);
  Writeln('El vector original es');
  MostrarVector(N,V);
  Writeln;
  Writeln('El vector de frecuencias es');
  MostrarVector(M,W);
  Readln;
end.

