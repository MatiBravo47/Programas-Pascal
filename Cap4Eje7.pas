//Ej 7) Un estudio contable registró la facturación de varios comercios
//en los últimos N meses, por cada uno se tiene:
// Nombre
// Tipo (S/N) si es Responsable Inscripto o No, y luego por cada uno
//de los N meses:
//- Importe facturado mensual sin IVA
//Se desea saber:
//a) Listar Nombre, tipo y cuánto pagó de IVA en los N meses.
//b) El nombre del comercio Responsable Inscripto que menos facturó en
//total.
//Desarrollar la función Impuesto con los parámetros necesarios de modo
//tal que devuelva el monto de IVA que debe pagar.  Sabiendo que si es
//Responsable Inscripto, corresponde el 21% de la compra, si no lo es,
//el 21%+10%.
program Cap4Eje7;

Function Impuesto(Inscr: Char; ImporteTotal: Real): Real;
const
  IVA=21;
Var
  Monto: Real;
Begin
  If (inscr = 'S') then  //Responsable inscripto
    Monto:= (IVA * ImporteTotal) / 100 //%21 total
  else
    Monto:= (((IVA + 10) * ImporteTotal) / 100); //%32 total
  Impuesto:= Monto;
end;

// Programa principal
Var
  Arch: Text;
  N, i: Byte;
  Nombre: String[4];
  Inscr, Basura: Char;
  ImporteTotal, ImporteMax, Importe: Real;
Begin
  ImporteMax:= 0;
  Assign(Arch,'Ejercicio47.txt'); Reset(Arch);
  Readln(Arch, N);//cantidad de meses facturacion
  while not eof (Arch) do
  begin
  ImporteTotal:= 0;
    Readln(Arch, Nombre, Basura, Inscr);//basura almacena espacio en blanco
    For i:= 1 to N do
    Begin
      Readln(Arch, Importe);
      ImporteTotal:= ImporteTotal + Importe;
    end;
   Writeln('El mercado ', Nombre);
   If (Inscr = 'S') then
     writeln('Es responsable inscripto')
   else
     Writeln('No es resposable inscrito');
   Writeln('Pago de iva ', Impuesto(Inscr, ImporteTotal):5:2);
  end;
Readln;
end.

