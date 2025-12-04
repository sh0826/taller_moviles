//Se tienen 4 dígitos en las variables A, B, C, D que forman 
//un entero positivo N. Se desea redondear N a la centena más 
//próxima y mostrar el resultado. Considere los siguientes 
//ejemplos: Si A es 2, B es 3, C es 6 y D es 2, entonces N es 
//2362 y el resultado redondeado es 2400. Si N es 2342, el 
//resultado redondeado será 2300 y si N es 2962, el resultado 
//redondeado será 3000.
import 'dart:io';

void main(){
    print("Ingresa A puede ser cualquier numero pero del 1 al 9: ");
    int A = int.parse(stdin.readLineSync()!);
    print("Ingrese B puede ser cualquier numero pero del 1 al 9: ");
    int B = int.parse(stdin.readLineSync()!);
    print("Ingrese C puede ser cualquier numero pero del 1 al 9 ");
    int C = int.parse(stdin.readLineSync()!);
    print("Ingrese D puede ser cualquier numero pero del 1 al 9 ");
    int D = int.parse(stdin.readLineSync()!);
    int N = A * 1000 + B * 100 + C * 10 + D;
    print("el entero positivo es: $N");
    double centenas = N / 100;
    double resultado = centenas * 100;
    print("El resultado a centenas es: $resultado");
}

