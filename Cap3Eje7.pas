//Ej 7) Dado un conjunto de alumnos, no se sabe cuántos son, de cada uno de ellos se conoce:
//- Nombre (‘***’ indica fin de datos)
//- Nota1, Nota2 y Nota3
//Ingresar la información e informar:
//a) El promedio de cada alumno y su condición:
//− ‘Aprobado’ si su promedio es mayor o igual a 4
//− ‘Desaprobado’ si su promedio es menor a 4.
//b) Porcentaje de alumnos Aprobados
//ejemplo:
//Enzo
//4 4 4
//Matias
//8 8 8
//Lauta
//2 2 2
//Jorge
//1 1 1
//***
program Cap3Eje7;
Uses crt;
Var
Total, Apro, Nota1, Nota2, Nota3: Byte;
Arch: Text;
Nombre:String[6];

begin
Clrscr;
Total := 0;
Apro := 0;
Assign(Arch,'Ejercicio37.txt'); Reset(Arch);
Readln(Arch,Nombre);
While (Nombre <> '***') do
  Begin
  Readln(Arch, Nota1, Nota2, Nota3);
  If (((Nota1+Nota2+Nota3)/3) >= 4) then
    Begin
    Writeln(Nombre,' Aprobado');
    Apro := Apro + 1;
    end
  else
    Writeln(Nombre,' Desaprobado');
  Total := Total + 1;
  Readln(Arch,Nombre);
  end;
Close(Arch);
Writeln('El porcentaje de alumnos aprobados es ',((Apro*100)/Total):6:2);
Readln;
end.

