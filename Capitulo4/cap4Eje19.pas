program cap4Eje19;
uses crt;

function MCD(A,B:word):word;
var
  i, j, max: byte;
begin
  for i:=1 to A do
  		if (A mod i = 0) then // si encuentra un divisor
        for j:=1 to B do
            begin
            if (B mod j = 0) then //busca si tiene el mismo divisor
              if i = j then  //se guarda la coincidencia con mayor numero
                Max:=i;
            end;
MCD:= Max;
end;
//PROGRAMA PRINCIPAL
var
  nume, deno: word;


begin
  clrscr;
  Write('Ingrese numerador: '); Readln(Nume);
  Write('Ingrese denominador: '); Readln(deno);
  Write(Nume, '/', deno , ' -> ',Nume div MCD(Nume, deno),'/',deno div MCD(Nume, deno) );
  readln;
end.

