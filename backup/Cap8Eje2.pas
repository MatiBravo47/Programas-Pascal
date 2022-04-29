program Cap8Eje2;
uses
   crt;
function parimpar (t:word):word;
begin
If (t=0) then
   parimpar:=0  {caso base}
else  {caso recurrente}
   begin
   If (t mod 2=0) then   {PAR}
      parimpar:=1+parimpar(t-1)
   else    {IMPAR}
      parimpar:=parimpar(t-1);
   end;
end;
//Supongo que la funcion recursiva cuanta pares pero esta mal en la fotocopia

{programa principal}
var
   t:word;
begin
clrscr;
Write('ingrese un numero: ');Readln(t);
Writeln('el resultado es ',parimpar(t):3);
Readln;
end.

