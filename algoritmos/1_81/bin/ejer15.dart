//Calcular y mostrar el monto total a pagar en un mes de 
//luz eléctrica, teniendo como dato la lectura 
//anterior, la lectura actual y el costo por kilovatio.

import 'dart:io';

void main(List<String> args) {
  print("Ingresa cual fue la lectura del mes anterior de tu recibo de luz");
  double lecturaAnterior = double.parse(stdin.readLineSync()!);  
  print("Ingresa cual fue la lectura de este mes de tu recibo de luz");
  double lecturaActual = double.parse(stdin.readLineSync()!); 
  double costoKilovatio = 17;
  double montoTotal = (lecturaActual*costoKilovatio);
  double montoAnterior = (lecturaAnterior*costoKilovatio);
  print("El precio de tu recibo de luz del mes anterior fue de $montoAnterior");
  print("El precio de tu recibo de luz de este mes fue de $montoTotal");
}