//Efectuar la división de dos números enteros,
//utilizando el método de las restas sucesivas. Observe
//el siguiente ejemplo:
//a. Dividir 8 entre 2
//b. 8 – 2 = 6
//c. 6 – 2 = 4 número de restas efectuadas
//es igual al cociente =4
//d. 4 – 2 = 2
//e. 2 – 2 = 0 resto de la división
void main() {
  int dividendo = 8;
  int divisor = 2;

  int cociente = 0;
  int resto = dividendo;

  while (resto >= divisor) {
    resto = resto - divisor;
    cociente++;
  }

  print("Cociente: $cociente");
  print("Resto: $resto");
}
