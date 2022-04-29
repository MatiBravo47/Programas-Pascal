program project12;
Uses crt;
Type
  TVString=Array[1..4] of string ;
  TVReal=Array[1..4] of Real;
  TVChar=Array[1..4] of Char;

Var
  VClave:TVString;
  VProm:TVReal;
  VCar:TVChar;
  N:Byte;

Procedure LeeArch(VClave:TVString;VProm:TVReal;VCar:TvChar;N:Byte);
Var
  Arch:Text;
  Clave:String;
  Car,UCar:Char;
  Esp,i:Byte;
  Num:Word;
  Total,Prom:Real;
Begin
  Assign(Arch,'Ejercicio512.txt');Reset(Arch);
  While not eof (Arch) do
  Begin
    Clave:='';
    Read(Arch,Car);
    While Car<>' ' do
    Begin
      Clave:=Clave+Car;
      UCar:=Car;
      If Not ((Car in ['a'..'z']) and (Car in ['A'..'Z'])) then
      Esp:=Esp+1;
      Read(Arch,Car);
    end;
    If Esp<3 then
    Begin
      VClave[N]:=Clave;
      For i:=1 to 3 do
      Begin
      Read(Arch,Num);
      Total:=Total+Num;
      end;
      Prom:=Total/3;
    VProm[N]:=Prom;
    end;
    Read(Arch,Car);
    While Car=' ' do
    Read(Arch,Car);
    If Car<>UCar then   //Caracter No blanco
    VCar[N]:=Car;
  end;
end;

begin
  Clrscr;
  LeeArch(VClave,VProm,VCar,N);
  Readln;
end.


