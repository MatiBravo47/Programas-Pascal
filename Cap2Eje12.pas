//Ej 12) Dado un día (entre 1 y 31) y suponiendo que el día 1 es Lunes,
//determinar a qué día de la semana corresponde el número ingresado
program Cap2Eje12;
uses crt;
Var
  dia,resto:byte;
begin
Clrscr;
Writeln('Ingrese un dia'); Readln(Dia);
Resto := dia mod 7;
Case Resto of
1:Writeln('Es lunes');
2:Writeln('Es martes');
3:Writeln('Es miercoles');
4:Writeln('Es jueves');
5:Writeln('Es viernes');
6:Writeln('Es sabado');
7:Writeln('Es domingo');
End;
Readln;
end.

