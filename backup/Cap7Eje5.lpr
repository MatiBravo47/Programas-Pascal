program Cap7Eje5;
Type
  RecPosicion=Record
    i,j:Byte;
  end;

  Datos=Record
    Pos:RecPosicion;
    Valor:Integer;
  end;

  TV=array[1..10] of Datos;

Procedure LeerDatos(Var Vec:TV; Var K,N,M:Byte);
Var
  Car:Char;
Begin
  K:=0;
  Writeln('Ingresar N y M');
  Readln(N,M);
  Writeln('Desea ingresar un numero? (S/N)');
  Readln(Car);
  Car:=Upcase(Car);
    While (Car='S') do
    begin
      K:=k+1;
      Writeln('Ingresar Posicion(i/j)');
      Readln(Vec[K].Pos.i,Vec[K].Pos.j);
      Writeln('Ingresar valor');
      Readln(Vec[K].Valor);
      Writeln('Desea ingresar un numero? (S/N)');
      Readln(Car);
      Car:=Upcase(Car);
    end;
end;

Procedure ArmarMat(Vec:TV; K,N,M:Byte);
Var
  i,j,p:Byte;
  Cumple:Boolean;
Begin
For i:=1 to N do
  begin
  For j:=1 to M do
    begin
    P:=0;
    Cumple:=True;
      While ((P<K) AND Cumple) do
      begin
      P:=P+1;
      Cumple:=True;
      If ((i=Vec[p].pos.i) And (j=Vec[p].pos.j)) then
        begin
        Write(Vec[p].Valor,' ');
        Cumple:=False;
        end;
      end;
        If Cumple then
        Write(0,' ');
      end;
  Writeln();
  end;
Writeln();
end;

Procedure Traspuesta(Vec:TV; K,N:Byte);
Var
  i,j,p:Byte;
  Cumple:Boolean;
Begin
Cumple:=True;
With Vec[K] do
  begin
  For i:=1 to N do
    begin
    For j:=1 to N do
      begin
      P:=0;
        While ((P<K) AND Cumple) do
          begin
          P:=P+1;
            If ((i=Vec[p].pos.j) And (j=Vec[p].pos.i)) then //Cambia indices
              begin
              Write(Vec[p].Valor,' ');
              Cumple:=False;
              end;
           end;
           If Cumple then //Cumple verifica si es un 0 y lo escribe
             Write(0,' ');
      Cumple:=True;
      end;
    Writeln();
    end;
  end;
Writeln();
end;

Var
  Vec:TV;
  K,M,N:Byte;

begin
  LeerDatos(Vec,K,N,M);
  ArmarMat(Vec,K,N,M);
  If (N=M) then
    begin
    Writeln('Su matriz traspuesta es :');
    Traspuesta(Vec,K,N);
    end;
  Readln();
end.
{

. En ArmarMat, no veo adecuado el nombre Cumple para la var. booleana.

. Como los elementos se ingresan "por fila" están ordenados por lo que no sería
necesario cada vez recorrer el vector desde el principio.

. En Traspuesta, no estás modificando la matriz, sino mostrándola de otra manera.}

