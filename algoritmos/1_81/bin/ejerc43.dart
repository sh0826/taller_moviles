//El dueño de una empresa desea planificar las 
//decisiones financieras 
//que tomará en el siguiente
//año. La manera de planificarlas depende de lo 
//siguiente: Si actualmente su capital se encuentra
//con saldo negativo, pedirá un préstamo bancario 
//para que su nuevo saldo sea de $10000. si su
//capital tiene actualmente un saldo positivo pedirá
//un préstamo bancario para tener un nuevo saldo
//de $20000, pero si su capital tiene actualmente un
//saldo superior a los $20000 no pedirá ningún préstamo.
//Posteriormente repartirá su presupuesto de la siguiente manera:
//$5000 para equipo de cómputo
//$2000 para mobiliario y del resto la mitad será 
//para la compra de insumos y la otra para
//otorgar incentivos al personal.
//Desplegar qué cantidades se destinarán para la 
//compra de insumos e incentivos al personal y, en caso
//de que fuera necesario, a cuánto ascendería la 
//cantidad que se pediría al banco.
import 'dart:io';
void main(){
  print("Ingresa el capital reciente de la empresa:");
  double capital = double.parse(stdin.readLineSync()!);
  double saldo = capital;
  double prestamo = 0;
  if (capital < 0) {
    prestamo = 10000 - capital;
    saldo = 10000;
  } else if (capital <= 20000) {
    prestamo = 20000 - capital;
    saldo = 20000;
  }else{
    prestamo = 0;
  }
  double equiposC = 5000;
  double muebles = 2000;
  double modulo = saldo - equiposC - muebles;
  double insumos = modulo / 2;
  double extras = modulo / 2;

  print("toca pedirle al banco: $prestamo");
  print("Para los insumos necesitamos: $insumos");
  print("Para los extras para mejorar la eficiencia del personal sera de: $extras");
}