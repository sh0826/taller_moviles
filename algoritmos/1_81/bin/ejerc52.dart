//Una persona debe realizar un muestreo con 100 
//personas para determinar el promedio de peso de
//los niños, jóvenes, adultos y viejos que existen 
//en su zona habitacional. Para ello, conforme
//encuentra a las personas introduce los datos a su
//computadora, la cual mediante un programa las
//clasifica y despliega los cuatro promedios que la
// persona requiere. Las categorías se trabajan de
//acuerdo a la siguiente tabla:
import 'dart:io';

void main(){
  List<double>promedioPesos = [0,0,0,0];
  List<double>cantidadPersonasC = [0,0,0,0];

  for(int contar = 1; contar <=5; contar++){
    print("Ingresa la edad:");
    int edad = int.parse(stdin.readLineSync()!);
    print("Ingresa el peso;");
    double peso = double.parse(stdin.readLineSync()!);
    
    if(edad >= 0 && edad <= 12){
      promedioPesos[0]+=peso;
      cantidadPersonasC[0]++;
    }else if(edad >=13 && edad <= 29){
      promedioPesos[1]+=peso;
      cantidadPersonasC[1]++;
    }else if(edad >=30 && edad <=59){
      promedioPesos[2]+=peso;
      cantidadPersonasC [2]++;
    }else{
      promedioPesos[3]+=peso;
      cantidadPersonasC[3]++;
    }
  List<String> categorias =["niños",'jovenes','adultos','viejos'];
  for(int contar = 0; contar <4; contar++){
    double promedio = promedioPesos[contar]/cantidadPersonasC[contar];
    print("${categorias[contar]} Promedio de pesos: $promedio kg");
  }
  }

}