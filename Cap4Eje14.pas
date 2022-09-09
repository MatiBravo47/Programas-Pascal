//Ej 14) Modificar el código del ejemplo 8, dado en la teoría, para que
//el procedimiento Evalua(), devuelva además, la cantidad de palabras
//más largas y el programa muestre además, dicho resultado.
//Considerar que cada palabra finaliza con punto y vienen en líneas
//diferentes
program Cap4Eje14;
Type
St20= string[20];

Procedure Evalua(Var Todas: string; Var Max, cant: byte);
Var
  Arch: Text;
  Car: char;
  Pal: St20;
  i: byte;
Begin
  Assign (Arch, 'Ejercicio414.txt'); Reset(Arch);
  Max:= 0;
  cant:= 0;
  Read(Arch, Car);
  While (Car <> '.') do
    If (Car = ' ') then
    Read(Arch, Car) {si es blanco lee otro caracter}
    else
     begin {es el comienzo de palabra}
      Pal:= '';
      i:= 0;
      While (Car<>'.') and (Car<>' ') do
        begin {cuenta los caracteres y arma la palabra}
        i:= i + 1;
        Pal:= Pal + Car;
        Read(Arch, Car);
        End;
      If (i > Max) then {evalua si es la mas larga}
        begin
        Todas:= Pal;
        Max:= i;
        cant:= 1;
        End
      else
        if (i = Max) then {evalua si es igual}
          begin
          Todas:= Todas + ' ' + Pal;
          cant:=cant + 1;
          end;
      end;
Close(Arch);
End;

Var
Todas: string;
Max, cant: byte;

Begin
Evalua(Todas, max, cant);
Writeln ('estas son las palabras mas largas') ;
writeln (Todas);
Writeln ('Tienen ', Max, ' caracteres') ;
Writeln('La cantidad de palabras mas largas son :', cant);
Readln;
end.


