program Cap3Eje17;
uses crt;
var
 Nombre, nombreMayor: String[6];
 Cant, cantOfMax ,cantOf, CantSoloOfertas: byte;
 PrecioU, monto, montoT, desc, descT: real;
 Oferta, mas: char;
 soloOferta: boolean;

begin
clrscr;
CantSoloOfertas:= 0;
CantOfMax:= 0; //Cantidad maxima de compra de articulos en oferta
Writeln('Ingrese nombre cliente (*** para finalizar)'); Readln(Nombre);
While (Nombre <> '***') do
  begin
  soloOferta:= true;
  CantOf:= 0;  //cantidad de articulos en oferta comprados
  MontoT:= 0;
  DescT:= 0;
  mas :='S' ; //cargar mas articulos
  While (Mas = 'S') do //si desea ingresar otro articulo la misma persona
    begin
    Writeln('Ingrese cantidad del producto'); Readln(Cant);
    Writeln('Ingrese precio del producto'); Readln(PrecioU);
    Writeln('En oferta ? (S/N)'); Readln(Oferta);
    Oferta:= Upcase(oferta);
    If (oferta = 'S') then //si esta en oferta
      begin
      CantOf:= CantOf + Cant;//cantidad de articulos
      Desc:= PrecioU * 0.90; //-10% articulo con descuesto
      DescT:= DescT + Desc;  //total del descuento
      Monto:= Cant * Desc;   //Monto de cada venta
      MontoT:= MontoT + Monto; //precio final a pagar
      end
    else //si no esta en oferta
      Begin
      Monto:= Cant * PrecioU; //Monto por mismo articulo
      MontoT:= MontoT + Monto; //Precio final a pagar
      soloOferta:= false;
      end;
    Writeln('Monto venta: $', Monto:5:2);//monto de cada venta
    Writeln('Compro mas productos?(S/N) ' );Readln(Mas);
    Mas:=Upcase(Mas);
    if (mas = 'N') then
      if (cantOf > cantOfMax) then
        begin
        cantOfMax:= cantOf;
        NombreMayor:= nombre;
        end;
    	if (soloOferta) then
        CantSoloOfertas:= CantSoloOfertas + 1;
    end;

  Writeln(Nombre,' debe abonar $', MontoT:5:2 );//precio final a pagar
  Writeln('Descuento total : $', DescT:5:2); //total del descuento
  Writeln('Ingrese nombre cliente (*** para finalizar)'); Readln(Nombre);
  end;
writeln('El cliente que mas cantidad de ofertas compro fue: ',nombreMayor);
writeln('Compraron solo articulos en oferta ', cantSoloOfertas,' clientes');
readln;
end.

