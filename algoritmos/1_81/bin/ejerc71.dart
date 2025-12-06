//La UNICEF desea obtener información estadística sobre
//los orfanatorios ubicados dentro de la
//República y sobre los niños huérfanos internados
// en esos orfanatorios. Por cada niño se conoce:
//sexo, edad, nombre del orfanatorio y estado de
// la República al que pertenece el Orfanatorio. Escriba
//un Programa para calcular y mostrar lo siguiente:
//a. Porcentaje de huérfanos del Estado
//Táchira y del Distrito Capital respecto al total del País.
//b. Número de huérfanos en cada
//grupo. Los grupos se definen según la Edad:
//Grupo 1: menores de 1 año
//Grupo 2: edad comprendida entre 1 y 3 años
//Grupo 3: edad comprendida entre 4 y 6 años
//Grupo 4: mayores de 6 años
//c. Cantidad de niños y niñas y
//porcentaje que representa cada uno.
import 'dart:io';

void main() {
  int total = 0;

  int tachira = 0;
  int distritoCapital = 0;
  int grupo1 = 0;
  int grupo2 = 0;
  int grupo3 = 0;
  int grupo4 = 0;
  int ninos = 0;
  int ninas = 0;
  while (true) {
    print("Nombre del orfanatorio escribe fin para si quieres terminar:");
    String orfanatorio = stdin.readLineSync()!;

    if (orfanatorio.toLowerCase() == "fin") break;
    print("Estado del orfanatorio:");
    String estado = stdin.readLineSync()!.toLowerCase();
    print("Sexo del niño (M/F):");
    String sexo = stdin.readLineSync()!.toUpperCase();
    print("Edad del niño:");
    int edad = int.parse(stdin.readLineSync()!);
    total++;

    if (estado == "táchira" || estado == "tachira") {
      tachira++;
    }
    if (estado == "distrito capital") {
      distritoCapital++;
    }
    if (edad < 1) {
      grupo1++;
    } else if (edad <= 3) {
      grupo2++;
    } else if (edad <= 6) {
      grupo3++;
    } else {
      grupo4++;
    }
    if (sexo == "M") {
      ninos++;
    } else if (sexo == "F") {
      ninas++;
    }
  }
  print("Resultados:");
  print("Total de huérfanos registrados: $total");

  if (total > 0) {
    print("Porcentaje en Táchira: ${(tachira * 100 / total)}%");
    print(
      "Porcentaje en Distrito Capital: ${(distritoCapital * 100 / total)}%",
    );
  }
  print("Grupos de edades");
  print("Grupo 1 (<1 año): $grupo1");
  print("Grupo 2 (1-3 años): $grupo2");
  print("Grupo 3 (4-6 años): $grupo3");
  print("Grupo 4 (>6 años): $grupo4");
  print("Sexo");
  print("Niños: $ninos");
  print("Niñas: $ninas");
  if (total > 0) {
    print("Porcentaje Niños: ${(ninos * 100 / total)}%");
    print("Porcentaje Niñas: ${(ninas * 100 / total)}%");
  }
}
