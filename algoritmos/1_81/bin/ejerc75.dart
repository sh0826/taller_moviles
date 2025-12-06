/*Cinco miembros de un club contra la obesidad desean saber cuánto han bajado o subido de peso
desde la última vez que se reunieron. Para esto se debe realizar un ritual de pesaje en donde cada
uno se pesa en diez básculas distintas para así tener el promedio más exacto de su peso. Si existe
diferencia positiva entre este promedio de peso y el peso de la última vez que se reunieron, significa
que subieron de peso. Pero si la diferencia es negativa, significa que bajaron. Lo que el problema
requiere es que por cada persona se imprima un mensaje que diga SUBIO ó BAJO y la cantidad de
kilos que subió o bajó de peso.*/
import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) {
    print("Miembro $i");

    stdout.write("Ingresa el peso anterior del miembro $i: ");
    double pesoAnterior = double.parse(stdin.readLineSync()!);

    double sumaPesos = 0;
    for (int j = 1; j <= 10; j++) {
      stdout.write("Peso en bascula $j: ");
      double peso = double.parse(stdin.readLineSync()!);
      sumaPesos += peso;
    }
    double promedio = sumaPesos / 10;
    double diferencia = promedio - pesoAnterior;
    print("Resultado del miembro $i:");
    print("Peso anterior: $pesoAnterior kg");
    print("Peso promedio actual: $promedio kg");

    if (diferencia > 0) {
      print("Subio: $diferencia kg");
    } else if (diferencia < 0) {
      print("Bajo bro $diferencia kg");
    } else {
      print("Se quedo el mismo peso jiji");
    }
  }
}
