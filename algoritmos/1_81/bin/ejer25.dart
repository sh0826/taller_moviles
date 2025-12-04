//Escriba un algoritmo, que dado como dato el sueldo 
//de un trabajador, le aplique un aumento del
//15% si su sueldo es inferior a Bs. 40.000 y 
//12% en caso contrario. Imprima el nuevo sueldo del trabajador.
import 'dart:io';

void main(){
  print("Ingresa tu sueldo:");
  double sueldo = double.parse(stdin.readLineSync()!);
  if(sueldo < 40000){
    double aumento = sueldo*0.15;
    double total = aumento+sueldo;
    print("Hubo un aumento del 15% por tener un salario menor a 40.000: $total");
  }else{
    double aumento2 = sueldo*0.12;
    double total2 = aumento2+sueldo;
    print("Hubo un aumento del 12% por tener un salario mayor a 40.000: $total2");
  }
}