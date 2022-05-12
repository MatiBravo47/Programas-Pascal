program cap7Eje1;
uses
   crt;
const
   maxelem=15;
   estaciones:array[1..4] of string=('verano','otonio','invierno','primavera');
type
   st6=string[6];
   persona=record
      nom:st6;
      dia,mes:byte;
   end;
   tv=array[1..maxelem] of persona;
   tb=array[1..4] of byte;

procedure lectura (var vec:tv; var n:byte);
var
   arch:text;
begin
n:=0;
Assign(arch,'Ejercicio71.txt');Reset(arch);
While not eof (arch) do
   begin
   n:=n+1;
   Readln(arch,vec[n].nom,vec[n].dia,vec[n].mes);
   end;
Close(arch);
end;

procedure estacion (vec:tv; n:byte; var est:tb);
var
   i,j:byte;
begin
For i:=1 to 4 do
   est[i]:=0;
For i:=1 to n do
   begin
   Case vec[i].mes of
      1,2: j:=1;
      3: If (vec[i].dia<21) then
            j:=1
         else
            j:=2;
      4,5: j:=2;
      6: If (vec[i].dia<21) then
            j:=2
         else
            j:=3;
      7,8: j:=3;
      9: If (vec[i].dia<21) then
            j:=3
         else
            j:=4;
      10,11: j:=4;
      12: If (vec[i].dia<21) then
            j:=4
         else
            j:=1;
   end;
   est[j]:=est[j]+1;
   end;
end;

function popular (est:tb):string;
var
   i,max,aux:byte;
begin
max:=0;
For i:=1 to 4 do
   begin
   If (est[i]>max) then
      begin
      max:=est[i];
      aux:=i;
      end;
   end;
popular:=estaciones[aux];
end;

{PROGRAMA PRINCIPAL}

var
   vec:tv;
   est:tb;
   n:byte;

begin
ClrScr;
lectura(vec,n);
estacion(vec,n,est);
Writeln('La estacion mas popular es: ',popular(est));
Readln;
end.

