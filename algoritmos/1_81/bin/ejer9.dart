//Calcular el salario neto de un trabajador en función del 
//número de horas trabajadas, el precio de la hora y considerando 
//un descuento fijo al sueldo base por concepto de impuestos del 20%.

import 'dart:io';

void main(){
    print("Ingresa el numero de horas trabajadas");
    int horas = int.parse(stdin.readLineSync()!);
    double precioH = 6000;
    double sueldoBase = (horas*precioH); 
    double descuento = (sueldoBase * 0.20);
    double descuentoFinal = (sueldoBase-descuento);

    print("El precio por hora es de: $precioH");
    print("Tu sueldo base segun tus horas trabajadas es de $sueldoBase");
    print("se te hara un descuento segun el impuesto del 20% es de $descuento");
    print("Tu sueldo final es de $descuentoFinal");
}