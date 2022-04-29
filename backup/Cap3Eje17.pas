program Cap3Eje17;
uses crt;
var

begin
clrscr;
Writeln('Ingrese nombre');Readln(Nombre);
While Nombre<>'***' do
  begin
  CantOfMax:=-3000;
  CantOf:=0;
  MontoT:=0;
  DescT:=0;
  While Mas='S' do
    begin
    Writeln('Ingrese cantidad del producto');Readln(Cant);
    Writeln('Ingrese precio unitario');Readln(PrecioU);
    Writeln('Esta en oferta ? (S/N)');Readln(Oferta);
    Oferta:=Upcase(oferta);
    If oferta='S' then
      begin
      CantOf:=CantOf+Cant;
      Desc:=PrecioU*0.90;
      DescT:=DescT+Desc;
      Monto:=(Cant*(Desc)
      MontoT:=MontoT + Monto
      end;
    else
      Begin
      Monto:=Cant*PrecioU
      MontoT:=MontoT+(Monto);
      end;
    Writeln('Monto venta: ',Monto;)
    Writeln('Compraste mas productos?(S/N) ' );Readln(Mas);
    Mas:=Upcase(Mas);
    end;
  Writeln(Nombre,' debe abonar',MontoT );
  Writeln('Descuento total', DescT);
  Writeln('Ingrese nombre');Readln(Nombre);
  end;
readln;
end.

