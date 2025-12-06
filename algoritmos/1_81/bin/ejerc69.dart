//Dos números A y B son amigos, cuando la
//suma de los divisores menores
//que A es igual a B, al mismo
//tiempo cuando la suma de los
//divisores menores que B es igual a A.
// Los dos menores números amigos
//son 220 y 284, debido a que:
//a. divisores de 220 1+2+4+5+10+11+20+22+44+45+110 = 284
//b. divisores de 284 1+2+4+71+142 = 220
//c. los siguientes pares de amigos son:
// 1184 y 1210; 2620 y 2924; 5020 y 5564, etc.

void main() {
  int sumaDivisores(int n) {
    int suma = 0;
    for (int i = 1; i < n; i++) {
      if (n % i == 0) {
        suma += i;
      }
    }
    return suma;
  }

  int encontrados = 0;
  int numero = 1;
  while (encontrados < 5) {
    int sumaA = sumaDivisores(numero);
    int sumaB = sumaDivisores(sumaA);
    if (sumaB == numero && numero != sumaA) {
      print("Par amigo encontrado: $numero y $sumaA");
      encontrados++;
    }
    numero++;
  }
}
