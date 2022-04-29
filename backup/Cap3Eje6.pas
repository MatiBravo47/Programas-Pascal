program Cap3Eje6;
Uses crt;
Var
ContR:Byte;
Total,Saldo:Integer;
Arch:Text;
Mov:Char;

begin
Clrscr;
ContR:=0;
Total:=100;//Monto inicial
Assign(Arch,'Ejercicio36.txt');Reset(Arch);
Read(Arch,Mov);
Mov:=Upcase(Mov);
While Mov<>'F' do
Begin
Readln(Arch,Saldo);
If Mov='D'then
Total:=Total+Saldo
else
  Begin
  If Mov='R' then
    Begin
    If Total<Saldo then
    ContR:=ContR+1
    else
    Total:=Total-saldo;
    end;
  end;
Read(Arch,Mov);
Mov:=Upcase(Mov);
end;
Writeln('No pudo retirar dinero por fondos insuficientes ',ContR,' veces');
Writeln('El saldo de la cuenta es: ',Total);
Readln;
end.

