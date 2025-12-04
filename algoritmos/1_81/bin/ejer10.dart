/*10. El cambio de divisas en la bolsa de Madrid el 25/08/1987 fue el siguiente
100 chelines austríacos = 956.871 pesetas
1 dólar EEUU = 122.499 pesetas
100 dracmas griegos = 88.607 pesetas
100 francos belgas = 323.728 pesetas
1 franco francés = 20.110 pesetas
1 libra esterlina = 178.938 pesetas
100 liras italianas = 9.289 pesetas
Lea una cantidad en chelines austriacos e imprima el equivalente en pesetas. Lea una
cantidad en dracmas griegos e imprima su equivalente en francos franceses. Finalmente, lea una
cantidad en pesetas e imprima su equivalente en dólares y liras italianas.*/
import 'dart:io';
void main(){
  print("Ingresa la cantidad de chelines que vayas a pasar a pesetas: ");

  double chelines = double.parse(stdin.readLineSync()!);
  double pesetas =  956.871/100;
  double  totalPesetas = (chelines * pesetas); 
  print("El equivalente de tus chelines: $chelines a pesetas es de $totalPesetas pesetas");

  print("Ingresa los dracmas griegos que vayas a pasar a francos franceses: ");
  double dracmas = double.parse(stdin.readLineSync()!);
  double pesetasDracmas = 88.607/100;
  double franco = pesetasDracmas / 20.110;
  print("El cambio de dracmas que ingresaste a francos es de $franco");

  print("Ingresa la cantidad de pesetas que deseas pasar a dolares");
  double pesetas1 = double.parse(stdin.readLineSync()!);
  double dolares = (1/122.499);
  double pesetasDolar = (pesetas1*dolares);
  double liras = (100/9.289);
  double pesetasLiras = pesetas1*liras;
  print("Tus pesetas a dolares equivale a: $pesetasDolar y pesetas a liras es de $pesetasLiras");
}