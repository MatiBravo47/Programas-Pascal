program Parcial080520;
uses crt;
type
  tvnum = array[1..10] of byte;
var
  n: byte;
  vcant, vmayor: tvnum;

procedure iniciaVector(n: byte; var vcant: tvnum);
var
  i:byte;
Begin
  for i:=1 to N do
    Vcant[i]:= 0;
end;

Procedure LeeArch(var vcant: tvnum);
var
  arch: text;
  num: byte;
Begin
  assign(arch,'parcial080520.txt'); reset(arch);
  while not eof (arch) do
    begin
    readln(arch, num);
    if (num in [1..99]) then
      begin
      vcant[(num div 10) + 1  ]:= vcant[(num div 10) + 1 ] + 1;
      if (num > vMayor[(num div 10) + 1]) then
        vMayor[(num div 10) + 1] := num;
      end;
    end;
   close(arch);
end;

procedure muestraVector(vcant: tvnum; n: byte);
var
  i: byte;
begin
  for i:=1 to N do
    write(vcant[i],' ');
end;

//Programa principal
begin
  clrscr;
  n:= 10 ;
  iniciaVector(n, vcant);
  iniciaVector(n, vmayor);
  leearch(vcant);
  muestraVector(vcant, n);
  writeln;
  muestraVector(vmayor, n);
  readln;
end.
