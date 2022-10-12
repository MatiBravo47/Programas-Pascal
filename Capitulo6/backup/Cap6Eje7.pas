program Cap6Eje7;
uses crt;
type
  tmByte = array[1..3,1..3] of byte;

procedure leeArch(var matrizAscienden,matrizDescienden:tmByte; var n,m:byte);
var
  arch:text;
  ascienden, descienden: byte;
begin
assign(arch,'Ejercicio67.txt'); reset(arch);
while not eof (arch) do
  begin
  read(arch, n , m, ascienden, descienden);
  matrizAscienden[n,m]:= ascienden;
  matrizDescienden[n,m]:= descienden;
  end;
close(arch);
end;

function paradaMasBajaron():byte;
var
begin
max:=0;
for j:= 1 to m do
  for i:= 1 to n do

end;

var
  matrizAscienden, MatrizDescienden: tmByte;
  n,m:byte;
//programa principal
begin
  clrscr;
  leeArch(matrizAscienden,matrizDescienden,n,m);
  readln;
end.

