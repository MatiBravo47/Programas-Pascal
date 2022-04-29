program Cap7Eje6;
Type
  TRPos=Record
    i,j:Byte;
  end;
  TRD=Record
    Pos:TRPos;
    Valor:Integer;
  end;
TV=array [1..9]of TRD;
TM=array[1..3,1..3]of Real;
//Lee Archivo
Procedure LeeArch(Var V1:TV;Var K:Byte);
Var
  Arch:Text;
Begin
K:=0;
Assign(Arch,'Matriz1.txt');Reset(Arch);
While not eof (Arch) do
  Begin
  K:=K+1;
  With V1[K] do
  Readln(Arch,Pos.i,Pos.j,Valor);
  end;
end;
Procedure LeeArch2(Var V2:TV;Var P:Byte);
Var
  Arch:Text;
Begin
P:=0;
Assign(Arch,'Matriz2.txt');Reset(Arch);
While not eof (Arch) do
  Begin
  P:=P+1;
  With (V2[P]) do
  Readln(Arch,Pos.i,Pos.j,Valor);
  end;
end;
Procedure SumaMat(P:Byte;V1,V2:TV;Var Mat:TM;Var N,M:Byte);
Var
  i,j,K:Byte;
Begin
K:=0;
For i:=1 to V1[P].Pos.i do
Begin
  For j:=1 to V1[P].Pos.j do
    Begin
    K:=K+1;
    Mat[i,j]:=V1[K].Valor + V2[K].Valor;
    end;
end;
N:=i;
M:=J;
end;
Procedure MuestraMat(N,M:Byte;Mat:TM);
Var
  i,j:Byte;
Begin
For i:=1 to N do
  Begin
  Writeln;
  For j:=1 to M do
    Write(' ',(Mat[i,j]):2:0);
  end;
end;

//Programa principal
Var
  Mat:TM;
  V1,V2:TV;
  P,K,N,M:Byte;
begin
LeeArch(V1,K);
LeeArch2(V2,P);
SumaMat(P,V1,V2,Mat,N,M);
Writeln('Matriz resultante de la suma de las 2 matrices es:');
MuestraMat(N,M,Mat);
Readln;
end.

