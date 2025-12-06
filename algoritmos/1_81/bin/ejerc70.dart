//Una estación climática proporciona un
//par de temperaturas
//diarias (máx, min), el rango normal de
//temperatura es entre 14 y 30 ° C.
//La pareja fin de temperaturas es 0,0.
//Se pide determinar:
//g. El número de días cuyas temperaturas
//se han proporcionado.
//h. Las medias máxima y mínima.
//i. Número de errores que ingresaron
//(temperaturas fuera de rango).
//j. Porcentaje que representan los errores ingresados.
import 'dart:io';

void main() {
  int dias = 0;
  int errores = 0;

  double sumaMax = 0;
  double sumaMin = 0;

  while (true) {
    print("Ingrese temperatura máxima y mínima (0 0 para terminar):");
    List<String> entrada = stdin.readLineSync()!.split(' ');
    double max = double.parse(entrada[0]);
    double min = double.parse(entrada[1]);
    if (max == 0 && min == 0) break;
    dias++;
    if (max < 14 || max > 30 || min < 14 || min > 30) {
      errores++;
    }
    sumaMax += max;
    sumaMin += min;
  }
  print("Días ingresados: $dias");
  if (dias > 0) {
    print("Media máxima: ${sumaMax / dias}");
    print("Media mínima: ${sumaMin / dias}");
  }
  print("Errores ingresados: $errores");
  if (dias > 0) {
    double porcentaje = (errores * 100) / dias;
    print("Porcentaje de errores: $porcentaje%");
  }
}
