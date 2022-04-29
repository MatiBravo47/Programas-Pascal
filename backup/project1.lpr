program project1;

type
 tm=array[1..4,1..4] of real;

var
matriz:tm;
N,M:byte;
x,y:real;
Archpoli:text;

procedure LeerMatriz(var matriz:tm; var N,M:byte);
var
  i,j:byte;
begin
  write('Ingrese el grado de los polinomios'); readln(N);
  write('Ingrese la cantidad de polinomios '); readln(M);
  for i:=1 to M do { recorre fila de coef de polinomio }
    for j:=N downto 1 do { columnas potencia}
    begin
     writeln('ingrese el coefiente que corresponde al polinomio =',i,' grado =',j);
     readln(matriz[i,j]);
    end;
end;

procedure polinomio(matriz:tm;x,y: real);
var
 i,j:byte;
 f,potencia:real;
 Cont:real;

begin

  while (x<>0) and (y<>0) do
  begin
   f:=0;
   for i:=n downto 0 do
	begin
		potencia:=1;
		for j:=1 to i do
	      potencia:=x*potencia;
		f:=f+matriz[i,j]*potencia;
	    if ( f= y) then
	     begin
         cont:=cont+1;
         writeln('la cantidad de polinomios que cumplen son ' , cont);
         end
       else
         writeln('los polinomios incompletos son');
  end;
  end;
end;

procedure escribematriz (matriz:tm; N,M:byte);
var
 i,j:byte;
begin
 for i:=1 to M do
  begin
   for j:=N downto 0 do
    write(matriz[i,j]);
   writeln;
  end;
end;

begin
LeerMatriz(matriz,N,M);
writeln('ingrese los valores x e y a evaluar distintos que 0');
 readln(x);
 readln(y);
 polinomio(matriz,x,y);
 escribematriz (matriz,N,M);


end.


