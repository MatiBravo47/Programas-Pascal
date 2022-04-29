program PrimerParcialCuatro;
Uses crt;
Type
  TVS=array[1..7] of string[16];
  TVB=array[1..7] of byte;
  TVR=array[1..7] of real;
Var
  N:byte;
  VNOM:TVS;
  Esc,CantV:TVB;
  TProm:TVR;


Procedure LeeArch(Var N:Byte;Var VNOM:TVS;Var CantV,Esc:TVB;Var TProm:TVR);
Var
  Arch:Text;
  iEsta,i,tiempo,escu:Byte;
  esta:Boolean;
  Nombre:string[16];
  TTotal:TVB;

Begin
N:=0;
ASSIGN(Arch,'PrimerParcialCuatro.txt');RESET(Arch);
While not eof (Arch) do
  Begin
  N:=N+1;
  esta:=false;
  Read(Arch,Nombre);
  VNOM[1]:=Nombre;
  For i:=1 to N do
  If nombre=VNOM[i] then //Verifica si el nombre ya existe
    Begin
    Esta:=true;
    iEsta:=i;
    end;
  Readln(Arch,Escu,Tiempo);
  If esta then //Agrega una componente ya hecho
    Begin
    TTotal[iEsta]:=TTotal[iEsta]+Tiempo;
    CantV[iEsta]:=CantV[iEsta]+1;
    end
  else
    begin
    TTotal[N]:=Tiempo;//agrega un nuevo componente al vector
    Read(Esc[N],TProm[N]);
    end;
For i:=1 to N do
TProm[i]:=TTotal[i]/CantV[i];
CLOSE(Arch);
  end;
end;



begin
Clrscr;
LeeArch(N,VNOM,CantV,Esc,TProm);
readln;
end.

