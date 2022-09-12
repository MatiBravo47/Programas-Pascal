program Cap7Eje4;
uses crt;
Type
  TR = Record
    Club:string;
    PJ,puntaje:byte;
  end;
TV = array [1..10] of TR; //Vector que guarda todos los datos


Procedure IniciaVec(N:Byte; Var Puntaje:TV);
var
  i:byte;
begin
for i:=1 to N do
    Puntaje[i]:=0;
end;
Procedure LeeArch(Var Puntaje,Equipos:TV;Var N:byte);
Var
  arch:text;
  i,j,PJ:byte;
  nombre: string[6];
  perdio:boolean;
  Res,blanco:char;
Begin
ASSIGN(Arch,'Ejercicio74.txt');RESET(Arch);
Readln(Arch,N);//Lee cantidad de equipos
IniciaVec(N,Puntaje);
For i:=1 to N do
  begin
  perdio:=false;
    With Equipos[i] do
    Read(Arch,Nombre,PJ);
    For j:=1 to PJ do
      begin
      Read(Arch,Res,blanco);
      if res = 'G' then
        Puntaje[i]:=Puntaje[i] + 3;
      if res = 'E' then
        Puntaje[i] := Puntaje[i] + 1;
      if res = 'P' then
        Perdio:=true; //clequear esto
       end;
  Readln(Arch);
  end;
CLOSE(Arch);
end;


Procedure Listado();
var
Begin
For i:=1 to N do
  Writeln('Equipo : ',Equipos.Nombre ,'puntos: ',)
end;

Var
  equipos:TV;
  n:byte;
//Programa principal
begin
  leeArch(Equipos,N);


end.

