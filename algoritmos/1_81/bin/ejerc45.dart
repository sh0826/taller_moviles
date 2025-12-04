//Confeccionar un algoritmo que permita resolver 
//una ecuación de segundo grado, de la forma:
//AX2+BX+C = 0, sabiendo que el discriminante (D) 
//se calcula con la fórmula: D= Bˆ2­4*A*C. El valor
//obtenido se evalúa y se aplica la fórmula 
//correspondiente, según muestra la siguiente tabla:
import 'dart:io';
import 'dart:math';

void main(){
  print("Ingresa a");
  double a =double.parse(stdin.readLineSync()!);
  print("Ingresa b");
  double b =double.parse(stdin.readLineSync()!);
  print("Ingresa c");
  double c =double.parse(stdin.readLineSync()!);

  double D = (b*b)-4*a*c;
  double x = 0;
  double x2= 0;

  if (D == 0 ){
    x = -b/(2*a);
    print("Tiene solucion real pues x es: $x");
  }else if(D >0){
    x = (-b+sqrt(D))/(2*a);
    x2 = (-b-sqrt(D))/(2*a);

    print("Tiene dos soluciones reales:");
    print("x = $x");
    print("x2 = $x2");
  }else{
    print("No hay solucion de reales");
  }
}