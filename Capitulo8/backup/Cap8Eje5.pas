program Cap8Eje5;
uses crt;
type
  TV = array[1..10] of integer;

Procedure LeeArch(var vector: TV; Var n: byte);
var
  Arch: text;
Begin
  n:= 0;
  ASSIGN(Arch, 'Ejercicio85.txt'); RESET(arch);
  While not eof (arch)do
  begin
    N:= N + 1;
    Readln(Arch, vector[N]);
  end;
  CLOSE(arch);
end;

//a) Calcular e informar la suma de sus elementos
Function Suma(vector: TV; N: byte): integer;
begin
  if (n = 1) then
    suma:= vector[n]
  else
    Suma:= vector[N] + suma(vector, N - 1);
end;

//b) Mostrar sus elementos
Procedure muestra(vector: TV; n: byte);
Begin
  if (n > 1) then
    muestra(vector, n - 1);
write(vector[N], ' ');
end;

//c) Mostrarlos en orden inverso
Procedure invertirOrden(vector: TV; n: byte);
begin
Write (vector[N], ' ');
if (n > 1) then
  InvertirOrden(vector, n - 1);
end;

//d) Obtener el máximo de sus elementos
function Max(vector: tv; n: byte): integer;
var
  auxiliar: integer;
begin
if (n = 1) then //El primero es el maximo momentaneo
  max:= vector[n]
else
  begin
  auxiliar:= Max(vector, n - 1); //guardo maximo en auxiliar
  if (vector[n] > auxiliar) then //si el valor actual es mayor
    max := vector[n]      //se guarda en maximo
  else
    max:= auxiliar;       //sino queda el antiguo valor
  end;
end;

//e) Obtener el promedio
function Promedio(vector: Tv; n: byte): real;
begin
  promedio:= suma(vector, n) / n ;
end;

Var
  vector: tv;
  n: byte;

//programa principal
begin
  clrscr;
  LeeArch(vector, n);
  Writeln('La suma de los elementos es: ' , Suma(vector, N));
  muestra(vector, n);
  Writeln;
  invertirOrden(vector, n);
  Writeln;
  Writeln('El valor maximo del vector es: ', Max (vector, N));
  Writeln ('El promedio es', promedio(vector, n):5:2);
  readln;
end.

