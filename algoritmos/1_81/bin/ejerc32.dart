//Dados como datos los valores enteros P y Q, determine 
//si los mismos satisfacen la siguiente
//xpresión: P3 + Q4 – 2*P2 > 680. En caso afirmativo
//debe mostrar los valores de P y Q, de lo contrario
//muestre un mensaje alusivo al hecho.
import 'dart:io';

void main() {
  
  print("Ingresa el valor de p:");

  int P = int.parse(stdin.readLineSync()!);
  print("Ingresa el valor de q:");
  int Q = int.parse(stdin.readLineSync()!);

  int p1 = P * P * P;

  int q1 = Q * Q * Q * Q;
  
  int ultimo = 2 * (P * P);

  int resultado = p1 + q1 - ultimo;
  if (resultado > 680) {
    print("si se cumple porque con p = $P y q = $Q, el resultado es $resultado, que es mayor que 680");
  } else {
    print("No se cumple porque con p = $P y q = $Q, el resultado es $resultado, que es menor que 680");
  }
}
