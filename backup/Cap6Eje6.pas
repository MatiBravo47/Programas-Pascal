program Cap6Eje6;
Uses
crt;
Type
TM=array[1..6,1..6]of byte;

Procedure CreaMatriz(Var Mat:TM;Var N:Byte);
Var
A,i,J:Byte;
Begin
I:=1;
J:=3;
A:=1;
N:=5;
Mat[I,J]:=A;
While A<>(N*N) do
Begin
If ((A+1) mod N)=0 then
  Begin
  I:=I+1;
  If i=(N+1) then
    i:=1;
  A:=A+1;
  Mat[I,J]:=A
  end
else
  begin
  I:=i-1;
  If i=0 then
    i:=N;
  J:=J+1;
  If J=(N+1) then
    J:=1;
  A:=A+1;
  Mat[I,J]:=A;
  end;
end;
end;
Procedure MuestraMatriz(Mat:TM;N:Byte);
Var
i,J:Byte;
Begin
For i:=1 to N do
  begin
  For J:=1 to N do
    Write(' ',Mat[i,j]);
  Writeln('');
  end
end;
//Programa principal
Var
Mat:TM;
N:Byte;
Begin
Clrscr;
CreaMatriz(Mat,N);
MuestraMatriz(Mat,N);
Readln;
end.
