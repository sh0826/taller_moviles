// 63. En una encuesta de alumnos se tomaron los siguientes
// datos: edad, sexo, estado civil, y especialidad
//que cursa. La empresa encuestadora, desea
//generar las siguientes estadísticas:
//a. Promedio de edad de las mujeres.
//b. Promedio de edad de los hombres.
//c. Cantidad de hombres y de mujeres encuestados.
//d. Porcentaje de personas para cada uno de
//los tipos de estado civil, respecto al total.
//e. Cantidad de alumnos por especialidad y
//porcentaje que representan.
//f. Porcentaje de mujeres adultas,
//tomando en cuenta que los adultos son
//los que tienen más de 21 años.
//g. Porcentaje de hombres jóvenes, tomando
// en cuenta que estos son los que tienen menos
//de 21 años, pero más de 17.
//h. Cantidad de hombres solteros y cantidad
//de mujeres solteras.
import 'dart:io';

void main() {
  int total = 0;
  int cantMujer = 0;
  int sumaEdadMujer = 0;

  int cantHombre = 0;
  int sumaEdadHombre = 0;

  List<int> estadoCivil = List.filled(4, 0);
  List<int> especialidad = List.filled(5, 0);

  int mujerAdulta = 0;
  int hombreJoven = 0;

  int hombreSoltero = 0;
  int mujerSoltera = 0;

  while (true) {
    print("\nEdad del alumno y escribe 0 para terminar el programa):");
    int edad = int.parse(stdin.readLineSync()!);
    if (edad == 0) break;

    print("Sexo ( escribe 1 para hombre, y 2 para mujer):");
    int sexo = int.parse(stdin.readLineSync()!);
    print(
      "Estado civil ( escribe 1 para soltero, y 2 Casado, 3 Divorciado, 4 Viudo):",
    );
    int eC = int.parse(stdin.readLineSync()!);

    print("Especialidad (1-5):");
    int esp = int.parse(stdin.readLineSync()!);
    total++;
    if (sexo == 2) {
      cantMujer++;
      sumaEdadMujer += edad;
      if (edad > 21) mujerAdulta++;
      if (eC == 1) mujerSoltera++;
    } else {
      cantHombre++;
      sumaEdadHombre += edad;
      if (edad > 17 && edad < 21) hombreJoven++;
      if (eC == 1) hombreSoltero++;
    }

    estadoCivil[eC - 1]++;
    especialidad[esp - 1]++;
  }

  print(
    "Promedio de edad mujeres: ${cantMujer == 0 ? 0 : (sumaEdadMujer / cantMujer).toStringAsFixed(2)}",
  );
  print(
    "Promedio de edad hombres: ${cantHombre == 0 ? 0 : (sumaEdadHombre / cantHombre).toStringAsFixed(2)}",
  );

  print("Cantidad mujeres: $cantMujer");
  print("Cantidad hombres: $cantHombre");
  List<String> nombresEC = ["Soltero", "Casado", "Divorciado", "Viudo"];
  for (int i = 0; i < 4; i++) {
    double porc = total == 0 ? 0 : (estadoCivil[i] / total * 100);
    print("Porcentaje ${nombresEC[i]}: ${porc.toStringAsFixed(2)}%");
  }

  for (int i = 0; i < 5; i++) {
    double porc = total == 0 ? 0 : (especialidad[i] / total * 100);
    print(
      "Especialidad ${i + 1}: ${especialidad[i]} alumnos (${porc.toStringAsFixed(2)}%)",
    );
  }

  double porcMujeresAdultas = cantMujer == 0
      ? 0
      : (mujerAdulta / cantMujer * 100);
  print(
    "Porcentaje mujeres adultas (>21): ${porcMujeresAdultas.toStringAsFixed(2)}%",
  );

  double porcHombresJovenes = cantHombre == 0
      ? 0
      : (hombreJoven / cantHombre * 100);
  print(
    "Porcentaje hombres jóvenes (18-20): ${porcHombresJovenes.toStringAsFixed(2)}%",
  );

  print("Hombres solteros: $hombreSoltero");
  print("Mujeres solteras: $mujerSoltera");
}
