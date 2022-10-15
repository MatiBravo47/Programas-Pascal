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

procedure leeArch(var n, m: byte; var matriz:tipoMatriz);
var
  arch:text;
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


var
  n, m: byte;
  matriz: tipoMatriz;
//programa principal
begin
  clrscr;
  leeArch(n, m, matriz);
  readln;
end.

