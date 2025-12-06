/*Una empresa proveedora de equipos de computación desea una aplicación que le permita controlar
las ventas y las comisiones de venta en los diferentes estados y ciudades donde posean canales de
comercialización. Para cada Estado pueden existir varias ciudades donde la empresa está presente;
a su vez cada ciudad puede contener canales de comercialización con vendedores de tienda (locales)
y de calle. Cada ciudad tiene asignada una cantidad de unidades de venta esperada. Cada estado,
ciudad, canal de comercialización y vendedor es identificado por códigos numéricos de 2,3,4 y 5
dígitos respectivamente. Los dos últimos dígitos del código de ciudad deben ser igual al código del
estado y los dos primeros dígitos del código de vendedor indican si el mismo es de tienda (valor 11)
o de calle (valor 12). La empresa paga un porcentaje de comisión del 10% para los vendedores de
tienda y un 15% de comisión para los vendedores de calle en función del monto total vendido por
los mismos, es decir, que la aplicación debe pedir por vendedor el total de unidades vendidas y el
monto total correspondiente a esa cantidad. La empresa le solicita que desarrolle un programa que
cubra lo siguiente:
• Calcular e imprimir por ciudad el código, el nombre, total de unidades vendidas, monto total bruto,
monto de comisión por vendedores de tienda, monto de comisión por vendedores de calle, código
del canal de comercialización con mayor monto neto de veta y el código del vendedor con menor
número de unidades vendidas.
• Calcular e imprimir por Estado el código, nombre, mono neto vendido, el porcentaje de ciudades que
no alcanzaron las cantidades esperadas y la cantidad de ciudades que obtuvieron de un 40% a un
60% por encima de la cantidad esperada.*/
import 'dart:io';

class Estado {
  String codigo;
  String nombre;
  List<Ciudad> ciudades = [];

  Estado(this.codigo, this.nombre);
}

class Ciudad {
  String codigo;
  String nombre;
  int unidadesEsperadas;
  List<Canal> canales = [];

  Ciudad(this.codigo, this.nombre, this.unidadesEsperadas);
}

class Canal {
  String codigo;
  List<Vendedor> vendedores = [];

  Canal(this.codigo);
}

class Vendedor {
  String codigo;
  int unidades;
  double monto;
  Vendedor(this.codigo, this.unidades, this.monto);
  bool get esTienda => codigo.startsWith("11");
  bool get esCalle => codigo.startsWith("12");
  double get comision => esTienda ? monto * 0.10 : monto * 0.15;
  double get neto => monto - comision;
}

void main() {
  List<Estado> estados = [];

  print("Ingrese la cantidad de Estados:");
  int cantEstados = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantEstados; i++) {
    print(" Estado ${i + 1}");
    print("Código (2 dígitos):");
    String codE = stdin.readLineSync()!;
    print("Nombre:");
    String nomE = stdin.readLineSync()!;

    Estado estado = Estado(codE, nomE);

    print("Cantidad de ciudades en este estado:");
    int cantCiudades = int.parse(stdin.readLineSync()!);

    for (int j = 0; j < cantCiudades; j++) {
      print("Ciudad ${j + 1}");
      print("Código de ciudad (debe terminar en $codE):");
      String codC = stdin.readLineSync()!;
      print("Nombre de la ciudad:");
      String nomC = stdin.readLineSync()!;
      print("Unidades esperadas para esta ciudad:");
      int esperadas = int.parse(stdin.readLineSync()!);

      Ciudad ciudad = Ciudad(codC, nomC, esperadas);

      print("Cantidad de canales de comercialización:");
      int cantCanales = int.parse(stdin.readLineSync()!);

      for (int k = 0; k < cantCanales; k++) {
        print("Canal ${k + 1}");
        print("Código del canal (4 dígitos):");
        String codCanal = stdin.readLineSync()!;

        Canal canal = Canal(codCanal);

        print("Cantidad de vendedores en este canal:");
        int cantVendedores = int.parse(stdin.readLineSync()!);
        for (int v = 0; v < cantVendedores; v++) {
          print("Vendedor ${v + 1}");
          print("Código (5 dígitos, empieza en 11 o 12):");
          String codV = stdin.readLineSync()!;
          print("Unidades vendidas:");
          int unidades = int.parse(stdin.readLineSync()!);
          print("Monto total vendido:");
          double monto = double.parse(stdin.readLineSync()!);

          canal.vendedores.add(Vendedor(codV, unidades, monto));
        }
        ciudad.canales.add(canal);
      }
      estado.ciudades.add(ciudad);
    }
    estados.add(estado);
  }

  print("Resultados por ciudad:");
  for (var estado in estados) {
    for (var ciudad in estado.ciudades) {
      int totalUnidades = 0;
      double totalBruto = 0;
      double comisionTienda = 0;
      double comisionCalle = 0;

      String canalMayorNeto = "";
      double mayorNeto = -1;

      String vendedorMenorUnidades = "";
      int menorUnidades = 99999;

      for (var canal in ciudad.canales) {
        double netoCanal = 0;

        for (var vend in canal.vendedores) {
          totalUnidades += vend.unidades;
          totalBruto += vend.monto;

          if (vend.esTienda) comisionTienda += vend.comision;
          if (vend.esCalle) comisionCalle += vend.comision;

          netoCanal += vend.neto;

          if (vend.unidades < menorUnidades) {
            menorUnidades = vend.unidades;
            vendedorMenorUnidades = vend.codigo;
          }
        }

        if (netoCanal > mayorNeto) {
          mayorNeto = netoCanal;
          canalMayorNeto = canal.codigo;
        }
      }

      print("\nCiudad ${ciudad.codigo} - ${ciudad.nombre}");
      print("Total unidades vendidas: $totalUnidades");
      print("Monto bruto total: \$$totalBruto");
      print("Comisión vendedores TIENDA: \$$comisionTienda");
      print("Comisión vendedores CALLE: \$$comisionCalle");
      print("Canal con mayor MONTO NETO: $canalMayorNeto");
      print("Vendedor con MENOR unidades vendidas: $vendedorMenorUnidades");
    }
  }
  print("resultado por estado");
  for (var estado in estados) {
    double totalNetoEstado = 0;
    int ciudadesNoAlcanzan = 0;
    int ciudades40a60 = 0;

    for (var ciudad in estado.ciudades) {
      double netoCiudad = 0;
      int unidadesCiudad = 0;

      for (var canal in ciudad.canales) {
        for (var v in canal.vendedores) {
          netoCiudad += v.neto;
          unidadesCiudad += v.unidades;
        }
      }
      totalNetoEstado += netoCiudad;
      if (unidadesCiudad < ciudad.unidadesEsperadas) {
        ciudadesNoAlcanzan++;
      }

      if (unidadesCiudad >= ciudad.unidadesEsperadas * 1.40 &&
          unidadesCiudad <= ciudad.unidadesEsperadas * 1.60) {
        ciudades40a60++;
      }
    }
    double porcNoAlcanzan = (ciudadesNoAlcanzan * 100) / estado.ciudades.length;
    print("\nEstado ${estado.codigo} - ${estado.nombre}");
    print("Monto NETO total vendido: \$$totalNetoEstado");
    print("Porcentaje de ciudades que NO alcanzaron la meta: $porcNoAlcanzan%");
    print("Ciudades entre 40% y 60% sobre la meta: $ciudades40a60");
  }
}
