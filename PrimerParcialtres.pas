program PrimerParcialtres;
Uses crt;
Type
  TVB=array[1..10] of byte;
  TVS=array[1..10] of string;
Var
  x,n:byte;
  dias,apu,tar,foro:TVB;
  vnom:TVS;
Procedure LeeArch(X:byte;Var N:byte;Var dias,Apu,Tar,Foro:TVB;Var VNOM:TVS);
Var
  Arch:Text;
  Car:Char;
  Nombre:String;
  Dia:byte;
Begin
N:=0;
ASSIGN(Arch,'PrimerParcialtres.txt');RESET(Arch);
While not eof (Arch) do
 Begin
  N:=N+1;
  Nombre:='';
//  Read(Arch,Car);
//While Car<>' . ' do
//Begin
// Writeln('lpm")
    //if Car in ['A'..'Z'] then
    //Nombre:=Nombre+Car;
    //Read(Arch,Car);
//    end
  //Finaliza el nombre
//  if car=' ' then
//  read(Arch,car);
//   Read(Arch,Dia);
//  If Dia < X then
//    Begin
//    VNOM[N]:=Nombre;
//    Dias[N]:=Dia;
//    Readln(Arch,Apu[N],Tar[N],Foro[N]);
//    end
//  else
//  Readln(Arch);
  end;
CLOSE(Arch);
end;
begin
Clrscr;
Writeln ('Ingrese cantidad de dias');Readln(X);
LeeArch(x,n,dias,apu,tar,foro,vnom);
Readln;
end.

