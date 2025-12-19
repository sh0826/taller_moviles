import 'package:flutter/material.dart';
import 'main.dart';
import 'configuracion.dart';
import 'informacion.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => PrimeraPantalla(),
        "/segunda": (context) => Informacion(),
        "/tercera": (context) => Configuracion(),
      },
    ),
  );
}
