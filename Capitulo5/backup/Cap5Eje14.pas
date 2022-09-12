//En una estación de peaje hay N cabinas por donde pasan varios
//vehículos. Desde un archivo se lee
//la siguiente información:
//• Número de cabina
//• Tipo de vehículo (1=auto, 2=moto, 3=camioneta, 4=camión, 5=colectivo)
//• Hora (0..23)
//Las tarifas son: moto = $150, auto y camioneta = $300, camión = $470,
//colectivo = $390.
//Si la hora está entre las 10 y las 18 sufre un incremento del 10%.
//Calcular e informar:
//a) Cuántos vehículos atendió cada una de las N cabinas.
//b) Cuál fue la que más importe recaudó
//Archivo:
//1 1 23
//2 1 2
//2 2 12
//3 2 22
//5 3 18
//4 2 18
//3 4 18
//2 3 14
//4 3 16
program Cap5Eje14;
Uses crt;
Type
  TVByte = Array[1..10] Of Byte;
  TVReal = Array[1..10] Of Real;
Var
  N: Byte;
  VV: TVByte;
  VR: TVReal;

Procedure IniciaVec(N: Byte; Var VR: TVReal);//Inicializa vector recaudacion
Var
  i: Byte;
Begin
For i:=1 to N do
  VR[i]:=0;
end;

Procedure IniciaVec(N: Byte; Var VV: TVByte);//Inicializa vector Vehiculos
Var
  i:Byte;
Begin
For i:=1 to N do
  VV[i]:= 0;
end;

Procedure LeeArch(Var VR: TVReal; Var VV: TVByte);
Var
  Arch: Text;
  Cab, Vehi, Hora: Byte;
  Tarifa: Word;
  Monto: Real;
Begin
  Assign(Arch,'Ejercicio514.txt'); Reset(Arch);
  While not eof (Arch) do
  Begin
    Monto:= 0;
    Readln(Arch, Cab, Vehi, hora);
    VV[Cab]:= VV[Cab] + 1; //Cantidad vehiculos por cabina
    Case Vehi of
    1, 3: Tarifa:= 30; //Tarifa auto y camioneta
    2: Tarifa:= 15;    //Tarifa moto
    4: Tarifa:= 70;    //Tarifa camion
    5: Tarifa:= 90;    //Tarifa colectivo
    end;
    If (hora in [10..18 ]) then
      Monto:= Monto + (Tarifa * 1.10) //+10%
    else
      Monto:= Monto + Tarifa;
    VR[Cab]:= VR[Cab] + Monto; //Acumulo monto de recaudacion
  end;
end;

Procedure Vehiculos(VV: TVByte; N: Byte); //Muestra vehiculos atendidos por las n cabinas
Var
  i: Byte;
Begin
  For i:= 1 to N do
  Begin
    Writeln('La cabina ',i, ' atendio ', VV[i],' vehiculos' );
  end;
end;

Function MasImporte(VR: TVReal; N: byte): Byte; //busco y guardo maximp
Var
  i, IMax: Byte;
  Mas: Real;
Begin
  Mas:= VR[1]; //Maximo momentaneo
  For i:= 2 to N do
  Begin
    If (VR[i] > Mas) then
      Begin
      Mas:= VR[i];
      IMax:= i;
    end;
  end;
  MasImporte:= Imax;
end;
begin
  Clrscr;
  N:= 5;
  IniciaVec(N, VV);
  IniciaVec(N, VR);
  LeeArch(VR, VV);
  Vehiculos(VV, N);
  Writeln('La cabina que mas recaudo fue la ', MasImporte(VR,N));
  Readln;
end.

