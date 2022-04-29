program Cap5Eje14;
Uses crt;
Type
  TVByte=Array[1..10] Of Byte;
  TVReal=Array[1..10] Of Real;


Var
  N,P:Byte;
  VV:TVByte;
  VR:TVReal;
Procedure IniciaVec(N:Byte;Var VR:TVReal);
Var
i:Byte;
Begin
For i:=1 to N do
VR[i]:=0;
end;
Procedure IniciaVec(N:Byte;Var VV:TVByte);
Var
i:Byte;
Begin
For i:=1 to N do
VV[i]:=0;
end;

Procedure LeeArch(Var VR:TVReal;Var VV:TVByte);
Var
  Arch:Text;
  Cab,Vehi,Hora:Byte;
  Tarifa:Word;
  Monto:Real;
Begin
  Assign(Arch,'Ejercicio514.txt');Reset(Arch);
  While not eof (Arch) do
  Begin
    Monto:=0;
    Readln(Arch,Cab,Vehi,hora);
    VV[Cab]:=VV[Cab]+1;
    Case Vehi of
    1,3:Tarifa:=30;
    2:Tarifa:=15;
    4:Tarifa:=70;
    5:Tarifa:=90;
    end;
    If (hora in [10..18 ]) then
    Monto:=Monto+(Tarifa*1.10)
    else
    Monto:=Monto+Tarifa;
    VR[Cab]:=VR[Cab]+Monto;
  end;
end;

Procedure Vehiculos(VV:TVByte;N:Byte);
Var
  i:Byte;
Begin
  For i:=1 to N do
  Begin
    Writeln('La cabina',i, ' atendio ',VV[i],' vehiculos' );
  end;
end;

Function MasImporte(VR:TVReal;N:byte):Byte;
Var
  i,IMax:Byte;
  Mas:Real;
Begin
  Mas:=VR[1];
  For i:=2 to N do
  Begin
    If VR[i]>Mas then
    Begin
    Mas:=VR[i];
    IMax:=i;
    end;
  end;
  MasImporte:=Imax;
end;
begin
  Clrscr;
  Writeln('Ingrese cantidad de cabinas');Readln(N);
  IniciaVec(N,VV);
  IniciaVec(N,VR);
  LeeArch(VR,VV);
  Vehiculos(VV,N);
  Writeln('La cabina que mas recaudo fue la ', MasImporte(VR,N));
  Readln;
end.

