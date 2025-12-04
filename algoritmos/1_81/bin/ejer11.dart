//Se conoce de un trabajador su nombre, el número de horas normales trabajadas, el pago de una hora
//normal y el número de horas extras trabajadas. Además, que, cada hora extra se paga 25% más del
//valor de una hora normal. Si se deducen al trabajador sobre el sueldo base 5% del paro forzoso, 2%
//de política habitacional y 7% para caja de ahorro. Si se le asignan 25000 Bolívares por actualización
//académica, 17300 Bolívares por cada hijo y una prima por hogar de 18000 Bolívares. Calcule y
//muestre las asignaciones, las deducciones y el sueldo neto del trabajador.
import 'dart:io';
void main (){
print("Ingresa tu nombre bro: ");
  String? nombre = stdin.readLineSync();

  print("Ingresa horas normales trabajadas: ");
  int horasNormales = int.parse(stdin.readLineSync()!);

  print("Ingresa el pago por hora normal: ");
  double pagoHora = double.parse(stdin.readLineSync()!);

  print("Ingresa horas extras trabajadas: ");
  int horasExtras = int.parse(stdin.readLineSync()!);

  print("¿Cuántos hijos tienes?: ");
  int hijos = int.parse(stdin.readLineSync()!);

  double sueldoBase = (horasNormales*pagoHora);
  double pagoHoraExtra = pagoHora * 1.25;

  double totalExtras = pagoHoraExtra * horasExtras;

  double asignacionAcademica = 25000;
  double asignacionHijos = hijos * 17300;
  double primaHogar = 18000;

  double totalAsignaciones =
      asignacionAcademica + asignacionHijos + primaHogar + totalExtras;

  double deduccionParoForzoso = sueldoBase * 0.05;
  double deduccionPoliticaHabitacional = sueldoBase * 0.02;
  double deduccionCajaAhorro = sueldoBase * 0.07;

  double totalDeducciones = deduccionParoForzoso +
      deduccionPoliticaHabitacional +
      deduccionCajaAhorro;

  double sueldoNeto = sueldoBase + totalAsignaciones - totalDeducciones;

  print("El nombre del trabajador: $nombre");
  print("tu Sueldo inicial es de: $sueldoBase");
  print("Asignaciones : $totalAsignaciones");
  print("Deducciones: $totalDeducciones");
  print("Sueldo neto: $sueldoNeto");
}