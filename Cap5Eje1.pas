//Ej 1) Dado un arreglo A de N elementos reales, desarrollar
//subprogramas para:
//a) Calcular la suma de sus elementos.
//b) Mostrar los elementos que se encuentran en posiciones pares.
//c) Calcular el máximo y el mínimo elemento.
//d) Generar un arreglo B con los elementos de A permutado
//( B[1]=A[N], B[2]=A[N-1] … B[N]=A[1] ).
//Escribir el programa principal con las invocaciones a cada uno de
//los subprogramas, mostrando los resultados correspondientes
//ejemplo:
//5
//1 3 2 5 6
program Cap5Eje1;
Uses crt;
Type
  Tvec = array[1..5] of integer;
Var
  N, M: Byte;
  V, v2: TVec;

Procedure LeeArch(Var N:Byte;Var V:TVec); //Guarda datos en vector V
Var
  Arch: text;
  i: Byte;
Begin
  Assign (Arch,'Ejercicio51.txt'); Reset(Arch);
  Readln(Arch, N);
  For i:= 1 to N do
    Read(Arch, V[i]);
  close(Arch);
end;

Function Suma(V: TVec; N: Byte): Integer; //Suma de sus elementos
Var
  i: Byte;
  total: Integer;
Begin
  Total:= 0;
  For i:= 1 to N do
    Total:= Total + V[i];
Suma:= Total;
end;

Procedure Pares(V: TVec; N: Byte); //Muestra elementos de posiciones pares
Var
  i: Byte;
Begin
i:= 2;
  While (i <= N) do
    Begin
    Write(V[i], ' ');
    i:= i + 2; //suma de a 2
    end;
end;

Function Max(V: TVec; N: Byte): Integer; //Calculo maximo elemento
Var
  i: Byte;
  Maximo: Integer;
Begin
  Maximo:= V[1];  //Primer elemento como maximo momentaneo
  For i:= 2 to N do
    Begin
    If (V[i] >= Maximo) then
      Maximo:= V[i];
    end;
Max:= Maximo;
end;

Function Min(V: TVec; N: Byte): Integer; //Calculo minimo elemento
Var
  i: Byte;
  Minimo: Integer;
Begin
  Minimo:= V[1];
  For i:=2 to N do
    Begin
    If (V[i] <= Minimo) then
    Minimo:= V[i];
    end;
Min:= Minimo;
end;

Procedure Genera(V: TVec; N: Byte; Var V2: TVec; Var M: Byte); //Permuta vector
Var
 i: Byte;
Begin
M:= 0;
For i:= N downto 1 do
  begin
  M:= M + 1;
  V2[M]:= V[i];
  end;
end;

Procedure MuestraV(M: Byte; V2: TVec); //Muestra vector
Var
 i: Byte;
Begin
For i:=1 to M do
Write (V2[i], ' ');
end;

//Programa principal
begin
  clrscr;
  leeArch(N,V);
  Writeln('La suma de los elementos da: ', Suma(V, N));
  Writeln('Los elementos en posiciones pares son:');
  Pares(V, N);
  Writeln;
  Writeln('El maximo es ', Max(V, N));
  Writeln('El minimo es ', Min(V, N));
  Genera(V, N, V2, M);
  MuestraV(M, V2);
  readln;
end.

