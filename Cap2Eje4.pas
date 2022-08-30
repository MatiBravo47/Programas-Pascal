program Cap2Eje4;
uses crt;
var
Dia1,Dia2,Mes1,Mes2,Anio1,Anio2:byte;
begin
clrscr;
Writeln('Ingrese una fecha 1 (dd/ mm/ aa)');
Readln(Dia1, Mes1, Anio1);
Writeln('Ingrese una fecha  2 (dd/ mm/ aa)');
Readln(Dia2, Mes2, Anio2);
If (anio1 > anio2) then//analizo anios
   Writeln('La fecha 2 es la mas antigua' )
else
  if (anio1 < anio2) then
     writeln('La fecha 1 es la mas antigua')
  else //anios iguales => analizo meses
       if (mes1 < mes2) then
          writeln('La fecha 1 es la mas antigua')
       else
           if (mes1 > mes2) then
              Writeln('La fecha 2 es la mas antigua' )
           else//anios y meses iguales => analizo dias
               if (dia1 < dia2) then
                  writeln('La fecha 1 es la mas antigua')
               else
                   if (dia1 > dia2) then
                      writeln('La fecha 2 es la mas antigua')
                   else
                       Writeln('Las fechas son iguales');
readln;
end.

