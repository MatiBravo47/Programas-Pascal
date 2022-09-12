program Cap5Eje13;
Uses crt;
Type
  TV=Array['A'..'Z'] of byte;
Var
  Vec: TV;

Procedure IniciaVec(Var Vec: TV);
Var
  i: Char;
Begin
  For i:='A' to 'Z' do
  Vec[i]:= 0;
end;

Procedure LeeArch(Var Vec: TV);
Var
  Arch: Text;
  Car: Char;
Begin
  Assign(Arch,'Ejercicio513.txt'); Reset(Arch);
  While not eof (Arch) do
  Begin
    Read(Arch, Car);
    If Upcase(Car) in ['A'..'Z'] then
      Vec[Upcase(Car)]:= Vec[Upcase(Car)] + 1;
  end;
end;

Procedure EscribeVec(Vec: TV);
Var
  i: Char;
Begin
  For i:='A' to 'Z' do
    Writeln(i,' : ',Vec[i]);
end;

//Programa principal
begin
  Clrscr;
  IniciaVec(Vec);
  LeeArch(Vec);
  EscribeVec(Vec);
  Readln;
end.

