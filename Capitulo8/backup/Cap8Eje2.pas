//2)Implementar la siguiente funcion recursiva
//     1              si i = 0
//f(t)= 1 + f(i - 1)  si i es par
//      f(i - 1)      si i es impar
program Cap8Eje2;
uses crt;
function parimpar (t: word): word;
begin
If (t = 0) then
   parimpar:= 0  {caso base}
else  {caso recurrente}
   begin
   If (t mod 2 = 0) then   {PAR}
      parimpar:= 1 + parimpar(t - 1)
   else    {IMPAR}
      parimpar:= parimpar(t - 1);
   end;
end;
//Supongo que la funcion recursiva cuanta pares pero esta mal en la fotocopia
//Ejemplo t = 4
//t mod 2 = 0 => parImpar:= 1 + parImpar(3) //cuenta par
//t = 3
//t mod 2 <> 0 => parImpar:= parImpar(2) //no cuenta nada
//t = 2
//t mod 2 = 0 => parImpar:= 1 + parImpar(1)//Cuenta par
//t = 1
//t mod 1 <> 0 => parImpar:= parImpar(0)
//t = 0 =>parImpar:= 0 <= caso base
//parImpar:= parImpar(0)=0  t=0
//parImpar:= parImpar(1)=0  t=1
//parImpar:= parImpar(2)= 1 + 0 t=2
//parImpar

{programa principal}
var
   t: word;
begin
clrscr;
Write('ingrese un numero: '); Readln(t);
Writeln('el resultado es ', parimpar(t):3);
Readln;
end.

