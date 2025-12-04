//Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente desea saber cuánto deberá pagar finalmente por su compra.
import 'dart:io';

void main(){
  print("Ingresa el total de tu comprar: ");
  double compra = double.parse(stdin.readLineSync()!);
  double descuento = (compra * 0.15);
  double total = (compra - descuento);

  print("\n===== RESULTADOS =====");
  print("El valor de tu compra es de $compra por tus productos");
  print("tendras un descuento del $descuento por tus productos");
  print("Esto quiere decir que el total que debes pagar es de $total");
}