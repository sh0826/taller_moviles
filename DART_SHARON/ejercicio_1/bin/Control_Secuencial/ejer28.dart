import 'dart:io';

void main() {
  print("Ingresa el monto total de la compra:");
  double monto = double.parse(stdin.readLineSync()!);
  double propio = 0;
  double banco = 0;
  double credito = 0;
  double intereses = 0;
  if (monto > 500000) {
    propio = monto * 0.55;
    banco = monto * 0.30;
    credito = monto * 0.15;
  } else {
    propio = monto * 0.70;
    banco = 0;
    credito = monto * 0.30;
  }
  intereses = credito * 0.20;
  print("Fondos propios $propio");
  print("Crédito con don fabricante $credito");
  print("Intereses que son del 20%: $intereses");
  print("Préstamo del banco: $banco");
}
