//Ej 10) Dado el siguiente trozo de código detectar los errores, enumerarlos
//y justificar
program Cap4Eje10;
uses
  crt;

ProcedureAAA(var C : char; var N:byte; x,y:real ); //escribe todo junto "procedureAAA"
begin
end;

Function BBB( M:integer; B:boolean): char;
begin
end;

Function CCC(Car: char; W: real): Boolean;
begin
end;

Procedure DDD(varN ,M: integer);
begin
end;

Var
Car: char;
M, Z, W: real; //M declarado como integer,
P: byte;
N: integer;

Begin
clrscr;
Readln(Z, W);
AAA (car, P, Z, W); //'C' Caracter ilegal
If CCC(BBB(N, Z <> W), 5.4) then
  DDD(N, M) //M declarado como
Else
DDD(12.5, N - 2); //12.5 no puede ser real,debe ser entero
Write (BBB(20, P = 0));
Write (AAA(Car, P, M, Z));
Readln;
end.

