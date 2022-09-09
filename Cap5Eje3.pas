//Ej 3) Dado un arreglo V y un número K, cambiar todas las ocurrencias
//de K por 0
//Ejemplo:
//1 4 3 5 7 4 2 0 98 32
program Cap5Eje3;
Uses crt;
Type
  TVec = array[1..10] of integer;
Var
  N, K: Byte;
  V: TVec;

Procedure LeeArch(K: Byte; Var N: Byte; Var V: TVec);
Var
  Arch: Text;
  Num: Integer;
Begin
  N:= 0;
  Assign(Arch,'Ejercicio53.txt'); Reset(Arch);
  While not eof (Arch) do
   Begin
   Read(Arch,num);
   N:= N + 1;
   If (Num <> K) then
     V[N]:= Num //si no es k, no modifica
   Else
     V[N]:= 0; //si es igual a k, lo cambiar por 0
   end;
  Close(Arch);
end;

Procedure MuestraVec(N: byte; V: TVec); //Muestra vector
Var
  i: Byte;
Begin
  For i:=1 to N do
  Write(V[I], ' ');
end;

//Programa ppal
begin
  Clrscr;
  Writeln('Ingrese un valor'); Readln(K);
  LeeArch(K, N, V);
  MuestraVec(N, V);
  Readln;
end.

