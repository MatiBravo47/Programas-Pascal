{Ej 2) En una matriz Tablero de 8x8 se almacenó una jugada de ajedrez. Además, se sabe la posición (i,j)
de una de las Torres Negras, y que juegan las negras. Determinar e informar a qué piezas “defiende” la
Torre y a cuáles “amenaza”, sabiendo que las piezas tienen dos atributos:
 Tipo: R = Rey, Q = Reina, A = Alfil, T = Torre, C = Caballo, P = Peón
 Color: 1 = Blanco, 2 = Negro
Nota: armar el Tablero leyendo desde archivo, donde en cada línea viene (fila, col, Tipo, Color)}
program Cap7Eje2;
Procedure LeeArch();
i,j:Byte;
Blanco:Char;
Begin
Assign(ArchE,'Datos72.txt');
Reset(ArchE);
While not eof (ArchE) do
  Begin
  Read(ArchE,i,j);
  With Mat[i,j] do
    begin
    Read(ArchE,Blanco,tipo,color);
    If (tipo='T') and (Color=2) then
      Begin
      Filatorre:=i;
      Columnatorre:=j;
      end;
    Readln(ArchE);
    end;
begin
end.

