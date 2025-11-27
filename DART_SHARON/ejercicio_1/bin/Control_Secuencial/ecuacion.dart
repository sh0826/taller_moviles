//Calcule el área de un triángulo en función de las longitudes 
//de sus lados, utilizando la fórmula:√p(p­a)(p­b)(p­c) donde p = (a+b+c) / 2
import 'dart:math';

void main(){
  int a = 3;
  int b = 4;
  int c = 5;

  double p =(a+b+c)/2;
  double area = sqrt(p*(p-a)*(p-b)*(p-c));
  print("El area de este triangula es de $area"); 
}