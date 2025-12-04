//Tomando como base los resultados obtenidos 
//en un laboratorio de análisis clínicos, un médico
//determina si una persona tiene anemia o no, 
//lo cual depende de su nivel de hemoglobina en la
//sangre, de su edad y de su sexo. Si el nivel 
//de hemoglobina que tiene una persona es menor que
//el rango que le corresponde, se determina su 
//resultado como positivo y en caso contrario como
//negativo. La tabla en la que el médico se 
//basa para obtener el resultado es la siguiente:
//EDAD NIVEL DE HEMOGLOBINA
//0 - 1 mes 13 - 26 g%
//Mayor de 1 y menor o igual de 6 meses 10 - 18 g%
//Mayor de 6 y menor o igual de 12 meses 11 - 15 g%
//Mayor de 1 y menor o igual que 5 años 11.5 - 15 g%
//Mayor de 5 y menor o igual que 10 años 12.6 – 15.5 g%
//Mayor de 10 y menor o igual que 15 años 13 - 15.5 g%
//Mujeres mayores de 15 años 12 - 16 g%
//Hombres mayores de 15 años 14 - 18 g%
//Desarrolle un algoritmo que indique, si una 
//persona tiene Anemia o no.
import 'dart:io';

void  main(){
  print("Ingresa tu edad pero en meses, te toca pensar");
  int edad = int.parse(stdin.readLineSync()!);
  print("Ingresa tu nivel de hemoglobina");
  double hemoglobina = double.parse(stdin.readLineSync()!);
  String sexo = "";
  bool tieneAnemia = false;

  if(edad >= 180){
    print("Ingresa primero tu sexo (m/f)");
    sexo = stdin.readLineSync()!;
  }
  if(edad <=1){
    tieneAnemia = hemoglobina<13;
  }else if(edad <=6){
    tieneAnemia =hemoglobina<10;
  }else if(edad <=12){
    tieneAnemia = hemoglobina<11;
  }else if(edad <=60){
    tieneAnemia = hemoglobina<11.5;
  }else if(edad <=120){
    tieneAnemia = hemoglobina<12.6;
  }else if(edad<=180){
    tieneAnemia = hemoglobina<13;
  }else{
    if(sexo =="f"){
      tieneAnemia=hemoglobina<12;
    }else if (sexo=="m"){
      tieneAnemia = hemoglobina <14;
    }
  }
  if(tieneAnemia){
    print("En efecto eres anemic@");
  }else{
    print("Saliste negativo");
  }
  }