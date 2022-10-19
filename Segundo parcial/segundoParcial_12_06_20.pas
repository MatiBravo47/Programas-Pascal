//Dada una matriz de NxM, cuyos elementos son letras mayúsculas o
//minúsculas. Se desea conocer el top 3 de las columnas con
//mayor porcentaje de mayúsculas sobre el total de elementos de
//la columna.Mostrar por pantalla los resultados
//NOTA: Para aprobar debe resolver correctamente en forma recursiva
//2 de los siguientes procesos:
//- Calcular cantidad de mayúsculas en una columna
//- Mostrar un arreglo
//- Determinar la posición donde corresponda insertar un
//elemento en un arreglo
program segundoParcial_12_06_20;
uses crt;
type
  tipoMatriz = array[1..4,1..5] of char;
  tipoVector = array[1..5] of byte;

procedure leeArch(var n, m: byte; var matriz: tipoMatriz);
var
  arch: text;
  blanco: char;
  i, j: byte;
begin
assign(arch,'Parcial_12_06_20.txt'); reset(arch);
readln(arch, N , M);
  for i:=1 to N do
    begin
    for j:=1 to M do
      begin
      read(arch, matriz[i,j], blanco)
      end;
    readln(arch);
    end;
end;

Function CantidadMayusculasColumnaX(matriz: tipoMatriz; i, x , N: byte ): byte;
var
  Incr: byte;
Begin
if (i = 0) then
  CantidadMayusculasColumnaX:= 0
else
  begin
  if (matriz[i,x] in ['A'..'Z']) then
    incr:= 1
  else
    incr:= 0;
  if (i > 0) then
    CantidadMayusculasColumnaX:= Incr + CantidadMayusculasColumnaX(matriz, i - 1, x, N)
  end;
end;

procedure CuentaMayusculasColumnas(matriz: tipoMatriz; i, m, n: byte; var vector: tipoVector);
var
  j: byte;
begin
for j:= 1 to M do
  vector[j]:= cantidadMayusculasColumnax(matriz,i,j,n);
end;

//Muestra un vector
Procedure muestraVector(vector: tipoVector; n: byte);
Begin
  if (n > 1) then
    muestraVector(vector, n - 1);
write(vector[N], ' ');
end;

//Procedure Insercion(Var vector: tipoVector; N: byte);
//Var
//  Aux: integer;
//  i, j: byte;
//Begin
//for i:= 2 to N do
//  begin
//  j:=i - 1;
//  Aux:= vector[i];
//  While (j > 0) and (aux < vector[j]) do
//    begin
//    vector[j+1] :=vector[j];
//    j:= j - 1;
//    end;
//  vector[j+1]:= Aux;
//  end;
//end;

Procedure Shell (Var vector: tipoVector; n: byte);
Var
  Cambio: boolean;
  Aux: Integer;
  i, paso: byte;
begin
  paso:= N div 2;
  repeat
    repeat
      cambio:= false;
      for i:= 1 to (N - paso) do
        if (vector[i] > vector[i + paso]) then
          begin
          aux:= vector[i];
          vector[i]:= vector[i + paso];
          vector[i + paso]:= aux;
          cambio:= true;
          end;
    until not cambio;
    paso:= paso div 2;
  until paso= 0 ;
end;

Procedure invierteVector(vector: tipoVector; n: byte);
begin
Write (vector[N],' ');
if (n > 1) then
  invierteVector(vector, n - 1);
end;
var
  n, m: byte;
  matriz: tipoMatriz;
  vector: tipoVector;
//programa principal
begin
  clrscr;
  leeArch(n, m, matriz);
  cuentaMayusculasColumnas(matriz, n, m, n, vector);
  shell(vector,m);
  invierteVector(vector,m);
  readln;
end.

