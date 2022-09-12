//Ej 8) En un archivo de texto se registraron las compras de N titulares
//de tarjetas de crédito de la siguiente forma:
//- Código de Cliente y a continuación sus compras: no se sabe cuántas
//son, por cada una:
//• Tipo de compra: (C=combustible, S=supermercado, O=otros, F=fin de datos)
//• Día (1..31)
//• Monto
//El banco ofrece un descuento de:
//- 5% los días 10, 20 y 30 para el tipo Otros si el monto supera los $300.
//- 10% para Combustible en la 2º quincena.
//- 15% para Supermercado en la 1º quincena.
//Se pide:
//a) Código del cliente y total abonado, por cada cliente que no se
//benefició con ningún descuento.
//b) Cuántos clientes obtuvieron descuento en los tres rubros.
//c) Informar cuánto ahorró cada cliente.
//En la solución debe desarrollar la función Descuento, que a partir del
//tipo de compra, día y monto devuelva el correspondiente descuento
program Cap4Eje8;
Function Descuento(TCompra: Char; Monto: Real; Dia: Byte): Real;
Var
  desc: Real;
Begin
  If ((Dia = 10) or (Dia = 20) or ( Dia = 30 )) and (TCompra = 'O') then
    If (monto > 300) then
      Desc:= Monto * 0.95; //-5%
  If (TCompra = 'C') and (dia in [16..31]) then //segunda quincena
    Desc := Monto * 0.90;  //-10%
  If (TCompra = 'S') and (dia in [1..15]) then //primera quincena
    Desc:= Monto * 0.85; //-15%
  Descuento:=Desc;
end;

Var
 Arch: Text;
 N, i, dia: Byte;
 Codigo: String[7];
 TCompra: Char;
 monto ,montoTotal: Real;
 super, otros, combustible: boolean;

begin
  Assign(Arch,'Ejercicio48.txt'); Reset(Arch);
  Readln(Arch, N); //cantidad titulares de tarjeta
  For i:= 1 to N do
    begin
    super:= false;
    otros:= false;
    combustible:= false;
    montoTotal:= 0;
    Readln(Arch, Codigo);//lee codigo cliente
    Readln(Arch, TCompra);//tipo de compra
    While (TCompra <> 'F') do  //fin de compra de cada persona
      Begin
      Readln(Arch, Dia, Monto);
      montoTotal:= montoTotal + descuento(Tcompra, Monto, dia);
      If ((Dia = 10) or (Dia = 20) or ( Dia = 30 )) and (TCompra = 'O') then
        If (monto > 300) then
          otros:= true;
      If (TCompra = 'C') and (dia in [16..31]) then //segunda quincena
        combustible:= true;
      If (TCompra = 'S') and (dia in [1..15]) then
        super:= true;
      Readln(Arch, TCompra);
      end;
    writeln(codigo, ' abono: ',montoTotal:5:2);
    if ((combustible) and (otros) and (super)) then
      Writeln(codigo,' obtuvo descuento en los 3 rublos');
    end;
    close(arch);
    readln;
end.

