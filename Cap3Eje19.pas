//Ej 19) Leer desde archivo un conjunto de números, con elementos
//negativos no consecutivos que delimitan subconjuntos.
//Obtener e informar el valor máximo de cada subconjunto
//(el máximo entre dos negativos).
//Ejemplo:
//2 3 4 -7 4 5 -5 7 5 3 9 8 7 -1 3 1 -2  5 9 3
//2 3 4 -7 4 5 -5 7 5 3 9 8 7 -1 3 1  5 9
program Cap3Eje19;
Var
  Arch: Text;
  N, Max: Integer;
  MaxB: Boolean;
begin
  Assign(Arch,'Ejercicio319.txt');Reset(Arch);
  Read(Arch, N);
  While not eof (Arch) do
  Begin
  MaxB:= False;
  Max:= -99; //maximo imposible
  If (N < 0) then //si es negativo
     Begin
     Read(Arch,N);//busca el siguiente al negativo
     While (N > 0) do //mientra lea positivos
       Begin
       If (N > Max) then //almacena el maximo entre negativos
         begin
         Max:= N ;
         MaxB:= True;
         end;
       Read(Arch,N);
       end
     end
  else
      Read(Arch,N); //si no es negativo sigue leyendo
  If (MaxB) and (N < 0) then   //Si existe maximo y es negativo el numero actual
  	 Writeln('El mayor es ',Max);
  end;

Close(Arch);
Readln;
end.

