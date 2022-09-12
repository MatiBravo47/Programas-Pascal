//Ej 8)Dado el siguiente programa Pascal indicar qué realiza y cuál es la
//salida, para ello grabar en un archivo de texto, un número por línea
//y luego ejecutar el programa
//Lote de prueba: 3, -5, 8, 12, -9, 1, -6, 7, -13
Program Cap3Eje8;
Var
Arch: text;
A, Sum, Cont: integer;
Begin
    Assign(Arch,'Ejercicio38.txt'); Reset(Arch);
    Sum:=0; Cont:= 0;
    While NOT eof (Arch) do
      Begin
      Read(Arch,A);
      If (A > 0) then //Si es positivo
      	 begin
         Sum:= Sum + A; //Suma positivos
         Cont:= Cont + 1;//Cuenta positivos
         End;
			End;
      Close(Arch);
   If (Cont <> 0) then //Si hay positivos
      Writeln((Sum / Cont):5:2) //Saca promedio de positivos
   Else
       Writeln ('no hay numeros positivos');
   Readln;
End.

