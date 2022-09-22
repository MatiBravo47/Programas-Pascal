//Ejercicios propuestos
//1)Una compañía Láctea recibe la producción diaria de, en litros de
//leche, de N tambos de la zona,
//durante varios días consecutivos (no se conoce).
//Los datos vienen de la siguiente manera:
// Código del Tambo (cadena de 4 caracteres) y a continuación
//o la entrega diaria en litros, 0=fin de datos.
//Se pide, armar 3 vectores paralelos, COD, TOT, PROM y además calcular
//e informar:
//a) Código del tambo que más leche entregó a la compañía.
//b) Cuántos superaron un promedio de X litros de entrega.
//c) Dado un código, el total y el promedio diario entregado,
//(si es que existe dicho código).
//COD con los códigos de cada Tambo
//TOT con los totales de litros entregados
//PROM con el promedio diario entregado
//Ejemplo:
//Resultados:
//a) AA12
//b) X=110 Rta = 2
//c) Código=CC33  Total : 245 litros y Promedio diario: 85 litros
//Código = BB11  No existe
//N=4 COD TOT PROM
//AA12
//200 100 50 150 100 0 AA12 600 120
//BB07 BB07 520 130
//200 110 90 120 0 CC33 245 85
//CC33 DD45 420 105
//85 110 60 0
//DD45
//80 120 80 140 0
program Propuesto1P1;
uses crt;
type
  tvWord = array[1..10] of word;
  tvString= array[1..10] of string[4];
  tvReal = array[1..10] of real;

procedure leeArch(var N: byte; var total: tvWord; var cod: tvString; var prom: tvReal);
var
  arch: text;
  i, cant: byte;
  num:word;
begin
  assign(arch,'propuestop1.txt'); reset(arch);
  readln(arch, N);
  For i:= 1 to N do
    begin
    cant:= 0;
    Readln(arch, Cod[i]);
    repeat
      read(arch, num);
      if (num <> 0) then
         begin
      	 cant:= cant + 1;
      	 total[i]:= total[i] + num;
         end;
    until num = 0 ;
    prom[i]:= total[i] / cant;
    readln(arch);
    end;
  close(arch)
end;

function MaximaEntrega(cod: tvString; N: byte; total: tvword): String;
var
  i: byte;
  codMax: string;
  maximo: word;
begin
  codMax:= cod[1];
  maximo:= total[1];
  for i:= 2 to N do
    begin
    if (total[i] > maximo) then
       begin
    	 maximo:= total[i];
       codMax:= cod[i]
       end;
    end;
  maximaEntrega:= codMax;
end;

function superaronX(n: byte; prom: tvReal): byte;
var
  x: word;
  i, cant: byte;
begin
cant:= 0;
write('Ingrese promedio a superar: ');Readln(x);
  for i:= 1 to N do
    begin
    if (x > prom[i]) then
       cant:= cant + 1;
    end;
  superaronX:= cant;
end;

procedure infoCodigo(n: byte; total: tvWord; prom: tvReal; cod: tvString);
var
  existe: boolean;
  codigo: string;
  i: byte;
begin
  existe:= false;
  write('Ingrese codigo: ');Readln(codigo);
  for i:=1 to N do
    begin
    if (codigo = cod[i]) then
    	 begin
    	 Writeln('Total entregado: ', total[i], ' litros y promedio diario: ', prom[i]:5:2, ' litros');
       existe:= true;
       end
    end;
  if not existe then
     writeln('no existe')
end;

var
  n: byte;
  total: tvWord;
  cod: tvstring;
  prom: tvReal;
begin
  clrscr;
  leeArch(N, total, cod, prom);
  writeln(maximaEntrega(cod, n, total));
  writeln(superaronx(n, prom));
  infoCodigo(n, total, prom, cod);
  readln;
end.

