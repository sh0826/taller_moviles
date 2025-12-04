//Una empresa requiere realizar el cálculo de la 
//nómina semanal de un conjunto M de empleados; para
//ello dispone que los datos de entrada son: nombre, 
//nacionalidad (V o E), edad, tipo de empleado
//(1,2,3) y número de horas trabajadas. Con esta 
//información se desea calcular e imprimir:
//a. Sueldo básico o bruto. Considere para ello que 
//el pago por hora depende del tipo de
//empleado, según la siguiente distribución:
//• Si el tipo empleado es 1 Bs. 5000
//• Si el tipo empleado es 2 Bs. 10000
//• Si el tipo empleado es 3 Bs. 15000
//b. Seguro Social, que corresponde al 3% del 
//Sueldo Básico, si éste último es mayor a 100000.
//c. Total, de venezolanos por tipo de empleado.
//d. Total, de Extranjeros cuya edad es impar.
//e. Promedio de edad de todos los empleados.
//f. Total, general a pagar en sueldos.
import 'dart:io';

void main(){
  int venezolanos1 = 0;
int venezolanos2 = 0;
int venezolanos3 = 0;

int extranjerosImpar = 0;

int sumaEdades = 0;
int cantidadEmpleados = 0;

double totalNomina = 0;
print("Ingresa la cantidad de empleados:");
int empleado = int.parse(stdin.readLineSync()!);
for(int contar = 1; contar <=empleado; contar++){
print("Nombre:");
String nombre = stdin.readLineSync()!;

print("Nacionalidad (V/E):");
String nacionalidad = stdin.readLineSync()!.toUpperCase();

print("Edad:");
int edad = int.parse(stdin.readLineSync()!);

print("Tipo de empleado (1,2,3):");
int tipo = int.parse(stdin.readLineSync()!);

print("Horas trabajadas:");
double horas = double.parse(stdin.readLineSync()!);
double pagoHora;

if(tipo == 1) pagoHora = 5000;
else if(tipo == 2) pagoHora = 10000;
else pagoHora = 15000;
double sueldoBasico = pagoHora * horas;
double seguro = 0;

if(sueldoBasico > 100000){
  seguro = sueldoBasico * 0.03;
}
totalNomina += (sueldoBasico - seguro);
if(nacionalidad == "V"){
  if(tipo == 1) venezolanos1++;
  else if(tipo == 2) venezolanos2++;
  else venezolanos3++;
}
if(nacionalidad == "E" && edad % 2 != 0){
  extranjerosImpar++;
}
sumaEdades += edad;
cantidadEmpleados++;

}
print("Venezolanos tipo 1: $venezolanos1");
print("Venezolanos tipo 2: $venezolanos2");
print("Venezolanos tipo 3: $venezolanos3");

print("Extranjeros con edad impar: $extranjerosImpar");

double promedioEdad = sumaEdades / cantidadEmpleados;
print("Promedio de edad: $promedioEdad");

print("Total general a pagar en sueldos: $totalNomina");

}
