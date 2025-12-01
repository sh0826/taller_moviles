//Un hombre desea saber cuánto dinero se generará 
//por concepto de intereses sobre la cantidad
//que tiene en inversión en el banco. El decidirá 
//reinvertir los intereses siempre y cuando éstos
//excedan a $7000 y en ese caso, desea saber cuánto 
//dinero tendrá finalmente en su cuenta.
import 'dart:io';

void main() {
  print("Ingresa la cantidad invertida:");
  double capital = double.parse(stdin.readLineSync()!);

  print("Ingresa la tasa de interés que hay en ese momento");
  double tasa = double.parse(stdin.readLineSync()!);

  double interes = capital * tasa;

  print("Intereses generados: $interes");

  if (interes > 7000) {
    double total = capital + interes;

    print("El interes es mayor a 7000, se te reinvierten bro");
    print("Total en la cuenta: $total");
  } else {
    print("Los intereses no son superiores a 7000, no podras reinvertir");
    print("Tu dinero final es de $capital");
  }
}
