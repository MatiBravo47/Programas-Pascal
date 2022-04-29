program Cap4Eje7;
Function Impuesto(Inscr:Char;ImporteTotal:Real):Real;
Var
Monto:Real;
Begin
  If inscr='S' then
  Monto:=(21*ImporteTotal)/100
  else
    Monto:=((31*ImporteTotal)/100);
  Impuesto:=Monto;
end;

// Programa principal
Var
  Arch:Text;
  N,i:Byte;
  Nombre:String[4];
  Inscr,Bas:Char;
  ImporteTotal,ImporteMax,Importe:Real;
Begin
  ImporteMax:=0;
  Assign(Arch,'Ejercicio47.txt');Reset(Arch);
  Readln(Arch,N);
  while not eof (Arch) do
  begin
  ImporteTotal:=0;
    Readln(Arch, Nombre,Bas,Inscr);
    For i:=1 to N do
    Begin
      Readln(Arch,Importe);
      ImporteTotal:=ImporteTotal+Importe;
    end;
   Writeln('El mercado ',Nombre);
   If Inscr='S' then
   writeln('Es responsable inscripto')
   else
     Writeln('No es resposable inscrito');
   Writeln('Pago de iva ', Impuesto(Inscr,ImporteTotal));
  end;
Readln;
end.

