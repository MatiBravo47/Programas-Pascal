//Ej 2) En una matriz Tablero de 8x8 se almacenó una jugada de
//ajedrez. Además, se sabe la posición (i,j) de una de las
//Torres Negras, y que juegan las negras. Determinar e informar
//a qué piezas “defiende” la Torre y a cuáles “amenaza”,
//sabiendo que las piezas tienen dos atributos:
// Tipo: R = Rey, Q = Reina, A = Alfil, T = Torre,
//C = Caballo, P = Peón
// Color: 1 = Blanco, 2 = Negro
//Nota: armar el Tablero leyendo desde archivo, donde en
//cada línea viene (fila, col, Tipo, Color)
program Cap7Eje2;
Uses crt;
const
  filasTotales =8;
  columnasTotales = 8;
type
  TReg = record
    tipo : char;
    color : byte;
  end;
TipoMatriz = array[1..filasTotales,1..columnasTotales] of Treg;

procedure leeArch(var tablero : TipoMatriz;var filaTorre,columnaTorre:byte);
var
  arch:text;
  i,j:byte;
  blanco:char;
begin
assign(arch,'Ejercicio72.txt'); reset(arch);
while not eof (arch) do
  begin
  read(arch, i, j);
  with tablero[i,j] do
    begin
    readln(arch,blanco,tipo, Color);
    if (tipo = 'T') and (Color = 2) then
      begin
      filaTorre:= i;
      columnaTorre:= j;
      end;
    end;
  end;
close(arch)
end;

procedure identificaPieza(tablero:tipoMatriz;i,j:byte;var pieza:string);
begin
  case tablero[i,j].tipo of
  'R': Pieza:='rey';
  'Q': pieza:='reina';
  'A': pieza:= 'alfil';
  'T': pieza:='torre';
  'C': pieza:='caballo';
  'P': pieza:='peon';
end;
end;

procedure EvaluaDerecha(tablero:tipoMatriz;ColorPieza,i,j:byte);
var
  encontro:boolean;
  pieza:string;
begin
 encontro:=false;
repeat
  begin
  j:= j + 1;
  if (tablero[i,j].color = ColorPieza) then
    begin
    encontro:= true;
    identificaPieza(tablero,i,j,pieza);
    if colorPieza = 1 then
      writeln('Amenaza ', pieza,' [', i ,',', j, ']')
    else
      Writeln('Defiende ', pieza,' [', i ,',', j, ']')
    end;
  end;
until ((j > columnasTotales) or (encontro)) ;
end;

procedure EvaluaIzquierda(tablero:tipoMatriz;ColorPieza,i,j:byte);
var
  encontro:boolean;
  pieza:string;
begin
 encontro:=false;
repeat
  begin
  j:= j - 1;
  if (tablero[i,j].color = ColorPieza) then
    begin
    encontro:= true;
    identificaPieza(tablero,i,j,pieza);
    if colorPieza = 1 then
      writeln('Amenaza ', pieza,' [', i ,',', j, ']')
    else
      Writeln('Defiende ', pieza,' [', i ,',', j, ']')
    end;
  end;
  until ((j = 0) or (encontro)) ;
end;

procedure EvaluaArriba(tablero:tipoMatriz;ColorPieza,i,j:byte);
var
  encontro:boolean;
  pieza:string;
begin
 encontro:=false;
repeat
  begin
  i:= i - 1;
  if (tablero[i,j].color = ColorPieza) then
    begin
    encontro:= true;
    identificaPieza(tablero,i,j,pieza);
    if colorPieza = 1 then
      writeln('Amenaza ', pieza,' [', i ,',', j, ']')
    else
      Writeln('Defiende ', pieza,' [', i ,',', j, ']')
    end;
  end;
  until ((i = 0) or (encontro)) ;
end;

procedure EvaluaAbajo(tablero:tipoMatriz;ColorPieza,i,j:byte);
var
  encontro:boolean;
  pieza:string;
begin
 encontro:=false;
repeat
  begin
  i:= i + 1;
  if (tablero[i,j].color = ColorPieza) then
    begin
    encontro:= true;
    identificaPieza(tablero,i,j,pieza);
    if (colorPieza = 1) then
      writeln('Amenaza ', pieza,' [', i ,',', j, ']')
    else
      Writeln('Defiende ', pieza,' [', i ,',', j, ']' )
    end;
  end;
  until ((i< filasTotales) or (encontro)) ;
end;

procedure defiende(tablero:tipoMatriz;filaTorre,columnaTorre:byte);
begin
  EvaluaDerecha(tablero,2,filaTorre,columnaTorre);
  EvaluaIzquierda(tablero,2,filaTorre,columnaTorre);
  EvaluaArriba(tablero,2,filaTorre,columnaTorre);
  EvaluaAbajo(tablero,2,filaTorre,columnaTorre);
end;


procedure amenaza(tablero:tipoMatriz;filaTorre,columnaTorre:byte);
begin
  EvaluaDerecha(tablero,1,filaTorre,columnaTorre);
  EvaluaIzquierda(tablero,1,filaTorre,columnaTorre);
  EvaluaArriba(tablero,1,filaTorre,columnaTorre);
  EvaluaAbajo(tablero,1,filaTorre,columnaTorre);
end;

var
  tablero: tipoMatriz;
  filaTorre,columnaTorre:byte;
begin
  clrscr;
  leeArch(tablero,filaTorre,columnaTorre);
  defiende(tablero,filaTorre,columnaTorre);
  amenaza(tablero,filaTorre,columnaTorre);
  readln;
end.

