/*La Oficina Central de Estadística e Informática (OCEI) desea conocer cierta información sobre la
situación actual del país en cuanto a los niveles actuales de desempleo, analfabetismo y del potencial
de profesionales existentes en Venezuela. Los Estados son identificados por un código entero
positivo de dos (02) dígitos significativos. Las ciudades mediante un código de cuatro (04) dígitos
significativos, de los cuales los dos últimos dígitos corresponden al Estado al cual pertenecen. Los
municipios se identifican con un código de cuatro (06) dígitos significativos, de los cuales los primeros
dígitos corresponden al código de Estado y los dos siguientes dígitos a los dos primeros dígitos del
código de la ciudad en la cual están ubicados. Los datos fueron tomados de personas mayores de 18
años y los mismos son los siguientes: edad; nivel de educación (N: ninguna, B: básica, S: secundaria,
P: profesional); situación actual (D: desempleado, E: empleado). Se requiere que desarrolle un
programa que cumpla con lo siguiente:
• Determinar e imprimir por municipio el código y la cantidad de personas con las siguientes
características: desempleado, sin ningún nivel de educación y mayores de 25 años.
• Calcular e imprimir el código de las ciudades cuyas personas establecidas en la parte anterior sean
más del 50%.
• Calcular e imprimir el código del Estado con mayor porcentaje de profesionales desempleados.*/
import 'dart:io';

void main() {
  Map<String, int> municipioCasos = {};
  Map<String, int> municipioTotal = {};

  Map<String, int> ciudadCasos = {};
  Map<String, int> ciudadTotal = {};

  Map<String, int> estadoProfesionalesD = {};
  Map<String, int> estadoTotalPersonas = {};

  print("Ingrese la cantidad de personas:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    print("Persona $i ");

    print("Edad:");
    int edad = int.parse(stdin.readLineSync()!);

    print("Nivel educativo (N, B, S, P):");
    String nivel = stdin.readLineSync()!.toUpperCase();

    print("Situación (D/E):");
    String situacion = stdin.readLineSync()!.toUpperCase();

    print("Código del municipio (6 dígitos):");
    String codMunicipio = stdin.readLineSync()!;
    String codCiudad = codMunicipio.substring(0, 4);
    String codEstado = codMunicipio.substring(0, 2);

    municipioTotal[codMunicipio] = (municipioTotal[codMunicipio] ?? 0) + 1;
    ciudadTotal[codCiudad] = (ciudadTotal[codCiudad] ?? 0) + 1;
    estadoTotalPersonas[codEstado] = (estadoTotalPersonas[codEstado] ?? 0) + 1;

    if (nivel == "P" && situacion == "D") {
      estadoProfesionalesD[codEstado] =
          (estadoProfesionalesD[codEstado] ?? 0) + 1;
    }

    if (situacion == "D" && nivel == "N" && edad > 25) {
      municipioCasos[codMunicipio] = (municipioCasos[codMunicipio] ?? 0) + 1;
      ciudadCasos[codCiudad] = (ciudadCasos[codCiudad] ?? 0) + 1;
    }
  }
  print("Resultados por municipio");

  municipioCasos.forEach((municipio, cantidad) {
    print("Municipio $municipio → $cantidad personas (D, N, >25)");
  });

  print("Ciudades con mas del 50% de personas");
  ciudadCasos.forEach((ciudad, casos) {
    int total = ciudadTotal[ciudad]!;
    double porcentaje = casos * 100 / total;
    if (porcentaje > 50) {
      print("Ciudad $ciudad → ${porcentaje.toStringAsFixed(2)}%");
    }
  });

  print(" Estado con mayor % de desempleo");
  String? estadoMax;
  double maxPorcentaje = -1;

  estadoProfesionalesD.forEach((estado, cantPDes) {
    int totalEstado = estadoTotalPersonas[estado]!;
    double porcentaje = cantPDes * 100 / totalEstado;

    if (porcentaje > maxPorcentaje) {
      maxPorcentaje = porcentaje;
      estadoMax = estado;
    }
  });
  if (estadoMax != null) {
    print("Estado $estadoMax = $maxPorcentaje%");
  } else {
    print("No hubo profesionales desempleados registrados.");
  }
}
