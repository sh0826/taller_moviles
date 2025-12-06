/*La bloquera “El Milagro” es una pequeña empresa dedicada a la fabricación de bloques de cemento
para construcción. Actualmente cuenta con una plantilla de obreros, cada uno de los cuales tiene un
número X de unidades a producir por semana. La secretaria registra, cada día, el número de bloques
que produjo cada obrero, para totalizar el sábado lo producido en la semana. De cada obrero se
conoce: nombre y cantidad de unidades producidas por día. Desarrolle un programa, que calcule y
muestre:
• Por obrero:
o Nombre
o Total, producido en la semana.
o Porcentaje que representa la producción semanal, respecto al límite
establecido.
• En general:
o Porcentaje de obreros que alcanzaron o superaron el número de unidades
producidas establecidas.
o Nombre del obrero que más produjo y cantidad producida.
o Promedio de producción de la bloquera en la semana.*/
import 'dart:io';

void main() {
  stdout.write(
    "Ingresa el numero de unidades semanales establecidas por obrero: ",
  );
  int limiteSemanal = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cantidad de obreros: ");
  int cantidadObreros = int.parse(stdin.readLineSync()!);

  int obrerosQueCumplen = 0;
  String nombreMayor = "";
  int mayorProduccion = 0;
  int produccionTotalBloquera = 0;

  for (int i = 1; i <= cantidadObreros; i++) {
    print("Datos del obrero $i");

    stdout.write("Nombre: ");
    String nombre = stdin.readLineSync()!;

    int totalSemanal = 0;

    for (int dia = 1; dia <= 6; dia++) {
      stdout.write("Bloques producidos el día $dia: ");
      int producidos = int.parse(stdin.readLineSync()!);
      totalSemanal += producidos;
    }

    double porcentaje = (totalSemanal * 100) / limiteSemanal;
    produccionTotalBloquera += totalSemanal;

    if (totalSemanal >= limiteSemanal) {
      obrerosQueCumplen++;
    }

    if (totalSemanal > mayorProduccion) {
      mayorProduccion = totalSemanal;
      nombreMayor = nombre;
    }

    print("Obrero: $nombre");
    print("Produccion semanal: $totalSemanal bloques");
    print("Porcentaje respecto al limite: $porcentaje%");
  }
  double porcentajeCumplen = (obrerosQueCumplen * 100) / cantidadObreros;
  double promedioBloquera = produccionTotalBloquera / cantidadObreros;

  print("Obreros que cumplieron o superaron la meta: $porcentajeCumplen%");
  print("Mayor productor: $nombreMayor con $mayorProduccion bloques");
  print("Promedio general de produccion: $promedioBloquera bloques");
}
