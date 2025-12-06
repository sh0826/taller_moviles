//Un investigador acaba de aplicar 64 cuestionarios
//de 23 preguntas cada uno; donde cada pregunta
//permite escoger entre 1 y 5, a un grupo de personas
// que constituyen su población. Se desea que
//elabore un Programa, para ayudar al Investigador
// a procesar toda la información recopilada, para
//ello tome en cuenta lo siguiente: necesita calcular
// el promedio de cada instrumento o escala para lo
//cual es necesaria la fórmula: PT/NT, donde PT
//representa el total de puntos de cada cuestionario que
//resulta de sumar los valores que el encuestado,
//encerró entre un círculo y NT es el total de preguntas
//del instrumento. Estos valores se deben acumular,
// para al final calcular y mostrar lo siguiente:
//a. La media o promedio de todos los cuestionarios (promedio general).
//b. El promedio más alto obtenido y número de
//instrumento a que corresponde.
//c. El promedio más bajo obtenido y número de
//instrumento a que corresponde.
//d. Porcentaje de cuestionarios que obtuvieron
//un promedio inferior a 3, respecto a los que tuvieron un
//promedio superior a 4.
//e. Porcentaje de cuestionarios que obtuvieron
//un promedio entre 4.5 y 5 respecto al total procesado.

import 'dart:io';

void main() {
  int totalCuestionarios = 64;
  double sumaPromedios = 0;
  double promedioMasAlto = 0;
  int numeroInstrumentoAlto = 0;
  double promedioMasBajo = 5;
  int numeroInstrumentoBajo = 0;
  int contadorInferior3 = 0;
  int contadorSuperior4 = 0;
  int contadorEntre45y5 = 0;

  for (int i = 1; i <= totalCuestionarios; i++) {
    print("Ingrese los puntos totales del cuestionario $i:");
    double puntosTotales = double.parse(stdin.readLineSync()!);
    double promedio = puntosTotales / 23;
    sumaPromedios += promedio;

    if (promedio > promedioMasAlto) {
      promedioMasAlto = promedio;
      numeroInstrumentoAlto = i;
    }
    if (promedio < promedioMasBajo) {
      promedioMasBajo = promedio;
      numeroInstrumentoBajo = i;
    }
    if (promedio < 3) {
      contadorInferior3++;
    }
    if (promedio > 4) {
      contadorSuperior4++;
    }
    if (promedio >= 4.5 && promedio <= 5) {
      contadorEntre45y5++;
    }
  }

  double promedioGeneral = sumaPromedios / totalCuestionarios;
  double porcentajeInferior3 = (contadorInferior3 / totalCuestionarios) * 100;
  double porcentajeEntre45y5 = (contadorEntre45y5 / totalCuestionarios) * 100;

  print("Promedio general: $promedioGeneral");
  print(
    "Promedio más alto: $promedioMasAlto en el instrumento $numeroInstrumentoAlto",
  );
  print(
    "Promedio más bajo: $promedioMasBajo en el instrumento $numeroInstrumentoBajo",
  );
  print(
    "Porcentaje de cuestionarios con promedio inferior a 3: $porcentajeInferior3%",
  );
  print(
    "Porcentaje de cuestionarios con promedio entre 4.5 y 5: $porcentajeEntre45y5%",
  );
}
