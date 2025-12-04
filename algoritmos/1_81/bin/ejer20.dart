import 'dart:io';

void main() {
  print("Ingresa el capital prestado");
  double capital = double.parse(stdin.readLineSync()!);

  print("Ingresa los intereses pagados");
  double interes = double.parse(stdin.readLineSync()!);

  int tiempo = 4; 

  double razon = (100 * interes) / (capital * tiempo);

  print("El porcentaje anual cobrado fue de: $razon %");
}
