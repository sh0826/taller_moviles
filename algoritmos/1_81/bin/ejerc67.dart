//Una persona adquiere una deuda de Bs. 12775,
//la cual cancela mediante pagos de montos crecientes
//de los cuales el primero es por Bs. 100 y además
//la diferencia de dos pagos consecutivos es Bs. 125.
//Determinar el número de pagos que realiza la persona
// así como el monto del último pago. Muestre
//en pantalla una tabla con el monto de cada pago
// y el monto pendiente por cancelar. Respuesta:
//número pagos = 14, monto del último = 1725.
void main() {
  double deuda = 12775;
  double pago = 100;
  double diferencia = 125;
  int numeroPagos = 0;

  print("Pago y el Monto Pendiente");

  while (deuda > 0) {
    if (pago > deuda) {
      pago = deuda;
    }
    deuda -= pago;
    numeroPagos++;
    print("$numeroPagos\t${deuda.toStringAsFixed(2)}");
    pago += diferencia;
  }
  print("\nNumero de pagos realizados: $numeroPagos");
  print("Monto del último pago: ${pago - diferencia}");
}
