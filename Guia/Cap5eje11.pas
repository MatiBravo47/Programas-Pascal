
{Ej 11) De una competencia de atletismo se tienen los siguientes datos del lanzamiento de jabalina:
• Nombre del competidor (ordenado ascendentemente por este dato)
• 1º lanzamiento
• 2º lanzamiento
Se pide:
a) Cuántos competidores superaron con el 2º lanzamiento el 1º.
b) Nombre del atleta que registró la mejor marca.
c) Dado el Nombre de un atleta, informar la marca que realizó en ambos lanzamientos.
d) Generar un nuevo arreglo con los participantes que pasaron a la semifinal (aquellos que superaron
una marca X establecida en el 1º ó 2º lanzamiento). Mostrar ambos arreglos. }
program Cap5eje11;
Uses crt;
Type
  St8=String[8];
  TvNom=array[1..11] of st8;
  TvNum=Array[1..11] of Real;
Procedure CreaVector(Var V1,V2:Tvnum;Var VNom:TvNom;Var N:Byte);
Var
  ArchE:Text;
Begin
  N:=0;
  Assign(ArchE,'datos_5_11.txt');
  Reset(ArchE);
  While not eof (ArchE) do
  Begin
    N:=N+1;
    Readln (ArchE,Vnom[N],V1[N],V2[N]);
  end;
  Close(ArchE);
end;

Function Superaron(N:Byte;V1,V2:TvNum):Byte; //A)
Var
  i,Sup:Byte;
Begin
  Sup:=0;
  For i:=1 To N do
  Begin
    If V2[i]>V1[i] then
    Sup:=Sup+1;
  end;
Superaron:=Sup;
end;

Function Nombre(Vnom:TvNom;V1,V2:TvNum;N:Byte):String; //B)
Var
  i:Integer;
  Persona:String;
  Total,Mejor:Real;
Begin
  Mejor:=-99;
  For i:=1 To N do
  Begin
    Total:=V1[i]+ V2[i];
    If total>Mejor then
    Begin
      Mejor:=Total;
      Persona:=Vnom[i];
    end;
  end;
Nombre:=Persona;
end;
Procedure Tiros(V1,V2:TvNum;Vnom:TvNom;N:Byte);//C)
Var
  Atleta:String;
  i:Byte;
Begin
  Writeln('Ingrese nombre del atleta');
  Readln(Atleta);
  For i:=1 To N do
  Begin
    If Vnom[i]=Atleta then
    Begin
      Writeln ('Disparo 1: ',V1[i]);
      Writeln ('Disparo 2: ',V2[i]);
    End;
  end;
end;
Procedure SemiF(N:byte;Vnom:TvNom;V1,V2:TvNum;Var Vnom2:TvNom ;Var j:Byte);
Var
  i:Byte;
  Marca:Real;
Begin
  Writeln('Ingrese marca a superar para entrar a semifinal');Readln(Marca);
  For i:=1 To N do
  Begin
    j:=1;
    If V1[i] >Marca then
    Begin
      Vnom2[J]:=Vnom[i];
      J:=J+1;
    End
    Else
    If V2[i]>Marca then
    Begin
      VNom2[J]:=Vnom[i];
      J:=J+1;
    End;
  End;
end;

  Procedure MuestraV(M,N:Byte;V1,V2:Tvnum);
Var
i,j:Byte;
Begin
  For i:=1 To N do
  Write(' ',V1[i]);
  For J:=1 to M do
  Write(' ',V2[J]);
end;
//Programa Principal
Var
  V1,V2:TvNum;
  Vnom,Vnom2:TvNom;
  N,M:Byte;

begin
  Clrscr;
  CreaVector(V1,V2,VNom,N);
  Writeln('Superaron los primeros tiros ',Superaron(N,V1,V2)); //A)
  Writeln('El atleta que supero la mejor marca fue : ',Nombre(Vnom,V1,V2,N));
  Tiros(V1,V2,Vnom,N);
  SemiF(N,VNom,V1,V2,VNom2,M);
  MuestraV(M,N,V1,V2);
  Readln;
end.

