//Ej 5) Dado un archivo de enteros, almacenarlos en un arreglo, luego
//obtener el promedio de todos los números divisores del máximo y con
//ellos armar otro arreglo. Mostrar ambos arreglos y el promedio
//obtenido
//archivo:
//1 2 3 4 5 6 12 3 6 2 4 8 22
program Cap5Eje5;
Uses crt;
type
  TVec = Array [1..20] of integer;

Var
  N, m: Byte;
  V, V2: TVec;

Procedure LeeArch(Var N: Byte; Var V: TVec);//Almacena datos en vector
Var
  Arch: Text;
  Num: Integer;
Begin
  N:= 0;
  Assign(Arch,'Ejercicio55.txt'); Reset(Arch);
  While not eof (Arch) do
    Begin
    Read(Arch, Num);
    N:= N + 1;
    V[N]:= Num;
  end;
end;

Function Maximo(N: Byte; V: TVec): Integer; //Calcula maximo
Var
  i: Byte;
  Max: Integer;
Begin
  Max:= V[1];
  For i:=2 to N do
    Begin
    If (max < V[i]) then
      Max:= V[i];
    end;
  Maximo:= Max;
end;

procedure Divisores(V: TVec; N: byte; Var V2: TVec; Var m: byte );
var
  i: byte;
begin
  for i:=1 to N do
    if (maximo(n, v) mod v[i] = 0) then
      begin
      m:= m + 1;
      V2[m]:= V[i];
      end;
end;

procedure muestraVec(v2: TVec; m: byte);
var
  i: byte;
begin
for i:=1 to M do
  write(v2[i], ' ');
end;

//Programa principal
begin
  clrscr;
  LeeArch(N, V);
  Maximo(N, V);
  divisores(v,n,v2,m);
  muestraVec(v2, m);
  readln;
end.

