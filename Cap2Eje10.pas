//Ej 10) Una empresa le brinda a sus clientes un servicio de cable
//con un costo básico de $1350 por mes, el paquete de películas se
//cobra $200 adicionales y el de deportes $270. Aparte ofrece internet
//por $800 con 6MB, si se desea 10MB y WIFI cuesta 20% más.
//La opción de grabar programas tiene un costo adicional
//de $150 por mes. La promoción es que si se contrata ambos servicios
//(cable e internet), tiene una bonificación del 25% del total.
//Ingresar los datos de un cliente, calcular e informar cuánto
//debe pagar
program Cap2Eje10;
uses crt;
Var
Pelis,Deportes,Grabar,Internet:Char;
Monto:Real;
Opc:Byte;

begin
clrscr;
Monto := 1350; //Costo Basico
Writeln('Desea agregar pack peliculas?(S/N)'); Readln(Pelis);
Pelis := Upcase(Pelis);
If Pelis = 'S' then  //adicionales por pelicula
	 Monto := Monto + 200;
Writeln('Desea agregar pack deportes?(S/N)'); Readln(Deportes);
Deportes := Upcase(Deportes);
If deportes = 'S' then
	 Monto := Monto + 270; //adicional por deporte
Writeln('Desea agregar "Grabar peliculas"(S/N)');Readln(Grabar);
Grabar := Upcase(Grabar);
If Grabar = 'S' then
	 Monto := Monto +150;//adicional por grabar
Writeln('Desea agregar internet?(S/N)');Readln(Internet);
Internet := Upcase(Internet);
If (internet='S') then
  begin
  Writeln('elija la cantidad de megas');
  Writeln('1)Internet 6MB ');
  Writeln('2) Internet 10MB + WIFI');
  Readln(Opc);
  Case Opc of
  1: Monto:= Monto + 800;
  2: Monto:= Monto + ( 800 * 1.20);//+%20 de 800
  end;
  end;
If internet = 'S' then
	 Monto := Monto * 0.75; //-25% del total
Writeln('El monto a pagar es $',Monto:4:2);
readln;
end.

