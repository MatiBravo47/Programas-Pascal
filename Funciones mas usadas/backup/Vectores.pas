program Vectores;
Uses crt;

type
  St10=String[10];
  TVString=array[1..10] of St10;
  TVChar=array[1..10] of Char;
  TVReal=array['A'..'Z'] of real;
  TV=array[1..12] of byte;
Const
  V:TV=(31,28,31,30,31,30,31,31,30,31,30,31);

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
Function minimo(V:tv;N:integer):Integer;
Var
  i,min:integer;
begin
  min:=V[1];
  for i:=2 to N do
    if V[i]< min then
      min:=V[i];
  minimo:=Min;
end;
//El maximo del vector
Function Max(V:TV;N:Byte):Integer;
Var
  i:Byte;
  Maximo:Integer;
Begin
  Maximo:=V[1];
  For i:=2 to N do
    Begin
    If V[i]>=Maximo then
    Maximo:=V[i];
    end;
Max:=Maximo;
end;

//Escribe Vector
Procedure EscVector(V:TV;N:integer);
var
  i:integer;
Begin
  for i:=1 to N do
    Write(V[I]:5)
end;
//Programa principal
Var
  A:TV;
  N:Byte;
begin
clrscr;
Writeln('Ingrese tamanio vector');Readln(N);
Writeln('El vector es ');
EscVector(V,N);
Writeln();
Writeln('La suma del vector es ',Suma(V,N));
Writeln('El minimo del vector es ',Minimo(v,n));
Writeln('El maximo del vector es ', Max(v,n));
Readln;
end.

