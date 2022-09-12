program Cap8Eje1;
uses crt;
Function Potencia(X,n:integer):integer;// X elevado a la n
  begin
    If (N=0) then
      Potencia:=1
    else
      Potencia:=Potencia(X,N-1)*X
  end;
Var
  x,n:integer;
begin
  clrscr;
  Writeln('Ingresa un numero');Readln(X);
  Writeln('Ingrese su potencia');Readln(N);
  Writeln(Potencia(x,n));
  readln;
end.

