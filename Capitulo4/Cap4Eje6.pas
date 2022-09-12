//Ej 6) Desarrollar una función que devuelva un número aleatorio en un
//rango [A, B] con A<B ingresados por teclado.
//Nota: usar la función Random y Randomize
program Cap4Eje6;
Function Azar(A, B: Integer): Integer;
Var
  Num:Integer;
Begin
Num:= Random(B);
While not ((Num >= A) and (Num <= B)) do
  Num:= Random(B);
Azar:= Num;
end;

//Programa principal
Var
  A, B: Integer;
begin
  Randomize;//para que cambie el numero cada vez que se ejecute
  Writeln ('Ingrese limite inferior'); Readln(A);
  Writeln ('Ingrese limite superior'); Readln(B);
  Writeln ('Numero random: ', Azar(A, B));
  Readln;

end.

