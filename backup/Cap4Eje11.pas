program Cap4Eje11;
uses crt;
Var
  A,B,C:Integer;
  opc:Byte;

Procedure  Parabola(Var A,B,C:Integer);
  Begin
  Writeln('Ingrese valores de una parabola de la forma y=ax^2 + bx + c ');
  Write('A=');Readln(A);
  Write('B=');Readln(B);
  Write('C=');Readln(C);
  end;

//Function EjeSim(A,B:Integer):Real;
//Var
//  X1:Real;
//Begin
//  X1:=-b/(2*a);
//  EjeSim:=X1;
//end;

Procedure MaxMin(A,B,C:Integer;EjeSim:Real);
Var
  y,x:Real;
Begin
  X:=EjeSim;
  Y:=A*sqr(X)+B*X+C;
  If y>0 then
    Writeln('Existe maximo en',X)
  else
    Begin
    if y<0 then
    Writeln ('Existe minimo en',X)
    else
      Writeln('No existe maximo ni minimo');
    end;
end;

Function Arriba(A:Integer):Boolean;
Var
  Pos:Boolean;
Begin
  If A>0 then
    Pos:=True
  else
    Pos:=False;
Arriba:=Pos;
end;
Procedure Raices(A,B,C:Integer);
Var
  D,X,X1,X2:Real;
Begin
 D:=sqr(B)-(4*A*C);
 If D=0 then
   Begin
   X:=(-b+sqrt(sqr(B)-4*A*C))/2*A;
   Writeln('X1= ',X:5:2,' X2=',X:5:2);
   end
 else
   If D>0 then
     begin
     X1:=(-b+sqrt(sqr(B)-4*A*C))/2*A;
     X2:=(-b-sqrt(sqr(B)-4*A*C))/2*A;
     Writeln('La raices son:');
     Writeln('X1= ',X1:5:2,'  X2=',X2:5:2);
     end
   else
     Writeln('No tiene raices');
end;
Procedure ValoresY(A,B,C:Integer);
Var
  Cant,i:Byte;
  x:Integer;
  y:Real;
Begin
  Writeln('Indique cantidad de X a ingresar');Readln(Cant);
  For i:=1 to Cant do
  Begin
    Writeln('Ingrese Valor de X');Readln(X);
    Y:=A*sqr(X)+B*X+C;
    Writeln('Para x= ',X ,'---> Y= ',Y:8:2);
  end;
end;
//Programa principal
begin
clrscr;
Parabola(A,B,C);
While opc<>6 do
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
    //1:Writeln('El eje de simetria es',EjeSim(A,B), 'y el maximo es ',MaxMin(A,B,C,EjeSim));
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

