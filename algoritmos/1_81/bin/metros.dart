//Dada una cantidad en metros, se requiere que la convierta a pies y pulgadas, 
//considerando lo siguiente: 1 metro = 39.27 pulgadas; 1 pie = 12 pulgadas.
import 'dart:io';

void main(List<String> args){
  print("Ingresa la cantidad que quieras en metros: ");
  double metros = double.parse(stdin.readLineSync()!);
  double pulgadas = metros *39.27;
  double pies = pulgadas / 12;
  print("$metros metros son $pulgadas pulgadas");
  print("$metros metros son $pies pies");
}