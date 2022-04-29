program Cap3Eje19;
Var
  Arch:Text;
  N,Max:Integer;
  MaxB:Boolean;
begin
  Assign(Arch,'Ejercicio319.txt');Reset(Arch);
  Read(Arch,N);
  While not eof (Arch) do
  Begin
  MaxB:=False;
  Max:=-99;
  If N<0 then
     Begin
     Read(Arch,N);
     While N>0 do //Ingresa cuando es negativo
       Begin
       If N>Max then
         begin
         Max:=N ;
         MaxB:=True;
         end;
       Read(Arch,N);
       end
     end
  else
      Read(Arch,N);
  If (MaxB) and (N<0)then   //Si existe maximo y es negativo el numero actual
  Writeln('El mayor es ',Max);
  end;

Close(Arch);
Readln;
end.

