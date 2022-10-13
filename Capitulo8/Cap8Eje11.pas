//Ej 11) Desarrollar un procedimiento recursivo para imprimir
//una media pirámide de dígitos como se muestra a continuación:
//ejemplo tamanio:9
//1
//2 1
//3 2 1
//4 3 2 1
//5 4 3 2 1
//6 5 4 3 2 1
//7 6 5 4 3 2 1
//8 7 6 5 4 3 2 1
//9 8 7 6 5 4 3 2 1
program Cap8Eje11;
procedure imprimeMediaPiramide(n, j, m: byte);
begin
if (n = 1) then //Caso base
  begin
  writeln(n:4);
  //cambia de fila y aumenta en 1 el primer numero de cada fila
  imprimeMediaPiramide(j + 1, j + 1, m);
  end
else
  if (n <= m) then
    begin
    write(n:4);
    //cambia de columna
    imprimeMediaPiramide(n - 1, j, m);
    end
end;
var
  n: byte;
begin
writeln('Ingrese el tamanio de la piramide'); readln(n);
if (n > 0) then
  imprimeMediaPiramide(1, 1, n)
else
  writeln('Ingrese un valor mayor a 0');
readln();
end.

