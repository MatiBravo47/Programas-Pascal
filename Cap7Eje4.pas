program Cap7Eje4;
uses crt;
Type
  TR = Record
    Club:string;
    PJ:byte;
  end;
TV = array [1..10] of TR; //Vector que guarda todos los datos

Procedure LeeArch(Var Equipos:TV;Var N:byte); //comentario
Var
  arch:text;
  i,partidos:byte;
  nombre: string[6];
Begin
ASSIGN(Arch,'Ejercicio74.txt');RESET(Arch);
Readln(Arch,N);//Lee cantidad de equipos
For i:=1 to N do
  begin
  perdio:=false;
  puntaje:=0;
    With V[i] do
    Read(Arch,Nombre,PJ);
    For j:=1 to PJ do
      begin
      Read(Arch,Res);
      if res = 'G' then
        Puntaje:=Puntaje + 3;
      if res = 'E' then
        Puntaje := Puntaje + 1;
      if res = 'P' then
        Perdio:=true; //clequear esto
       end;
  Readln(Arch);
  end;
CLOSE(Arch);
end;

begin
end.

