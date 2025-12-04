//Calcule y muestre, a un alumno, cuál será su promedio general en las tres materias más difíciles que 
//cursa y cuál será el promedio que obtendrá en cada una de ellas. Estas materias se evalúan como se
//muestra a continuación:
//Matemática Examen 90% y 10% del promedio de tres tareas.
//Física Examen 80% y 20% del promedio de dos tareas.
//Química Examen 85% y 15% del promedio de tres tareas.
import 'dart:io';

void main(){
  print("---------PROMEDIO MATESS----------");
  print("Primero iniciaremos con tu promedio en la materia de MATEMATICAS por favor ingresa la nota de tu examen final");
  double examenM = double.parse(stdin.readLineSync()!);
  print("Ahora ingresa las tres notas de tus tareas usando punto y espacio entre ellas");
  List<double> tareasM = stdin.readLineSync()!
  .split(" ") //una lista de strings separados por espacio
  .map(double.parse) //.map() aplica una función a cada elemento de la lista. double.parse convierte cada string a número decimal.
  .toList(); //crea un array

  double promedioT = (tareasM[0]+tareasM[1]+tareasM[2]/3);
  double promedioFinal = examenM * 0.90 + promedioT * 0.10;
  print("Tu nota final de matematicas fue $promedioFinal");

  print("---------PROMEDIO FISICAA----------");
  print("Primero iniciaremos con tu promedio en la materia de FÍSICA por favor ingresa la nota de tu examen final");
  double examenF = double.parse(stdin.readLineSync()!);
  print("Ahora ingresa las 2 notas de tus tareas usando punto y espacio entre ellas");
  List<double> tareasF = stdin.readLineSync()!
  .split(" ")
  .map(double.parse)
  .toList();
  double promedioT1 = (tareasF[0]+ tareasF[1]/2);
  double promedioF1 = examenF * 0.80 + promedioT1 *0.20;
  print("Tu nota final de física fue $promedioF1");

  print("--------PROMEDIO QUIMICAA---------");
  print("Primero iniciaremos con tu promedio en la materia de QUIMICA por favor ingresa la nota de tu examen final");
  double examenQ = double.parse(stdin.readLineSync()!);
    print("Ahora ingresa las 3 notas de tus tareas usando punto y espacio entre ellas");
  List<double> tareasQ = stdin.readLineSync()!
  .split(" ")
  .map(double.parse)
  .toList();
  double promedioT2 = (tareasQ[0]+tareasQ[1]+tareasQ[2]/3);
  double promedioF3 = (examenQ * 0.85 + promedioT2*0.15);
  print("Tu nota final de física fue $promedioF3");
  }