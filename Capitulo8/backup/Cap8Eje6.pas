//Ej 6) Sea A un arreglo de reales y un valor X real ingresado
//por teclado, se pide determinar en qué posición se encuentra X,
//devolver 0 en caso de no encontrarlo.
//Implementar:
//a) considerando el arreglo desordenado, una búsqueda lineal
//recursiva
program Cap8Eje6;
uses crt;
type
  TV = array[1..10] of integer;
Procedure LeeArch(Var vector: TV; Var N: byte);
Var
  arch: text;
Begin
  N:= 0;
  ASSIGN(arch,'Ejercicio86a.txt'); RESET(arch);
  While not eof (Arch) do
  begin
    N:= N + 1;
    Readln(Arch, vector[N])
  end;
  CLOSE(arch);
end;

function buscaPosicion (vector: TV; N, X: byte): byte;   //busco posicion del numero
begin
If (vector[N] = X) then    //pruebo con el ultimo
   buscaPosicion:= N
else
   begin
   If (vector[1] = X) then      {pruebo con el primero}
      buscaPosicion:= 1
   else        {si no funcionan esos, busco en todo lo del medio}
      buscaPosicion:=buscaPosicion(vector, N - 1, X);
   end;
If (buscaPosicion > N) then
   buscaPosicion:= 0;
end;

procedure busqueda (vector: TV; N, X: byte);
var
   posicion: byte;
begin
posicion:= buscaPosicion(vector, N, X);
If (posicion <> 0) then
   Writeln('La posicion de ', X:2,' es ', posicion)
else
   Writeln('No se encontro el numero ', X);
end;

//programa principal
Var
  vector: TV;
  N, X: byte;
begin
  clrscr;
  LeeArch(vector, N);
  Writeln('Ingrese un valor'); Readln(x);
  Busqueda (vector, N, X);
  readln;
end.

