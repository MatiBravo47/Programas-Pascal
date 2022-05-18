program Vectores;

type
  St10=String[10];
  TVString=array[1..10] of St10;
  TVChar=array[1..10] of Char;
  TVReal=array['A'..'Z'] of real;
  TV=array[1..12] of byte;
Const
  A:TV=(31,28,31,30,31,30,31,31,30,31,30,31);

//Suma todos los elementos del vector
Function Suma (A:TV;N:integer):integer;
Var
  i,sum:integer;
Begin
  Sum:=0;
  for i:=1 to N do
    sum:=Sum+A[i];
  suma:=Sum;
end;

//El minimo del vector
Function minimo(A:tv;N:integer):Integer;
Var
  i,min:integer;
begin
  min:=A[1];
  for i:=2 to N do
    if A[i]< min then
      min:=A[i];
  minimo:=Min;
end;

//Escribe Vector
Procedure EscVector(V:TV;L:integer);
var
  i:integer;
Begin
  for i:=1 to L do
    Write(V[I]:5)
end;

begin
end.

