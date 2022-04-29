program Cap3Eje23;
uses crt;
var
  ArchEnt,ArchSal:Text;
  Car:Char;
  Contra:String;
  Dig,Carac:Byte;
  Num,MinusT,MinusA,mayusT,mayusA,esp:Boolean;


begin
  clrscr;
  Assign(ArchEnt,'Ejercicio323.txt');Reset(ArchEnt);
  Assign(ArchSal,'Ejercicio323Sal.Txt');Rewrite(ArchSal);
  Read(ArchEnt,Car);
  While not eof (archEnt) do
  begin
  Contra:='';
  Dig:=0;
  Carac:=0;
  MayusA:=False;
  MinusA:=False;
  Num:=False;
    While (car<>' ') and not eof (ArchEnt) do
    begin
      Carac:=Carac+1;
      If ('0'<=Car) and (Car<='9') then //Verifica si es numero
        begin
        Dig:=Dig+1;
        num:=True;
        end;
      If ('a'<=Car) and (car<='z') then //verifica si es minus
        begin
        minusT:=True;
        minusA:=True;
        end;
      If ('A'<=Car) and (car<='Z') then //Verifica si es mayus
        begin
        mayusT:=True;
        mayusA:=True;
        end;
      If (not mayusA) and (not minusa) and (not num) then
        esp:=true;
      if (car<>' ') then
      Contra:=Contra + Car ;
      Read(ArchEnt,Car);
    end;
  If eof (ArchEnt) then
  Contra:=Contra + Car ;
  If (carac>7) and (mayust) and (minust) and (Dig=4) and (not Esp) then
    Writeln(Contra);
  Read(ArchEnt,Car);
  end;
  Close (ArchEnt);
  Close (ArchSal);
  readln;
end.

