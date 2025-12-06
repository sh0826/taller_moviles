/*Una aerolínea está interesada en diseñar un software que le permita calcular y acumular los montos
a pagar por equipaje para cada uno de sus vuelos. El algoritmo debe procesar todos los vuelos del
día con sus respectivos pasajeros y maletas, las cuales están identificadas por un código. Las tarifas
por kilogramos se muestran en la siguiente tabla:
PESOS TARIFA POR Kgs.
1 a 3 Kgs. 0
3.01 a 6 Kgs 600
6.01 a 9 Kgs 1200
9.01 a 12 Kgs 1500
12.01 a 15 Kgs 2000
más de 15 Kgs. 2500

Se quiere un algoritmo en seudocódigo o diagrama estructurado que permita:

i. Imprimir por pasajero el número de vuelo, el código de abordo, el nombre, el total
de kilogramos del equipaje con su respectivo monto a pagar.
ii. Imprimir por pasajero el número de vuelo, el nombre y el código de la maleta con
mayor peso.

1
3

iii. Imprimir para cada vuelo el número de vuelo, el código de abordo, el nombre y el
peso total para el pasajero con mayor y menor peso total del equipaje.
iv. Imprimir para cada vuelo el número de vuelo y el monto total cancelado por
equipaje.
v. Imprimir el porcentaje de pasajeros que no pagaron por equipaje.

NOTA: No se podrán utilizar vectores ni matrices.*/
import 'dart:io';

void main() {
  print("¿Cuántos vuelos quieres procesar?");
  int vuelos = int.parse(stdin.readLineSync()!);

  for (int v = 1; v <= vuelos; v++) {
    print("\nVueloo $v ");

    print("Número del vuelo:");
    String numVuelo = stdin.readLineSync()!;

    print("¿Cuántos pasajeros tiene este vuelo?");
    int cantPasajeros = int.parse(stdin.readLineSync()!);

    double totalPagadoVuelo = 0;
    int pasajerosSinPago = 0;

    bool esPrimerPasajero = true;
    double mayorPeso = 0;
    double menorPeso = 0;
    String nombreMayor = "";
    String nombreMenor = "";

    for (int p = 1; p <= cantPasajeros; p++) {
      print("Pasajero $p");

      print("Nombre:");
      String nombre = stdin.readLineSync()!;

      print("Código de abordo:");
      String codigoAbordo = stdin.readLineSync()!;

      print("¿Cuántas maletas tiene?");
      int maletas = int.parse(stdin.readLineSync()!);

      double totalPesoPasajero = 0;
      double totalPagoPasajero = 0;

      double maletaMayorPeso = 0;
      String maletaMayorCodigo = "";

      for (int m = 1; m <= maletas; m++) {
        print("\nMaleta $m - Código:");
        String codMaleta = stdin.readLineSync()!;

        print("Peso de la maleta:");
        double peso = double.parse(stdin.readLineSync()!);

        totalPesoPasajero += peso;

        if (peso > maletaMayorPeso) {
          maletaMayorPeso = peso;
          maletaMayorCodigo = codMaleta;
        }

        double tarifa = 0;
        if (peso <= 3)
          tarifa = 0;
        else if (peso <= 6)
          tarifa = 600;
        else if (peso <= 9)
          tarifa = 1200;
        else if (peso <= 12)
          tarifa = 1500;
        else if (peso <= 15)
          tarifa = 2000;
        else
          tarifa = 2500;

        totalPagoPasajero += tarifa;
      }
      print("\n=== Datos del pasajero ===");
      print("Vuelo: $numVuelo");
      print("Nombre: $nombre");
      print("Código abordo: $codigoAbordo");
      print("Peso total equipaje: $totalPesoPasajero");
      print("Monto a pagar: $totalPagoPasajero");
      print("Maleta más pesada: $maletaMayorCodigo con $maletaMayorPeso kg");

      if (esPrimerPasajero) {
        mayorPeso = totalPesoPasajero;
        menorPeso = totalPesoPasajero;
        nombreMayor = nombre;
        nombreMenor = nombre;
        esPrimerPasajero = false;
      } else {
        if (totalPesoPasajero > mayorPeso) {
          mayorPeso = totalPesoPasajero;
          nombreMayor = nombre;
        }
        if (totalPesoPasajero < menorPeso) {
          menorPeso = totalPesoPasajero;
          nombreMenor = nombre;
        }
      }
      totalPagadoVuelo += totalPagoPasajero;
      if (totalPagoPasajero == 0) pasajerosSinPago++;
    }
    print("\n Resultado del vuelo $numVuelo ");
    print("Pasajero con MAYOR equipaje: $nombreMayor ($mayorPeso kg)");
    print("Pasajero con MENOR equipaje: $nombreMenor ($menorPeso kg)");
    print("Monto total pagado por equipaje en el vuelo: $totalPagadoVuelo");

    double porcentaje = (pasajerosSinPago * 100) / cantPasajeros;
    print("Porcentaje de pasajeros sin pago: $porcentaje%");
  }
}
