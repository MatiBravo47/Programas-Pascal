program Propuesto1P2;
uses crt;
type
  tvstring= array[1..15] of string[4];
  tvWord= array[1..15] of word;

procedure leeArch(var n:byte;var cod:tvString;var tot:tvWord);
var
  arch:text;
  i,dia,j,k,p:byte;
  litrosLeche, total:word;
  codigo:string[4];
  existe:boolean;

begin
n:=1;
assign(arch,'tambos.txt'); reset(arch);
readln(arch,cod[n],dia,litrosLeche);
tot[n]:=litrosLeche;
p:=p + 1;
while p <= 15 do
		begin
    p:=p + 1;
    readln(arch,codigo,dia,litrosLeche);
    for i :=1 to N do
        begin
        if codigo = cod[i] then
           begin
           existe:=true;
        	 total:= total + litrosLeche;
           end
        end;
    if not existe then
       begin
       n:=n+1;
       cod[n]:=codigo;
       end;
    p:=p + 1;
    end;
for k:=1 to n do
    writeln(cod[k], ' ', tot[k]);
close(arch)
end;
//programa principal
var
  cod:tvString;
  litrosLeche:tvWord;
  n:byte;
begin
  clrscr;
  leeArch(n,cod,litrosLeche);
  readln;
end.
