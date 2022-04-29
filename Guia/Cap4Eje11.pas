{Ej 11) Dada la ecuación de una parábola y=ax2 + bx +c, escribir un programa que mediante un menú de
opciones iterativo permita:
a) Encontrar el eje de simetría, sabiendo que x1 = -b/(2.a) y si presenta un mínimo ó un máximo en
f(x1).
b) Informar hacia dónde es abierta la parábola.
c) Calcular y mostrar las raíces, informar en caso que no existan. Para ello debe analizar si el
discriminante, D = b2 – 4ac, es mayor, menor ó igual a cero.
d) Dado un conjunto de valores de x informar su imagen.
Usar procedimientos y/o funciones según corresponda}
program Cap4Eje11;
Procedure Menu ( Var Op : Char);
Begin
Writeln('Menu de opciones');
Writeln('a - Encontrar eje de simetria');
Writeln('b - Hacia donde esta abierta la parabola');
Writeln('c - Calculo de raices ');
Writeln('d - Informar imagen' );
Writeln('e - Salir');
Repeat
Write(' Ingrese su opción'); Readln(Op);
OP:=Upcase(OP);
Until ( ‘a’< = Op) and ( Op < = ‘e’);
End;

//Programa principal
begin
  Writeln('Ingrese valores de parabola A,B,C  y=-AX2+BX+C');
  Readln(A,B,C);
  Menu(OP);
  Case OP of
  'A':Writeln('El eje de simetria es :',Simetria());
  'B':Writeln('La parabola esta abierta hacia :',DirPar());
  'C':Writeln('Las raices son :'Raices());
  'D':Writeln('La imagen es :',Imagen();
  end;
  Until op='G';
end;

end.

