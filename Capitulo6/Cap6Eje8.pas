//Ej 8) Sea un conjunto A de enteros y una relación R, se pide
//a) Generar la matriz booleana MatR que representa una relación R.
//b) Determinar si R es:
// Reflexiva
// Simétrica
//
//Ejemplo :
//A = {1,2,3,9,18}
//R = relación de Divisibilidad
program Cap6Eje8;
uses crt;
type
  TVByte = array [1..10] of byte;
  TMByte = array[1..5,1..5] of byte;

procedure leeArch(var n:byte;var v:TVByte);
var
  arch:text;
begin
n:=0;
assign(arch,'Ejercicio68.txt'); Reset(arch);
while not eof (arch) do
  begin
  n:= n + 1;
  read(arch,V[n]);
  end;
close(arch);
end;

procedure MatrizRelacion(n:byte;v:tvByte;var matriz:tmbyte);
var
  i,j:byte;
begin
for i:=1 to n do
    for j:=1 to n do
        if (v[i] mod v[j] = 0) then
          matriz[i,j]:= 1
        else
          matriz[i,j]:=0;
end;

function esReflexiva(n:byte;matriz:tmbyte):boolean;
var
  reflexiva:boolean;
  i:byte;
begin
reflexiva:=true;
for i:= 1 to N do
    if (matriz[i,i] = 0) then
      reflexiva:= false;
if reflexiva then
  esReflexiva:= true
else
  esReflexiva:= false;
end;

var
  v:tvbyte;
  n:byte;
  matriz: tmByte;
//programa principal
begin
clrscr;
leeArch(n,v);
matrizRelacion(n,v,matriz);
if esReflexiva(n,matriz) then
  Writeln('R es Reflexiva')
else
  Writeln('R no es Reflexiva');
readln;
end.

