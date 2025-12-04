//Un alumno desea saber cuál será su calificación final en la materia de computación. 
//Dicha calificación se compone de los siguientes porcentajes: 55% del promedio de sus 
//tres calificaciones parciales, 30% de la calificación del examen final y 
//15% de la calificación de un trabajo final.

import 'dart:io';

void main(){
print("Ingresa tu primera calificacion del parcial: ");
double parcial1 = double.parse(stdin.readLineSync()!);
print("Ingresa tu segunda calificacion del parcial: ");
double parcial2 = double.parse(stdin.readLineSync()!);
print("Ingresa tu tercera calificacion del parcial: ");
double parcial3 = double.parse(stdin.readLineSync()!);
print("Ingresa tu calificacion del examen final: ");
double examenFinal = double.parse(stdin.readLineSync()!);
print("Ingresa tu calificacion del trabajo final: ");
double trabajoFinal = double.parse(stdin.readLineSync()!);

double calificacionParciales = (parcial1 + parcial2 + parcial3)/3;
double promedioParciales = calificacionParciales * 0.55;
double porcentajeExamenFinal = examenFinal * 0.30;
double porcentajeTrabajoFinal = trabajoFinal * 0.15;
double calificacionFinal = promedioParciales + porcentajeExamenFinal + porcentajeTrabajoFinal;

print("\n===== Resultado de tu calificacion bro =====");
print("tu calificacion final de computacion es de: $calificacionFinal");  }
