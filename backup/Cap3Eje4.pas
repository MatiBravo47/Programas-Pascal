program Cap3Eje4;
uses crt;
Var
Arch:Text;
DifMax,Dif,Pri,Seg:Integer;
Par,ParM:Byte;

begin
Clrscr;
DifMax:=-1000;
Par:=0;
Assign(Arch,'Ejercicio34.txt');Reset(Arch);
Read(Arch,Pri);
While not eof (Arch ) do
Begin
  Dif:=0;
  Read(Arch,Seg);
  Par:=Par+1;
  Dif:=Seg-Pri;
  If Dif>DifMax then
    Begin
    DifMax:=Dif;
    ParM:=Par;
    end;
  Pri:=Seg;
end;
Writeln('La maxima diferencia es ',DifMax);
Writeln('Y corresponde al par ',ParM);
Readln;
end.

