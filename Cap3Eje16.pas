program Cap3Eje16;
uses crt;
var
 MenosKm,LConsu,Km,KmT,MenosLt:Real;
 MasViajes,Viajes,N,i:Byte;
 Arch:Text;
 Patente,MasViajesPat:String[6];


begin
clrscr;
KmT:=0;
MenosKm:=7000;
MasViajes:=0;
Viajes:=0;
Assign(Arch,'Ejercicio316.txt');Reset(Arch);
Readln(Arch,N);
For i:=1 to N do
  Begin
   Readln (Arch,Patente,LConsu);
   Read(Arch,Km);
     While Km<>0 do
       Begin
      KmT:=KmT+KM;
      viajes:=Viajes+1;
      Read(Arch,Km);
       end;
    Writeln(LConsu:8:2);
    Writeln(Kmt:8:2);
    Writeln(Patente, ' tuvo un consumo de ',(KmT*LConsu):8:2, ' litros por kilometros');
    If KmT<MenosKm then
      Begin
      MenosKm:=KmT;
      MenosLt:=LConsu;
      end;
    If Viajes>MasViajes then
      Begin
      MasViajes:=Viajes;
      MasViajesPat:=Patente;
      end;
   Viajes:=0;
   Kmt:=0;
   Readln(Arch);

   end;
Close(Arch);
Writeln('La patente ',MasViajesPat,' fue la que hizo mas viajes' );
Writeln('Litros consumidos por el auto que hizo menos km',MenosLt:8:2);
readln;
end.

