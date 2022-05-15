program CalculoFactorial;
uses crt;
Function FacRec (N:word):word;
Begin
  If (n=0) or (n=1) then
    facRec := 1
  else
    facRec := N * facRec(N-1);
end;
//Programa principal
var
  n:byte;

begin
  clrscr;
  Writeln('Ingrese un numero');Readln(n);
  Writeln('su factorial es: ',facRec(n));
  Readln;
end.

