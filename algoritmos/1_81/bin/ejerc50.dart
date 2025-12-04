//Desarrolle un algoritmo o programa que permita 
//calcular y mostrar la suma de todos los números
//pares comprendidos entre 97 y 1003. Respuesta: 249150
void main (){
  int suma = 0;
  for(int contar =98; contar <=1003; contar +=2){
    suma += contar;
  }
  print(suma);
}