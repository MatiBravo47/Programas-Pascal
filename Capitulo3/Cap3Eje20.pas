//Ej 20) Leer desde un archivo números enteros, calcular y escribir
//el promedio de los elementos positivos y distintos de cero que se
//encuentran entre dos negativos no consecutivos.
//Ejemplos:
//-7 6 -1 0 2 4 -8 -7 3 1 -24 6 7 0 9  debe escribir : 6 3 2
//7 6 -1 0 2 4 -8 -7 3 1 -24 6 7 0 9 -8  debe escribir : 3 2 7.33
program Cap3Eje20;
uses crt;
var
Arch: Text;
N, Total: Integer;
Cant: Byte;
begin
clrscr;
Assign(Arch,'Ejercicio320.txt'); Reset(Arch);
Read(Arch, N);
While not eof (Arch) do
Begin
Total:= 0;
Cant:= 0;
  If (n < 0) then
    begin
    Read(Arch, N);//Primer numero positivo desde el negativo
    while (N >= 0) do
      begin
      Total:= Total + N;
      if (n <> 0) then //para evitar contar 0's
        Cant:= Cant + 1;
      Read(Arch,N);
      end;
    If (N < 0) and (cant <> 0) then //2do negativo y no es consecutivo
    	 Write((Total / cant):5:2);
    end
  else
   Read(Arch, N);//Sino encuentra negativo,sigue buscando
end;
Close(Arch);
readln;
end.

