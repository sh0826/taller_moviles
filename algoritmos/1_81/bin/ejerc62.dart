//Para cada una de las empresas del País se
//tienen como datos: actividad, localización y número de
//trabajadores. La actividad y la localización, se
//codifican de la siguiente forma:
//TABLA DE ACTIVIDADES
//ACTIVIDAD             LOCALIZACION
//1-AGRICOLA         1-NORTE
//2-INDUSTRIAL      2-SUR
//3-MINERA          3-ESTE
//4-PESQUERA        4-OESTE
//5-OTRA
//Desarrolle un algoritmo / programa que calcule y muestre:
//i. Porcentaje de empresas agrícolas del País.
//ii. Porcentaje de empresas mineras del sur respecto
//al total de empresas que realizan esa actividad.
//iii. Promedio de trabajadores de las empresas de
//cada tipo de actividad.
//iv.  Localización con mayor número de empresas
//industriales.
import 'dart:io';

void main() {
  String seguir = "s";
  int totalEmpresas = 0;
  int agri = 0;
  int mineras = 0;
  int minerasSur = 0;

  List<int> sumaTrab = [0, 0, 0, 0, 0, 0];
  List<int> contTrab = [0, 0, 0, 0, 0, 0];
  List<int> indPorZona = [0, 0, 0, 0, 0];

  while (seguir == "s") {
    print("Actividad (1-5): ");
    int act = int.parse(stdin.readLineSync()!);
    print("Localización (1-4): ");
    int loc = int.parse(stdin.readLineSync()!);
    print("Número de trabajadores: ");
    int trab = int.parse(stdin.readLineSync()!);
    totalEmpresas++;

    if (act == 1) {
      agri++;
    }

    if (act == 3) {
      mineras++;
      if (loc == 2) {
        minerasSur++;
      }
    }

    sumaTrab[act] += trab;
    contTrab[act]++;

    if (act == 2) {
      indPorZona[loc]++;
    }

    print("Quieres registrar otra empresa? (s/n)");
    seguir = stdin.readLineSync()!;
  }
  double porcAgri = (agri / totalEmpresas) * 100;
  print("1 % de empresas agrícolas: $porcAgri%");
  double porcMinSur = mineras == 0 ? 0 : (minerasSur / mineras) * 100;
  print("2 % de mineras del Sur respecto a mineras: $porcMinSur%");

  print("3 Promedio de trabajadores por actividad:");
  for (int i = 1; i <= 5; i++) {
    double prom = contTrab[i] == 0 ? 0 : sumaTrab[i] / contTrab[i];
    print("Actividad $i → $prom");
  }

  int mayor = 1;
  for (int i = 2; i <= 4; i++) {
    if (indPorZona[i] > indPorZona[mayor]) {
      mayor = i;
    }
  }
  print("iv. Localización con más empresas industriales: $mayor");
}
