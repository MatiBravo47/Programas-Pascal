program Cap3Eje2;
uses crt;
Const
Basico=15000;
Var
SueldoMax,Sueldo,Total:Real;
Cant,anios:Byte;
Arch:Text;
Nombre,MasCobra:String[6];


begin
Clrscr;
SueldoMax:=-1000;
Cant:=0;
Total:=0;
Assign(Arch,'Ejercicio32.txt');Reset(Arch);
While not eof(Arch) do
  Begin
  Readln (Arch, Nombre , Anios);
  Cant:=Cant+1;
  Sueldo:=0;
  Case Anios of
  1..5:  Sueldo:= Basico*1.05;
  6..10: Sueldo:=Basico*1.08;
  11..15:Sueldo:=Basico*1.12;
  else
  Sueldo:=Basico*1.20;
  end;
  Sueldo:=(Sueldo*0.88)+500;
  If Sueldo> SueldoMax then
    Begin
    MasCobra:= Nombre;
    SueldoMax:=Sueldo;
    end;
  Writeln('El sueldo de ',Nombre, ' es ',Sueldo:8:2 );
  Total:=Total+Sueldo;
  End;
Close(Arch);
Writeln('El que mas cobra es ',MasCobra);
Writeln('El saldo promedio es ',(Total/Cant):8:2);
Readln;
end.

