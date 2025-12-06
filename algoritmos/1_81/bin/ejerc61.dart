//Diseñe un algoritmo o programa que permita
//calcular la multiplicación de dos números, utilizando el
//método de la multiplicación Rusa, el cual consiste
//en multiplicar por dos el multiplicando y dividir
//entre dos el multiplicador hasta que el multiplicador
// tome el valor 1. Durante este proceso, se deben
//sumar todos los multiplicandos correspondientes
// a multiplicadores impares y este resultado es el de
//la multiplicación. Ejemplo:
//a. 25 x 7 = 175 (multiplicador = 25, multiplicando = 7)
//b. 25 7
//c. 12 14
//d. 6 28 suma= 7 + 56 + 112 = 175
//e. 3 56
//f. 1 112
import 'dart:io';

void main() {
  print("Ingresa el multiplicador:");
  int mult = int.parse(stdin.readLineSync()!);
  print("Ingresa el multiplicando:");
  int multi2 = int.parse(stdin.readLineSync()!);
  int suma = 0;

  while (mult >= 1) {
    if (mult % 2 != 0) {
      suma += multi2;
    }
    mult = mult ~/ 2;
    multi2 = multi2 * 2;
  }
  print("Resultado de la multiplicacion rusa: $suma");
}
