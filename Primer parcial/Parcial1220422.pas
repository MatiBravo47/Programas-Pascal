program Parcial1220422;
uses crt;
const
  TOPE=4;
  multaMoto=1000;
  multaAuto=2000;
  multaCamion=5000;
type
  tvString = array [1..TOPE] of string[3];
  tvReal = array [1..TOPE] of real;
  //radar
  tvByte = array[1..19] of byte;
  tvWord = array[1..19] of word;
  tvStringZona = array[1..19] of string[3];
  tvStringPatente = array[1..19] of string[7];

procedure leeArchZonas(var n:byte;var vecZonas:tvString;var VecFactor:tvReal);
var
  arch:text;
begin
n:=0;
assign(arch,'zonas.txt');Reset(arch);
while not eof (arch) do
   begin
   n:=n+1;
   readln(arch,vecZonas[n],vecFactor[n]);
   end;
end;

Procedure LeeArchRadar(var m:byte;var tipo:tvByte;var Velocidad:tvWord;var Zona:tvStringZona;var patente:tvStringPatente);
var
  arch:text;
  blanco:char;
  sinInfraccion:byte;
begin
m:=0;
sinInfraccion:=0;
assign(arch,'radar.txt');reset(arch);
while not eof(arch) do
    begin
    m:=m+1;
    readln(arch,tipo[M],velocidad[m],blanco,zona[m],patente[m]);
    //si no corresponde a una infraccion no lo guarda
    if not(( (tipo[m]=1) and (velocidad[m] > 100)) or ((tipo[m]=2) and (velocidad[m] > 110)) or ((tipo[m]=3) and (velocidad[m] > 90))) then
       begin
       sinInfraccion:=sinInfraccion + 1;
       m:=m-1;
       end;
    end;
close(arch);
writeln(sinInfraccion,' lecturas no corresponden a infracciones');
end;

procedure MaxMulta(n,m:byte;tipo:tvByte;patente:tvStringPatente;VecZonas:tvString;zona:TvStringZona;vecFactor:tvReal);
var
  multa,maxMulta:real;
  i,j:byte;
  patenteMax:string[7];
begin
  for i:=1 to N do   //recorro los n=4 tipos de zonas
    begin
    maxMulta:=0;
    for j:=1 to M do
      begin
      if (vecZonas[i] = zona[j]) then
         begin
         case (tipo[j]) of
           1: multa:= multaMoto * vecFactor[i];
           2: multa:= multaAuto * vecFactor[i];
           3: multa:= multaCamion * vecFactor[i];
         end;
         if (multa > maxMulta) then
            begin
            maxmulta := multa;
            patenteMax:= patente[j];
            end;
         end;
      end;
      writeln('Para zona=', vecZonas[i], ' patente=', patenteMax);
    end;
end;

function contadorMultas(zona:tvStringZona;zonaingresada:string; m:byte):byte;
var
  contador,i:byte;
begin
contador:=0;
for i:=1 to M do
  begin
  if (zona[i] = zonaIngresada) then
     contador:=contador+1;
  end;
contadorMultas:=Contador
end;

//programa principal
var
  n,m:byte;
  vecZonas:tvString;
  VecFactor:tvReal;
  tipo:tvByte;
  velocidad:tvWord;
  zona:TvStringZona;
  patente:tvStringPatente;
  zonaIngresada:string[3];


begin
  clrscr;
  leeArchZonas(n,vecZonas,VecFactor);
  leeArchRadar(m,tipo,velocidad,zona,patente);
  maxMulta(n,m,tipo,patente,vecZonas,zona,vecFactor);
  write('Ingrese zona:'); Readln(zonaIngresada);
  zonaIngresada:= upcase(zonaIngresada);
  writeln('Para zona: ',zonaIngresada,', Cantidad de multas = ',contadorMultas(zona,zonaIngresada,m));

  readln;
end.

