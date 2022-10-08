//Ej 4) En una competencia intervienen N equipos deportivos
//de los cuales se registró:
// Nombre del Club
// Cantidad de partidos jugados
// El resultado de cada encuentro ( G = ganado, E = empatado,
//P = perdido)
//Se pide almacenar los datos en una estructura adecuada
//junto con el total del puntaje obtenido. Por cada
//partido ganado son 3 puntos, empatado 1 y perdido 0.
//A partir de lo almacenado, informar:
//a) Listado con los nombres de los clubes junto con el
//puntaje obtenido.
//b) Nombre de el/los punteros de la Tabla.
//c) Porcentaje de los que no perdieron ningún partido
//sobre el total de clubes.
program Cap7Eje4;
uses crt;
Type
  TR = record
    Club : string[6];
    PJ, puntaje : byte;
  end;
TV = array [1..4] of TR; //Vector que guarda todos los datos

Procedure LeeArch(Var tabla: TV;Var N: byte; var cantidadInvictos:byte);
Var
  arch: text;
  i, j: byte;
  invicto: boolean;
  Res, blanco: char;
Begin
ASSIGN(Arch, 'Ejercicio74.txt'); RESET(Arch);
Readln(Arch, N);//Lee cantidad de equipos
cantidadInvictos:= 0;
For i:= 1 to N do
  begin
  With tabla[i] do
    begin
    invicto:= true;
    Read(Arch,club,PJ);
    For j:= 1 to PJ do
      begin
      Read(Arch,blanco,res);
      case res of
      'G': puntaje := puntaje + 3;
      'E': puntaje := puntaje + 1;
      'P': invicto := false;
      end;
      end;
    if invicto then
      cantidadInvictos:= cantidadInvictos + 1;
    end;
  Readln(Arch);
  end;
CLOSE(Arch);
end;


//Listado con los nombres de los clubes junto con el
//puntaje obtenido
Procedure Listado(tabla: TV; n: byte);
var
  i: byte;
Begin
writeln ('Equipo     Puntos');
For i:=1 to N do
  Writeln(tabla[i].club ,'     ',tabla[i].Puntaje)
end;

//Nombre de el/los punteros de la Tabla
procedure PunteroCampeonato(tabla :tv; n: byte );
var
  i,puntajeMax :byte;
  puntero:string[6];
begin
puntero :=tabla[1].club;
puntajeMax:= tabla[1].puntaje;
for i:=2 to N do
  begin
  if (tabla[i].Puntaje > puntajeMax) then
    begin
    puntero :=tabla[i].club;
    puntajeMax:= tabla[i].puntaje;
    end;
  end;
Writeln('Puntero del campeonato: ',puntero );
end;

Var
  tabla: TV;
  n, cantidadInvictos: byte;

//Programa principal
begin
  clrscr;
  leeArch(tabla, N, cantidadInvictos);
  listado(tabla, n);
  punteroCampeonato(tabla, n);
  writeln('Poncentaje invictos: %',(CantidadInvictos/N * 100):5:2);
  readln;
end.

