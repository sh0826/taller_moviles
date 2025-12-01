//Una compañía de alquiler de automóviles sin conductor, 
//desea calcular y mostrar lo que debe pagar
//cada cliente, de acuerdo a las siguientes condiciones:
//a. Si no se rebasan los 300 km, se cancelan 5000 Bolívares
//b. Si la distancia recorrida es superior a 300 km
//-Pero inferior a 1000 se cobran 5000 Bolívares más 
//200 Bolívares por cada kilómetro
//superior a 300.
//-Si es superior a 1000 se cobran 5000 Bolívares 
//más 200 Bolívares por cada kilómetro,
//para las distancias entre 300 y 1000 kilómetros y 
//150 Bolívares por cada kilómetro para
//las distancias mayores a 1000.
import 'dart:io';

void main(){
  print("Ingresa cuanto recorriste en km: ");
  double distancia = double.parse(stdin.readLineSync()!);
  double pagas;

  if(distancia < 300){
    pagas = 5000;
    print("Tienes que pagar $pagas bolivares cariño");

  }else if(distancia>300 && distancia < 1000){
    pagas = 5000 + (distancia - 300) * 200;
    print("Tienes que pagar $pagas bolivares señor");
  }else{
    pagas = 5000 + (700 * 200) + (distancia - 1000) * 150;
  }
}
