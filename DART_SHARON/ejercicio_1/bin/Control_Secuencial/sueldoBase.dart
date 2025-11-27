// Un vendedor recibe un sueldo base, más un 10% extra por comisiones de sus ventas. El vendedor desea saber cuánto dinero obtendrá por concepto de comisiones por las tres ventas que realizó en el mes y el total que recibirá tomando en cuenta su sueldo base y sus comisiones.
import 'dart:io';

void main() {

  print("Ingresa tu sueldo base:");
  double sueldoBase = double.parse(stdin.readLineSync()!);

  print("Ingresa el monto de la venta 1:");
  double venta1 = double.parse(stdin.readLineSync()!);

  print("Ingresa el monto de la venta 2:");
  double venta2 = double.parse(stdin.readLineSync()!);

  print("Ingresa el monto de la venta 3:");
  double venta3 = double.parse(stdin.readLineSync()!);

  double comision = (venta1 + venta2 + venta3) * 0.1;

  double total = sueldoBase + comision;

  print("\n===== RESULTADOS =====");
  print("Comisión total: \$${comision}");
  print("Total a recibir: \$${total}");
}
