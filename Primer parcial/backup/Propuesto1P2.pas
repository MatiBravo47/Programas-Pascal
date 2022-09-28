//2 ) Una compañía Láctea recibe la producción diaria en litros de leche,
//de N tambos de la zona, durante quince días.
//Los datos vienen de la siguiente manera, sin orden alguno:
// Código del Tambo (cadena de 4 caracteres) puede repetirse
// dia
// la entrega en litros.
//Se pide, armar 3 vectores paralelos, COD, TOT, ENTREGAS y además calcular e
//informar:
//a) Código del tambo que más leche entregó a la compañía.
//b) Cuántos superaron un promedio de X litros de entrega.
//c) Dado un código, el total y el promedio diario entregado, (si es que
//existe dicho código).
//COD con los códigos de cada Tambo
//TOT con los totales de litros entregados
//ENTREGAS con La cantidad total de entregas
program Propuesto1P2;
uses crt;
type
  tvstring= array[1..15] of string[4];
  tvWord= array[1..15] of word;

procedure leeArch(var codigos: tvString; var litrosLeche: tvWord);
var
  arch: text;
  i, dia, j, k, p: byte;
  total: word;
  existe: boolean;
begin
assign(arch,'tambos.txt'); reset(arch);
for i:=1 to 15 do
  readln(arch, codigos[i], dia, litrosLeche[i]);
close(arch)
end;

procedure creaVectores();
var
begin
for i:=1 to 15 do


end;

//programa principal
var
  codigos: tvString;
  litrosLeche: tvWord;
  n: byte;
begin
  clrscr;
  leeArch(cod, litrosLeche);
  readln;
end.
