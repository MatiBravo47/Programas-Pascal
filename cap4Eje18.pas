//Ej 18) Desarrollar la Función MCD que devuelve el máximo común divisor
//entre dos números
//MCD: el máximo común divisor es el número mayor entre los
//divisores comunes.
program cap4Eje18;
uses crt;

function MCD(A,B:word):word;
var
  i, j, max: byte;
begin
  for i:=1 to A do
  		if (A mod i = 0) then // si encuentra un divisor
        for j:=1 to B do
            begin
            if (B mod j = 0) then //busca si tiene el mismo divisor
              if i = j then  //se guarda la coincidencia con mayor numero
                Max:=i;
            end;
MCD:= Max;
end;

//PROGRAMA PRINCIPAL
var
  A, B: word;
begin
  clrscr;
  write('Ingrese un numero: '); Readln(A);
  write('Ingrese otro numero: '); Readln(B);
  Writeln('El maximo comun divisor entre ',A, ' y ',B , ' es ', MCD(A,B));
  readln;
end.

