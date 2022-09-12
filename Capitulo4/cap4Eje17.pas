//Ej 17) Mediante una función booleana informar si un número es primo.
program cap4Eje17;
uses crt;

function primo(num: word): boolean;
var
	 i: byte;
begin
primo:= true;
for i:=2 to (num - 1) do
    begin
		if ((num mod i) = 0 ) then  //verifica si es divisible por mas de 2
    	 primo:= false;
    end;
end;
//PROGRAMA PRINCIPAL
var
num: word;
begin
  clrscr;
  writeln('Ingrese un numero'); Readln(num);
  If primo(num) then
  	 Writeln(num ,' es primo')
  else
     Writeln(num, ' no es primo');
  readln;
end.

