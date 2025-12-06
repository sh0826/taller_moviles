//Un número se dice que es perfecto si la
//suma de sus divisores excepto él mismo es igual a dicho
//número. Ejemplo: 6 es un número perfecto
//ya que sus divisores: 1 + 2 + 3 suman seis. Diseñe un
//algoritmo o programa que imprima los
//tres primeros números perfectos.
void main() {
  int encontrados = 0;
  int numero = 1;
  while (encontrados < 3) {
    int suma = 0;
    for (int i = 1; i < numero; i++) {
      if (numero % i == 0) {
        suma += i;
      }
    }
    if (suma == numero) {
      print("$numero es un numero perfecto");
      encontrados++;
    }
    numero++;
  }
}
