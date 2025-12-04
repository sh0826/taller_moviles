import 'dart:io';
void main(List<String> args) {
  print("Ingresa el total de mujeres en tu grupo:");
  int totalM = int.parse(stdin.readLineSync()!);
  print("Ingresa el total de hombres en el grupo:");
  int totalH = int.parse(stdin.readLineSync()!);

  int totalEst = totalM + totalH;

  double porcentajeM = (totalM * totalEst)/ 100;
  double porcentajeH = (totalH * totalEst)/ 100;

  print("\n====Resultados====");
  print("El porcentaje de mujeres en el grupo es: $porcentajeM %");
  print("El porcentaje de hombres en el grupo es: $porcentajeH %");
}