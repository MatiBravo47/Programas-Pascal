{Ej 1) El departamento de Recursos Humanos de una empresa desea que sus empleados fraternicen y
decidió cada 3 meses hacer un brindis por los que nacieron en esa estación del año. Se pide:
 Leer los datos (Nombre del empleado y Fecha de Nacimiento)
 Informar en qué estación del año se festejan más cumpleaños}
program Cap7Eje1;
Type
TVE=array[1..5]of byte;
St6=String[6];
TReG=Record
Nombre:St6;
Dia,Mes:Byte;
Anio:Word;
end;
TV=array[1..4]of TReg;
Conts
Procedure LeeArch(Var V:TVE;N:Byte);
Var
ArchE:Text;
Begin
N:=0;
Assign(ArchE,'Datos71.txt');Reset(ArchE);
While not eof (ArchE) do
With V[N] do
  Begin
  N:=N+1;
  Readln(ArchE,Nombre,Dia,Mes,anio);
  end;
Close(ArchE);
end;
Function (N:Byte;V:TV):String;
Begin
Ver:=0;
Oto:=0;
Inv:=0;
Pri:=0;
For i:=1 to N do
  Begin
  If (V[I].dia<21) and (V[i].mes<6) then
    If (V[i].dia<21) and (V[i].mes<3) then
    Ver[i]:=Ver[i]+1
    else
    Oto[i]:=Oto[i]+1 ;
  Else
    If (V[i].dia<21) and (V[i].mes<9) then
    Inv[i]:=Inv[i]+1;
    else
    Pri[i]:=Pri[i]+1;
  end;
end;
//Programa principal
Var
N:Byte;
V:TVE;
begin
LeeArch(V,N);
end.

