program Cap2Eje6;
uses crt;
Var
A,B,C:char;
begin
clrscr;
//Permutacion de 3 => 6 posibles soluciones
Writeln('Ingrese 3 letras');
Readln(A); Readln(B); Readln(C);
//upcase convierte a mayusculas los caracteres
A:=upcase(A); B:=upcase(B); C:=upcase(C);
If (A > B) then
	 begin
	 if (A > C) then
      begin
      If (C > B) then
         Writeln('El orden ascendente es ' ,B,'',C,'',A)
      else
         Writeln('El orden ascendente es ' ,C,'',B,'',A)
   end
else
		Writeln('El orden ascendente es ' ,B,'',A,'',C)
		end
else //si B>A
  begin
  if (B > C) then  //Si B es el mayor de todos
     begin
     If (A > C) then
     		Writeln('El orden ascendente es ' ,C,'',A,'',B)
     else
     		 Writeln('El orden ascendente es ' ,A,'',C,'',B)
     end
  else //Si C>B
     Writeln('El orden ascendente es ' ,A,'',B,'',C)
  end;
Readln;
end.
