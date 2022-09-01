//Ej 6) Se conoce el saldo inicial de una cuenta bancaria y
//una serie de movimientos realizados, por cada uno:
//- código de movimiento (D=depósito, R=retiro ó F= fin de datos).
//- monto
//Escribir un programa que ingrese dichos datos y determine el saldo
//exacto de la cuenta después de procesar las transacciones.
//Al final del proceso indique cuantas veces no pudo retirar dinero por
//insuficiencia de fondos
//ejemplo :
//D 100
//R 500
//R 600
//D 200
//R 150
//F
program Cap3Eje6;
Uses crt;
Var
ContR:Byte;
Total,Saldo:Integer;
Arch:Text;
Mov:Char;

begin
Clrscr;
ContR := 0;
Total :=0;
Assign(Arch,'Ejercicio36.txt'); Reset(Arch);
Read(Arch, Mov);//lee caracter
Mov := Upcase(Mov); //pasa a mayuscula
While (Mov <> 'F') do
Begin
Readln(Arch, Saldo); //lee saldo
If (Mov = 'D')then
	 Total := Total + Saldo //deposito suma
else
  Begin
  If Mov='R' then
    Begin
    If (Total < Saldo) then  //Cuenta intentos fallidos por retirar
    	 ContR := ContR + 1
    else
    		Total:=Total - saldo; //resta si es posible retirar
    end;
  end;
Read(Arch, Mov);
Mov := Upcase(Mov);
end;
close(arch);
Writeln('No pudo retirar dinero por fondos insuficientes ', ContR,' veces');
Writeln('El saldo de la cuenta es: ', Total);
Readln;
end.

