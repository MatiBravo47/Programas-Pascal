//Ej 16) Una empresa de autos de alquiler posee N vehículos y ha registrado
//la siguiente información de los viajes realizados,
//por cada uno de ellos:
// Patente
// Total de litros de combustible consumidos
//Y por cada viaje realizado
//- Kilómetros recorridos. (0 indica fin de datos).
//Se pide ingresar los datos e informar:
//a) Por cada vehículo el consumo que tuvo (cantidad de litros por km.recorrido)
//b) Patente del vehículo que más viajes hizo.
//c) Total de litros consumidos por el auto que hizo la menor cantidad
//de kms
program Cap3Eje16;
uses crt;
var
 MenosKm, LConsu , Km, KmT, MenosLt: Real;
 MasViajes, Viajes, N, i:Byte;
 Arch: Text;
 Patente,MasViajesPat: String[6];


begin
clrscr;
MenosKm:= 7000; //valor imposible para menos km
MasViajes:= 0;
Viajes:= 0;
Assign(Arch,'Ejercicio316.txt'); Reset(Arch);
Readln(Arch, N); //lee cantidad de vehiculos
For i:=1 to N do
    Begin
    Kmt:=0;
    Viajes:=0;
    Readln(Arch, Patente, LConsu); //lee patente y litros consumidos
    Read(Arch, Km);
    While (Km <> 0) do //lee km hasta que encuentre 0
        Begin
        KmT:= KmT + KM; //KM total de cada patente
        viajes:= Viajes + 1; //cantidad de viajes de cada patente
        Read(Arch, Km);
        end;
    Writeln(patente);
    Writeln(LConsu:8:2,' L consumidos');
    Writeln(Kmt:8:2,' KM totales');
    Writeln('Tuvo un consumo de ',(KmT*LConsu):8:2, ' litros por kilometros');
    Writeln();
    If (KmT < MenosKm) then
        Begin
      	MenosKm:= KmT;
      	MenosLt:= LConsu;
      	end;
    If (Viajes > MasViajes) then
        Begin
      	MasViajes:= Viajes;
      	MasViajesPat:= Patente;
      	end;
    Readln(Arch);
    end;
Close(Arch);
Writeln('La patente ',MasViajesPat,' fue la que hizo mas viajes' );
Writeln('Litros consumidos por el auto que hizo menos km',MenosLt:8:2);
readln;
end.

