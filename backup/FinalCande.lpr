program FinalCande;
Type
  TM=array[1..10,1..10] of Byte;
Procedure IniciaMatriz(Var N,M:Byte;Var Mat:TM);//Inicia la matriz es 0s
Var
  i,j:Byte;
Begin
Writeln('Ingrese cantidad de filas');Readln(M);
Writeln('Ingrese cantidad de columnas');Readln(N);
For i:=1 to M do
  For j:=1 to N do
    Mat[i,j]:=0;
  Readln;
end;
//Programa principal
Var
  N,M:Byte;
  Mat:TM;
begin
IniciaMatriz(N,M,Mat);
Readln;
end.

