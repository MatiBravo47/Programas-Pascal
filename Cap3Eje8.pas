Program Cap3Eje8;
Var
Arch:text;
A,Sum,Cont:integer;
Begin
    Assign(Arch,'Ejercicio38.txt');
    Reset(Arch);
    Sum:=0;
    Cont:= 0;
    While NOT eof (Arch) do
      Begin
      Readln (Arch,A);
      If A>0 then //Si es positivo
          begin
         Sum:=Sum+A; //Suma positivos
         Cont:=Cont+1;//Cuenta positivos
         End;
     End;
    Close(Arch);
   If Cont<>0 then //Si hay positivos
      Writeln(Sum/Cont) Saca promedio de positivos
    Else
       Writeln ('no hay numeros positivos');
   Readln;
End.

