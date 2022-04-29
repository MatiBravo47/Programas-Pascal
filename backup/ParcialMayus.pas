program ParcialMayus;
Type
  TRR=Record
    Col:byte;
    Porc:Real;
  end;
  TVC=array[1..5]of TRR;
  TMC=array[1..4,1..5]of char;

//Lee archivo
Procedure LeeArch(Var N,M:Byte;Var Mat:TMC);
Var
  Arch:Text;
  i,j:Byte;
Begin
Assign(Arch,'Letras.txt');Reset(Arch);
Readln(Arch,N,M);
For i:=1 to N do
  For j:=1 to M do
    Readln(Arch,Mat[i,j]);
Close(Arch);
end;
Procedure CuentaMayus(N,M:Byte;Mat:TMC;Var VRES:TVC);
Var
  i,j,Mayus:Byte;
Begin
For J:=1 to M do
  Begin
  Mayus:=0;
  For i:=1 to N do
    If Mat[i,j] in ['A'..'Z'] then
      Mayus:=Mayus+1;
   VRES[j].Col:=j;
   VRES[J].Porc:=(Mayus/N);
  end;
end;

Var
N,M:Byte;
Mat:TMC;
VRES:TVC;
begin
LeeArch(N,M,Mat);
CuentaMayus(N,M,Mat,VRES);
Readln;
end.

