program cap7Eje3;
type
   punto=record
      x,y:integer;
      d:real;
   end;
   treg=array[1..10] of punto;
   tv=array[1..4] of byte;

procedure inicia_vector (var cuad:tv);
var
   i:byte;
begin
For i:=1 to 4 do
   cuad[i]:=0;
end;

procedure lectura (var pun:treg; var n:byte);
var
   arch:text;
begin
Assign(arch,'datos_7_3.txt');Reset(arch);
While not eof (arch) do
   begin
   n:=n+1;
   Readln(arch,pun[n].x,pun[n].y);
   end;
Close(arch);
end;

procedure distancia (pun:treg; n:byte);
var
   i,imin,imax:byte;
   d,max,min:real;
begin
max:=0; min:=999;
For i:=1 to n do
   begin
   d:=sqrt(sqr(pun[i].x)+(sqr(pun[i].y)));
    If (d>max) then
      begin
      max:=d;
      imax:=i;
      end;
   If (d<min) then
      begin
      min:=d;
      imin:=i;
      end;
   end;
Writeln('El punto mas cercano al origen es (',pun[imin].x,',',pun[imin].y,')');
Writeln('El punto mas lejano al origen es (',pun[imax].x,',',pun[imax].y,')');
end;

procedure cuadrantes (pun:treg; var cuad:tv; n:byte);
var
   i:byte;
begin
cuad[1]:=0;
For i:=1 to n do
   If (pun[i].x<>0) and (pun[i].y<>0) then
      begin
      If (pun[i].y>0) then
         begin
         If (pun[i].x>0) then
            begin
            cuad[1]:=cuad[1]+1;
            end
         else
            cuad[2]:=cuad[2]+1;
         end
      else
         begin
         If (pun[i].x>0) then
            cuad[4]:=cuad[4]+1
         else
            cuad[3]:=cuad[3]+1;
         end;
      end;
end;

procedure porcentaje (cuad:tv; n:byte);
var
   i:byte;
begin
For i:=1 to 4 do
   Writeln('El procentaje de puntos en el  cuadrante ',i,' es ',((cuad[i]*100)/n):2:2,'%');
end;

{PROGRAMA PRINCIPAL}

var
   pun:treg;
   cuad:tv;
   n:byte;

begin
inicia_vector(cuad);
lectura(pun,n);
distancia(pun,n);
cuadrantes(pun,cuad,n);
porcentaje(cuad,n);
Readln;
end.

