//Ej 2) En un archivo se almacenó el Nombre del alumno y la
//nota de los K parciales, pasar los datos a un vector Nbre
//paralelo a la matriz Notas e informar:
//a) Listado de los alumnos que aprobaron los K parciales.
//b) Por cada alumno determinar su situación:
// Promociona: si el promedio es >= 7
// Habilita: si promedio >= 5 y < 7; y la K-ésima nota >= 5
// Desaprobado: en otro caso
//y generar un arreglo con los nombres de aquellos que
//promocionaron.

//ejercicio62.txt:
//4
//Matias  7 7 7
//Enzo    5 5 5
//Tomas   9 9 5
//lauta   3 3 3
program Cap6Eje2;
Uses crt;
Type
  TVN = array [1..10] of string[7];
  TM = array [1..4,1..3] of byte;

//Crea vector nombres y matriz notas
Procedure Leearch(Var N, m: byte; Var VNom: TVN; Var Notas: TM);
Var
  Arch: Text;
  i, k, j: byte;
Begin
  ASSIGN(Arch,'Ejercicio62.txt'); RESET(Arch);
  Readln(Arch, K);
  N:= 0;
  For i:= 1 to K do
    Begin
    N:= N + 1;
    Read(Arch, VNom[N]);
    For j:=1 to 3 do
      Read(Arch, Notas[n,j]);
    M:= j;
    Readln(Arch);
    end;
  Close(Arch);
end;

//Listado de alumnos que aprobaron los k parciales
Procedure Aprobo(N, M: byte; vNom:TVN; Notas: TM);
Var
  i, j: byte;
  desaprobado: boolean;
begin
  For i:= 1 to N do
    Begin
    Desaprobado:= False;
    for j:=1 to M do //Recorre por fila
      If (Notas[i,j] < 4) then
        desaprobado:= true;
    If (not desaprobado) then
      Writeln(VNom[i],' aprobo todos los parciales');
    end;
end;

//Situacion de cada alumno
Procedure Situacion(N, M: byte; VNom: TVN; Notas: TM; Var W: byte; Var Promo: TVN);
Var
  i, j: byte;
  Promedio, Total: Real;
begin
W:= 0;
  For i:= 1 to N do
    Begin
    Total:= 0;
    for j:= 1 to M do
      Total:= Total + Notas[i,j];
    Promedio:= Total / M;
    If (promedio >= 7) then
      Begin
      W:= W + 1;
      Writeln(VNom[i],' promociono');
      Promo[W]:= VNom[i];
      end
    else
      Begin
      If (Promedio >= 5) and (Promedio < 7) and (Notas[i,3] >= 5) then
        Writeln(VNom[i],' habilita')
      else
        Writeln(VNom[i],' desaprobado');
      end;
    end;
end;

Var
  M, N, W: byte;
  Notas: TM;
  VNom, Promo: TVN;

//Programa principal
begin
clrscr;
LeeArch(N, M, Vnom, notas);
Aprobo(n, m, vNom, notas);
Situacion(n, m, VNom, Notas, W, Promo);
readln;
end.

