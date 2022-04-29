program Cap8Eje9;
function CRECIENTE(num:word):boolean;
var
   d1,d2:byte;
begin
If (num div 10=0) then
   CRECIENTE:=true
else
   begin
   d1:=(num div 10) mod 10;//Anteultimo digito
   d2:=(num mod 10); //Ultimo digito
   If (d2>=d1) then
      CRECIENTE:=CRECIENTE(num div 10)
   else
      CRECIENTE:=false;
   end;
end;

//Programa Principal//

var
   num:word;

begin
Writeln('Ingrese un numero');Readln(num);
If CRECIENTE(num) then
   Writeln('Es creciente')
else
   Writeln('No es creciente');
Readln;
end.

