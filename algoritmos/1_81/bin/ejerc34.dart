//Construya un programa que, dados como datos la categoría y el sueldo del trabajador, calcule el
//aumento correspondiente teniendo en cuenta la siguiente tabla:
//categria             aumento
//1                   15%
//2                   10%
//3                   8%
//4                   7%
//Como salida, mostrar la categoría del trabajador y su nuevo sueldo.
import 'dart:io';

void main(){
  print("Hola trabajador, ingresa tu categoria recuerda que va de (1 a 4):");
  int categoria = int.parse(stdin.readLineSync()!);
  print("Ahora ingresa tu sueldo");
  double sueldo = double.parse(stdin.readLineSync()!);

  double aumento = 0;
  if(categoria == 1){
    aumento = sueldo * 0.15;
  }else if(categoria == 2){
    aumento = sueldo * 0.10;
  }else if(categoria == 3){
    aumento = sueldo * 0.08;
  }else if(categoria == 4){
    aumento = sueldo * 0.07;
  }
  double sueldoFinal = sueldo + aumento;

  print("Tu categoria es $categoria");
  print("Tendras un aumento de $aumento");
  print("y tu sueldo final gracias a tu categira es de: $sueldoFinal");
}