import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//1. Usa un Container que tenga un widget hijo centrado usando child.
//2. Dentro del Container, coloca un widget Column usando children para mostrar tres
//botones.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Tarea de child y children')),

        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.pinkAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("Presiona el boton 1");
                  },
                  child: Text("Boton 1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Presiona el boton 2");
                  },
                  child: Text("Boton 2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Presiona el boton 3");
                  },
                  child: Text("Boton 3"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
