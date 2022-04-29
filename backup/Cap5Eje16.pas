program Cap5Eje16;
Uses crt;
Type
  TVString=Array[1..5] of string[7];
  TVString2=Array[1..5] of string[6];
  TVByte=Array[1..5] of byte;
  TVWord=Array[1..4] of word;

Var
  N:Byte;
  VNom:TVString;
  Pat:TVString2;
  TCer,Ton:TVByte;
  VCer:TVWord;
  TonTot:Word;

Procedure IniciaVec(Var VCer:TVWord);
Var
  i:Byte;
Begin
  For i:=1 to 4 do
  VCer[i]:=0;
end;

Procedure LeeArch(Var N:Byte;Var VNom:TVString;Var Pat:TVString2;Var TCer,Ton:TVByte;Var TonTOT:Word);
Var
  Arch:Text;
  Car:Char;
Begin
  N:=0;
  Pat[N]:='';
  TonTOt:=0;
  Assign(Arch,'Ejercicio516.txt');Reset(Arch);
  While not eof (Arch) do
  Begin
    N:=N+1;
    Read(Arch,VNom[N]);
    Read(Arch,Car);
    While Car=' ' do
    Read(Arch,Car);
    While Car<>' ' do
    Pat[N]:=Pat[N]+Car;
    Read(Arch,TCer[N],Ton[N]);
    TonTot:=TonTot+Ton[N];
    Readln(Arch);
  end;
  Close(Arch);
end;

Procedure Porcentaje(N:Byte;Var VCer:TVWord);
Var
  i:Byte;
Begin
  For i:=1 to N do
  Begin
    Case TCer[i] of
    1:VCer[1]:=VCer[1]+Ton[i];
    2:VCer[2]:=VCer[2]+Ton[i];
    3:VCer[3]:=VCer[3]+Ton[i];
    4:VCer[4]:=VCer[4]+Ton[i];
    end;
  end;
  Writeln('Trigo ocupa un ',((VCer[1]*100)/TonTot):5:2);
  Writeln('Girasol ocupa un ',((VCer[2]*100)/TonTot):5:2);
  Writeln('Soja ocupa un ',((VCer[3]*100)/TonTot):5:2);
  Writeln('Maiz ocupa un ',((VCer[4]*100)/TonTot):5:2);
end;

Procedure Patente(VNom:TVString;N:Byte;Pat:TVString2;TCer,Ton:TVByte);
Var
  Pate:String[6];
  i:Byte;
Begin
  Writeln('Ingrese una patente');Readln(Pate);
  For i:=1 to N do
  Begin
    If Pate=Pat[i] then
    Begin
    Writeln('Tipo de cereal: ',TCer[i]);
    Writeln('Toneladas:',Ton[i]);
    Writeln('Cliente:',VNom[i]);
    end;
  end;
end;
//Programa principal
begin
  Clrscr;
  IniciaVec(VCer);
  LeeArch(N,VNom,Pat,TCer,Ton,TonTot);
  Porcentaje(N,VCer);
  Patente(VNom,N,Pat,TCer,Ton);

  Readln;
end.

