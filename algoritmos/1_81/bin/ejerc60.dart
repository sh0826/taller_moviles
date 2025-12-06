//Una empresa está interesada en automatizar el
//proceso anual de cálculo de intereses de mora y de
//descuentos en el cobro de las facturas de los
//clientes a crédito. Para ello la empresa utiliza los
//siguientes criterios:
//a. Si la factura se paga se paga 60
//días después de haber realizado la compra se cobra un
//interés de mora del 8% sobre el monto de la factura.
//b. Si la factura se paga entre 31 y 59 días
//después de haber realizado la compra se cobra un
//interés de mora del 6% sobre el monto de la factura.
//c. Si la factura se paga antes de los 15 días
//de haber realizado la compra se hace un descuento
//del 2% sobre el monto de la factura.
//Realice un algoritmo que lea los datos de
//as facturas por pantalla e imprima para cada factura el
//número, nombre del cliente, el monto a cancelar
// el monto a pagar por interés de mora y monto
//descontado por pronto pago.
//Los datos de cada factura son: Número de
//factura (num-fac), nombre del
//cliente (num-cli), monto de
//la factura (mon-fac), fecha de compra
//(fec-com) y fecha de pago (fec-pag).
import 'dart:io';

void main() {
  String seguir = "s";

  while (seguir == "s") {
    print("Numero de la factura bro:");
    String numFac = stdin.readLineSync()!;
    print("Nombre de tu cliente:");
    String cliente = stdin.readLineSync()!;
    print("cantidad de la factura:");
    double monto = double.parse(stdin.readLineSync()!);
    print("Dias que pasaron entre compra y pago:");
    int dias = int.parse(stdin.readLineSync()!);
    double interes = 0;
    double descuento = 0;

    if (dias >= 60) {
      interes = monto * 0.08;
    } else if (dias >= 31 && dias <= 59) {
      interes = monto * 0.06;
    } else if (dias < 15) {
      descuento = monto * 0.02;
    }

    double totalPagar = monto + interes - descuento;

    print("Factura: $numFac");
    print("Cliente: $cliente");
    print("Monto original: $monto");
    print("Interés de mora: $interes");
    print("Descuento por pronto pago: $descuento");
    print("Monto total a si cancelas: $totalPagar");

    print("¿Desea procesar otra factura? (s/n)");
    seguir = stdin.readLineSync()!;
  }
}
