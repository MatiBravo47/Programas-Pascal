//Ej 1) Desarrollar una función booleana que dado un caracter diga si es
//letra o no
program Cap4Eje1;

Function esLetra(car: Char): boolean;
Begin
  If (car in ['a'..'z']) or (car in['A'..'Z'] )then
    esLetra:= true
  else
    esLetra:= False;
end;

Var
  Car: Char;

begin
  Writeln('Ingrese una caracter'); Readln(Car);
  esLetra(Car);
  If esLetra(Car) then
    Writeln('El caracter ingresado es una letra')
  else
    Writeln('El caracter ingresado no es una letra');
Readln;
end.

