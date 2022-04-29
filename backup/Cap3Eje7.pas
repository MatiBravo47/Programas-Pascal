program Cap3Eje7;
Uses crt;
Var
Total,Apro,Nota1,Nota2,Nota3:Byte;
Arch:Text;
Nombre:String[6];

begin
Clrscr;
Total:=0;
Apro:=0;
Assign(Arch,'Ejercicio37.txt');Reset(Arch);
Readln(Arch,Nombre);
While Nombre<>'***' do
  Begin
  Readln(Arch,Nota1,Nota2,Nota3);
  If ((Nota1+Nota2+Nota3)/3)>=4 then
    Begin
    Writeln(Nombre,' Aprobado');
    Apro:=Apro+1;
    end
  else
    Writeln(Nombre,' Desaprobado');
  Total:=Total+1;
  end;
Close(Arch);
Writeln('El porcentaje de alumnos aprobados es ',((Apro*100)/Total):6:2);
Readln;
end.

