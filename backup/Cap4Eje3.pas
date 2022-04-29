program Cap4Eje3;
Function Suma(N:Word):Integer;
Var
  Sum:Integer;
  Num,i:Word;
Begin
  Sum:=0;
  Num:=1;
  For i:=1 To N do
  Begin
  Sum:=Sum+(Num)
  num:=num+1;
  end;
Suma:=Sum;
end;
Var
  N:Byte;
begin
  Writeln('Ingrese un numero natural N');Readln(N);
  Writeln('La suma de los N primeros numeros es ',Suma(N));
  Readln;
end.

