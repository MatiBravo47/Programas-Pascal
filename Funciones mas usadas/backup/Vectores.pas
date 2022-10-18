program Vectores;
Uses crt;

type
  St10 = String[10];
  TVString = array[1..10] of St10;
  TVChar = array[1..10] of Char;
  TVReal = array['A'..'Z'] of real;
  TV = array[1..12] of byte;
Const
  V:TV=(31,28,31,30,31,30,31,31,30,31,30,31);

Function SumaElementosVector(vector: TV;N: integer): integer;
Var
  i, sum: integer;
Begin
  Sum:= 0;
  for i:= 1 to N do
    sum:= Sum + V[i];
  suma:= Sum;
end;

Function minimoVector(vector: tv; N: integer): Integer;
Var
  i, min: integer;
begin
  min:= V[1];
  for i:= 2 to N do
    if (V[i] < min) then
      min:= V[i];
  minimo:= Min;
end;

//El maximo del vector
Function maximoVector(vector: TV; N: Byte): Integer;
Var
  i:Byte;
  Maximo: Integer;
Begin
  Maximo:= vector[1];
  For i:=2 to N do
    Begin
    If (vector[i] >= Maximo) then
      Maximo:= Vector[i];
    end;
MaximoVector:= Maximo;
end;

Procedure MuestraVector(vector:TV;N:integer);
var
  i: integer;
Begin
  for i:=1 to N do
    Write(vector[i]:5)
end;

//Programa principal
Var
  vector: TV;
  N: Byte;
begin
clrscr;
Writeln('Ingrese tamanio vector'); Readln(N);
Writeln('El vector es ');
MuestraVector(vector,N); Writeln();
Writeln('La suma del vector es ',SumaElementosVector(vector,N));
Writeln('El minimo del vector es ', minimoVector(vector,n));
Writeln('El maximo del vector es ', maximoVector(vector,n));
Readln;
end.

