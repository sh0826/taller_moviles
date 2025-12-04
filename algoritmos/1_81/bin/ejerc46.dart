//Sea N y K dos enteros positivos, con K < N. 
//Se desea escribir un programa que 
//escriba el valor de
//N,N-1,N-2,..., y así sucesivamente 
//hasta llegar al valor de K.
import 'dart:io';

void main(){
  print("Ingresa N");
  int N = int.parse(stdin.readLineSync()!); 
  print("Ingresa K");
  int K = int.parse(stdin.readLineSync()!);
  for (int contar = N; contar <= K; contar--){
    print("Resultado:");
    print(contar);
  }
}