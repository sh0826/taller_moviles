/*Conociendo la masa y distancia de dos cuerpos se puede determinar la Fuerza de atracción que se
ejerce entre ambos. Se desea determinar las fuerzas de atracción ejercida entre la tierra y diversos
satélites ubicados a distintas alturas. Para lo cual la NASA le ha solicitado a usted construir un
programa que responda a los siguientes requerimientos:
a) Cuál es la mayor y menor fuerza de atracción ejercida por los satélites en estudio
b) La fuerza de atracción promedio ejercida por los satélites en estudio
c) La mayor masa de todos los satélites estudiados
d) La masa promedio de los satélites
e) La menor y mayor altura de los satélites
La fórmula para determinar la Fuerza de atracción es:

F = G m M
r
2

donde:
m: masa satélite;
M: Masa tierra (5,97 * 10 24 Kg);
r: distancia de los cuerpos;
G: Constante Gravitatoria (6,67259 * 10-11 N*m2
)
Kg2

Considere la siguiente muestra para realizar la prueba del Programa:
Satélite  País      Masa    Altura
Kg. Mts
Canada 1  Canadá    8.300   31.200.000
Alfa 1    Chile     5.500   36.000.000
Boby 4    EE.UU.    12.000  33.450.000
Che 3     Argentina 3.350   34.200.000*/
import 'dart:math';

void main() {
  const double G = 6.67259e-11;
  const double M = 5.97e24;
  const double radioTierra = 6371000;

  List<Map<String, dynamic>> satelites = [
    {"nombre": "Canada 1", "masa": 8300.0, "altura": 31200000.0},
    {"nombre": "Alfa 1", "masa": 5500.0, "altura": 36000000.0},
    {"nombre": "Boby 4", "masa": 12000.0, "altura": 33450000.0},
    {"nombre": "Che 3", "masa": 3350.0, "altura": 34200000.0},
  ];

  double mayorFuerza = 0;
  double menorFuerza = double.infinity;
  double sumaFuerzas = 0;
  double mayorMasa = 0;
  double sumaMasas = 0;
  double menorAltura = double.infinity;
  double mayorAltura = 0;

  for (var s in satelites) {
    double masa = s["masa"];
    double altura = s["altura"];

    double r = radioTierra + altura;
    double fuerza = G * masa * M / pow(r, 2);

    sumaFuerzas += fuerza;
    sumaMasas += masa;
    if (fuerza > mayorFuerza) mayorFuerza = fuerza;
    if (fuerza < menorFuerza) menorFuerza = fuerza;
    if (masa > mayorMasa) mayorMasa = masa;
    if (altura > mayorAltura) mayorAltura = altura;
    if (altura < menorAltura) menorAltura = altura;
  }
  double promedioFuerzas = sumaFuerzas / satelites.length;
  double promedioMasas = sumaMasas / satelites.length;
  print("Resultados de la nasa");
  print("Mayor fuerza: $mayorFuerza N");
  print("Menor fuerza: $menorFuerza N");
  print("Fuerza promedio: $promedioFuerzas N\n");
  print("Mayor masa: $mayorMasa kg");
  print("Masa promedio: $promedioMasas kg\n");
  print("Menor altura: $menorAltura m");
  print("Mayor altura: $mayorAltura m");
}
