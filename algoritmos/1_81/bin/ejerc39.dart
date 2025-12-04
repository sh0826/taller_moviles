//Una persona se encuentra en la disyuntiva de comprar
// un automóvil o un terreno, los cuales
//cuestan exactamente la misma cantidad de dinero. 
//Sabe que mientras el automóvil se devalúa,
//con el terreno sucede lo contrario. Esta persona 
//comprará el automóvil si al cabo de tres años la
//devaluación de éste no es mayor que la mitad del 
//incremento del valor del terreno. Ayúdele a esta
//persona a determinar si debe o no comprar el automóvil.
import 'dart:io';

void main(){
  print("Ingresa el valor actual del carro: ");
  double valorA = double.parse(stdin.readLineSync()!);
   print("Ingresa el valor actual del terreno: ");
  double valorT = double.parse(stdin.readLineSync()!);
  print("Ingresa por cuanto se devalua carro: ");
  double devaluacion = double.parse(stdin.readLineSync()!);
  print("Ingresa cuanto se incrementa el precio del terreno: ");
  double incremento = double.parse(stdin.readLineSync()!);

  double perdidaCarro = (valorA * devaluacion/100)*3;
  double gananciaTerreno = (valorT*incremento/100)*3;

  if(perdidaCarro <= (gananciaTerreno/2)){
    print("Puedes comprar el carro");
  }else{
    print("No lo compres, es mejor el terreno");
      }
}