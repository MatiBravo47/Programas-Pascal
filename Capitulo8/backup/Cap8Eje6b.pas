//Ej 6) Sea A un arreglo de reales y un valor X real ingresado
//por teclado, se pide determinar en qué posición se encuentra X,
//devolver 0 en caso de no encontrarlo.
//Implementar
//b) para un arreglo ordenado en forma ascendente, una búsqueda
//binaria recursiva

program Cap8Eje6b;
uses crt;
type
  tv = array[1..10] of integer;

Procedure LeeArch(Var vector: TV; Var N: byte);
Var
  arch: text;
Begin
  N:= 0;
  ASSIGN(arch,'Ejercicio86b.txt'); RESET(arch);
  While not eof (Arch) do
  begin
    N:= N + 1;
    Readln(Arch, vector[N])
  end;
  CLOSE(arch);
end;

function buscaPosicion (vector:TV; pri, ult, medio, X: byte): byte;   {busco posicion del numero}
begin
If (pri < ult) then
  begin
  If (X = vector[medio]) then
    buscaPosicion:= medio
  else
    If (X < vector[medio]) then
      begin
      ult:= medio - 1;
      medio:=(pri + ult) div 2;
      buscaPosicion:= buscaPosicion(vector, pri, ult, medio, X);
      end
    else
      begin
      pri:= medio + 1;
      medio:=(pri + ult) div 2;
      buscaPosicion:= buscaPosicion(vector, pri, ult, medio, X);
      end;
  end
else
  buscaPosicion:=0;
end;

procedure busquedaBinaria(vector: TV; N, X: byte);
var
  posicion, pri, ult, medio: byte;
begin
pri:= 1;
ult:= N;
medio:= (pri + ult) div 2;
posicion:= buscaPosicion(vector, pri, ult, medio, X);
If (posicion <> 0) then
  Writeln('La posicion de ', X:2,' es ', posicion)
else
  Writeln('No se encontro el numero ', X);
end;

//programa principal
Var
  x, n: byte;
  vector: tv;
begin
  clrscr;
  leeArch(vector, n);
  Writeln('Ingrese un numero'); Readln(x);
  busquedaBinaria(vector, N, X);
  readln;
end.
