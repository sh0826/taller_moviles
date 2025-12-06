//Desarrolle un programa que capture las notas
//del primer parcial de Matemática, Programación
//e inglés de un grupo indeterminado de alumnos
//y calcule e imprima:
//a. Nota menor de Programación.
//b. Porcentaje de alumnos que no presentaron
//el examen de inglés, respecto a los que sí presentaron.
//c. Número de alumnos que aprobaron todas las materias.
//d. Promedio general en Programación.
//e. Porcentaje de alumnos que reprobaron Matemática,
//respecto al total de alumnos que
//presentaron el examen de matemática.
import 'dart:io';

void main() {
  double menorProg = 9999;
  int noIngles = 0;
  int siIngles = 0;

  int aprobaronTodas = 0;

  double sumaProg = 0;
  int totalAlumnos = 0;

  int reproMat = 0;
  int presentaronMat = 0;

  String seguir = "s";

  while (seguir == "s") {
    print("nota de Matematica:");
    double mat = double.parse(stdin.readLineSync()!);

    print("nota de Programacion:");
    double prog = double.parse(stdin.readLineSync()!);

    print("nota de ingles (-1 si no presento):");
    double ing = double.parse(stdin.readLineSync()!);

    totalAlumnos++;

    if (prog < menorProg) menorProg = prog;

    if (ing == -1)
      noIngles++;
    else
      siIngles++;

    if (mat >= 10 && prog >= 10 && ing >= 10) aprobaronTodas++;

    sumaProg += prog;

    if (mat != -1) {
      presentaronMat++;
      if (mat < 10) reproMat++;
    }
  }

  print("Menor nota de Programación: $menorProg");
  print(
    "Porcentaje NO presentaron inglés: ${(noIngles / (siIngles == 0 ? 1 : siIngles) * 100)}%",
  );
  print("Aprobaron todas: $aprobaronTodas");
  print("Promedio Programación: ${(sumaProg / totalAlumnos)}");
  print(
    "Porcentaje reprobados Matemática: ${(reproMat / (presentaronMat == 0 ? 1 : presentaronMat) * 100)}%",
  );
}
