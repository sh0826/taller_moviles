//Para calcular la raíz cuadrada de un número N
//positivo, Herón de Alejandría ideó la siguiente fórmula:
//RN = (X + N / X) /2, donde RN es la raíz de N
//y se calcula hasta cuando la diferencia entre X y RN es
//menor que 0.000001; tomando X el valor de RN
//en cada iteración. Se debe leer el número y asegurar
//que es positivo. Se puede iniciar el cálculo
//dándole a X el valor 0.1.
import 'dart:io';

void main() {
  print("Ingresa un numero positivo:");
  double N = double.parse(stdin.readLineSync()!);
  if (N <= 0) {
    print("El numero tiene que ser positivo.");
    return;
  }
  double X = 0.1;
  double RN = 0.0;
  while (true) {
    RN = (X + N / X) / 2;
    if ((X - RN).abs() < 0.000001) {
      break;
    }
    X = RN;
  }
  print("La raiz mas cercana de $N es: $RN");
}
