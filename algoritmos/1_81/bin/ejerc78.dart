/*Una empresa comercializadora de productos cerámicos con sucursales y puntos de venta a nivel
nacional está interesada en desarrollar un software que le permita controlar sus ventas. Cada
sucursal posee un monto de venta esperado el cual debe cubrir y tiene asignados varios puntos de
venta, los cuales debe controlar. La sucursal es identificada con un código entero positivo de dos
dígitos y los puntos de venta por un código entero positivo de cuatro dígitos, en el cual los dos
primeros dígitos corresponden al código de la sucursal a la cual reporta. Los productos
comercializados por la empresa son identificados por un código que va del 1 al 3, el PVP de cada uno
es dado como constante y todos los puntos de venta, venden los 3 tipos de productos. El 10% de las
ventas brutas de cada punto de venta es repartido entre los vendedores de la misma en forma
equitativa como comisión de venta. Se requiere que desarrolle un programa que responda a lo
siguiente:
• Imprimir por punto de venta: su código, las unidades vendidas, el monto neto de la venta,
el monto pagado por comisión a los vendedores y el código del producto con menor número
de unidades vendidas.
• Calcular y mostrar por sucursal su código, descripción, el monto total vendido, el porcentaje
de venta alcanzado en función de lo esperado y el código y monto del punto de venta que
más pagó por comisión de venta.
• Calcular y mostrar el porcentaje de las sucursales que alcanzaron el monto de venta
esperado.*/
import 'dart:io';

void main() {
  const double PVP1 = 12000;
  const double PVP2 = 18500;
  const double PVP3 = 23000;

  print("Cantidad de sucursales a procesar:");
  int cantSuc = int.parse(stdin.readLineSync()!);
  int sucursalesQueCumplenMeta = 0;
  for (int s = 1; s <= cantSuc; s++) {
    print("Sucursal $s");
    stdout.write("Código de la sucursal (2 dígitos): ");
    int codSucursal = int.parse(stdin.readLineSync()!);

    stdout.write("Monto de venta esperado por la sucursal: ");
    double metaSucursal = double.parse(stdin.readLineSync()!);
    double totalVendidoSucursal = 0;
    double mayorComisionPV = -1;
    int codPV_mayorComision = 0;

    stdout.write("Cantidad de puntos de venta en la sucursal: ");
    int cantPV = int.parse(stdin.readLineSync()!);
    for (int pv = 1; pv <= cantPV; pv++) {
      print(" Punto de Venta $pv ");

      stdout.write("Código del punto de venta (4 dígitos): ");
      int codPV = int.parse(stdin.readLineSync()!);
      int u1, u2, u3;

      stdout.write("Unidades vendidas del producto 1: ");
      u1 = int.parse(stdin.readLineSync()!);

      stdout.write("Unidades vendidas del producto 2: ");
      u2 = int.parse(stdin.readLineSync()!);

      stdout.write("Unidades vendidas del producto 3: ");
      u3 = int.parse(stdin.readLineSync()!);
      double bruto = (u1 * PVP1) + (u2 * PVP2) + (u3 * PVP3);
      double comision = bruto * 0.10;
      double neto = bruto - comision;
      int menorProd = 1;
      int menorUnidades = u1;

      if (u2 < menorUnidades) {
        menorUnidades = u2;
        menorProd = 2;
      }
      if (u3 < menorUnidades) {
        menorUnidades = u3;
        menorProd = 3;
      }
      print("\nPUNTO DE VENTA:");
      print("Código: $codPV");
      print("Unidades vendidas = P1:$u1  P2:$u2  P3:$u3");
      print("Monto neto de venta: $neto");
      print("Monto pagado por comisión: $comision");
      print("Producto con menos unidades vendidas: $menorProd");

      totalVendidoSucursal += bruto;

      if (comision > mayorComisionPV) {
        mayorComisionPV = comision;
        codPV_mayorComision = codPV;
      }
    }
    double porcentaje = (totalVendidoSucursal / metaSucursal) * 100;
    print("El resultado DE LA SUCURSAL fue $codSucursal ");
    print("Total Vendido: $totalVendidoSucursal");
    print("Porcentaje alcanzado: ${porcentaje.toStringAsFixed(2)}%");
    print("Punto de venta con MAYOR comisión: $codPV_mayorComision");
    print("Monto de esa comisión: $mayorComisionPV\n");
    if (totalVendidoSucursal >= metaSucursal) {
      sucursalesQueCumplenMeta++;
    }
  }
  double porcentajeMeta = (sucursalesQueCumplenMeta / cantSuc) * 100;
  print("Sucursales que alcanzaron la meta: $sucursalesQueCumplenMeta");
  print("Porcentaje: $porcentajeMeta%");
}
