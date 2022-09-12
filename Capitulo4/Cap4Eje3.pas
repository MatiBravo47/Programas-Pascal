program Cap4Eje3;

Function Suma(N: Word): Integer;
Var
  Sum: Integer;
  i: Word;
Begin
  Sum:= 0;
  For i:= 1 To N do
    Sum:= Sum + i;
Suma:= Sum; //para evitar estar llamando constante a la funcion
end;

Var
  N: Byte;

begin
  Writeln('Ingrese un numero natural N'); Readln(N);
  Writeln('La suma de los N primeros numeros es ', Suma(N));
  Readln;
end.

