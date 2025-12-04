import 'dart:io';

void main(){
print("Ingrese el presupuesto anual que el hospital va a repartir:");
double presupuesto = double.parse(stdin.readLineSync()!);
double Ginegologia = presupuesto * 0.40;
double Traumatologia = presupuesto * 0.30;
double Pediatria = presupuesto * 0.30;
print("Esta sera la cantidad de dinero que recibira GINECOLOGIA: $Ginegologia");
print("TRAUMATOLOGIA recibira: $Traumatologia");
print("y PEDIATRIA recibira: $Pediatria");
}