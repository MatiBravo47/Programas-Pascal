//Ej 10) Leer desde un archivo números enteros ordenados de menor a mayor,
//puede haber elementos repetidos.
//Calcular y mostrar cada número con su respectiva frecuencia.
//Ejemplo: 2, 2, 3, 3, 3, 3, 7, 9, 9, 9
program Cap3Eje10;
uses crt;
Var
  Frec: Byte;
  Arch: Text;
  Pri, Seg: Integer;

begin
  Clrscr;
  Assign(Arch,'Ejercicio310.txt'); Reset(Arch);
  Read(Arch, Pri);
  Frec:= 1;
  Writeln('Numero    Frecuencia');
  While not eof (Arch) do
    Begin
    Read(Arch, Seg);
    If (Pri = Seg) then
    	 Frec:= Frec + 1
    Else
      If (Pri <> Seg) then
        Begin
        Writeln (Pri,'            ',Frec);
        Frec:=1;
        end;
    Pri:= Seg;
  end;
  Close(Arch);
  If (Pri = Seg) then
     Writeln (Pri,'            ',Frec);
  Readln;
end.

