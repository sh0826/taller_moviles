//Calcular el término doceavo y
//la suma de los doce primeros términos de la sucesión:
//6, 11, 16, 21.
//Respuesta: 
//a12 = 61, suma = 402.
void main(){
  int suma = 0;
  int seguir = 6;
  int termino = 0;
  for (int contar = 1; contar <=12; contar++){
    suma += seguir;

    if(contar==12){
    termino= seguir;
    }
    seguir +=5;
    }
  print("suma = $suma");
  print("Termino $termino");
}