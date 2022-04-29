program Cap4Eje14;
Type
St20=string[20];
Procedure Evalua(Var Todas: string; Var Max: byte);
Var
  Arch: Text;
  Car: char;
  Pal: St20;
  i: byte;
Begin
  Assign (Arch, 'Ejercicio414.txt'); Reset(Arch);
  Max:=0;
  Read(Arch,Car);
  While Car<>'.' do
    If Car=' 'then
    Read(Arch,Car); {si es blanco lee otro caracter}
    begin {es el comienzo de palabra}
    Pal:='';
    i:=0;
    While (Car<>'.') and (Car<>' ') do
      begin {cuenta los caracteres y arma la palabra}
      i:=i+1;
      Pal:=Pal+Car;
      Read(Arch,Car);
      End;
    If i>Max then {evalua si es la mas larga}
      begin
      Todas:=Pal;
      Max:=i;
      End
    else
      if i= Max then {evalua si es igual}
      Todas:= Todas + ' '+ Pal;
     end;
Close(Arch);
End;
Var
Todas:string;
Max:byte;
Begin
Evalua(Todas, max);
Writeln ('estas son las palabras mas largas') ;
writeln (Todas);
Writeln ('Tienen ', Max, ' caracteres') ;
Readln;
end.

