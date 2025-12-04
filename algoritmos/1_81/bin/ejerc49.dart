//100 personas presentaron una prueba constituida 
//por 3 preguntas. Se requiere desarrollar un
//algoritmo o programa que permita determinar la 
//cantidad de personas que respondieron:
//a. correctamente las tres preguntas.
//b. Correctamente solamente la primera y la segunda pregunta.
//c. Correctamente solamente la primera y la tercera pregunta.
//d. Correctamente solamente la segunda y la tercera pregunta.
//e. Correctamente la primera pregunta por lo menos.
//f. Correctamente la segunda pregunta por lo menos.
//g. Correctamente la tercera pregunta por lo menos.
//h. Además, cuántos no respondieron correctamente ninguna pregunta.
import 'dart:io';

void main(){
  int Correctas3 = 0;
  int pre1yPre2 = 0;
  int pre1yPre3 = 0;
  int pre2yPre3 = 0;
  int pre1 = 0;
  int pre2 = 0;
  int pre3 = 0;
  int ninguna = 0;

  for(int contar = 1; contar <=100; contar ++){
    print("Persona $contar: ingresa 1 si acertaste o 0 si fallaste");
    print("Pregunta 1");
    int p1 = int.parse(stdin.readLineSync()!);
    print("Pregunto 2: ");
    int p2 = int.parse(stdin.readLineSync()!);
    print("Pregunta 3: ");
    int p3 = int.parse(stdin.readLineSync()!);
    if(p1==1 && p2 == 1 && p3 == 1){
      Correctas3++;
    }
    if(p1 == 1 && p2 == 1 && p3 ==0){
    pre1yPre2++;
    }
    if(p1==1 && p2 == 0 && p3 ==1){
      pre1yPre3++;
    }
    if(p1 ==0 && p2 ==1 && p3 ==1){
      pre2yPre3++;
    }
    if(p1 ==1){
      pre1++;
    }
    if(p2 ==1){
      pre2++;
    }
    if(p3==1){
      pre3++;
    }
    if(p1==0&&p2==0&&p3==0){
      ninguna++;
    }
  }
    print("RESULTADOS:");
  print("a. Tres correctas: $Correctas3");
  print("b. Solo P1 y P2: $pre1yPre2");
  print("c. Solo P1 y P3: $pre1yPre3");
  print("d. Solo P2 y P3: $pre2yPre3");
  print("e. Al menos P1: $pre1");
  print("f. Al menos P2: $pre2");
  print("g. Al menos P3: $pre3");
  print("h. Ninguna correcta: $ninguna");
}