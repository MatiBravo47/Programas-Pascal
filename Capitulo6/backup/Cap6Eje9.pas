//Ej 9) Sean T1 y T2 dos matrices de NxN que representan
//las fichas (rojas, azules) de un tablero, la
//primera almacena el caracter ‘R’ ó ‘A’ y la segunda enteros
//(cantidad de fichas). Se pide calcular e
//informar:
//a) Color predominante (presente en más casillas)
//b) Color con más fichas
//c) Cantidad de columnas de un solo color
program Cap6Eje9;
uses crt;
type
  TMChar = array[1..4,1..4] of char;
  TMByte = array[1..4,1..4] of byte;

procedure leeArchT1(var t1: TMChar);
var
  blanco:char;
  i, j: byte;
  arch: text;
begin
assign(arch, 'Ejercicio691.txt'); reset(arch);
for i:= 1 to 4 do
  begin
  for j:= 1 to 4 do
      read(arch, T1[i,j],blanco);
  readln(arch);
  end;
close(arch);
end;

procedure leeArcht2(var T2:TMByte);
var
  arch: text;
  i, j: byte;
begin
assign(arch, 'Ejercicio692.txt'); reset(arch);
for i:= 1 to 4 do
  begin
  for j:= 1 to 4 do
    read(arch, t2[i,j]);
  readln(arch);
  end;
end;

//Color predominante (presente en más casillas)
function colorPredominante(t1:tmChar):string;
var
  casillasAzul, casillasRojo, i, j: byte;
begin
casillasRojo:=0;
casillasAzul:=0;
for i:= 1 to 4 do
  for j:= 1 to 4 do
    begin
    if t1[i,j] = 'A' then
      casillasAzul:= casillasAzul + 1
    else
      casillasRojo:= casillasRojo + 1;
    end;
if (casillasRojo > casillasAzul) then
  colorPredominante :='Rojo'
else
  begin
  if (casillasAzul > casillasRojo) then
    colorPredominante :='Azul'
  else
    colorPredominante :='Ninguno'
  end;
end;

//Color con más fichas
function colorMasFichas(t1:TMChar; t2:tmbyte):string;
var
  i, j, fichasAzul, fichasRojo: byte;
begin
fichasAzul:=0;
fichasRojo:=0;
for i:=1 to 4 do
  for j:=1 to 4 do
    if t1[i,j] = 'A' then
      fichasAzul:= fichasAzul + t2[i,j]
    else
      fichasRojo:= fichasRojo + t2[i,j];
if (fichasRojo > fichasAzul) then
  colorMasFichas:= 'rojo'
else
  begin
  if (fichasAzul > fichasRojo) then
    colorMasFichas := 'azul'
  else
    colorMasFichas := 'ninguno'
  end
end;

function columnasSoloColor(t1:tmChar):byte;
var
  j, i, cantidadColumnas: byte;
  soloColor: boolean;
  colorColumna: char;

begin
cantidadColumnas:= 0;
  for j:=1 to 4 do
    begin
    soloColor:= true;
    colorColumna:= t1[1,j];
    for i:= 2 to 4 do
      if (t1[i,j] <> colorColumna) then
        soloColor:= false;
    if soloColor then
      cantidadColumnas:= cantidadColumnas + 1;
    end;
columnasSoloColor:= cantidadColumnas;
end;

var
  t1: TMChar;
  t2: TMByte;
//programa principal
begin
  clrscr;
  leeArchT1(t1);
  leeArcht2(t2);
  if (colorMasFichas(t1,t2) = 'ninguno') then
    writeln('Igualan en fichas ambos colores')
  else
    writeln('Color con mas fichas :', colorPredominante(t1) );
  if (colorPredominante(t1) = 'Ninguno') then
    writeln('Igualan en cantidad de casillas ambos colores')
  else
    writeln('Color con mas casillas :', colorPredominante(t1) );
  if (columnasSoloColor(t1) > 0) then
    writeln('Cantidad columnas de un solo color: ', columnasSoloColor(t1))
  else
    writeln('No hay columnas de un solo color');
  readln;
end.

