program Cap5Eje11;
Uses crt;
Type
  TVNom=Array[1..4]of string[6];
  TVNum=Array[1..8] of Byte;
Var
  N,M:Byte;
  VNom:TVNom;
  VNum:TVNum;

Procedure LeeArch(Var N,M:Byte;Var VNom:TVNom;Var VNum:TVNum);
Var
  Arch:Text;
Begin
  N:=0;
  M:=0;
  Assign(Arch,'Ejercicio511.txt');Reset(Arch);
  While not eof (arch) do
  Begin
    N:=N+1;
    M:=M+1;
    Readln(Arch,Vnom[N]);
    Read(Arch,VNum[M]);
    M:=M+1;
    Read(Arch,VNum[M]);
    Readln(Arch);
  end;
  close(Arch);
end;
Function Sup(VNum:TVNum;M:Byte):Byte;
Var
  i,Superan,Ant:Byte;
Begin
  i:=0;
  Superan:=0;
  While i<M do
  Begin
    i:=i+1;
    Ant:=VNum[i];
    i:=i+1;
    If VNum[i]>Ant then
    Superan:=Superan+1;
  end;
  Sup:=Superan;
end;
Function Max(VNum:TVNum;VNom:TVNom;M:Byte):String;
Var
  i,Maximo:Byte;
Begin
  Maximo:=VNum[1];
  For i:=2 to M do
    If VNum[i]>Maximo then
    Maximo:=i;
  Case Maximo OF
  1,2:Max:=VNom[1];
  3,4:Max:=VNom[2];
  5,6:Max:=VNom[3];
  7,8:Max:=VNom[4];
  end;
end;
Procedure Atleta(VNum:TVNum;VNom:TVNom;N:Byte);
Var
  i:Byte;
  Atleta:String[6];
Begin
Writeln ('Ingrese nombre del atleta');Readln(Atleta);
For i:=1 to N do
  Begin
    If VNom[i]=atleta then
    Begin
      Case i of
      1:Writeln(VNum[1],' ',VNum[2]);
      2:Writeln(VNum[3],' ',VNum[4]);
      3:Writeln(VNum[5],' ',VNum[6]);
      4:Writeln(VNum[7],' ',VNum[8]);
      end;
    end;
  end;
end;
//Programa principal
begin
  clrscr;
  LeeArch(N,M,VNom,VNum);
  Writeln('Superaron el primer lanzamiento ',Sup(VNum,M), ' personas');
  Writeln('El atleta que registro la mejor marca es ',Max(VNum,VNom,M));
  Atleta(VNum,VNom,N);

  Readln;
end.

