program Cap4Eje8;
Function Descuento(TCompra:Char;Monto:Real;Dia:Byte):Real;
Var
  desc:Real;
Begin
  If ((Dia=10) or (Dia=20) or (Dia=30)) and (TCompra='O') then
    If monto>300 then
    Desc:=Monto*0.95;
  If (TCompra='C') and (dia in [16..31]) then
  Desc:=Monto*0.90;
  If (TCompra='C') and (dia in [1..15]) then
  Desc:=Monto*0.85;
  Descuento:=Desc;
end;

Var
 Arch:Text;
 N,i:Byte;
 Codigo:String[7];
 TCompra:Char;

begin
  Assign(Arch,'Ejercicio48.txt');Reset(Arch);
  Readln(Arch,N);
  For i:=1 to N do
    Readln(Arch,Codigo);
    Readln(Arch,TCompra);
    While TCompra<>'F' do
      Begin
      Readln(Arch,Dia,Monto);
      Readln(Arch,TCompra);
      end;
end.

