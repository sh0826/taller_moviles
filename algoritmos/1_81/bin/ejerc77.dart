/*Desarrolle un algoritmo o programa que partiendo de la cantidad de habitantes que tiene cada uno
de los M municipios de los 5 principales Estados del País, calcule y muestre:
a. Estado con mayor población (nombre y cantidad),
b. Estado con menor población (nombre y cantidad),
c. Porcentaje que representan el total de los habitantes de los 5 Estados, respecto al total del
País y
d. Promedio de habitantes por Estado.*/
import 'dart:io';

void main() {
  List<String> estados = [
    "Estado 1",
    "Estado 2",
    "Estado 3",
    "Estado 4",
    "Estado 5",
  ];
  double totalPoblacion5Estados = 0;
  double mayorPoblacion = -1;
  String estadoMayor = "";
  double menorPoblacion = 9999999;
  String estadoMenor = "";
  for (int i = 0; i < 5; i++) {
    print("\nIngrese la cantidad de municipios del ${estados[i]}:");
    int M = int.parse(stdin.readLineSync()!);
    double sumaEstado = 0;
    for (int m = 1; m <= M; m++) {
      stdout.write("Habitantes del municipio $m: ");
      double hab = double.parse(stdin.readLineSync()!);
      sumaEstado += hab;
    }
    print("Total habitantes del ${estados[i]}: $sumaEstado\n");
    totalPoblacion5Estados += sumaEstado;
    if (sumaEstado > mayorPoblacion) {
      mayorPoblacion = sumaEstado;
      estadoMayor = estados[i];
    }
    if (sumaEstado < menorPoblacion) {
      menorPoblacion = sumaEstado;
      estadoMenor = estados[i];
    }
  }
  stdout.write("Ingrese el total de poblacion del pais: ");
  double totalPais = double.parse(stdin.readLineSync()!);
  double porcentaje = (totalPoblacion5Estados / totalPais) * 100;
  double promedio = totalPoblacion5Estados / 5;
  print(
    "Estado con MAYOR población: $estadoMayor ($mayorPoblacion habitantes)",
  );
  print(
    "Estado con MENOR población: $estadoMenor ($menorPoblacion habitantes)",
  );
  print(
    "Porcentaje que representan los 5 estados respecto al país: $porcentaje%",
  );
  print("Promedio de habitantes por Estado: $promedio");
}
