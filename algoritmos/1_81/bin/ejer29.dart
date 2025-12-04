//Una empresa que comercializa cosméticos tiene organizados 
//a sus vendedores en tres departamentos y ha establecido un 
//programa de incentivos para incrementar su productividad.
// El gerente, al final del mes, pide el importe global de 
//las ventas de los tres departamentos y aquellos que 
//excedan el 33% de las ventas totales se les paga una 
//cantidad extra equivalente al 20% de su salario mensual. 
//Si todos los vendedores ganan lo mismo, determinar 
//cuánto recibirán los vendedores de los tres departamentos 
//al finalizar el mes.
import 'dart:io';

void main(){
  print("Pon las ventas que hubieron en total en departamento 1:");
  double depart1 = double.parse(stdin.readLineSync()!);
  print("Pon las ventas que hubieron en total en departamento 2:");
  double depart2 = double.parse(stdin.readLineSync()!);
  print("Pon las ventas que hubieron en total en departamento 3:");
  double depart3 = double.parse(stdin.readLineSync()!);

  print("ahora el salario de los exclavisados:");
  double salario = double.parse(stdin.readLineSync()!);

  double total = depart1+depart2+depart3;
  double superar = total*0.33;
  if(depart1>superar){
    double extra1 = salario*0.2;
    double totalP = extra1 + salario;
    print("Departamento 1 tendra un salario de: $totalP");
  }
  if(depart2>superar){
    double extra2 = salario*0.2;
    double totalP = extra2 + salario;
    print("Departamento 2 tendra un salario de: $totalP");
  }
  if(depart3>superar){
    double extra3 = salario*0.2;
    double totalP = extra3 + salario;
    print("Departamento 3 tendra un salario de: $totalP");
  }
    print("El resto de los departamentos tendran un sueldo normal de: $salario");
}
