import 'dart:io';

void main() {

  print("Ingresa a:");
  double a = double.parse(stdin.readLineSync()!);

  print("Ingresa b:");
  double b = double.parse(stdin.readLineSync()!);

  print("Ingresa c:");
  double c = double.parse(stdin.readLineSync()!);

  print("Ingresa d:");
  double d = double.parse(stdin.readLineSync()!);

  print("Ingresa e:");
  double e = double.parse(stdin.readLineSync()!);

  print("Ingresa f:");
  double f = double.parse(stdin.readLineSync()!);

  double numeroAbajo = (a * e) - (b * d);

  double X = (c * e - b * f) / numeroAbajo;
  double Y = (a * f - c * d) / numeroAbajo;

  print("X equivale a = $X");
  print("Y es igual a= $Y");
}
