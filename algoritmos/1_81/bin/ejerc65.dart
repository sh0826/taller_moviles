//Calcular el sueldo neto de los trabajadores de
//una compañía sabiendo que este depende de los
//siguientes datos
//• sueldo básico mensual 100000 si es obrero
//• sueldo básico mensual 165500 si es administrativo
//• sueldo básico mensual 250000 si es ejecutivo Las
//asignaciones y deducciones son:
//• aporte por cada hijo hasta 5 hijos
//10% del sueldo básico
//• aporte por asistencia superior al 95% de los
//30 días del mes 5% del sueldo básico.
//• Deducción del 10% del sueldo básico
//para la caja de ahorros.
//• Deducción para el seguro social 2% del sueldo básico
//Por cada empleado debe salir un registro con
// el nombre y cédula, sueldo básico, aporte a la Caja de
//Ahorros, seguro social y sueldo neto.
import 'dart:io';

void main() {
  print("Nombre del trabajador:");
  String nombre = stdin.readLineSync()!;
  print("Cedula del trabajador:");
  String cedula = stdin.readLineSync()!;
  print("Tipo de empleado (1=Obrero, 2=Administrativo, 3=Ejecutivo):");
  int tipo = int.parse(stdin.readLineSync()!);
  print("Numero de hijos:");
  int hijos = int.parse(stdin.readLineSync()!);
  print("Dias asistidos en el mes recuerda que es de 0 a 30):");
  int dias = int.parse(stdin.readLineSync()!);

  double sueldoBasico = 0;
  if (tipo == 1) sueldoBasico = 100000;
  if (tipo == 2) sueldoBasico = 165500;
  if (tipo == 3) sueldoBasico = 250000;
  if (hijos > 5) hijos = 5;
  double asignacionHijos = hijos * (sueldoBasico * 0.10);
  double asignacionAsistencia = (dias >= 29) ? sueldoBasico * 0.05 : 0;
  double dedCaja = sueldoBasico * 0.10;
  double dedSeguro = sueldoBasico * 0.02;

  double sueldoNeto =
      sueldoBasico +
      asignacionHijos +
      asignacionAsistencia -
      dedCaja -
      dedSeguro;

  print("Nombre: $nombre");
  print("Cedula: $cedula");
  print("Sueldo básico: $sueldoBasico");
  print("Caja de ahorros (10%): $dedCaja");
  print("Seguro social (2%): $dedSeguro");
  print("Sueldo neto: $sueldoNeto");
}
