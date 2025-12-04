import 'dart:io';

void main() {
  print("ingresa A:");
  double A = double.parse(stdin.readLineSync()!);

  print("ahora B:");
  double B = double.parse(stdin.readLineSync()!);

  print("ahora C:");
  double C = double.parse(stdin.readLineSync()!);

  print("finaliza con D:");
  double D = double.parse(stdin.readLineSync()!);

  double resultado;
  if (D == 0) {
    resultado = (A - C) * (A - C);
  } else {
    resultado = (A - B) * (A - B) * (A - B) / D;
  }
  print("Resultado: $resultado");
}
