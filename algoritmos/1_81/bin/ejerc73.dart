/*Un banco está interesado en diseñar un software que le permita calcular y generar ciertos listados
sobre las deudas de sus clientes a créditos. El algoritmo debe procesar para cada estado y sus
agencias los clientes con pagarés pendientes a una fecha (dd/mm/aaaa) dad y generar los recibos
correspondientes para ser enviados a los clientes. Cada estado, agencia y cliente es identificado por
un código. Los pagarés tienen una fecha de vencimiento (dd/mm/aaaa), un monto a pagar y un
número que lo identifica; un cliente debe tener más que un pagaré.
Se quiere un algoritmo o programa que permita:
• Imprimir un recibo para cada cliente cuyo encabezado es su código, nombre, dirección,
código de estado y código de agencia. El detalle del recibo contendrá un número del pagaré,
la fecha de vencimiento y el monto del pagaré. Al final del recibo debe colocar la cantidad
de pagares pendientes y el monto total pendiente.
• Imprimir por agencia su código, estado, la cantidad de clientes con pagares pendientes,
monto total adeudado y el código de cliente con mayor deuda.

1
5

• Imprimir por estado su código, el monto total adeudado en el estado y el código de agencia
con menor y mayor monto adeudado.
• Calcular e imprimir el monto promedio adeudado en razón de los montos máximos
adeudados por las agencias a nivel nacional.

NOTA: Los cálculos se deben realizar en función de una fecha dada. No se podrán utilizar vectores
ni matrices.*/
import 'dart:io';

void main() {
  print("Ingresa la fecha actual (dd/mm/aaaa):");
  String fechaActual = stdin.readLineSync()!;
  double sumaMaximosAgencias = 0;
  int cantidadAgencias = 0;
  String continuarEstado = "s";

  while (continuarEstado.toLowerCase() == "s") {
    print("Estado");
    print("Codigo del estado:");
    String codEstado = stdin.readLineSync()!;

    double totalDeudaEstado = 0;
    double mayorDeudaAgencia = 0;
    double menorDeudaAgencia = 999999;
    String codAgenciaMayor = "";
    String codAgenciaMenor = "";

    String continuarAgencia = "s";

    while (continuarAgencia.toLowerCase() == "s") {
      print("Agencia");
      print("Codigo agencia:");
      String codAgencia = stdin.readLineSync()!;

      int totalClientesAgencia = 0;
      double totalDeudaAgencia = 0;
      double mayorDeudaCliente = 0;
      String codClienteMayorDeuda = "";

      String continuarCliente = "s";

      while (continuarCliente.toLowerCase() == "s") {
        print("Cliente");
        print("Codigo cliente:");
        String codCliente = stdin.readLineSync()!;
        print("Nombre:");
        String nombreCliente = stdin.readLineSync()!;
        print("Direccion:");
        String direccion = stdin.readLineSync()!;
        int cantPagaresCliente = 0;
        double totalMontoCliente = 0;
        String continuarPagare = "s";

        while (continuarPagare.toLowerCase() == "s") {
          print("Numero del pagare:");
          String numPagare = stdin.readLineSync()!;

          print("Fecha de vencimiento (dd/mm/aaaa):");
          String fechaVenc = stdin.readLineSync()!;

          print("Monto del pagare:");
          double monto = double.parse(stdin.readLineSync()!);

          if (fechaVenc.compareTo(fechaActual) < 0) {
            print("Pagaré pendiente → Se agrega al recibo.");
            cantPagaresCliente++;
            totalMontoCliente += monto;
            print("Pagaré: $numPagare - Fecha: $fechaVenc - Monto: $monto");
          } else {
            print("Pagaré NO vencido → Se ignora.");
          }

          print("Agregar otro pagaré? (s/n)");
          continuarPagare = stdin.readLineSync()!;
        }
        if (cantPagaresCliente > 0) {
          print("\n---- RECIBO DEL CLIENTE ----");
          print("Cliente: $codCliente - $nombreCliente");
          print("Dirección: $direccion");
          print("Estado: $codEstado - Agencia: $codAgencia");
          print("Cantidad pagarés: $cantPagaresCliente");
          print("Monto total pendiente: $totalMontoCliente");
          totalClientesAgencia++;
          totalDeudaAgencia += totalMontoCliente;

          if (totalMontoCliente > mayorDeudaCliente) {
            mayorDeudaCliente = totalMontoCliente;
            codClienteMayorDeuda = codCliente;
          }
        }
        print("Ingresar otro cliente en esta agencia? (s/n)");
        continuarCliente = stdin.readLineSync()!;
      }
      print("Agencia: $codAgencia - Estado: $codEstado");
      print("Clientes con pagarés pendientes: $totalClientesAgencia");
      print("Monto total adeudado: $totalDeudaAgencia");
      print("Cliente con mayor deuda: $codClienteMayorDeuda");

      totalDeudaEstado += totalDeudaAgencia;
      if (totalDeudaAgencia > mayorDeudaAgencia) {
        mayorDeudaAgencia = totalDeudaAgencia;
        codAgenciaMayor = codAgencia;
      }
      if (totalDeudaAgencia < menorDeudaAgencia) {
        menorDeudaAgencia = totalDeudaAgencia;
        codAgenciaMenor = codAgencia;
      }
      sumaMaximosAgencias += totalDeudaAgencia;
      cantidadAgencias++;
      print("Ingresar otra agencia para este estado? (s/n)");
      continuarAgencia = stdin.readLineSync()!;
    }
    print("Estado: $codEstado");
    print("Monto total adeudado: $totalDeudaEstado");
    print("Agencia con menor deuda: $codAgenciaMenor");
    print("Agencia con mayor deuda: $codAgenciaMayor");
    print("Quieres volver a poner otro estado? (s/n)");
    continuarEstado = stdin.readLineSync()!;
  }
  double promedio = sumaMaximosAgencias / cantidadAgencias;
  print("Promedio nacional");
  print("Promedio adeudado de todas las agencias: $promedio");
}
