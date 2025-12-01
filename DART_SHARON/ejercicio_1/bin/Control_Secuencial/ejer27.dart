import 'dart:io';

void main() {
  print("Ingresa Valor 1:");
  double valor1 = double.parse(stdin.readLineSync()!);

  print("Ingresa Valor 2:");
  double valor2 = double.parse(stdin.readLineSync()!);

  print("Ingresa Valor 3 valor suministrado:");
  double valor3 = double.parse(stdin.readLineSync()!);
  double areaTriangulo = (valor1 * valor2) / 2;
  double areaCirculo = valor2 * (valor1 * valor1); 
  double areaRectangulo = valor1 * valor2;

  if (areaTriangulo == valor3) {
    print("La figura es un triangulo");
  } else if (areaCirculo == valor3) {
    print("La figura es un circulito");
  } else if (areaRectangulo == valor3) {
    print("La figura es un rectangulo");
  } else {
    print("Ninguna figura coincide bro");
  }
}
