//Dados como datos el precio final pagado por un producto y su precio de venta al 
//público (PVP), se requiere que calcule y muestre el 
//porcentaje de descuento que le ha sido aplicado.
import 'dart:io';

void main(){
  print("Ingresa el precio final pagado del producto: ");
  double precioF = double.parse(stdin.readLineSync()!);
  print("Ingresa el precio de venta al publico de ese producto: ");
  double precioP = double.parse(stdin.readLineSync()!);
  double descuento = ((precioP - precioF) / precioP) * 100;
  print("El descuento que se le hace a tu producto sera del: $descuento %");
}