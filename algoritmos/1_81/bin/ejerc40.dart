//Desarrolle un programa que calcule y muestre el monto que 
//debe pagar un suscriptor por concepto de consumo de luz eléctrica 
//y servicio de aseo urbano. Dicho monto se calcula multiplicando la
//diferencia de la lectura anterior y la lectura actual por el costo de cada Kilovatio hora, según la
//siguiente escala:
//0 - 100 2.622,00 Bs.
//101 - 300 79,78 Bs. / Kwh
//301 – 500 89,52 Bs. /Kwh
//501 – en adelante 97,95 Bs. / Khw
import 'dart:io';

void main(){
  print("Ingresa la lectura anterior:");
  double anterior = double.parse(stdin.readLineSync()!);
  print("Ingresa la lectura actual: ");
  double actual = double.parse(stdin.readLineSync()!);
  
  double consumo = (actual-anterior);
  double total = 0;

  if(consumo>500){
    total = total + (consumo-500)*97.95;
    consumo = 500;
  }
  if(consumo>300){
    total = total +(consumo-300)* 89.52;
    consumo = 300;
  }
  if(consumo>100){
    total = total +(consumo-100)*2.622;
    consumo = 100;
  }
  if(consumo>0){
    total = total + consumo * 2.622;
    consumo = 0;
  }

  print("Tienes que pagar: $total");
}