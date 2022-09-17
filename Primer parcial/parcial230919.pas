//Un banco cuenta con la informacion de los accesos a su homebanking
//en el archivo  Bank.txt. De cada acceso se conoce:
//Usuario (Secuencia de caracteres, letras y digitos, comenzando con un digito)
//Ip origen (12 digitos con puntos, ej 192.168.001.100)

//Dicha informacion esta grabada en un archivo de texto, en cada linea
//una conexion con el siguiente formato:
//xxxxxxxxxxxxxxxxblancoxxx.xxx.xxx.xxxxxxxxxxxxxxxxblancoxxx..blanco999

//Se puede identificar segun como comienza la direccion IP desde
//donde fueron realizados los accesos:
//192 Red interna del banco - 276 Desde Mar del plata - 381 Desde argentina
//-otras internacional

//Por seguridad, el usuario esta encriptado dentro del archivo. Para
//desencriptarlo, por cada numero x que aparece se deben considerar las x
//letras que le siguen y descartar el resto hasta el proximo numero
//Ej
//1JEF3UANETE1ZYM --> JUANZ

//

program parcial230919;

begin
end.

