//Ej 16) Una planta de silos registra el ingreso de camiones de sus
//clientes con cereal, por cada uno se tiene:
//• Cliente
//• Patente del camión
//• Tipo de cereal ( 1-trigo, 2-girasol, 3-soja, 4-maiz )
//• Toneladas
//Se pide que lea los datos desde un archivo y mediante un menú
//de opciones iterativo calcule e informe:
//a) Porcentaje de toneladas de cada cereal respecto del total.
//b) Dada una patente, si es que existe, decir qué tipo de cereal
//transporta, las toneladas y a qué cliente pertenece.
//c) Generar un arreglo con los clientes que transportaron más de X
//toneladas, ordenado alfabéticamente.
//Generar un archivo de texto, con un mínimo de 10 líneas, que
//obtenga los siguientes resultados:
//a) Trigo: 30%, Girasol: 20%, Soja: 40%, Maiz: 10%.
//b) Para la patente AB123CD -> Soja, 45, MDP3
//c) X = 30 -> [BAL1, MDP3, NEC3, TAN2]
program Cap5Eje16;
Uses crt;
Type
  TVString = Array[1..5] of string[7];
  TVString2 = Array[1..5] of string[6];
  TVByte = Array[1..5] of byte;
  TVWord = Array[1..4] of word;

Var
  N: Byte;
  VNom: TVString;
  Pat: TVString2;
  TCer, Ton: TVByte;
  VCer: TVWord;
  TonTot: Word;

Procedure IniciaVec(Var VCer: TVWord); //Inicia vector cereales
Var
  i: Byte;
Begin
  For i:= 1 to 4 do
    VCer[i]:= 0;
end;

Procedure LeeArch(Var N: Byte; Var VNom: TVString; Var Pat: TVString2; Var TCer, Ton: TVByte; Var TonTOT: Word);
Var
  Arch: Text;
  Car: Char;
Begin
  N:= 0;
  Pat[N]:= ''; //Inicia patente
  TonTOt:= 0;
  Assign(Arch,'Ejercicio516.txt'); Reset(Arch);
  While not eof (Arch) do
    Begin
    N:= N + 1;
    Read(Arch, VNom[N]); //guarda nombres en VNom
    Read(Arch, Car);  //Lee primer blanco
    While (Car = ' ') do //Lee caracteres hasta que encuentre distinto de blanco
      Read(Arch, Car);
    While (Car <> ' ') do //Guarda patente
      begin
      Pat[N]:= Pat[N] + Car;
      read(arch, car);
      end;
    Read(Arch, TCer[N], Ton[N]); //Lee tipo de cereal y toneladas
    TonTot:= TonTot + Ton[N];   //Almacena total de toneladas
    Readln(Arch);//Pasa de linea
    end;
  Close(Arch);
end;

Procedure Porcentaje(N: Byte; Var VCer: TVWord);
Var
  i: Byte;
Begin
  For i:= 1 to N do
    VCer[Tcer[i]]:= VCer[Tcer[i]] + Ton[i];
  Writeln('Trigo ocupa un ',((VCer[1] * 100) / TonTot):5:2);
  Writeln('Girasol ocupa un ',((VCer[2] * 100) / TonTot):5:2);
  Writeln('Soja ocupa un ',((VCer[3] * 100) / TonTot):5:2);
  Writeln('Maiz ocupa un ',((VCer[4] * 100) / TonTot):5:2);
end;

Procedure Patente(VNom: TVString; N: Byte; Pat: TVString2; TCer, Ton: TVByte);
Var
  Pate: String[6];
  i: Byte;
Begin
  Writeln('Ingrese una patente'); Readln(Pate);
  For i:=1 to N do
  Begin
    If (Pate = Pat[i]) then
      Begin
      Writeln('Tipo de cereal: ', TCer[i]);
      Writeln('Toneladas:', Ton[i]);
      Writeln('Cliente:', VNom[i]);
      end;
  end;
end;

//Programa principal
begin
  Clrscr;
  IniciaVec(VCer);
  LeeArch(N, VNom, Pat, TCer, Ton, TonTot);
  Porcentaje(N, VCer);
  Patente(VNom, N, Pat, TCer, Ton);
  Readln;
end.

