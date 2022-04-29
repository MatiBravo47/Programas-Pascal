program Cap6Eje9;
Type
  TMCHAR=array[1..10,1..10] of char;
  TMNUM=array [1..10,1..10] of byte;
Procedure LeeArch(Var T1:TMChar;Var T2:TMNum;Var N:Byte);
Var
ArchE:Text;
i,j:Byte;
Begin
Assign(ArchE,'Datos69.txt');Reset(ArchE);
Readln(ArchE,N);
For i:=1 to N do
  For j:=1 to N do
    Begin
    Read(ArchE,T1[I,J]);
    If j=N then
    Readln(ArchE);
    end;
For i:=1 to N do
  For j:=1 to N do
    Begin
    Read(ArchE,T2[I,J]);
    If j=N then
    Readln(ArchE);
    end;
end;
Function Color(N:Byte;T1:TMCHAR):String;
Var
i,j:Byte;
Rojo,Azul:Word;
Begin
Rojo:=0;
Azul:=0;
For i:=1 to N do
  For j:=1 to N do
    Begin
    If T1[i,j]='A' then
    Azul:=Azul+1
    else
    Rojo:=Rojo+1;
    end;
If Rojo>Azul then
Color:='Rojo'
else
  if Azul>Rojo then
  Color:='Azul'
  else
  Color :='empate entre ambos';
end;
Function MasFichas(N:Byte;T1:TMChar;T2:TMNum):String;
Var
Rojo,azul:Word;
i,j:Byte;
Begin
Rojo:=0;
Azul:=0;
For i:=1 to N do
  Begin
  For j:=1 to N do
    Begin
    If T1[i,j]='R' then
    Rojo:=Rojo+T2[i,j]
    else
    Azul:=Azul+T2[i,j];
    end;
  end;
If Rojo >Azul then //Falta mejorar de si son iguales
Masfichas:='Rojo'
else
Masfichas:='Azul'
end;
//Programa principal
Var
N:Byte;
T1:TMCHAR;
T2:TMNUM;
Begin
LeeArch(T1,T2,N);
Writeln('El color que predomina es :',Color(N,T1));
Writeln('El color con mas fichas es :',Masfichas(N,T1,T2));
Readln;
end.

