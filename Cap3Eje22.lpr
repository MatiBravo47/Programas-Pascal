program Cap3Eje22;
uses crt;
Var
  ArchEnt,ArchSal:Text;
  VocMax:Integer;
  Car:Char;
  Palabra,VocPalabra:String;
  Voc,Letras:Byte;

begin
  Clrscr;
  VocMax:=-999;
  Assign(ArchEnt,'Ejercicio322.txt');Reset(ArchEnt);
  Assign(ArchSal,'Ejercicio322Sal.txt');Rewrite(ArchSal);
  Read(ArchEnt,Car);
  Car:=Upcase(Car);
  While not eof (ArchEnt) do
  begin
  Voc:=0;
  Palabra:='';
  //letras:=0;
    While Car<>' ' do
    begin
      if (car='A') or (car='E') or (car='I') or (car='O') or(car='U') then
        Voc:=Voc+1;
      Palabra:=Palabra + Car ;
      //letras:=letras+1;
      read(ArchEnt,Car);
      car:=Upcase(Car);
    end; //Sale un espacio y la palabra completa
    If Voc>VocMax then
      begin
      VocMax:=Voc;
      VocPalabra:=Palabra;
      end;
    //If letras>4 then
  Read(ArchEnt,Car);
  Car:=Upcase(Car);
  end;
  close(ArchEnt);
  Close(ArchSal);
  Writeln('La palabra con mas vocales es ', VocPalabra);
  readln;
end.

