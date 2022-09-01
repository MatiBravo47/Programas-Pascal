//Ej 4) Ingresar N números enteros (ordenados en forma descendente),
//informar cual es la máxima diferencia entre dos números consecutivos
//y qué posición ocupa ese par de números dentro de la secuencia.
//Ejemplo: 25 19 11 9 3 -3, la máxima diferencia es 8 y corresponde
//al par 2
//Nota: La diferencia se calcula sobre un par de números, por lo
//tanto deben estar en memoria dos valores consecutivos (Pri y Seg),
//que se actualizan en cada repetición
program Cap3Eje4;
uses crt;
Var
Arch: Text;
DifMax, Dif, Pri, Seg:Integer;
Par, ParMax: Byte;

begin
Clrscr;
DifMax := -1000;//valor imposible
Par := 0;//inicializo
Assign(Arch, 'Ejercicio34.txt'); Reset( Arch);
Read(Arch, Pri);
While not eof (Arch) do
Begin
  Dif := 0;
  Read(Arch, Seg);
  Par := Par + 1;
  Dif := Pri - Seg;
  If (Dif > DifMax) then
    Begin         //almaceno valores maximos
    DifMax := Dif;
    ParMax := Par;
    end;
  Pri := Seg;
end;
Writeln('La maxima diferencia es ', DifMax);
Writeln('Y corresponde al par ', ParMax);
Readln;
end.

