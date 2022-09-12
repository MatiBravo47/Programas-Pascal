//Ej 12) Los dos primeros términos de la sucesión de Fibonacci valen 1,
//y los demás se hallan sumando los dos anteriores: 1, 1, 2, 3, 5, 8,13, 21…
//Desarrolle un programa que lea N cotas enteras positivas, y para cada
//una de ellas genere y muestre los términos de la sucesión hasta superar
//la cota dada.
program cap4Eje12;
uses crt;
var
  n:byte;
procedure Fibonacci(n: byte);
var
  i: byte;
  suma, num1, num2 : word;
begin
  num1:=0;
  num2:=1;
  suma:=0;
  if (n = 0) then
    writeln(n)
  else
    begin
    for i:=1 to N do
        begin
    		suma:= num1 + num2;
        num2:= num1;
        num1:= suma;
        write(suma,' ');
        end
    end;
end;

//PROGRAMA PRINCIPAL
begin
  clrscr;
  writeln('Ingrese tope'); Readln(N);
  fibonacci(n);
  readln
end.

