/*Se desea obtener el promedio de g grupos que están en un mismo año escolar, siendo que cada
grupo puede tener n alumnos que cada alumno puede llevar m materias y que en todas las materias
se promedian tres calificaciones para obtener el promedio de la materia. Lo que se desea es mostrar
el promedio de los grupos, el promedio de cada grupo y el promedio de cada alumno.*/
import 'dart:io';

void main() {
  stdout.write("Ingrese la cantidad de grupos: ");
  int g = int.parse(stdin.readLineSync()!);
  double sumaPromediosDeGrupos = 0;
  for (int grupo = 1; grupo <= g; grupo++) {
    print("Grupo: $grupo");

    stdout.write("Ingrese la cantidad de alumnos del grupo $grupo: ");
    int n = int.parse(stdin.readLineSync()!);

    stdout.write("Ingresa la cantidad de materias por alumno: ");
    int m = int.parse(stdin.readLineSync()!);
    double sumaPromGrupo = 0;
    for (int alumno = 1; alumno <= n; alumno++) {
      print("\nAlumno $alumno del Grupo $grupo");
      double sumaPromAlumno = 0;
      for (int materia = 1; materia <= m; materia++) {
        print("Materia $materia:");
        double sumaCalifMateria = 0;
        for (int c = 1; c <= 3; c++) {
          stdout.write("Ingrese calificación $c: ");
          double cal = double.parse(stdin.readLineSync()!);
          sumaCalifMateria += cal;
        }
        double promedioMateria = sumaCalifMateria / 3;
        print("Promedio de la materia $materia: $promedioMateria");
        sumaPromAlumno += promedioMateria;
      }
      double promedioAlumno = sumaPromAlumno / m;
      print("Promedio del alumno $alumno: $promedioAlumno");
      sumaPromGrupo += promedioAlumno;
    }
    double promedioGrupo = sumaPromGrupo / n;
    print("Promedio del GRUPO $grupo: $promedioGrupo");
    sumaPromediosDeGrupos += promedioGrupo;
  }
  double promedioGeneral = sumaPromediosDeGrupos / g;
  print("El promedio de todos los grupos fue: $promedioGeneral");
}
