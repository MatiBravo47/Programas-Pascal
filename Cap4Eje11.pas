//Ej 11) Dada la ecuación de una parábola y=ax2 + bx +c,
//escribir un programa que mediante un menú de opciones iterativo
//permita:
//a) Encontrar el eje de simetría, sabiendo que x1 = -b/(2.a) y
//si presenta un mínimo ó un máximo en f(x1).
//b) Informar hacia dónde es abierta la parábola.
//c) Calcular y mostrar las raíces, informar en caso que no existan.
//Para ello debe analizar si el discriminante, D = b2 – 4ac, es mayor,
//menor ó igual a cero.
//d) Dado un conjunto de valores de x informar su imagen.
//Usar procedimientos y/o funciones según corresponda
program Cap4Eje11;
uses crt;
Var
  A, B, C: real;
  opc: Byte;

//Lee los valores de la parabola
Procedure Parabola(Var A, B, C: real);
  Begin
  Writeln('Ingrese valores de una parabola de la forma y=ax^2 + bx + c ');
  Write('A='); Readln(A);
  Write('B='); Readln(B);
  Write('C='); Readln(C);
  end;

//A)Function que halla el eje de simetria con el eje x
Function EjeSim(A, B: real):Real;
Var
  X1:Real;
Begin
  X1:= -((b) / ( 2 * a));
  EjeSim:= X1;
end;

Procedure MaxMin(A, B, C: Real);
Var
  y, x: Real;
Begin
  X:= EjeSim(a,b);
  Y:= A * sqr(X) + B * X + C;
  If (a < 0) then
    Writeln('Existe maximo en (', X:4:2, ',',Y:4:2,')')
  else
    Begin
    if (a > 0) then
      Writeln ('Existe minimo en (', X:4:2,',', Y:4:2,')')
    else
      Writeln('No existe maximo ni minimo');
    end;
end;

//B) Informar hacia donde es abierta la palabola
Function Arriba(A: real): Boolean;
Var
  Pos: Boolean;
Begin
  If (A > 0) then
    Pos:= True
  else
    Pos:= False;
Arriba:= Pos;
end;

//C)Calcular y mostrar las raices
Procedure Raices(A, B, C: real);
Var
  D, X, X1, X2: Real;
Begin
 D:= sqr(B) - (4 * A * C); //discriminante (determina cantidad raices)
 If (D = 0) then //solucion real repetidas
   Begin
   X:=(-b + sqrt(D)) /2 * A;
   Writeln('Las raicen son: ');
   Writeln('X1= ', X:5:2,' X2= ', X:5:2);
   end
 else
   If (D > 0) then  //dos soluciones reales distintas
     begin
     X1:= (-b + sqrt(D)) / 2 * A;
     X2:= (-b - sqrt(D)) / 2 * A;
     Writeln('La raices son:');
     Writeln('X1= ', X1:5:2,'  X2=', X2:5:2);
     end
   else //Si d es negativo entonces no tiene raices reales
     Writeln('No tiene raices reales ');
end;

//D)Dado un conjunto de valores de x informa su imagen(Y)
Procedure ValoresY(A, B, C: real);
Var
  Cant, i: Byte;
  x: Integer;
  y: Real;
Begin
  Writeln('Indique cantidad de X a ingresar'); Readln(Cant);
  For i:= 1 to Cant do
  Begin
    Writeln('Ingrese Valor de X'); Readln(X);
    Y:= A * sqr(X) + B * X + C;
    Writeln('Para x= ', X ,'---> Y= ', Y:8:2);
  end;
end;

//Programa principal
begin
clrscr;
Parabola(A, B, C);
While (opc <> 6) do
  Begin
    Writeln('Ingrese una opcion');
    Writeln('1)Encontrar el eje de simetria y si presenta minimo o maximo');
    Writeln('2)Informar hacia donde es abierta la parabola');
    Writeln('3)Calcular y mostrar raices,informar si es que no existen');
    Writeln('4)Dado un conjunto de valores de x informar su imagen');
    Writeln('5)Ingresar otra funcion');
    Writeln('6)Salir');
    Readln(Opc);
    Case Opc of
    1:Begin
      Writeln('El eje de simetria es',EjeSim(A,B):5:2);
      maxmin(A, B ,C) ;
      end;
       //Writeln('y el maximo es ',MaxMin(A, B, C, EjeSim(a,b)));
    2:if Arriba(A)then
        Writeln('La parabola es abierta hacia arriba')
      else
        Writeln('La parabola es abierta hacia abajo') ;
    3:Raices(A,B,C);
    4:ValoresY(A,B,C);
    5:Parabola(A,B,C);
    end;
  end;
end.

