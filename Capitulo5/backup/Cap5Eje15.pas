//Ej 15) Una empresa de autos de alquiler grabó en cada línea del
//archivo la patente del vehículo (cadena de 7) y el total recaudado
//en el día. Se pide leer los datos en dos arreglos paralelos e informar:
//a) El promedio recaudado por auto.
//b) Las patentes de los vehículos que superaron en la recaudación X
//pesos (X es dato).
//c) La patente del que recaudó menos
program Cap5Eje15;
Uses crt;
Type
  TVString = Array[1..10] of string[6];
  TVNum = Array[1..10] of Word;
Var
  N: Byte;
  Rec: TVNum;
  Pat: TVString;

Procedure LeeArch(Var N: Byte; Var Pat: TVString; Var Rec: TVNum);
Var
  Arch: Text;
Begin
  N:= 0;
  Assign(Arch,'Ejercicio515.txt'); Reset(Arch);
  While not eof (Arch) do
    Begin
    N:= N + 1;
    Readln(Arch, Pat[N], Rec[N]);
    end;
  Close(Arch);
end;

Function Prom(N: Byte; Rec: TVNum): Real;
Var
  Suma: Word;
  i: Byte;
Begin
  Suma:= 0;
  For i:= 1 to N do
    Suma:= Suma + Rec[i];
  Prom:= Suma / N;
end;

Procedure Supera(N: Byte; Pat: TVString);
Var
  i: Byte;
  X: Word;
Begin
  Writeln('Ingrese valor a superar'); Readln(X);
  For i:=1 to N do
    If (Rec[i] > X) then
      Writeln('La patente ', Pat[i] ,' supera el monto');
end;

Function Menor(Rec: TVNum; N: Byte; Pat: TVString): String ;
Var
  i, IMin: Byte;
  Min: Word;
Begin
  Min:= Rec[1];
  For i:= 2 to N do
  Begin
    If (Rec[i] < Min) then
      Begin
      Min:= Rec[i];
      IMin:= i;
      end;
  end;
  Menor:= Pat[iMin];
end;

//Programa principal
begin
  Clrscr;
  LeeArch(N, Pat, Rec);
  Writeln('El promedio recaudado por auto es ', Prom(N, Rec):5:2);
  Supera(N, Pat);
  Writeln('La patente del que recaudo menos es', Menor(Rec, N, Pat));
  Readln;
end.

