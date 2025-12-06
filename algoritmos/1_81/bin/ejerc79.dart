/*Una pequeña Librería de la Ciudad desea controlar los datos de los diferentes autores cuyos libros
están a la venta. Cada autor ha escrito diversos libros, pudiendo estos ser clasificados de acuerdo al
género: ciencia ficción, romance, acción, terror, novela, autoayuda y académico. Para cada texto se
conoce: código, género y número de páginas. Escriba un programa, que permita calcular y mostrar:
• Por autor:
 Apellido
 Total, de páginas escritas o Código del libro con mayor número de páginas y
cantidad de páginas.

• En General:
 Porcentaje de libros de ciencia ficción, respecto al total de libros.
 Cantidad de libros de ciencia ficción y romance que hay en existencia.
 Apellido del autor con mayor cantidad de libros escritos y cantidad de libros
escritos.*/
import 'dart:io';

void main() {
  int totalLibros = 0;
  int totalCienciaFiccion = 0;
  int totalRomance = 0;

  String autorConMasLibros = "";
  int mayorCantidadLibros = -1;

  print("Cantidad de autores a procesar:");
  int cantAutores = int.parse(stdin.readLineSync()!);

  for (int a = 1; a <= cantAutores; a++) {
    print("Autor $a");
    stdout.write("Apellido del autor: ");
    String apellido = stdin.readLineSync()!;

    stdout.write("Cantidad de libros escritos por este autor: ");
    int cantLibrosAutor = int.parse(stdin.readLineSync()!);

    int totalPaginasAutor = 0;
    int maxPaginas = -1;
    int codMaxPaginas = 0;

    for (int i = 1; i <= cantLibrosAutor; i++) {
      print("Libro $i ");
      stdout.write("Código del libro: ");
      int codigo = int.parse(stdin.readLineSync()!);

      stdout.write(
        "Género (1: ciencia ficción, 2: romance, 3: acción, 4: terror, 5: novela, 6: autoayuda, 7: académico): ",
      );
      int genero = int.parse(stdin.readLineSync()!);

      stdout.write("Número de páginas: ");
      int paginas = int.parse(stdin.readLineSync()!);

      totalPaginasAutor += paginas;

      if (genero == 1) totalCienciaFiccion++;
      if (genero == 2) totalRomance++;
      if (paginas > maxPaginas) {
        maxPaginas = paginas;
        codMaxPaginas = codigo;
      }
      totalLibros++;
    }

    print("RESULTADO AUTOR: $apellido");
    print("Total de páginas escritas: $totalPaginasAutor");
    print(
      "Libro con más páginas = Código: $codMaxPaginas | Páginas: $maxPaginas",
    );

    if (cantLibrosAutor > mayorCantidadLibros) {
      mayorCantidadLibros = cantLibrosAutor;
      autorConMasLibros = apellido;
    }
  }

  double porcentajeCF = (totalCienciaFiccion / totalLibros) * 100;

  print("Porcentaje de libros de ciencia ficción: $porcentajeCF%");
  print("Cantidad de libros de ciencia ficción: $totalCienciaFiccion");
  print("Cantidad de libros de romance: $totalRomance");
  print("Autor con más libros escritos: $autorConMasLibros");
  print("Total de libros escritos por él/ella: $mayorCantidadLibros");
}
