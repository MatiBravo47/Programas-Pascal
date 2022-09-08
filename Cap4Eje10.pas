//Ej 10) Dado el siguiente trozo de código detectar los errores, enumerarlos
//y justificar
program Cap4Eje10;
ProcedureAAA(var C : char; var N:byte; x,y:real );

Function BBB( M:integer; B:boolean): char;

Function CCC(Car : char; W:real):Boolean;

Procedure DDD(varN,M:integer);

Var
Car:char;
M,Z,W:real; //M declarado como integer,
P:byte;
N:integer;
Begin
Readln(Z,W);
AAA (‘c’,P,Z,W);
If CCC(BBB(N, Z <> W), 5.4) then
  DDD(N, M)
Else
DDD(12.5, N - 2); //12.5 no puede ser real,debe ser entero
Write (BBB(20, P = 0));
Write (AAA(Car, P, M, Z));
Readln;
end.

