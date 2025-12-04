//Resuelva el problema que tienen en una gasolinera. Los surtidores de la misma registran lo que
//surten en galones, pero el precio de la gasolina está fijado en litros. 
//Se requiere que calcule y muestre lo que hay que cobrarle a un cliente, 
//considerando que: (a) cada galón tiene 3.785 litros; (b) el precio
//del litro es de 100 Bolívares.
import 'dart:io';

void main() {
  print("Ingresa la cantidad de galones:");
  double galones = double.parse(stdin.readLineSync()!);

  double litros = galones * 3.785;  
  double total = litros * 100;       

  print("Litros surtidos: $litros");
  print("Total a pagar: $total bolívares");
}
