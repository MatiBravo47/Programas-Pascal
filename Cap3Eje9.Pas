//Ej 9) Dado un conjunto de números leídos desde un archivo,
//informar si están ordenados en forma ascendente
//ejemplo:
//1 3 4 6 8
program Cap3Eje9;
uses crt;
Var
 Ascendente: Boolean;
 Arch: Text;
 Pri, Seg: Integer;
begin
  Clrscr;
  Ascendente:= True;
  Assign(Arch,'Ejercicio39.txt'); Reset(Arch);
  Read(Arch, Pri);
  While not eof (Arch) do
  Begin
  Read(Arch, Seg);
  If (Pri > Seg) then
  	 Ascendente:= False;
  	 Pri:= Seg;
  end;
  Close(Arch);
  If Ascendente then
  	 Writeln('Esta ordenado en forma ascendente')
  else
  		Writeln('No esta ordenado en forma ascendente');
  Readln;
end.

