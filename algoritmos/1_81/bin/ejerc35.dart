//Desarrolle un algoritmo, que dado como dato una 
//temperatura en grados Fahrenheit, determine
//el deporte que es apropiado practicar a esa 
//temperatura, teniendo en cuenta la siguiente tabla:
import 'dart:io';

void main(){
  print("ingresa la temperatura en grados ");
  double temperatura = double.parse(stdin.readLineSync()!);

  String deporte = "";
  if(temperatura > 85){
    deporte = "natacion";
  }else if(temperatura > 70){
    deporte = "Tenis";
  }else if(temperatura>35){
    deporte = "golf";
  }else if(temperatura>10){
    deporte = "esqui";
  }else if(temperatura<=10){
    deporte = "marcha";
  }
  print("El deporte adecuado para la temperatura de: $temperatura es $deporte");
}