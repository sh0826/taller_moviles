import 'dart:io';

void main() {
  print("Ingresa el precio al contado: ");
  double P = double.parse(stdin.readLineSync()!);

  print("Ingresa el valor de cada cuota: ");
  double T = double.parse(stdin.readLineSync()!);

  double totalCuotas = 12 * T;
  double recargo = totalCuotas - P;
  double porcentaje = (recargo / P) * 100;

  print("El porcentaje de recargo por pagar a cuotas es: $porcentaje%");
}
