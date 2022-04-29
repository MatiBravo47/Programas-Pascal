program Cap8Eje11;
procedure imprimepir(i,j,m:byte);
begin
  if i=1 then //Caso base
    begin
    writeln(i:4);
    imprimepir(j+1,j+1,m);
    end
  else
    if i<=m then
      begin
      write(i:4);
      imprimepir(i-1,j,m);
    end
end;
var
  i:byte;
begin
writeln('Ingrese el tamanio de la piramide');readln(i);
if i>0 then
  imprimepir(1,1,i)
else
  writeln('Ingrese un valor mayor a 0!!!!!!!');
readln();
end.
