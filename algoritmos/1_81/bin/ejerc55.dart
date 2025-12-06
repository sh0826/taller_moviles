//Calcule e imprima el número de términos
//necesarios para que el valor de la
//siguiente sumatoria se
//aproxime los más cercanamente a 1000
//sin que lo exceda: ∑((k∧2+1)/k), donde k=1,2,3,4,...

void main() {
  double suma = 0;
  int k = 1;

  while (suma + ((k * k + 1) / k) <= 1000) {
    suma += (k * k + 1) / k;
    k++;
  }

  print("Número de términos: ${k - 1}");
  print("Suma: $suma");
}
