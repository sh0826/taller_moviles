//Dados tres datos enteros positivos, que representan las 
//longitudes de los lados de un probable
//triángulo, desarrolle un algoritmo que 
//determine si los datos corresponden a un triángulo. En caso
//de que sí correspondan, escriba si el triángulo es equilátero,
// isósceles o escaleno. Calcule además
//su área. Considere que es triángulo si se cumple que la 
//suma de los dos lados menores es mayor
//que la del lado mayor. Tome en cuenta además que el área de un triángulo la calculamos como:
//area = √S(S­A)(S­B)(S­C) donde S es la mitad de la suma de los lados A, B y C.
//Recuerde: Equilátero: todos los lados son iguales.
//Isósceles: 2 lados iguales y 1 diferente.
//Escaleno: Todos los lados diferentes.
import 'dart:io';
import 'dart:math';

void main(){
  print("Ingresa el primer lado: ");
  int lado1 = int.parse(stdin.readLineSync()!);
  print("Ingresa el segundo lado: ");
  int lado2 = int.parse(stdin.readLineSync()!);
  print("Ingresa el tercer lado: ");
  int lado3 = int.parse(stdin.readLineSync()!);

  if(lado1 != lado2 && lado1 != lado3 && lado2 != lado3){
    print("el triangulo es escaleno bro");
  }else if(lado1 == lado2 && lado1 == lado3){
    print("Es un triangulo equilatero");
  }else{
    print("El triangulo es isosceles");
  }
  double s = (lado1+lado2+lado3)/2;
  double area = (s*(s-lado1)*(s-lado2)*(s-lado3));
  area = sqrt(area);
  print("El area de este triangulo es: $area");
  }