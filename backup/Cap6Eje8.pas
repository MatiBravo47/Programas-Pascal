program Cap6Eje8;
Uses
crt;
Type
TM=array [1..10,1..10] of byte;
TvNum=array [1..10]of byte;
Procedure LeeArch(Var N:Byte;Var Vnum:TvNum);
Var
ArchE:Text;
Begin
N:=0;
Assign(ArchE,'Datos68.txt');Reset(ArchE);
While not eof (ArchE) do
Begin
N:=N+1;
Read(ArchE,Vnum[N]);
end;
Close(ArchE);
end;
Procedure CreaMatriz(N:Byte;VNum:TvNum;var Mat:TM);
Var
I,J:Byte;
Begin
For j:=1 to N do
  For i:=1 to N do
    Begin
    If (VNum[i] mod VNum[J])=0 then
      Mat[i,j]:=1
    else
      Mat[i,j]:=0;
    end;
end;
Procedure Muestra(N:Byte;Mat:TM);
Var
i,j:Byte;
Begin
For j:=1 to N do
  For i:=1 to N do
    Begin
    Write(' ',Mat[i,j]);
    If i=N then
    Writeln(' ');
    end;
end;
Procedure Reflexiva(Mat:TM;N:Byte);
Var
unos:Boolean;
i:Byte;
Begin
Unos:=True;
For i:=1 to N do
  If Mat[i,i]=0 then
  Unos:=False;
If unos then
Writeln ('La matriz es reflexiva'); // podria haber hecho funcion tmb
end;
Function Simetrica():Boolean;
Begin

end;

Var
Mat:TM;
Vnum:TvNum;
N:Byte;
begin
clrscr;
LeeArch(N,Vnum);
CreaMatriz(N,VNum,Mat);
Muestra(N,Mat);
Reflexiva(Mat,N);
Readln;
end.

