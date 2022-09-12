//Dado un archivo que contiene en cada línea 4 números (N1, D1, N2, D2)
//numerador y denominador de dos fracciones. Se pide leer los pares
//de fracciones y por cada uno de ellos informe:
//a) La suma como fracción.
//b) El producto como fracción
program Cap4Eje9;

procedure sumaFraccion(n1, n2 , d1, d2: byte);
  begin
    if (d1 = d2) then
      Writeln(n1,'/',d1, ' + ', n2,'/', d2 ,' : ', n1+n2 ,'/',d1)
    else
      writeln(n1,'/',d1, ' + ', n2,'/', d2 ,' : ',d2 * n1 + d1* n2 ,'/',d1 * d2)
  end;

procedure productoFraccion(n1, n2, d1, d2:byte);
begin
  writeln(n1,'/',d1, ' * ', n2,'/', d2 ,' : ' ,n1 * n2 ,'/', d1 * d2);
end;

var
  n1, n2, d1, d2:byte;
  arch:text;

begin
    assign(arch,'Ejercicio409.txt'); Reset(arch);
		readln(arch,n1); readln(arch, d1); readln(arch, n2); readln(arch, d2);
    close(arch);
    sumafraccion(n1, n2, d1, d2);
    productoFraccion(n1, n2, d1, d2);
    readln;

end.

