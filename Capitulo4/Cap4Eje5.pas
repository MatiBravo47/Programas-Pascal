//Ej 5) Calcular la solución por determinantes de un sistema de dos
//ecuaciones lineales con dos incógnitas(se supone compatible y determinado).
//Desarrollar la función que dados a,b,d,e obtenga x. Recordar que el
//determinante
//explicacion:
//https://www.electrontools.com/Home/WP/metodo-de-determinantes-o-metodo-de-cramer/
program Cap4Eje5;
uses crt;
Function Determinante(q,w,r,t: integer):integer;
begin
  determinante:= q * w - r * t;
  //det =|q r|
  //     |t w|
end;

var
  a, b, c, d, e, f: integer;
  ax,ay,at: Real;
begin
  clrscr;
  Writeln('Ingrese a, b y c de la siguiente ecuacion: aX + bY= C');
  Write('A:'); Readln(A);
  Write('B: '); Readln(B);
  Write('C: '); Readln(C);
  Writeln('Ingrese d, e y f de la siguiente ecuacion: dX + eY= f');
  Write('D: '); Readln(D);
  Write('E: '); Readln(E);
  Write('F: '); Readln(F);
  AX:= Determinante(c, e, b, f);//calculo determinante x
  AY:= Determinante(a, f, c, d);//calculo determinante y
  AT:= Determinante(a , e, b, d);//calculo determinante del sistema
  Writeln('X :',AX/At:4:2);
  Writeln('Y :',AY/At:4:2);
  readln;
end.

